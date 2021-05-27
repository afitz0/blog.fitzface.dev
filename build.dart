import 'dart:io';
import 'package:code_buffer/code_buffer.dart';
import 'package:jael/jael.dart' as jael;
import 'package:symbol_table/symbol_table.dart';
import 'package:markdown/markdown.dart';
import 'package:front_matter/front_matter.dart' as frontmatter;
import 'package:path/path.dart';

const POST_SRC_ROOT = "./src/";
const TEMPLATE_ROOT = "./templates/";
const POST_TEMPLATE = "post.html";
const OUT_DIR = "./docs";

main() async {
  Directory postsDir = Directory(POST_SRC_ROOT);
  final String template =
      await File(TEMPLATE_ROOT + POST_TEMPLATE).readAsString();

  for (var thing in postsDir.listSync()) {
    if (thing is File) {
      final String filenameNoExt = basenameWithoutExtension(thing.path);
      final String fileExtension = extension(thing.path);

      if (fileExtension != '.md') continue;

      final String postMarkdown = thing.readAsStringSync();

      var fm = frontmatter.parse(postMarkdown);
      String htmlContent = markdownToHtml(fm.content);

      var document = jael.parseDocument(
        template,
        sourceUrl: null,
        onError: stderr.writeln,
      );

      if (document == null) {
        stderr.writeln('Could not parse the given text.');
      } else {
        CodeBuffer output = CodeBuffer();
        const jael.Renderer().render(
          document,
          output,
          SymbolTable(values: {
            'content': htmlContent,
            ...fm.data,
          }),
          strictResolution: false,
        );

        await File(OUT_DIR + Platform.pathSeparator + filenameNoExt + '.html')
            .writeAsString(output.toString());
      }
    }
  }
}

// jael.Document parse
