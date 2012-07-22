let rec range a b =
    if a > b then []
    else a :: range (a+1) b
    ;;

let s1 = List.fold_left (fun a n -> a + (n * n)) 0 (range 1 100) ;;

let s2 = (int_of_float (((float_of_int (List.fold_left (fun a n -> a + n) 0 (range 1 100)))) ** 2.)) ;;

Printf.printf "%d\n" (s2 - s1)
