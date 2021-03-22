# function syntax
using Distributions

function f(N, mu, sd) :: Float64
    a = Normal(mu,sd)
    x = rand(a, N)
    return x
end

f(500)