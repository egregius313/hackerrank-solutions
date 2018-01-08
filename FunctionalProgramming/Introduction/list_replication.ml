let rec read_lines () =
    try let line = read_line () in
        int_of_string (line) :: read_lines()
    with
        End_of_file -> []

let rec init n v =
    match n with
    | 0 -> []
    | _ -> v::(init (n - 1) v)

let rec f n arr = List.map (init n) arr |> List.concat

let () =
    let n::arr = read_lines() in
    let ans = f n arr in
    List.iter (fun x -> print_int x; print_newline ()) ans;;
