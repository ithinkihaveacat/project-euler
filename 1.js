#!/usr/bin/env node

var list = [];
for (var i = 0; i < 1000; i++) list.push(i);

var three = list.filter(function (i) { return i % 3 == 0; })
                .reduce(function(a, b) { return a + b; }, 0);
var five = list.filter(function (i) { return i % 5 == 0; })
                .reduce(function(a, b) { return a + b; }, 0);
var fifteen = list.filter(function (i) { return i % 15 == 0; })
                .reduce(function(a, b) { return a + b; }, 0);

console.log(three + five - fifteen);
