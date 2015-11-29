# -*- coding: us-ascii-unix -*-

PEM_PATH = ../../keys/bort-chrome.pem

# Requires crxmake.sh from
# https://developer.chrome.com/extensions/crx

chrome:
	$(MAKE) clean
	mkdir -p dist
	cp -r chrome dist/bort
	cp *.js icons/*.png dist/bort
	cd dist && crxmake.sh bort $(PEM_PATH)

clean:
	rm -rf dist

firefox:
	$(MAKE) clean
	mkdir -p dist
	cp -r firefox dist/bort
	cp *.js icons/*.png dist/bort
	cd dist/bort && zip -r ../bort.xpi *

.PHONY: chrome clean firefox
