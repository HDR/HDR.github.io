// ==UserScript==
// @name         SpamAway For McMyAdmin
// @namespace    MrHDR.github.io
// @version      0.1
// @description  Removes console spam from McMyAdmin Console.
// @author       HDR
// @require      https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/6.18.2/babel.js
// @require      https://cdnjs.cloudflare.com/ajax/libs/babel-polyfill/6.16.0/polyfill.js
// @match        ENTER YOUR CONSOLE IP HERE!
// ==/UserScript==

setInterval(function(){
    $(".chatEntry").has(".chatBody").has('.chatMessage:contains("Messsagetofilter")').hide();
}, 100 ); // 100 = milliseconds
