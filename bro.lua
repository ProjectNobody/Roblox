local function getRandomValue(min, max)
    return math.random(min, max)
end

local function getRandomColor()
    return Color3.new(math.random(), math.random(), math.random())
end

local function getRandomSize()
    return Vector3.new(math.random(1, 10), math.random(1, 10), math.random(1, 10))
end

local function getRandomPosition()
    return Vector3.new(math.random(-50, 50), math.random(5, 50), math.random(-50, 50))
end

local function getRandomRotation()
    return Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360))
end

local function getRandomTransparency()
    return math.random() * 0.7
end

local function getRandomMaterial()
    local materials = {
        Enum.Material.Plastic,
        Enum.Material.Wood,
        Enum.Material.Metal,
        Enum.Material.SmoothPlastic,
        Enum.Material.Neon,
        Enum.Material.Glass,
        Enum.Material.Slate,
        Enum.Material.Cobblestone,
        Enum.Material.CrackedLava,
        Enum.Material.SmoothStuds
    }
    return materials[math.random(1, #materials)]
end

local function getRandomPart()
    local parts = {}
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            table.insert(parts, obj)
        end
    end
    return parts[math.random(1, #parts)]
end

local function createRandomPart()
    local part = Instance.new("Part")
    part.Size = getRandomSize()
    part.Position = getRandomPosition()
    part.Anchored = true
    part.BrickColor = BrickColor.new(getRandomColor())
    part.Material = getRandomMaterial()
    part.Transparency = getRandomTransparency()
    part.Parent = workspace
end

local function modifyRandomPart()
    local part = getRandomPart()
    if part then
        part.Size = getRandomSize()
        part.BrickColor = BrickColor.new(getRandomColor())
        part.Position = getRandomPosition()
        part.Transparency = getRandomTransparency()
    end
end

local function moveRandomPart()
    local part = getRandomPart()
    if part then
        part.Position = getRandomPosition()
    end
end

local function rotateRandomPart()
    local part = getRandomPart()
    if part then
        part.Orientation = getRandomRotation()
    end
end

local function duplicateRandomPart()
    local part = getRandomPart()
    if part then
        local clone = part:Clone()
        clone.Position = getRandomPosition()
        clone.Parent = workspace
    end
end

local function destroyRandomPart()
    local part = getRandomPart()
    if part then
        part:Destroy()
    end
end

local function toggleRandomPartCollide()
    local part = getRandomPart()
    if part then
        part.CanCollide = not part.CanCollide
    end
end

local function changeRandomMaterial()
    local part = getRandomPart()
    if part then
        part.Material = getRandomMaterial()
    end
end

local function changeRandomTransparency()
    local part = getRandomPart()
    if part then
        part.Transparency = getRandomTransparency()
    end
end

local function changeRandomColor()
    local part = getRandomPart()
    if part then
        part.BrickColor = BrickColor.new(getRandomColor())
    end
end

local function makeRandomPartSpin()
    local part = getRandomPart()
    if part then
        game:GetService("RunService").Stepped:Connect(function()
            part.Orientation = part.Orientation + Vector3.new(1, 2, 3)
        end)
    end
end

local function toggleRandomPartAnchor()
    local part = getRandomPart()
    if part then
        part.Anchored = not part.Anchored
    end
end

local function setRandomShape()
    local part = getRandomPart()
    if part and part:IsA("Part") then
        local shapes = {"Ball", "Block", "Cylinder", "Wedge", "Truss"}
        part.Shape = Enum.PartType[shapes[math.random(1, #shapes)]]
    end
end

local function scaleRandomPart()
    local part = getRandomPart()
    if part then
        part.Size = part.Size * Vector3.new(getRandomValue(0.5, 2), getRandomValue(0.5, 2), getRandomValue(0.5, 2))
    end
end

local function attachRandomParts()
    local part1 = getRandomPart()
    local part2 = getRandomPart()
    if part1 and part2 and part1 ~= part2 then
        local weld = Instance.new("WeldConstraint")
        weld.Part0 = part1
        weld.Part1 = part2
        weld.Parent = part1
    end
end

local function addRandomSound()
    local part = getRandomPart()
    if part then
        local sound = Instance.new("Sound")
        sound.SoundId = "rbxassetid://301964312"  -- Random sound ID
        sound.Parent = part
        sound:Play()
    end
end

local function changeRandomTransparencySmooth()
    local part = getRandomPart()
    if part then
        for i = 0, 1, 0.1 do
            part.Transparency = i
            wait(0.1)
        end
    end
end

local function togglePartVisibility()
    local part = getRandomPart()
    if part then
        part.Visible = not part.Visible
    end
end

local function randomPartActions()
    local partActions = {
        createRandomPart,
        modifyRandomPart,
        moveRandomPart,
        rotateRandomPart,
        duplicateRandomPart,
        destroyRandomPart,
        toggleRandomPartCollide,
        changeRandomMaterial,
        changeRandomTransparency,
        changeRandomColor,
        makeRandomPartSpin,
        toggleRandomPartAnchor,
        setRandomShape,
        scaleRandomPart,
        attachRandomParts,
        addRandomSound,
        changeRandomTransparencySmooth,
        togglePartVisibility
    }

    return partActions[math.random(1, #partActions)]
end

local function randomPartActionsWithWait()
    local action = randomPartActions()
    action()
    wait(getRandomValue(0.2, 0.7))  -- Random wait time between actions
end

while true do
    randomPartActionsWithWait()
end

local function createPartWithRandomVelocity()
    local part = Instance.new("Part")
    part.Size = getRandomSize()
    part.Position = getRandomPosition()
    part.Anchored = false
    part.BrickColor = BrickColor.new(getRandomColor())
    part.Material = getRandomMaterial()
    part.Velocity = Vector3.new(getRandomValue(-50, 50), getRandomValue(-50, 50), getRandomValue(-50, 50))
    part.Parent = workspace
end

local function addRandomForce()
    local part = getRandomPart()
    if part then
        local bodyForce = Instance.new("BodyForce")
        bodyForce.Force = Vector3.new(getRandomValue(-1000, 1000), getRandomValue(-1000, 1000), getRandomValue(-1000, 1000))
        bodyForce.Parent = part
    end
end
