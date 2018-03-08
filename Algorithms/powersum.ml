let root p n =
  int_of_float @@ float_of_int n ** (1. /. float_of_int p)

                                      
let rec expn b p rt =
  match p with
  | 0 -> rt
  | _ -> expn b (p - 1) (rt * b)
      

let powersum pow n =
  let rec add n limit = function
    | [] -> []
    | x::xs when n + x <= limit -> x :: n + x :: add n limit xs
    | x::xs -> x :: add n limit xs in
  let rec count x rt = function
    | [] -> rt
    | y::ys when x = y -> count x (rt + 1) ys
    | _::ys -> count x rt ys in
  let rec dotimes f n init =
    match n with
    | 0 -> init
    | _ -> dotimes f (n - 1) (f n init) in  
  let maxn = root pow n in
  dotimes (fun i ns -> add (expn i pow 1) n ns) maxn [0]
  |> count n 0

           
let () =
  let goal = read_int () in
  let power = read_int () in
  powersum power goal |> print_int; print_newline ()
