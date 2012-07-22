open Printf

let split n =
    let rec _split n =
        if n / 10 == 0 then [ n ] else (n mod 10) :: _split (n / 10)
    in List.rev (_split n)
;;

let palindromic n =
    not (List.exists2 (fun n m -> n != m) (split n) (List.rev (split n)))
;;

let pairs min max =
    let rec __pairs i j =
        if j < i then [] else ([j; i] :: (__pairs i (j - 1)))
    in let rec _pairs i =
        if i < min then [] else ((__pairs i max) :: (_pairs (i - 1)))
    in _pairs max
;;

let lmax l =
    List.fold_left (fun x xs -> max x xs) (List.nth l 0) l    
;;

(* Really inefficient--among other things checks all pairs, even though
   it could arrange for the pairs to be sorted, and return the first.  (Also
    the pairs aren't generated "lazily".) *)

let l = List.rev_map 
            (fun n -> ((List.nth n 0) * (List.nth n 1))) 
            (List.concat (pairs 100 999))
in let m = lmax (List.filter palindromic l)
in printf "%d\n" m
