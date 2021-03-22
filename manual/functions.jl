# function syntax
using Distributions

function f(N, mu, sd)
    a = Normal(mu,sd)
    x = rand(a, N)
    return x
end

f(100, 2., 4.)

using Plots
x = 1:10; y = rand(10); # These are the plotting data 
plot(x,y, label="my label")