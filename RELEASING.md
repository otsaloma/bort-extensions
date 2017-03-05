Releasing a New Version
=======================

* Do final quality checks
    - `make check`
* Bump version numbers
    - `chrome/manifest.json`
    - `firefox/manifest.json`
* Commit changes
    - `git commit -a -m "RELEASE X.Y.Z"`
    - `git tag -s X.Y.Z`
    - `git push`
    - `git push --tags`
* Build final extensions
    - `make chrome`
    - `make firefox`
* Upload to official extension sites
    - <https://chrome.google.com/webstore/developer/dashboard>
    - <https://addons.mozilla.org/developers/addons>
