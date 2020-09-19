# https://www.hackerrank.com/challenges/camelcase/problem

string = readline()
k = 0

for x in 1:length(string)
    global k
    if string[x] == uppercase(string[x])
        k += 1
    end
end

k+1 |> println

