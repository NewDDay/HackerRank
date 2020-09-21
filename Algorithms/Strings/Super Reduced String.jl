# https://www.hackerrank.com/challenges/reduced-string/problem

function similar(string::String)
    for x in 1:(length(string)-1)
        if string[x] == string[x+1]
            #print("$(string[x]) - $(string[x+1])")
            #Граница
            if x == 1
                string = string[3:end]
                break
            elseif x == (length(string)-1)
                string = string[1:end-2]
                break
            else
                string = string[1:x-1] * string[x+2:end]
                break
            end
        end
    end
    return string
end

s = "aaaabbababbabbab"

for x in 1:100
    global s = similar(s)
end

s == "" ? s = "Empty String" : 0
