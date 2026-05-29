-- Simple test script to verify Solara executes anything at all
print("=========================================")
print("[frikfrik test] Script executed at "..tostring(os.time()))
print("[frikfrik test] Player: "..tostring(game.Players.LocalPlayer and game.Players.LocalPlayer.Name))
print("[frikfrik test] PlaceId: "..tostring(game.PlaceId))
print("[frikfrik test] loadstring exists: "..tostring(loadstring ~= nil))
print("[frikfrik test] HttpGet exists: "..tostring(game.HttpGet ~= nil))
print("[frikfrik test] bit32 exists: "..tostring(bit32 ~= nil))
print("=========================================")

pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "frikfrik test",
        Text = "Solara works! Check F9 console for details.",
        Duration = 10,
    })
end)
