-- frikfrik stub: minimal beacon, no dependencies
warn("[stub] reached at "..tostring(tick()))
print("[stub] Players.LocalPlayer = "..tostring(game:GetService("Players").LocalPlayer))
print("[stub] HttpGet exists = "..tostring(type(game.HttpGet)))
print("[stub] loadstring exists = "..tostring(type(loadstring)))

local ok, err = pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "STUB OK",
        Text = "Beacon reached. Solara works.",
        Duration = 15,
    })
end)
warn("[stub] SetCore notification ok="..tostring(ok).." err="..tostring(err))

-- Visible on-screen banner as fallback in case notifications are off
pcall(function()
    local plr = game:GetService("Players").LocalPlayer
    local pg = plr and plr:WaitForChild("PlayerGui", 3)
    if not pg then return end
    local sg = Instance.new("ScreenGui")
    sg.Name = "__stub_banner"
    sg.IgnoreGuiInset = true
    sg.ResetOnSpawn = false
    sg.Parent = pg
    local f = Instance.new("Frame", sg)
    f.AnchorPoint = Vector2.new(0.5, 0)
    f.Position = UDim2.new(0.5, 0, 0, 30)
    f.Size = UDim2.new(0, 360, 0, 50)
    f.BackgroundColor3 = Color3.fromRGB(40, 180, 90)
    f.BorderSizePixel = 0
    local c = Instance.new("UICorner", f); c.CornerRadius = UDim.new(0, 8)
    local t = Instance.new("TextLabel", f)
    t.BackgroundTransparency = 1
    t.Size = UDim2.new(1, 0, 1, 0)
    t.TextColor3 = Color3.new(1, 1, 1)
    t.Font = Enum.Font.GothamBold
    t.TextSize = 18
    t.Text = "STUB OK — script reached entry"
    game:GetService("Debris"):AddItem(sg, 20)
end)
