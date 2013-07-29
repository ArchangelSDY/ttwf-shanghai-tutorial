.PHONY: deps

SHELL := /bin/bash

MD_FILES := \
	src/cover.md \
	src/js-cover.md \
	src/js-overview.md \
	src/js-framework.md \
	src/js-test-1.md \
	src/js-test-2.md \
	src/js-test-3.md \
	src/js-test-4.md \
	src/js-assert.md \
	src/js-assert-example.md \
	src/js-example-cover.md \
	src/js-example-spec.md \
	src/js-example-spec-analysis.md \
	src/js-example-1.md \
	src/js-example-2.md \
	src/js-example-3.md \
	src/js-example-check.md \
	src/js-example-4.md \
	src/js-example-5.md \
	src/js-example-full.md \
	src/js-example-pass.md \
	src/js-example-fail.md \
	src/js-example-review.md \
	src/ref-cover.md \
	src/ref-overview.md \
	src/ref-example-cover.md \
	src/ref-example-spec.md \
	src/ref-example-spec-analysis.md \
	src/ref-example-1.md \
	src/ref-example-2.md \
	src/ref-example-3.md \
	src/ref-example-4.md \
	src/ref-example-5.md \
	src/ref-example-6.md \
	src/ref-example-7.md \
	src/ref-example-8.md \
	src/ref-example-9.md \
	src/ref-example-10.md \
	src/ref-example-fail.md \
	src/ref-prefix.md \
	src/ref-example-review.md \
	src/congratulations.md \
	src/reference.md

slides: $(MD_FILES)
	PYTHONHOME=$(CURDIR) python build.py $(MD_FILES)

pack: slides
	tar cfvz ttwf-tutorial.tgz --exclude=.git tutorial

clean:
	rm -rf ttwf-tutorial.tgz

preview: slides
	xdg-open tutorial/index.html

deps:
	virtualenv .; \
	source bin/activate; \
	pip install git+https://github.com/ArchangelSDY/houdini.py.git; \
	pip install -r requirements.txt;
