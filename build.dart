import 'dart:io';
import 'package:code_buffer/code_buffer.dart';
import 'package:jael/jael.dart' as jael;
import 'package:symbol_table/symbol_table.dart';
import 'package:markdown/markdown.dart';
import 'package:front_matter/front_matter.dart' as frontmatter;

main() async {
  String template = await File('./templates/post.html').readAsString();
  String postMarkdown = await File('./src/post1.md').readAsString();

  var fm = frontmatter.parse(postMarkdown);
  String htmlContent = markdownToHtml(fm.content);

  var document = jael.parseDocument(
    template,
    sourceUrl: 'stdin',
    onError: stderr.writeln,
  );

  if (document == null) {
    stderr.writeln('Could not parse the given text.');
  } else {
    CodeBuffer output = CodeBuffer();
    const jael.Renderer().render(
      document,
      output,
      SymbolTable(values: {'title': fm.data['title'], 'content': htmlContent}),
      strictResolution: false,
    );

    await File('./out/post1.html').writeAsString(output.toString());
  }
}