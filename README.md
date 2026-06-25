# Jaspr with Github Pages

This is a template to start working with Jaspr and Github Pages very fast! Live at [pietroid/jaspr_github_template](https://pietroid.github.io/jaspr_github_pages/).

## Putting your site live - Just 3 steps!

- Create a new repository on Github and enable Github Pages in the repository settings. You can choose to host the site from the `main` branch or any other branch (see the documentation [here](https://docs.github.com/en/pages/quickstart#creating-your-website)).
- Update `lib/github_pages_base.dart` to set the correct base path for your repository (e.g., `/your_repo_name`).
- You can already push your changes to Github and after couple of minutes, see the site live at `https://username.github.io/your_repo_name/` 🚀.

## Customizing your Jaspr site

For full understanding of how to customize your Jaspr site, please refer to the [Jaspr Content Documentation](https://docs.jaspr.site/content). If you want a quick guide, here it is:

- Update the `title` and `meta` tags in `lib/main.server.dart` to reflect your site's title and description.
- Update the font in `styles.css` to use your preferred font. We are using google fonts.You can find a list of available fonts [here](https://fonts.google.com/).
- Update favicons and other assets in the `images` folder to customize your site's appearance.
- Update the `content` folder to add your own content. You can create new markdown files and organize them in subfolders as needed. The `index.md` file will be the homepage of your site.
