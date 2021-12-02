using AOC2021
for i = 1:25
    for j = 1:2
        try
            println("$i, $j: " ,solve(FullInput,i, j))
        catch
            continue
        end
    end
end
