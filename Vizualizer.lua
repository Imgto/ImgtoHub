local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

local rainbow_mode = true   --Set to true to enable rainbow mode fr
local lerp = true   --your highly making movement better local.
local lerptime = 0.4

for _, part in ipairs(workspace:GetChildren()) do
    if part:IsA("BasePart") and part.Name:match("^VisualizerPart_") then
        part:Destroy()
    end
end

if character:FindFirstChild("VisualizerLabel") then
    character:FindFirstChild("VisualizerLabel"):Destroy()
end


local baseParts = {}
for _, part in ipairs(character:GetDescendants()) do
    if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
        local isAccessory = part:FindFirstAncestorWhichIsA("Accessory")
        if not isAccessory then
            table.insert(baseParts, part)
        end
    end
end

local visualParts = {}
for i, part in ipairs(baseParts) do
    local p = Instance.new("Part")
    p.Anchored = true
    p.CanCollide = false
    p.Size = part.Size
    p.Material = Enum.Material.Neon
    p.Color = Color3.new(1, 1, 1)
    p.Transparency = 0.55
    p.Name = "VisualizerPart_" .. i
    p.Parent = workspace
    table.insert(visualParts, p)
end

local headIndex
for i, part in ipairs(baseParts) do
    if part.Name == "Head" then
        headIndex = i
        break
    end
end

local billboardGui
local textLabel

if headIndex then
    local headVisual = visualParts[headIndex]
    billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 220, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 1, 0)
    billboardGui.AlwaysOnTop = true
    billboardGui.Name = "VisualizerLabel"
    billboardGui.Parent = headVisual

    textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextStrokeTransparency = 0
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.TextScaled = true
    textLabel.Parent = billboardGui
end

local cframeBuffer = {}

local function getRainbowColor(time)
    local hue = (time % 3) / 3
    return Color3.fromHSV(hue, 1, 1)
end

RunService.RenderStepped:Connect(function()
    local ping = LocalPlayer:GetNetworkPing() or 0.1
    local delayTime = ping

    if textLabel then
        local msPing = math.floor(ping * 2000)  
        textLabel.Text = string.format("%s's Visualizer (%dms delay)", LocalPlayer.Name, msPing)
    end

    local snapshot = {}
    for _, part in ipairs(baseParts) do
        table.insert(snapshot, part.CFrame)
    end
    table.insert(cframeBuffer, {
        tick = tick(),
        cframes = snapshot,
    })

    while #cframeBuffer > 0 and tick() - cframeBuffer[1].tick > delayTime / 0.5 do
        table.remove(cframeBuffer, 1)
    end

    if #cframeBuffer > 0 then
        local delayed = cframeBuffer[1]
        for i = 1, #visualParts do
            if not lerp then
                visualParts[i].CFrame = delayed.cframes[i]
            else
                local currentCFrame = visualParts[i].CFrame
                local targetCFrame = delayed.cframes[i]

                visualParts[i].CFrame = currentCFrame:Lerp(targetCFrame, lerptime)
            end
        end
    end

    if rainbow_mode then
        local rainbowColor = getRainbowColor(tick())
        for _, part in ipairs(visualParts) do
            part.Color = rainbowColor
        end
    end
end)

