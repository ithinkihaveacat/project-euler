open Printf

let rec factor n =
    let m = int_of_float (floor (1. +. (sqrt (float_of_int n)))) in
    let rec _factor i =
        if i == m then
            [ n ]
        else
            (if n mod i == 0 then i :: factor (n / i) else _factor (i + 1))
    in
    _factor 2
;;

let largestf n =
    List.fold_left (fun x xs -> max x xs) 0 (factor n)
;;    

printf "%d\n" (largestf 600851475143)
;;
