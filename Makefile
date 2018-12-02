# -*- coding: utf-8-unix -*-

include .env

check:
	jshint --reporter=unix */*.js

# Requires crxmake.sh from Chrome documentation.
# https://developer.chrome.com/extensions/crx
chrome:
	$(MAKE) clean
	mkdir -p dist/bort
	cp chrome/*.js chrome/*.json chrome/*.png dist/bort
	cd dist && crxmake.sh bort $(CHROME_KEY_FILE)

clean:
	rm -rf dist

firefox:
	$(MAKE) clean
	mkdir -p dist/bort
	cp firefox/*.js firefox/*.json firefox/*.png dist/bort
	cd dist/bort && zip -r ../bort.zip *

.PHONY: check chrome clean firefox
