x = "This is a string"
x

#Regex

SubString( x, 5)

for i =firstindex(x):lastindex(x)
    try 
        println(x[i])
    catch
        println("whoops")
    end
end

"$x, whom.\n"

occursin(r"^\s*(?:#|$)", x)

m = match(r"(This)", x)

println(m)
m.match
