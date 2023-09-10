-- s = "hello world"
-- i, j = string.find(s, "hello")
-- print(i, j)
-- s = "Today is 11/11/1999"
-- d = string.match(s, "%d+/%d+/%d+")
-- print(d)
-- s = string.gsub("Lua is cute", "cute", "great", 1)
-- print(s)
-- s = "some string"
-- words = {}
-- for w in string.gmatch(s, "%a+") do
--     print(w)
-- end
--出现频率最高的单词
high = function(filename)
    io.input(filename)
    local count = {}
    for line in io.lines() do
        for world in string.gmatch(line, "%w+") do
            count[world] = (count[world] or 0) + 1
        end
    end
    return count
end
max = {}
max.k = nil
max.val = nil
for key, value in pairs(high("LuaStudy\\DataFiles\\wolds.txt")) do
    if not max.val or (max.val < value) then
        max.k = key
        max.val = value
    end
end
print(max.k, max.val)
