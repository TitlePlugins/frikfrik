-- Diagnostic loader: fetches main script, reports HTTP, parse, run errors with detail
local URL = "https://raw.githubusercontent.com/TitlePlugins/frikfrik/main/v6.lua?t=" .. tostring(tick())

local function banner(text, color)
    pcall(function()
        local plr = game:GetService("Players").LocalPlayer
        local pg = plr and plr:WaitForChild("PlayerGui", 3)
        if not pg then return end
        local sg = Instance.new("ScreenGui")
        sg.IgnoreGuiInset = true
        sg.ResetOnSpawn = false
        sg.Parent = pg
        local f = Instance.new("Frame", sg)
        f.AnchorPoint = Vector2.new(0.5, 0)
        f.Position = UDim2.new(0.5, 0, 0, 30 + (#pg:GetChildren() * 70))
        f.Size = UDim2.new(0, 600, 0, 70)
        f.BackgroundColor3 = color or Color3.fromRGB(40, 180, 90)
        f.BorderSizePixel = 0
        Instance.new("UICorner", f).CornerRadius = UDim.new(0, 8)
        local t = Instance.new("TextLabel", f)
        t.BackgroundTransparency = 1
        t.Size = UDim2.new(1, -16, 1, 0)
        t.Position = UDim2.new(0, 8, 0, 0)
        t.TextColor3 = Color3.new(1, 1, 1)
        t.Font = Enum.Font.GothamMedium
        t.TextSize = 14
        t.TextWrapped = true
        t.TextXAlignment = Enum.TextXAlignment.Left
        t.Text = text
        game:GetService("Debris"):AddItem(sg, 60)
    end)
    warn("[diag] " .. text)
end

banner("STEP 1: fetching script...", Color3.fromRGB(50, 100, 200))

local ok_http, src = pcall(function() return game:HttpGet(URL, true) end)
if not ok_http then
    banner("HTTP FAIL: " .. tostring(src), Color3.fromRGB(200, 50, 50))
    return
end
banner("STEP 2: HTTP OK, " .. #src .. " bytes received", Color3.fromRGB(50, 100, 200))

-- check first/last bytes
local head = src:sub(1, 60):gsub("\n", "\\n")
local tail = src:sub(-60):gsub("\n", "\\n")
banner("HEAD: " .. head, Color3.fromRGB(80, 80, 100))
banner("TAIL: " .. tail, Color3.fromRGB(80, 80, 100))

local chunk, parseErr = loadstring(src, "main")
if not chunk then
    banner("PARSE FAIL: " .. tostring(parseErr), Color3.fromRGB(200, 50, 50))
    return
end
banner("STEP 3: parse OK, executing...", Color3.fromRGB(50, 100, 200))

local ok_run, runErr = pcall(chunk)
if not ok_run then
    banner("RUN FAIL: " .. tostring(runErr), Color3.fromRGB(200, 50, 50))
else
    banner("STEP 4: executed without error", Color3.fromRGB(40, 180, 90))
end
