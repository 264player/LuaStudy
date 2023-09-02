--八皇后
N = 8
---comment 是否可以安全放置棋子
---@param block number[] 棋盘
---@param x number 棋子横坐标
---@param y number 棋子纵坐标
---@return boolean 是否可以放置
function IsplaceOK(block, x, y)
    for i = 1, y - 1 do
        if (block[i] == x) or (block[i] - i == x - y) or (block[i] + i == x + y) then
            return false
        end
    end
    return true
end

---comment 打印棋盘
---@param block number[] 棋盘
function PrintSolution(block)
    for i = 1, N do
        for j = 1, N do
            io.write(block[i] == j and "X" or "-", " ")
        end
        io.write("\n")
    end
    io.write("\n")
end

--- 开始放置皇后
---@param block number[] 棋盘
---@param y number 当前纵坐标
function AddQueen(block, y)
    if y > N then
        PrintSolution(block)
    else
        for c = 1, N do
            if IsplaceOK(block, c, y) then
                block[y] = c
                AddQueen(block, y + 1)
            end
        end
    end
end

--- 开始放置皇后，只得到一次结果
---@param block number[] 棋盘
---@param y number 当前纵坐标
function AddQueenOnece(block, y)
    if y > N then
        PrintSolution(block)
        return true
    else
        for c = 1, N do
            if IsplaceOK(block, c, y) then
                block[y] = c
                AddQueen(block, y + 1)
                return true
            end
        end
    end
end

AddQueenOnece({}, 1)
-- AddQueen({}, 1)
