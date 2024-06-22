# -*- coding: utf-8-unix -*-

include .env

CHROME = brave-browser

check:
	jshint --reporter=unix */*.js
	jsonlint -q */*.json

chrome:
	$(MAKE) clean
	mkdir -p dist/bort
	cp chrome/*.js chrome/*.json chrome/*.png dist/bort
	cd dist/bort && zip -r ../bort.zip *

clean:
	rm -rf dist

firefox:
	$(MAKE) clean
	mkdir -p dist/bort
	cp firefox/*.js firefox/*.json firefox/*.png dist/bort
	cd dist/bort && zip -r ../bort.zip *

.PHONY: check chrome clean firefox
