// -*- coding: utf-8-unix -*-

var buttons = require("sdk/ui/button/action");
var tabs = require("sdk/tabs");

var button = buttons.ActionButton({
    id: "bort",
    label: "Add Bort.io bookmark",
    icon: {
        "16": "./bort-16.png",
        "48": "./bort-48.png",
        "64": "./bort-64.png"
    },
    onClick: handleClick
});

function handleClick(state) {
    tabs.activeTab.url = "https://bort.io/?do=add" +
        "&url="   + encodeURIComponent(tabs.activeTab.url) +
        "&title=" + encodeURIComponent(tabs.activeTab.title);
}
