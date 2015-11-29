# -*- coding: us-ascii-unix -*-

PEM_PATH = ../../keys/bort-chrome.pem

# Requires crxmake.sh from Chrome documentation.
# https://developer.chrome.com/extensions/crx

chrome:
	$(MAKE) clean
	mkdir -p dist/bort
	cp chrome/*.js chrome/*.json chrome/*.png dist/bort
	cd dist && crxmake.sh bort $(PEM_PATH)

clean:
	rm -rf dist

# Requires jpm from Mozilla's add-on SDK.
# https://developer.mozilla.org/en-US/Add-ons/SDK/Tools/jpm#Installation

firefox:
	$(MAKE) clean
	mkdir -p dist/bort/data
	cp firefox/*.js firefox/*.json dist/bort
	cp firefox/data/*.png dist/bort/data
	cd dist/bort && jpm xpi
	mv dist/bort/*.xpi dist

.PHONY: chrome clean firefox
