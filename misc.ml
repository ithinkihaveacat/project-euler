open Printf

let plusn n i = n + i
    ;;

let c = plusn 5 ;;

printf "%d\n" (c 1) ;; /* -> 6 */
printf "%d\n" (c 2) ;; /* -> 7 */
printf "%d\n" (c 3) ;; /* -> 8 */

let repeat s n =
    let rec _repeat a i =
        if i == n then a else _repeat (s :: a) (i + 1)
    in _repeat [] 0
;;

let rec range a b =
    if a > b then []
    else a :: range (a+1) b
    ;;

let lmax l =
    List.fold_left (fun x xs -> max x xs) (List.nth l 0) l    
;;
