# https://www.hackerrank.com/challenges/kangaroo/problem

string = readline()
rx = collect(eachmatch(r"\d+", string))
a = parse(Int64, rx[1].match)
b = parse(Int64, rx[2].match)
c = parse(Int64, rx[3].match)
d = parse(Int64, rx[4].match)

k = 0
for x in 0:10000
    global k
    if (a + b*x) == (c + d*x)
        k += 1
    end
end

k > 0 ? println("YES") : println("NO")
