(* 

After thinking about the math on this for a bit, realised it's easy
to do by hand...  You need to find the prime factors of all numbers up to
20, and then create a list of numbers such that all the factors of $n$ can
be found in the list.  Hence, in the list below, we have 4 2s because 16 is
2 * 2 * 2 * 2.

*)

Printf.printf "%d\n" (2 * 2 * 2 * 2 * 3 * 3 * 5 * 7 * 11 * 13 * 17 * 19) ;;
