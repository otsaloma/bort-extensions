// -*- coding: utf-8-unix -*-
browser.browserAction.onClicked.addListener(function(tab) {
    browser.tabs.update(tab.id, {
        url: "https://bort.io/?do=add" +
            "&url="   + encodeURIComponent(tab.url) +
            "&title=" + encodeURIComponent(tab.title)
    });
});
