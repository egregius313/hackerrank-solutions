let median numbers =
  List.nth numbers @@ (List.length numbers - 1) / 2


let rec handle_entry (states, stack) = function
  | n when n >= 0 ->
     let new_stack = List.sort compare @@ n :: stack in
     (new_stack :: states, new_stack)
  | n ->
     let new_stack = List.nth states (-n - 1) in
     (new_stack :: states, new_stack)


let () =
  let get_int _ = Scanf.scanf "%d" (fun i -> i) in
  let nlines = get_int () in
  let requests = List.init nlines get_int in
  let history, _ = List.fold_left handle_entry ([], []) requests in
  history |> List.rev |> List.map median |> List.iter (Printf.printf "%d\n")
