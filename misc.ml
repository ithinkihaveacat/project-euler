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
