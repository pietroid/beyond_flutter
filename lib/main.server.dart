/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

// Server-specific Jaspr import.
import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'package:jaspr_content/components/callout.dart';
import 'package:jaspr_content/components/code_block.dart';
import 'package:jaspr_content/components/header.dart';
import 'package:jaspr_content/components/image.dart';
import 'package:jaspr_content/components/sidebar.dart';
import 'package:jaspr_content/jaspr_content.dart';
import 'package:jaspr_content/theme.dart';

import 'github_pages_base.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

final base = kDebugMode ? '/' : '$githubPagesBase/';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  //
  // [ContentApp] spins up the content rendering pipeline from jaspr_content to render
  // your markdown files in the content/ directory to a beautiful documentation site.
  runApp(
    Document(
      title: 'Jaspr with Github Pages',
      base: base,
      meta: {
        'description': 'Jaspr with Github Pages template',
        'keywords': 'jaspr, github, pages, documentation',
        'og:title': 'Jaspr with Github Pages',
        'og:description': 'Jaspr with Github Pages template',
        'og:image': 'https://pietroid.github.io/jaspr_github_pages/images/logo.svg',
      },
      head: [link(rel: 'stylesheet', href: '${base}styles.css')],
      body: ContentApp(
        // Enables mustache templating inside the markdown files.
        templateEngine: MustacheTemplateEngine(),
        parsers: [
          MarkdownParser(),
        ],
        extensions: [
          // Adds heading anchors to each heading.
          HeadingAnchorsExtension(),
          // Generates a table of contents for each page.
          //TableOfContentsExtension(),
        ],
        components: [
          // The <Info> block and other callouts.
          Callout(),
          // Adds syntax highlighting to code blocks.
          CodeBlock(),
          // Adds zooming and caption support to images.
          Image(zoom: true),
        ],
        layouts: [
          // Out-of-the-box layout for documentation sites.
          DocsLayout(
            header: Header(
              title: 'Jaspr with GitHub Pages',
              logo: 'images/logo.svg',
              items: [],
            ),
            sidebar: Sidebar(
              groups: [],
            ),
          ),
        ],
        theme: ContentTheme(
          font: FontFamily('Geist'),
          background: ThemeColor(Color("#C7E7E5")),
          colors: [
            ContentColors.text.apply(Color("#003A6A")),
            ContentColors.headings.apply(Color("#003A6A")),
            ContentColors.links.apply(Color("#003A6A")),
            ContentColors.quoteBorders.apply(Color("#003A6A")),
            ContentColors.quotes.apply(Color("#003A6A")),
            ContentColors.captions.apply(Color("#003A6A")),
          ],
          typography: ContentTypography.base.apply(
            styles: Styles(
              lineHeight: Unit.em(1.5),
              textAlign: TextAlign.justify,
              margin: Margin.fromLTRB(
                Unit.em(0),
                Unit.em(1),
                Unit.em(1),
                Unit.em(1),
              ),
            ),
            rules: [],
          ),
        ),
      ),
    ),
  );
}
