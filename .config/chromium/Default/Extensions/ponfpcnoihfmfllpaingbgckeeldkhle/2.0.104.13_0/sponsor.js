/*
##
##  Enhancer for YouTube™
##  =====================
##
##  Author: Maxime RF <https://www.mrfdev.com>
##
##  This file is protected by copyright laws and international copyright
##  treaties, as well as other intellectual property laws and treaties.
##
##  All rights not expressly granted to you are retained by the author.
##  Read the license.txt file for more details.
##
##  © MRFDEV.com - All Rights Reserved
##
*/
(function(){chrome.storage.local.get({date:0},function(a){30>=Math.round((Date.now()-a.date)/864E5)&&(a=document.querySelector("fieldset.sponsor"))&&(a.classList.remove("hidden"),a.querySelectorAll(".sponsor-image img, .sponsor-link").forEach(function(c){c.addEventListener("click",function(b){b.preventDefault();chrome.tabs.create({url:"https://jointoucan.com/partners/enhancer-for-youtube",active:!0})});c.addEventListener("contextmenu",function(b){b.preventDefault();chrome.tabs.create({url:"https://jointoucan.com/partners/enhancer-for-youtube",
active:!0})})}))})})();