using AOC2021
using BenchmarkTools: @btime
for i = 1:25
    for j = 1:2
        try
            println("D:$i P:$j - ", solve(FullInput,i, j))
        catch e
            if isa(e, MethodError) || isa(e, SystemError)
                continue
            else
                rethrow()
            end
        end
    end
end
