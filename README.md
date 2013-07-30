# W3C Test Tutorial for TTWF - Shanghai 2013

This slideshow is based on [Reveal.js](https://github.com/hakimel/reveal.js/).

To simplify writing, we use [Markdown](http://daringfireball.net/projects/markdown/) to get rid of those annoying HTML tags.

## How to modify it

1. Clone the repository.
2. Install virtualenv.
```
sudo apt-get install python-virtualenv
```
3. Prepare the environment.
```
make deps
```
4. Put slides in `src/`.
5. Add slides in Makefile by order.
6. Custom Reveal.js by modifing `tpl/index.tpl.html`.
7. Generate final slides
```
make slides
```
8. Pack slides into an archive.
```
make pack
```
9. Open a browser to preview.
```
make preview
```

## FAQ

Q: I meet problems to set up the environment.

A: It is just a wrapper of [Reveal.js](https://github.com/hakimel/reveal.js/) to simplify writing. No need to waste too much time on the environment setting. Go straight to Reveal.js instead.

Q: How to insert code blocks?

A: We use [Github Flavored Markdown](https://help.github.com/articles/github-flavored-markdown).

Q: Windows support?

A: No. It has only been tested on Ubuntu 13.04.

Q: No `xdg-open` on Mac OS X?

A: Maybe just `open`.
