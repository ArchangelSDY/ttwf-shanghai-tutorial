# Test the Web Forward - Shanghai 2013

This the slides project of W3C test tutorial.

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
7. Generate final slides.

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
