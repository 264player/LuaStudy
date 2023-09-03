-- print(5E10)
-- print(math.type(5))
-- print(math.type(5.0))
-- print(0xa.bp2)     -- 0x开头的16进制，p是16进制数的阶码
-- print(string.format("%a", 419))
-- print(13 + 15)     --28
-- print(13.0 + 15.0) --28.0
-- -- 5.3之后整数除法的结果依然是整数，浮点数的结果依然是浮点数
-- -- < > <= >= == ~=
-- for i = 0, 10 do
--     print(math.random(os.time()))
-- end
-- print(math.floor(-1.6))
-- print(math.ceil(-1.6))
-- print(math.modf(-1.6))
-- 无偏取整：向最近的偶数取整
-- function Round(x)
--     local f = math.floor(x)
--     if (f == x) or (x % 2.0 == 0.5) then
--         return f
--     else
--         return math.floor(x + 0.5)
--     end
-- end

-- print(Round(2.5))
-- print(Round(3.5))
-- print(3 + 0.0)    --转为浮点型
-- print(2.0 | 0)    -- 和0按位或可以转为整型(无小数部分数值)
-- math.integer(2.0) --可以强转为整数，含有小数部分或者超出范围，就返回nil
--算符优先级
-- ^
-- - # ~ not
-- * / // %
-- + -
-- ..
-- << >>
-- &
-- ~
-- |
-- < > <= >= ~= ==
-- and
-- or
-- for i = -10, 10 do
--     print(i, i % 3)
-- end
-- print(2 ^ 3 ^ 4)
-- print(2 ^ -3 ^ 4)
-----------------------------------------------------------
--通过高、母线与轴线的夹角计算圆锥体体积
-- function V(h, angle)
--     return 1 / 3 * math.pi * h ^ 3 * math.tan(angle)
-- end
-- print(V(5, math.pi / 4))
-----------------------------------------------------------
--符合高斯曲线的伪随机数生成器(编写失败)
function Myrandom(n, list)
    for i = 1, n do
        local u1 = math.random(os.time())
        local u2 = math.random(os.time())
        a1 = math.sqrt(2.0 * math.log(u1, math.exp(1)))
        a2 = math.cos(2.0 * math.pi * u2)
        list[i] = a1 * a2
    end
end

List = {}
Myrandom(100, List)
for i = 1, 100 do
    print(List[i])
end
