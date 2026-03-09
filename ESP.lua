-- ESP Script
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local function createESP(player)
    if player ~= LocalPlayer and player.Character then
        local highlight = Instance.new("Highlight")
        highlight.Parent = player.Character
        highlight.FillColor = Color3.new(1, 0, 0)
        highlight.OutlineColor = Color3.new(1, 1, 1)
    end
end

Players.PlayerAdded:Connect(createESP)
for _, player in pairs(Players:GetPlayers()) do
    createESP(player)
end

print("ESP Script loaded!")
