local function getRandomColor()
    return Color3.new(math.random(), math.random(), math.random())
end

local function getRandomPart()
    local parts = {}
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            table.insert(parts, obj)
        end
    end

    if #parts == 0 then
        return nil
    end

    return parts[math.random(1, #parts)]
end

while true do
    local randomPart = getRandomPart()
    if randomPart then
        randomPart.BrickColor = BrickColor.new(getRandomColor())
    end
    wait(2)
end
