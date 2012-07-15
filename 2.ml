open Printf

let sum a b = 
    a + b
    ;;

let rec fib l limit =
    match List.length l with
          0 -> fib (1 :: l) limit
        | 1 -> fib (2 :: l) limit
        | _ -> if ((List.nth l 0) + (List.nth l 1)) > limit then l else fib (((List.nth l 0) + (List.nth l 1)) :: l) limit
    ;;

printf "%d\n" (List.fold_left sum 0 (List.filter (fun n -> n mod 2 == 0) (fib [] 4000000)))
