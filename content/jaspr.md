---
title: "Using Jaspr to build Beyond Flutter website"
description: 26/06/2026
---

[Jaspr](https://jaspr.site/) is a Dart Framework for Web Applications. So you can literally build web applications with Dart. It's not Flutter Web, it's the complementary opposite: 

> Native web applications with Dart.

<Image src="images/jaspr.png" alt="Jaspr Logo" width="200"/>

With so many mainstream options (Plain HTML, React, Angular, Vue, Svelte, etc.), why did I choose to use Jaspr to build the Beyond Flutter website? 

It's coming increasingly popular, mainly after the migration of [Flutter Docs to Jaspr announcement](https://blog.flutter.dev/we-rebuilt-flutters-websites-with-dart-and-jaspr-317c00e8b400). So I wanted to give it a try. I wanted to test a couple of things and see if it was a good fit for the Beyond Flutter website. 

Here are some of the hypothesis I wanted to test:

1. Using the same tools of Dart & Flutter ecosystem, if the philosophy is similar, it should be easy and fast to do things with it.
2. It has a first class support for Flutter widgets, so we can embedded Flutter Web and integrate it to a web page very easily.
3. It has first class support for mdx content, for blog posts and documentation, so I don't need to worry about how to parse and render markdown content.

# How it went

- The final result can be seen in this website itself, by this date is still a very minimalistic and early version, but works very well for blog purposes. The home page has a Flutter Widget embedded at it!
- There are some small adjustments and corner cases that are not very well documented. For example, I had some small issues with paths and assets when trying to integrate with GithubPages. At the end I made this [Github Template](https://github.com/pietroid/jaspr_github_pages) that anyone can easily publish a MDX blog inside GithubPages in a matter of minutes.
- The integration with Flutter Embedding is very well documented [here](https://docs.jaspr.site/going_further/flutter_embedding). I was a little bit clueless why my widget didn't show up in the first place and spent a bit of hours debugging. 
- Then I decided following their [example on github](https://github.com/schultek/jaspr/tree/main/examples/flutter_multi_view), and I figured out it was just a sizing problem of the Flutter widget (they didn't document that on the site).
- Even with those issues I found it impressive because they have a working example with state management integration of Web + Flutter together, and for me this is the game changing of adoption if you want to showcase heavily Pieces of Flutter Apps inside a web blog.

# Final evaluation

Hypothesis validation

1. Documentation can be a bit more in sync and tools more intuitive, but I would say it's 80% there
2. First class support widgets works perfectly, 💯
3. MDX content support, very easily done if you want to setup a blog very fast.

My last word: We, as Flutter Engineers can't stay isolated from the web environment. In this "Agentic" era where everything is self-made, we must stay relevant to the public, and the web is still a way to do that. Plus, integrating easily with Flutter Apps can help us showcase more our abilities in a "blog-format" more easily, without the hassle of dealing with multiple languages, frameworks, etc.