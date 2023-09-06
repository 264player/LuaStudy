function Ini()
    return 1, 3
end

-- print(Ini())
--多返回值函数 返回值不够就会用nil代替
-- a = { Ini() } -- all
-- for i = 1, #a do
--     print(a[i])
-- end
-- function Add(...)
--     local sum = 0
--     for i = 1, select("#", ...) do
--         sum = sum + select(i, ...)
--     end
--     return sum
-- end

-- print(Add(Ini()))
-- function PrintArgs(...)
--     a = { ... }
--     for i = 1, #a do
--         print(a[i])
--     end
-- end

-- function B(...)
--     return select(1, ...)
-- end

-- function C(...)
--     a = { ... }
--     return table.unpack(a, 1, -2)
-- end

-- function D(a)
--     len = #a
--     local x, y
--     for i = 1, len do
--         y = os.time() % len
--         x = a[y]
--         a[y] = a[i]
--         a[i] = x
--     end
-- end
--------------------------------------------------
function callChain(func)
    local chain = {}
    local currentFunc = func

    while currentFunc do
        table.insert(chain, currentFunc)
        currentFunc = currentFunc()
    end

    return chain
end

function func1()
    print("func1")
    return func2
end

function func2()
    print("func2")
    return func3
end

function func3()
    print("func3")
    return func1
end

local chain = callChain(func1)

for _, func in ipairs(chain) do
    func()
end
