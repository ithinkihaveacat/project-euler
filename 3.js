function largestf(n) {
    var m = Math.floor(Math.sqrt(n))
    for (var i = m; i > 1; i--) {
        if (n % i == 0) {
            return Math.max(largestf(i), largestf(n / i));
        }
    }
    return n;
}

console.log(largestf(600851475143));
