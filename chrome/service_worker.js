// -*- coding: utf-8-unix -*-
chrome.action.onClicked.addListener(function(tab) {
    chrome.tabs.update(tab.id, {
        url: "https://bort.io/?do=add" +
            "&url="   + encodeURIComponent(tab.url) +
            "&title=" + encodeURIComponent(tab.title)
    });
});
