# https://www.hackerrank.com/challenges/strong-password/problem?h_r=next-challenge&h_v=zen

numbers = "0123456789"
lower_case = "abcdefghijklmnopqrstuvwxyz"
upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
special_characters = """!@#\$%^&*()-+"""
i = readline()
string = readline()

function nofind(symbol::String, string::String)
    k = 0
    for x in symbol
        if occursin(x, string) k += 1 end
    end
    if k > 0 
        return 0
    else
        return 1
    end
end

nof = nofind(upper_case, string) + nofind(numbers, string) + nofind(lower_case, string) + nofind(special_characters, string)

if length(string)+nof >= 6
    println(nof)
else
    println(6-length(string))
end

