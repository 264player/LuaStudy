-- a = "hello"
-- print(#a) -->a.length
-- ..字符串链接符
-- print("result is " .. 3)
-- print("\n\x41")
-- 多行字符串/长字符串
-- page = [[
-- <p>你好</p>
-- ]]
-- print(tonumber("12.2"))
-- print(tonumber("12", 8))
-------------------------------------------
-- #s == string.len(s)
-- a = "1"
-- print(string.rep(a, 2 ^ 20))
-- print(string.rep("12", 10, ","))
-- print(string.sub("asdfghjkl", 2, -1))
-- print(string.char(64, 65, 66))
-- print(string.byte("asd", 2))
-- print(string.byte("abcdz", 1, -1))
-- print(string.format("1+1=%d", 1 + 1))
-- s = "Asd"
-- print(s:upper())
-- utf8.char == string.char
-- utf8.codepoint == string.byte
-- for i,c in utf8.codes("hello") do
--     print(i,c)
-- end
----------------------------------------------
-- insert插入字符串
-- function Insert(str1, p, str2)
--     local s1 = ""
--     local s2 = ""
--     if (p ~= 1) then
--         s1 = str1:sub(1, p - 1)
--     end
--     if (p ~= str1:len() + 1) then
--         s2 = str1:sub(p, -1)
--     end
--     return s1 .. str2 .. s2
-- end

-- print(Insert("Hello", string.len("Hello") + 1, " Lua"))
----------------------------------------------
-- insert插入字符串utf8版
-- function Insert(str1, p, str2)
--     local s1 = ""
--     local s2 = ""
--     if (p ~= 1) then
--         s1 = str1:sub(1, utf8.offset(str1, p - 1))
--     end
--     if (p ~= str1:len() + 1) then
--         s2 = str1:sub(utf8.offset(str1, p), utf8.offset(str1, -1))
--     end
--     return s1 .. str2 .. s2
-- end

-- print(Insert("Hello", string.len("Hello") + 1, " Lua"))
--------------------------------------------
--Remove
-- function Remove(str, startp, endp)
--     if startp == 1 and endp ~= -1 then
--         return str:sub(endp + 1, -1)
--     else
--         if endp == -1 or endp == str:len() then
--             return str:sub(1, startp - 1)
--         else
--             return str:sub(1, startp - 1) .. str:sub(endp + 1, -1)
--         end
--     end
-- end

-- print(Remove("hello", 1, -1))
--------------------------------------------
--回文串
function Ispali(str)
    i = 1
    j = str:len()
    while i < j do
        if (str[i] ~= str[j]) then
            return false
        end
        i = i + 1
        j = j - 1
    end
    return true
end

print(Ispali("asaasa"))
