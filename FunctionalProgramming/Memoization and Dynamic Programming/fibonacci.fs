module Fibonacci

open System


let memoize f =
    let cache = ref Map.empty
    fun x ->
        match (!cache).TryFind(x) with
        | Some res -> res
        | None ->
            let res = f x
            cache := (!cache).Add(x,res)
            res


let rec fib_ n =
    if n < 2 then n else (fib (n - 1) + fib (n - 2)) % 100000007
and fib = memoize fib_


let readInt = int << Console.ReadLine


[<EntryPoint>]
let main _ =
    let nCases = readInt()
    for i = 1 to nCases do
        Console.ReadLine() |> int |> fib |> Console.WriteLine
    done
    0
