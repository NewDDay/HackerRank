# https://www.hackerrank.com/challenges/two-characters/problem

function checker(string::String)
    MustBe = string[1:2]^(length(string) ÷ 2) * (length(string) % 2 == 1 ? string[1] : "")
    occursin(MustBe, string) ? length(string) : 0
end

numChar = parse(Int64, readline())
string = readline()

uniqueChar = Char[]

for x in 1:numChar
    k = 0
    for y in x:numChar
        string[x] == string[y] ? k += 1 : 0
        println("$(string[x]) - $(string[y]) - $k")
    end
    k == 1 ? push!(uniqueChar, string[x]) : 0
end

maxsize = 0
for x in 1:size(uniqueChar, 1)-1
    global maxsize
    for y in x+1:size(uniqueChar, 1)
        nominee = string
        #println("$(uniqueChar[x]) - $(uniqueChar[y])")
        for z in 1:size(uniqueChar, 1)
            ((uniqueChar[z] != uniqueChar[x]) && (uniqueChar[z] != uniqueChar[y])) ? nominee = replace(nominee, uniqueChar[z] => "") : 0
        end
        checker(nominee) > maxsize ? maxsize = checker(nominee) : 0
    end
end





#---------------------------------------
# For the site

fptr = open(ENV["OUTPUT_PATH"], "w")

function checker(string::String)
    MustBe = string[1:2]^(length(string) ÷ 2) * (length(string) % 2 == 1 ? string[1] : "")
    occursin(MustBe, string) ? length(string) : 0
end

numChar = parse(Int64, readline())
string = readline()

uniqueChar = Char[]

for x in 1:numChar
    k = 0
    for y in x:numChar
        string[x] == string[y] ? k += 1 : 0
    end
    k == 1 ? push!(uniqueChar, string[x]) : 0
end

maxsize = 0
for x in 1:size(uniqueChar, 1)-1
    global maxsize
    for y in x+1:size(uniqueChar, 1)
        nominee = string
        for z in 1:size(uniqueChar, 1)
            ((uniqueChar[z] != uniqueChar[x]) && (uniqueChar[z] != uniqueChar[y])) ? nominee = replace(nominee, uniqueChar[z] => "") : 0
        end
        checker(nominee) > maxsize ? maxsize = checker(nominee) : 0
    end
end

write(fptr, "$maxsize" * "\n")

close(fptr)
