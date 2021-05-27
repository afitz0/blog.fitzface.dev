# Fitz's Blog
My primary goal for the blog is to be a lightweight as possible. It's flat text and images; why complicate things?

As such, the final product (i.e., what you see when visiting the blog) includes (or will include):
* No JavaScript (except for site analytics)
* No frameworks, libraries, shims, web components, etc.
* No backends, databases, streams, iframes, ads, forms, logins, or other "features"
* Only standards-compliant HTML5 and CSS

The build pipeline is written in [Dart](https://dart.dev) and uses a couple of packages to handle the parsing of content into templates. At a high level, it:

1. Reads in Markdown
1. Converts it to HTML
1. Shoves that HTML into other HTML
1. Drops that HTML in a directory

That's it. That's all I've got. :)

# Acknowledgements
While the code and implementation details are different, *SO* much of this has been _heavily_ inspired by Thea Flowers' blog, the source for which you can find [here](https://github.com/theacodes/blog.thea.codes).