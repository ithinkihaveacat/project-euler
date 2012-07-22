let rec prime n =

    let rec __prime l i =
        let root = (sqrt (float_of_int i)) in
        (* We need to do this filter a bunch of times, maybe maintain a separate
            list of primes less than the sqrt(i), and add to it as necessary. *)
        let test = List.filter (fun n -> (float_of_int n) < (1. +. root)) l in
        let exists = List.exists (fun n -> i mod n == 0) test in
        if (not exists) then (i :: l) else (__prime l (i + 2))
    in

    let rec _prime l =
        if (List.length l) == n then 
            l
        else 
            _prime (__prime l ((List.hd l) + 2))
    in

    _prime [3; 2]
;;

let l = prime 10001 in
Printf.printf "%d\n" (List.hd l)
