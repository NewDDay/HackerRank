# https://www.hackerrank.com/challenges/staircase/problem

l = parse(Int64, readline())
for x in 1:l
    string = " " ^ (l-x) * "#" ^ x
    println(string)
end
