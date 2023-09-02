-- print("hello world");
-- print("hello lua");
-----------------------------------------------------
-- 调用函数
-- function Fact(n)
--     if n == 0 then
--         return 1
--     else
--         return n * Fact(n - 1)
--     end
-- end

-- print("Enter a number")
-- a = io.read("*n") --读取一个数字
-- print(Fact(a))
-----------------------------------------------------
--全局变量无需声明即可使用，默认的空值为 nil
-- print(b)
-- b = 10
-- print(b)
-----------------------------------------------------
--八种语言类型
--[[
print(type(nil))      --nil
print(type(true))     --boolean
print(type(10.3))     --number
print(type("Lua"))    --string
print(type(io.stdin)) --userdata
print(type(print))    --function
print(type(type))     --function
print(type({}))       --table
print(type(type(X)))  --string
--]]
-----------------------------------------------------
-- and or not
--[[
    A = true
print("false and 5 = ")
print(false and 5)
print("true and 5 = ")
print(true and 5)
if A then
    print(5)
else
    print(A)
end
--
print("false or 5 = ")
print(false or 5)
print("true or 5 = ")
print(true or 5)
if A then
    print(A)
else
    print(5)
end
print(not nil)
print(not not nil)
]]
-----------------------------------------------------
--练习一
-- function Fact(n)
--     if n == 0 then
--         return 1
--     else
--         if n < 0 then
--             return nil
--         else
--             return n * Fact(n - 1)
--         end
--     end
-- end
-- print("Enter a number")
-- a = io.read("*n") --读取一个数字
-- print(Fact(a))
--练习二
-- print(type(nil) == nil) --string:nil=>"nil"
--练习三 不使用type检查Boolean类型
-- a = false
-- print(a == true or a == false)
--练习四 打印自身脚本文件名称
print(arg[0])
