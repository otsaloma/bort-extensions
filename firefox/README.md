Mozilla recommends writing WebExtensions, but don't allow them at
addons.mozilla.org. They also refuse to sign WebExtensions and don't
allow users to install unsigned extensions. There's seems to be no
fucking way to distribute them. So, use SDK/jpm for now, but port later
to WebExtension and consolidate the codebase with the Chrome extension.

* <https://developer.mozilla.org/en-US/Add-ons/WebExtensions>
* <https://developer.mozilla.org/en-US/Add-ons/Distribution>
* <https://bugzilla.mozilla.org/show_bug.cgi?id=1210037>
