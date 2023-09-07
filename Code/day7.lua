-- io.input("LuaStudy\\DataFiles\\1.txt")
-- s = io.read("a")
-- io.write(s)
-- local count = 0
-- for line in io.lines() do
--     count = count + 1
--     io.write(count, " ", line, "\n")
-- end
-- read(0) -- 检查是否到文件末尾，如果到末尾了就返回nil
a = "LuaStudy\\DataFiles\\2.txt"
b = "LuaStudy\\DataFiles\\1.txt"
io.input(a)
s = io.read("a")
io.write(s)
io.input(b)
s = io.read("a")
io.write(s)
--今天偷个懒，明天装一个垃圾主机
