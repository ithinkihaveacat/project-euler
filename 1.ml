open Printf

let rec range a b =
    if a > b then []
    else a :: range (a+1) b
    ;;

let sum a b = 
    a + b
    ;;

let input = range 1 999

let three   = List.filter (fun n -> n mod 3  == 0) input;;
let five    = List.filter (fun n -> n mod 5  == 0) input;;
let fifteen = List.filter (fun n -> n mod 15 == 0) input;;

printf "%d\n" ((List.fold_left sum 0 three) + (List.fold_left sum 0 five) - (List.fold_left sum 0 fifteen));;
