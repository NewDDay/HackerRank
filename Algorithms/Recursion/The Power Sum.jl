# https://www.hackerrank.com/challenges/the-power-sum/problem

num = parse(Int64, readline())
pow = parse(Int64, readline())
quantity = 0

function rec(sum::Int64, old::Int64, neednum::Int64, pow::Int64)
    saveSum = sum
    global quantity
    while sum < neednum
        old += 1
        sum = saveSum + old^pow
        #println("$saveSum + $(old^pow) = $sum, neednum = $neednum")
        sum == neednum ? quantity += 1 : 0
        sum < neednum ? rec(sum, old, neednum, pow) : 0
    end
    return quantity
end

rec(0, 0, num, pow) |> println
