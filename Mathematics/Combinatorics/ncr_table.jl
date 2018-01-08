# Enter your code here 
function choose(n, r)
    Int(factorial(n) // factorial(n - r) // factorial(r))
end

n = parse(Int, readline())
for i = 1:n
    x = parse(Int, readline())
    choices = (choose(x, j) for j = 0:x)
    println(join(choices, " "))
end