function fib() {
    var l = [];
    return function() {
        if (l.length == 0) {
            l.unshift(1);
        } else if (l.length == 1) {
            l.unshift(2);
        } else {
            l.unshift(l[0] + l[1]);
        }
        return l[0];
    }
}

var fn = fib();

var n, t = 0;

while ((n = fn()) < 4000000) {
    t += (n % 2 == 0) ? n : 0;
}

console.log(t);
