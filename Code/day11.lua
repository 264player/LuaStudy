-- print(os.time())
-- for key, value in pairs(os.date("*t", os.time())) do
--     print(key .. ":" .. value)
-- end
-- print(os.date("%Y:%m:%d"))
-----------------------------------------------------
-- function Amonth()
--     local t = os.date("*t")
--     print(t.year .. t.month)
--     t.month = t.month + 1
--     t = os.date("*t", os.time(t))
--     print(t.year .. t.month)
-- end

-- Amonth()
-----------------------------------------------------
-- function GetDay()
--     local day = os.date("%A")
--     local count = 0
--     if (day == "Monday") then
--         count = 1
--     elseif (day == "Tuesday") then
--         count = 2
--     elseif (day == "Wednseday") then
--         count = 3
--     elseif (day == "Thursday") then
--         count = 4
--     elseif (day == "Friday") then
--         count = 5
--     elseif (day == "Saturday") then
--         count = 6
--     elseif (day == "Sunday") then
--         count = 7
--     end
--     return count
-- end

-- print(GetDay())
-----------------------------------------------------
-- function Seconds()
--     local tiemt = os.date("*t")
--     local Sec = (tiemt.hour * 60 + tiemt.min) * 60 + tiemt.sec
--     return Sec
-- end

-- print(Seconds())
-----------------------------------------------------
T1 = os.date("*t")
T2 = os.date("*t")
T1.day = T1.day + 1
T1.month = T1.month + 1
print(T1.month, T1.day)
T2.month = T2.month + 1
T2.day = T2.day + 1
print(T2.month, T2.day)
