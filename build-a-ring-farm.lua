-- Deobfuscated build-a-ring-farm.lua (Lamduck)
-- Original: https://github.com/lamduck2005/RobloxScript

print("Loading Lamduck - Build A Ring Farm");
((game:GetService("Players"))["LocalPlayer"]:WaitForChild("PlayerGui"))["ScreenOrientation"]=Enum["ScreenOrientation"]["LandscapeSensor"]
local r=(loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua")))()
local h=r:CreateWindow({["Title"]="Build A Ring Farm";["Author"]="Lamduck",["Folder"]="Lamduck";["Transparent"]=false;["HasOutline"]=false;["ToggleKey"]=Enum["KeyCode"]["RightControl"]})h:EditOpenButton({["Title"]="Open | RightCtrl";["Icon"]="";["OnlyMobile"]=false,["Enabled"]=true;["Draggable"]=true})
local m=game:GetService("ReplicatedStorage")

-- =============================================================
-- [Lamduck-FIX by user] Robust SeedRoller remote resolver
-- Fixes broken Auto Roll: tries known remote names + scans
-- ReplicatedStorage for any RemoteEvent/Function whose name
-- contains "Roll" and "Seed". Resolved remote is cached.
-- =============================================================
local __LD_ROLL_REMOTE = nil
local __LD_ROLL_PRINTED = false
local function __LD_findRoll()
    if __LD_ROLL_REMOTE and __LD_ROLL_REMOTE.Parent then
        return __LD_ROLL_REMOTE
    end
    local candidates = { "RollSeeds","RollSeed","Roll","SeedRoll","SeedRoller","RollGacha","GachaRoll" }
    local remotes = m:FindFirstChild("Remotes")
    if remotes then
        for _, name in ipairs(candidates) do
            local r = remotes:FindFirstChild(name, true)
            if r and (r:IsA("RemoteEvent") or r:IsA("RemoteFunction")) then
                __LD_ROLL_REMOTE = r
                if not __LD_ROLL_PRINTED then
                    print("[Lamduck-FIX] Resolved roll remote by exact name: "..r:GetFullName())
                    __LD_ROLL_PRINTED = true
                end
                return r
            end
        end
    end
    -- fuzzy search across whole ReplicatedStorage
    for _, d in ipairs(m:GetDescendants()) do
        if (d:IsA("RemoteEvent") or d:IsA("RemoteFunction")) then
            local n = string.lower(d.Name)
            if string.find(n, "roll") and string.find(n, "seed") then
                __LD_ROLL_REMOTE = d
                if not __LD_ROLL_PRINTED then
                    print("[Lamduck-FIX] Resolved roll remote by fuzzy match: "..d:GetFullName())
                    __LD_ROLL_PRINTED = true
                end
                return d
            end
        end
    end
    if not __LD_ROLL_PRINTED then
        warn("[Lamduck-FIX] Could NOT find any Roll/Seed remote in ReplicatedStorage. Open Dex and look for the correct remote.")
        __LD_ROLL_PRINTED = true
    end
    return nil
end
local function __LD_fireRoll()
    local r = __LD_findRoll()
    if not r then return false end
    local ok, err = pcall(function()
        if r:IsA("RemoteFunction") then
            r:InvokeServer()
        else
            r:FireServer()
        end
    end)
    if not ok then
        warn("[Lamduck-FIX] Roll remote call failed: "..tostring(err))
        __LD_ROLL_REMOTE = nil -- force re-resolve next time
    end
    return ok
end
-- =============================================================

local S=game:GetService("HttpService")
local C=game:GetService("SoundService")
local W=game:GetService("Lighting")
local z=game["Players"]["LocalPlayer"]
local V=game:GetService("VirtualUser")z["Idled"]:Connect(function()V:CaptureController()V:ClickButton2(Vector2["new"]())print("[Lamduck] Anti-AFK Triggered - Prevented Disconnect!")end)
local R={["SawRange"]={["SignName"]="PlotUpgradeSign",["UIFolder"]="SawRange";["RemoteArg"]="ExtraSawRange",["Type"]="plot"};["SawYield"]={["SignName"]="PlotUpgradeSign";["UIFolder"]="SawYield";["RemoteArg"]="ExtraYield";["Type"]="plot"};["SprinklerRange"]={["SignName"]="PlotUpgradeSign",["UIFolder"]="SprinklerRange";["RemoteArg"]="ExtraSprinklerRange";["Type"]="plot"},["SprinklerPower"]={["SignName"]="PlotUpgradeSign",["UIFolder"]="SprinklerPower";["RemoteArg"]="ExtraPower",["Type"]="plot"};["SeedLuck"]={["SignName"]="UpgradeSign";["UIFolder"]="SeedLuck",["Type"]="seedluck"};["SeedRolls"]={["SignName"]="UpgradeSign";["UIFolder"]="SeedRolls";["Type"]="seedrolls"}}
local c={"SawRange";"SawYield","SprinklerRange";"SprinklerPower";"SeedLuck","SeedRolls"}
local 
function x(r,h)
  if h and h~=""then
     print("[Lamduck] Insufficient Cash - Skipped "..(r..(": "..tostring(h))))
  else print("[Lamduck] Insufficient Cash - Skipped "..r)
  end 
end _G["AutoSellCrates"]=false _G["AutoUnlockFarmPlots"]=false _G["AutoExpandFarmPlot"]=false _G["AutoCollectQueenBeeHoneycomb"]=false _G["AutoPlantRush"]=false _G["AutoClaimPlantRushBossDrop"]=false _G["AutoSubmitQueenBeeHoneyToken"]=false _G["AutoSubmitSeedToCollector"]=false _G["AutoSubmitAllSeedsToCollector"]=false _G["TargetSeedCollectorSubmitSeeds"]={}_G["F2_AutoCompostSelected"]=false _G["F2_AutoCompostByRarity"]=false _G["F2_TargetCompostSeeds"]={}_G["F2_TargetCompostRarities"]={}_G["F2_MaxCompostInsertAmount"]=0 _G["F2_CompostInsertDelay"]=2 _G["F2_AutoPullLever"]=false _G["F2_AutoPullLeverWhenMax"]=false _G["F2_PullLeverDelay"]=2 _G["F3_AutoCompostSelected"]=false _G["F3_AutoCompostByRarity"]=false _G["F3_TargetCompostSeeds"]={}_G["F3_TargetCompostRarities"]={}_G["F3_MaxCompostInsertAmount"]=0 _G["F3_CompostInsertDelay"]=2 _G["F3_AutoPullLever"]=false _G["F3_AutoPullLeverWhenMax"]=false _G["F3_PullLeverDelay"]=2 _G["AutoClaimDailyReward"]=false _G["AutoClaimPlaytimeReward"]=false _G["AutoSpinWheel"]=false _G["AutoFeedPets"]=false _G["TargetPetTreatNames"]={}_G["AutoUpgradePets"]=false _G["AutoSellPets"]=false _G["TargetPetSellNames"]={}_G["F1_AutoPlantByRarity"]=false _G["F1_TargetAutoPlantRarities"]={}_G["F2_AutoPlantByRarity"]=false _G["F2_TargetAutoPlantRarities"]={}_G["F3_AutoPlantByRarity"]=false _G["F3_TargetAutoPlantRarities"]={}_G["AutoBuyAllGears"]=false _G["AutoBuySelectedGears"]=false _G["AutoUnlockEggSlots"]=false _G["SessionUnlockedEggSlots"]={}_G["AutoBuyAllEggs"]=false _G["AutoBuySelectedEggs"]=false _G["TargetEggShopEggs"]={}_G["SkipMoneyCheck"]=false _G["AutoRollAndBuyAll"]=false _G["AutoRollAndBuySelected"]=false _G["AutoRollAndBuyByRarity"]=false _G["TargetGachaSeeds"]={}_G["TargetGachaRarities"]={}_G["HideOtherPlots"]=false _G["MuteAndHideAlerts"]=false _G["AutoUpgradePowerups"]=false _G["TargetPowerups"]={}_G["FloorUpgradeConfig"]={[1]={["AutoUpgrade"]=false;["AutoAll"]=false;["TargetPlantNames"]={}},[2]={["AutoUpgrade"]=false;["AutoAll"]=false,["TargetPlantNames"]={}},[3]={["AutoUpgrade"]=false,["AutoAll"]=false,["TargetPlantNames"]={}}}_G["FloorFertilizeConfig"]={[1]={["AutoFertilize"]=false,["AutoAll"]=false,["TargetPlantNames"]={};["TargetFertilizerTypes"]={}},[2]={["AutoFertilize"]=false;["AutoAll"]=false;["TargetPlantNames"]={},["TargetFertilizerTypes"]={}};[3]={["AutoFertilize"]=false,["AutoAll"]=false,["TargetPlantNames"]={};["TargetFertilizerTypes"]={}}}
local b={}
local I={["isSellCratesLoopRunning"]=false,["isUnlockFarmPlotsLoopRunning"]=false,["isExpandFarmPlotLoopRunning"]=false,["isCollectHoneycombLoopRunning"]=false,["isPlantRushLoopRunning"]=false,["isSubmitQueenBeeHoneyTokenLoopRunning"]=false;["isSeedCollectorSubmitLoopRunning"]=false;["isF2CompostLoopRunning"]=false;["isF2PullLeverLoopRunning"]=false;["isF2PullLeverWhenMaxLoopRunning"]=false;["isF3CompostLoopRunning"]=false;["isF3PullLeverLoopRunning"]=false;["isF3PullLeverWhenMaxLoopRunning"]=false;["isClaimPlaytimeRewardLoopRunning"]=false,["isClaimDailyRewardLoopRunning"]=false;["isSpinWheelLoopRunning"]=false;["isAutoFeedPetsLoopRunning"]=false;["isAutoUpgradePetsLoopRunning"]=false,["isAutoSellPetsLoopRunning"]=false,["isBuyAllGearsLoopRunning"]=false;["isBuySelectedGearsLoopRunning"]=false,["isUnlockEggSlotsLoopRunning"]=false,["isEggShopBuyLoopRunning"]=false,["isUpgradePlantsF1LoopRunning"]=false,["isUpgradePlantsF2LoopRunning"]=false;["isUpgradePlantsF3LoopRunning"]=false;["isFertilizePlantsF1LoopRunning"]=false,["isFertilizePlantsF2LoopRunning"]=false;["isFertilizePlantsF3LoopRunning"]=false,["isUpgradePowerupsLoopRunning"]=false;["isSeedGachaLoopRunning"]=false;["isClaimPlantRushBossDropLoopRunning"]=false}_G["UIRefs"]={}
local q={}
local u={}
local l={["K"]=1000;["M"]=1000000;["B"]=1000000000;["T"]=1000000000000;["QA"]=1e+015;["QD"]=1e+015;["QI"]=1e+018,["QN"]=1e+018;["SX"]=1e+021;["SP"]=1e+024,["OC"]=1e+027,["O"]=1e+027,["NO"]=1e+030,["N"]=1e+030,["DE"]=1e+033,["D"]=1e+033;["UN"]=1e+036,["UD"]=1e+036;["DD"]=1e+039;["TD"]=1e+042;["QAD"]=1e+045;["QID"]=1e+048,["SXD"]=1e+051;["SPD"]=1e+054,["OCD"]=1e+057;["NOD"]=1e+060;["VG"]=1e+063}
local 
function v(r)
  if type(r)=="number"then
     return r 
  end 
  if type(r)~="string"or r==""then
     return 0 
  end 
  local h=(string["upper"](r)):gsub("[$%,%s]","")
  local m,S=string["match"](h,"^([%d%.]+)(%a*)$")
  if not m then
     return 0 
  end 
  local C=1 
  if S and S~=""then
     C=l[S]
    if not C then
       warn("[Lamduck] Unknown money suffix not in dictionary: "..S)C=1 
    end 
  end 
  return((tonumber(m)or 0))*C 
end 
local 
function e()
  local r=nil 
  local h=z:FindFirstChild("leaderstats")or z:FindFirstChild("Leaderstats")
  if h and h:FindFirstChild("Cash")then
     r=v(h["Cash"]["Value"])
  end 
  local m=nil 
  local S=z:FindFirstChild("PlayerGui")
  local C=S and(S:FindFirstChild("MainUI")and(S["MainUI"]:FindFirstChild("MoneyCounter")and S["MainUI"]["MoneyCounter"]:FindFirstChild("CashCounter")))
  if C then
     m=v(C["Text"])
  end 
  if m~=nil and(r~=nil and m~=r)then
     print("[Lamduck] Cash mismatch | leaderstats: "..(tostring(r)..(" | gui: "..(tostring(m).." | using gui"))))
    return m 
  end 
  if m~=nil then
     return m 
  end 
  if r~=nil then
     return r 
  end 
  return 0 
end 
local 
function H(r,h,m,S)
  if _G["SkipMoneyCheck"]then
     return true 
  end 
  local C=S~=nil and S or e()
  if C>=r then
     return true 
  end 
  if h then
     x(h,m)
  end 
  return false 
end 
local 
function E(r,h)pcall(function()local S=R[r]["RemoteArg"]local C="Floor"..h m["Remotes"]["PlotUpgradeTransaction"]:InvokeServer(table["unpack"]({[1]=S,[2]=C}))end)
end 
local 
function d()pcall(function()m["Remotes"]["UpgradeSeedLuck"]:InvokeServer()end)
end 
local 
function J()pcall(function()m["Remotes"]["UpgradeSeedRolls"]:InvokeServer()end)
end 
local w=nil 
local 
function o()
  if w and w["Parent"]then
     return w 
  end w=nil 
  local r=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")
  if r then
     for r,h in ipairs(r:GetChildren())
      do 
        local m=h:FindFirstChild("Owner")
        if m and m["Value"]==z then
           w=h 
          return w 
        end 
      end 
    end pcall(function()local h=m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("Plot")if h and h:FindFirstChild("GetPlot")then local m=h["GetPlot"]:InvokeServer()if typeof(m)=="Instance"then w=m elseif typeof(m)=="string"and r then w=r:FindFirstChild(m)end end end)
    return w 
  end 
  local A=nil 
  local 
  function t()
    if A then
       return A 
    end 
    local r=o()
    if r then
       A=r["Name"]
      return A 
    end 
    local h=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")
    if h then
       for r,h in ipairs(h:GetChildren())
        do 
          for r,m in ipairs(h:GetDescendants())
            do 
              if m:IsA("TextLabel")or m:IsA("TextButton")then
                 local r=tostring(m["Text"])
                if string["find"](string["lower"](r),string["lower"](z["Name"]),1,true)then
                   A=h["Name"]
                  return A 
                end 
              end 
            end 
          end 
        end 
        return nil 
      end 
      local k=nil 
      local 
      function T(r)
        local h=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")
        if not h then
           return 
        end 
        if r then
           if not k then
             k=t()
          end 
          if not k then
             print("[Lamduck] Error: Could not locate your plot name!")
            return 
          end 
          for r,h in ipairs(h:GetChildren())
            do 
              if h["Name"]~=k then
                 h["Parent"]=W 
              end 
            end 
          else 
            if not k then
               return 
            end 
            for r,m in ipairs(W:GetChildren())
              do 
                if string["find"](m["Name"],"Plot")and m["Name"]~=k then
                   m["Parent"]=h 
                end 
              end 
            end 
          end 
          local 
          function Q(r)
            local h={}
            for r,m in ipairs(r:GetDescendants())
              do 
                if m["Name"]=="Dirt"then
                   table["insert"](h,m)
                end 
              end 
              return h 
            end 
            local f={"","SecondFloor";"ThirdFloor"}
            local 
            function O(r)
              local h=o()
              if not h then
                 return nil 
              end 
              if r==1 then
                 return h:FindFirstChild("FarmPlot")
              else 
                local m=f[r]
                if m then
                   local r=h:FindFirstChild(m)
                  if r then
                     return r:FindFirstChild("FarmPlot")
                  end 
                end 
              end 
              return nil 
            end 
            local 
            function n(r)
              local h={}
              local m=O(r)
              if not m then
                 return h 
              end 
              for m,S in ipairs(m:GetChildren())
                do 
                  local C=string["match"](S["Name"],"^Plot(%d+)$")
                  if C then
                     local m=tonumber(C)
                    local W=S:FindFirstChild("Dirt")
                    if W then
                       local C={["Instance"]=W;["Floor"]=r,["PlotName"]=S["Name"];["PlotIndex"]=m;["PlantFullyGrown"]=W:GetAttribute("PlantFullyGrown")or false,["PlantLevel"]=W:GetAttribute("PlantLevel")or 0,["PlantMaxStages"]=W:GetAttribute("PlantMaxStages")or 0;["PlantMutation"]=W:GetAttribute("PlantMutation")or "Normal";["PlantName"]=W:GetAttribute("PlantName")or "",["PlantStage"]=W:GetAttribute("PlantStage")or 0;["PlantTag"]=W:GetAttribute("PlantTag")or "";["PlotRing"]=W:GetAttribute("PlotRing")or 0;["Watered"]=W:GetAttribute("Watered")or false,["WaterTimeBonus"]=W:GetAttribute("WaterTimeBonus")or 0;["Fertilized"]=W:GetAttribute("Fertilized")or false}table["insert"](h,C)
                    end 
                  end 
                end 
                return h 
              end 
              local 
              function y()
                return z["Name"]
              end 
              local G={{["Label"]="Farm Floor 1";["DestinationType"]="MyPlotFloor";["PlotFloorModelName"]="Floor";["PlotFloorYOffset"]=5};{["Label"]="Farm Floor 2",["DestinationType"]="MyPlotFloor";["PlotFloorModelName"]="SecondFloor",["PlotFloorYOffset"]=35};{["Label"]="Farm Floor 3",["DestinationType"]="MyPlotFloor";["PlotFloorModelName"]="ThirdFloor";["PlotFloorYOffset"]=70};{["Label"]="Seed Collector",["DestinationType"]="WorkspacePivot";["WorkspaceModelName"]="SeedCollector",["PositionOffset"]=Vector3["new"](0,5,8)};{["Label"]="Pet Merchant";["DestinationType"]="WorkspaceChildCFrame",["WorkspaceModelName"]="PetMerchant";["WorkspaceChildName"]="MerchantSign";["PositionOffset"]=Vector3["new"](0,5,10)};{["Label"]="Friend-O-Tron",["DestinationType"]="WorkspacePivot",["WorkspaceModelName"]="FriendOTron",["PositionOffset"]=Vector3["new"](0,5,10)},{["Label"]="Rejoin",["DestinationType"]="Rejoin"}}
              local 
              function U(r)
                local h=z["Character"]and z["Character"]:FindFirstChild("HumanoidRootPart")
                if h and r then
                   h["CFrame"]=r 
                  return true 
                end 
                return false 
              end 
              local 
              function j()
                if queue_on_teleport then
                   queue_on_teleport("print(\"[Lamduck] Rejoined Successfully!\")")
                end;
                (game:GetService("TeleportService")):TeleportToPlaceInstance(game["PlaceId"],game["JobId"],z)
              end 
              local 
              function L(r)
                if r["DestinationType"]=="MyPlotFloor"then
                   local h=o()
                  if not h then
                     return nil 
                  end 
                  return h:GetPivot()*CFrame["new"](0,r["PlotFloorYOffset"]or 5,0)
                end 
                if r["DestinationType"]=="WorkspacePivot"then
                   local h=workspace:FindFirstChild(r["WorkspaceModelName"])
                  if not h then
                     return nil 
                  end 
                  return h:GetPivot()*CFrame["new"](r["PositionOffset"]or Vector3["zero"])
                end 
                if r["DestinationType"]=="WorkspaceChildCFrame"then
                   local h=workspace:FindFirstChild(r["WorkspaceModelName"])
                  local m=h and h:FindFirstChild(r["WorkspaceChildName"])
                  if not m then
                     return nil 
                  end 
                  return m["CFrame"]+((r["PositionOffset"]or Vector3["zero"]))
                end 
                return nil 
              end 
              local 
              function B(r)
                if r["DestinationType"]=="Rejoin"then
                   j()
                  return 
                end U(L(r))
              end 
              local 
              function a()
                if U(L(G[1]))then
                   r:Notify({["Title"]="Teleport",["Content"]="Arrived at your plot!",["Duration"]=2})
                else r:Notify({["Title"]="Error",["Content"]="Plot not found or character not loaded.";["Duration"]=2})
                end 
              end 
              local 
              function s(r)
                local h={}
                for r in pairs(r)
                  do table["insert"](h,r)
                  end table["sort"](h)
                  return h 
                end 
                local 
                function F()
                  local r={"Normal"}
                  local h=m:FindFirstChild("Shared")and m["Shared"]:FindFirstChild("MutationAppliers")
                  if h then
                     for h,m in ipairs(h:GetChildren())
                      do 
                        if m["Name"]and m["Name"]~=""then
                           table["insert"](r,m["Name"])
                        end 
                      end 
                    end table["sort"](r,function(r,h)if r=="Normal"then return true end if h=="Normal"then return false end return r<h end)
                    if#r==1 then
                       r={"Normal","Alien","Autumn";"Cosmic";"Farm","Frozen","Honeycomb","Radioactive","Rainbow";"Void","Wet"}
                    end 
                    return r 
                  end 
                  local 
                  function Y(r,h)
                    local m=o()
                    if not m then
                       return nil 
                    end 
                    local S=R[r]
                    if not S then
                       return nil 
                    end 
                    local C=m 
                    if h>1 then
                       if S["SignName"]=="UpgradeSign"then
                         return nil 
                      end 
                      local r={"","SecondFloor";"ThirdFloor","FourthFloor","FifthFloor";"SixthFloor"}
                      local W=r[h]
                      if not W then
                         return nil 
                      end C=m:FindFirstChild(W)
                      if not C then
                         return nil 
                      end 
                    end 
                    local W=C:FindFirstChild(S["SignName"])
                    if W and(W:FindFirstChild("Screen")and W["Screen"]:FindFirstChild("SurfaceGui"))then
                       local r=W["Screen"]["SurfaceGui"]:FindFirstChild(S["UIFolder"])
                      if r and(r:FindFirstChild("Btn")and r["Btn"]:FindFirstChild("Txt"))then
                         local h=r["Btn"]["Txt"]["Text"]
                        if h=="MAX"then
                           return "MAX"
                        end 
                        return v(h)
                      end 
                    end 
                    return nil 
                  end 
                  local 
                  function i()
                    local r={}
                    local h=m:FindFirstChild("Assets")and m["Assets"]:FindFirstChild("Gear")
                    if h then
                       for h,m in pairs(h:GetChildren())
                        do table["insert"](r,m["Name"])
                        end 
                      end table["sort"](r)
                      return r 
                    end 
                    local K=i()
                    local 
                    function g()
                      local r=z:FindFirstChild("PlayerGui")
                      local h=r and r:FindFirstChild("MainUI")
                      local m=h and h:FindFirstChild("Menus")
                      local S=m and m:FindFirstChild("GearShopFrame")
                      return S and S:FindFirstChild("ScrollingFrame")
                    end 
                    local 
                    function D(r)
                      local h=g()
                      if not h then
                         return "N/A"
                      end 
                      local m=h:FindFirstChild(r)
                      if not m then
                         return "N/A"
                      end 
                      for r,h in pairs(m:GetDescendants())
                        do 
                          if h:IsA("TextLabel")or h:IsA("TextButton")then
                             local r=h["Text"]
                            if r and string["sub"](r,1,1)=="$"then
                               return r 
                            end 
                          end 
                        end 
                        return "N/A"
                      end 
                      local 
                      function P(r)
                        local h=m:FindFirstChild("GearStocks")and m["GearStocks"]:FindFirstChild(z["Name"])
                        if not h then
                           return 0 
                        end 
                        local S=h:FindFirstChild(r)
                        return S and S["Value"]or 0 
                      end 
                      local 
                      function X()
                        local r=workspace:FindFirstChild("PetMerchant")
                        if not r then
                           return "--- EGG SHOP ---\nPet Merchant not found"
                        end 
                        local h={}
                        local m=r:FindFirstChild("MerchantSign")
                        local S=m and m:FindFirstChildWhichIsA("SurfaceGui")
                        local C=S and S:FindFirstChild("TimeLabel")
                        local W=C and C["Text"]or "Restocks In: Unknown"table["insert"](h,"--- EGG SHOP ("..(W..") ---"))
                        local z=false 
                        for m=1,5,1 
                          do 
                            local S=r:FindFirstChild("Podium"..(m.."Stock"))or r:FindFirstChild("Podium"..m)
                            if S then
                               local r=S:FindFirstChild("EggLabel",true)
                              local C=S:FindFirstChild("PriceLabel",true)
                              if r and(C and r["Text"]~="")then
                                 table["insert"](h,string["format"]("[Slot %d] %s | %s",m,r["Text"],C["Text"]))z=true 
                              end 
                            end 
                          end 
                          if not z then
                             table["insert"](h,"No eggs listed (loading or empty)")
                          end 
                          return table["concat"](h,"\n")
                        end 
                        local 
                        function N()
                          local r={"--- GEAR SHOP ---"}
                          local h=false 
                          for m,S in ipairs(K)
                            do 
                              local C=P(S)
                              local W=D(S)
                              local z=C==0 and "#FF5050"or "#00FF7F"table["insert"](r,string["format"]("- <font color='%s'>[%d x]</font> <font color='#FFD250'>[%s]</font> <font color='#FFFFFF'>%s</font>",z,C,W,S))
                              if C>0 then
                                 h=true 
                              end 
                            end 
                            if not h then
                               table["insert"](r,"- All gears are out of stock!")
                            end 
                            return table["concat"](r,"\n")
                          end 
                          local 
                          function p()
                            return X()..("\n\n"..N())
                          end 
                          local 
                          function Z(r)
                            local h=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("Gear")and m["Remotes"]["Gear"]:FindFirstChild("Transaction"))
                            if h then
                               local m=D(r)
                              local S=v(m)
                              if H(S,"Gear",r)then
                                 h:InvokeServer(r)
                              end 
                            end 
                          end 
                          local 
                          function M()
                            local r={}
                            local h=m:FindFirstChild("Shared")and m["Shared"]:FindFirstChild("EggConfig")
                            if h then
                               local m,S=pcall(function()return require(h)end)
                              if m and(type(S)=="table"and S["UnlockPrices"])then
                                 for h,m in pairs(S["UnlockPrices"])
                                  do 
                                    local S=string["match"](h,"%d+")
                                    if S then
                                       table["insert"](r,{["EggSlotNumber"]=tonumber(S),["UnlockPrice"]=tonumber(m)or 0})
                                    end 
                                  end 
                                end 
                              end table["sort"](r,function(r,h)return r["EggSlotNumber"]<h["EggSlotNumber"]end)
                              return r 
                            end 
                            local 
                            function r_()
                              local r={}
                              local h=m:FindFirstChild("Shared")and m["Shared"]:FindFirstChild("EggConfig")
                              if h then
                                 local m,S=pcall(function()return require(h)end)
                                if m and type(S)=="table"then
                                   for h,m in pairs(S)
                                    do 
                                      if type(m)=="table"and string["match"](tostring(h),"Egg$")then
                                         table["insert"](r,tostring(h))
                                      end 
                                    end 
                                  end 
                                end table["sort"](r)
                                if#r==0 then
                                   r={"CommonEgg","RareEgg","EpicEgg"}
                                end 
                                return r 
                              end 
                              local 
                              function h_(r)
                                local h=m:FindFirstChild("Shared")and m["Shared"]:FindFirstChild("EggConfig")
                                if not h or not r then
                                   return 0 
                                end 
                                local S,C=pcall(function()return require(h)end)
                                if not S or type(C)~="table"then
                                   return 0 
                                end 
                                if type(C["Eggs"])=="table"and type(C["Eggs"][r])=="table"then
                                   local h=C["Eggs"][r]
                                  return tonumber(h["Price"]or h["Cost"]or h["RollPrice"])or 0 
                                end 
                                if type(C["Prices"])=="table"then
                                   return tonumber(C["Prices"][r])or 0 
                                end 
                                if type(C["RollPrices"])=="table"then
                                   return tonumber(C["RollPrices"][r])or 0 
                                end 
                                return 0 
                              end 
                              local 
                              function m_()
                                local r={}
                                local h=workspace:FindFirstChild("PetMerchant")
                                if not h then
                                   return r 
                                end 
                                for m=1,5,1 
                                  do 
                                    local S=h:FindFirstChild("Podium"..(m.."Stock"))or h:FindFirstChild("Podium"..m)
                                    if S then
                                       local h=S:FindFirstChild("EggLabel",true)
                                      if h and(h["Text"]and h["Text"]~="")then
                                         local S=string["gsub"](h["Text"]," ","")
                                        if not string["match"](string["lower"](S),"egg$")then
                                           S=S.."Egg"
                                        end table["insert"](r,{["Slot"]=m;["Name"]=S})
                                      end 
                                    end 
                                  end 
                                  return r 
                                end 
                                local 
                                function S_(r)
                                  local h=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("EggShop")and m["Remotes"]["EggShop"]:FindFirstChild("Transaction"))
                                  local S=m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("RollEgg")
                                  if not h or not S or not r["Slot"]or not r["Name"]then
                                     return false 
                                  end 
                                  local C=pcall(function()h:InvokeServer("BuyEgg",r["Slot"])end)
                                  if C then
                                     pcall(function()S:FireServer(r["Name"])end)task["wait"](.1)pcall(function()S:FireServer(r["Name"],"ClaimRolledPet")end)print("[Lamduck] EggShop | "..(tostring(r["Name"])..(" | slot: "..tostring(r["Slot"]))))
                                    return true 
                                  end 
                                  return false 
                                end 
                                local 
                                function C_()
                                  local r={"None"}
                                  local h={}
                                  local 
                                  function m(m)
                                    if not m then
                                       return 
                                    end 
                                    for m,S in pairs(m:GetChildren())
                                      do 
                                        if S:IsA("Tool")and S:GetAttribute("InventoryCategory")=="Seeds"then
                                           local m=S:GetAttribute("trueName")
                                          if m and not h[m]then
                                             h[m]=true table["insert"](r,m)
                                          end 
                                        end 
                                      end 
                                    end m(z["Character"])m(z:FindFirstChild("Backpack"))
                                    return r 
                                  end 
                                  local 
                                  function W_(r)
                                    local h=z["Character"]
                                    local m=h and h:FindFirstChild("Humanoid")
                                    if not h or not m then
                                       return nil 
                                    end 
                                    local S=h:FindFirstChildWhichIsA("Tool")
                                    if S and(S:GetAttribute("InventoryCategory")=="Seeds"and S:GetAttribute("trueName")==r)then
                                       return S 
                                    end 
                                    if S then
                                       m:UnequipTools()task["wait"](.1)
                                    end 
                                    if z:FindFirstChild("Backpack")then
                                       for h,S in pairs(z["Backpack"]:GetChildren())
                                        do 
                                          if S:IsA("Tool")and(S:GetAttribute("InventoryCategory")=="Seeds"and S:GetAttribute("trueName")==r)then
                                             m:EquipTool(S)task["wait"](.3)
                                            return S 
                                          end 
                                        end 
                                      end 
                                      return nil 
                                    end 
                                    local z_={"Normal Fertilizer","Strong Fertilizer";"Super Fertilizer"}
                                    local 
                                    function V_(r)
                                      if not r then
                                         return nil 
                                      end 
                                      local h=_G["FloorFertilizeConfig"][r]
                                      if not h then
                                         return nil 
                                      end 
                                      if next(h["TargetFertilizerTypes"])==nil then
                                         return nil 
                                      end 
                                      local m=h["TargetFertilizerTypes"]
                                      local 
                                      function S(r)
                                        if not r then
                                           return nil 
                                        end 
                                        for r,h in ipairs(r:GetChildren())
                                          do 
                                            for r,S in ipairs(z_)
                                              do 
                                                if string["find"](h["Name"],S,1,true)then
                                                   if m[S]then
                                                     return h 
                                                  end 
                                                end 
                                              end 
                                            end 
                                            return nil 
                                          end 
                                          return S(z["Character"])or S(z["Backpack"])
                                        end 
                                        local 
                                        function R_()
                                          local r={}
                                          local h={}
                                          local S=0 
                                          local C=0 
                                          local W=0 
                                          local V=0 
                                          local R="none"
                                          local 
                                          function c()
                                            local m=z:FindFirstChild("PlayerGui")
                                            local V=m and(m:FindFirstChild("MainUI")and(m["MainUI"]:FindFirstChild("Menus")and(m["MainUI"]["Menus"]:FindFirstChild("IndexFrame")and m["MainUI"]["Menus"]["IndexFrame"]:FindFirstChild("Main"))))
                                            local c=V and V:FindFirstChild("PlantsFrame")
                                            if not c then
                                               return false 
                                            end 
                                            local x=false 
                                            for m,W in pairs(c:GetChildren())
                                              do 
                                                if W:IsA("Frame")then
                                                   local m=W:FindFirstChild("RarityName")
                                                  local z=W:FindFirstChild("SeedName")
                                                  local V=z and z["Text"]
                                                  local R=m and m["Text"]
                                                  local c=W["Name"]
                                                  if V and(V~=""and V~="???")then
                                                     c=V 
                                                  elseif V=="???"then
                                                     S=S+1 
                                                  end 
                                                  local b=c 
                                                  if R and(R~=""and R~="???")then
                                                     b="["..(R..("] "..c))
                                                  end 
                                                  if not h[c]then
                                                     table["insert"](r,b)h[c]=true x=true 
                                                  else C=C+1 
                                                  end 
                                                end 
                                              end W=#r 
                                              if x then
                                                 R="UI"
                                              end 
                                              return x 
                                            end 
                                            local 
                                            function x()
                                              local S=m:FindFirstChild("Assets")and m["Assets"]:FindFirstChild("Seeds")
                                              if not S then
                                                 return false 
                                              end 
                                              local W=0 
                                              for m,S in ipairs(S:GetChildren())
                                                do 
                                                  local z=string["gsub"](S["Name"]," Seed$","")
                                                  if not h[z]and not h[S["Name"]]then
                                                     table["insert"](r,z)h[z]=true W=W+1 
                                                  else C=C+1 
                                                  end 
                                                end V=W 
                                                if W>0 then
                                                   R=(R=="UI")and "UI+RS"or "RS"
                                                end 
                                                return W>0 
                                              end 
                                              local b=c()
                                              if not b or#r==0 then
                                                 x()
                                              end table["sort"](r)print("[Lamduck] getIndexSeeds | loaded: "..(tostring(#r)..(" | locked: "..(tostring(S)..(" | duplicates: "..(tostring(C)..(" | ui: "..(tostring(W)..(" | rs: "..(tostring(V)..(" | source: "..R)))))))))))
                                              return r 
                                            end _G["CachedIndexSeedEntries"]=R_()
                                            local c_={["Common"]=1;["Uncommon"]=2,["Rare"]=3,["Epic"]=4;["Legendary"]=5,["Secret"]=6,["Prismatic"]=7,["Divine"]=8;["Exotic"]=9;["Transcended"]=10}
                                            local x_={}
                                            local b_={}
                                            local 
                                            function I_()
                                              local r={}x_={}b_={}
                                              for h,m in ipairs(_G["CachedIndexSeedEntries"])
                                                do 
                                                  local S,C=string["match"](m,"%[(.-)%] (.+)")
                                                  if S and C then
                                                     b_[C]=S 
                                                    if not r[S]then
                                                       r[S]=true table["insert"](x_,S)
                                                    end 
                                                  end 
                                                end table["sort"](x_,function(r,h)local m=c_[r]or 99 local S=c_[h]or 99 return m<S end)
                                              end I_()
                                              local 
                                              function q_(r)
                                                if not r then
                                                   return "Unknown"
                                                end 
                                                local h=""
                                                if typeof(r)=="Instance"then
                                                   h=r:GetAttribute("trueName")or r["Name"]
                                                elseif typeof(r)=="string"then
                                                   h=r 
                                                else h=tostring(r)
                                                end 
                                                local m=string["match"](h,"%[(.-)%]")
                                                if m and m~=""then
                                                   return m 
                                                end 
                                                local S=string["match"](h,"%]%s*(.*)")or h S=string["gsub"](S,"^%s*(.-)%s*$","%1")
                                                if b_[S]then
                                                   return b_[S]
                                                end 
                                                local C=string["lower"](S)
                                                for r,h in pairs(b_)
                                                  do 
                                                    if string["lower"](r)==C then
                                                       return h 
                                                    end 
                                                  end 
                                                  return "Unknown"
                                                end 
                                                local 
                                                function u_()
                                                  local r=o()
                                                  if not r then
                                                     return{}
                                                  end 
                                                  local h=r:FindFirstChild("SeedRoller")
                                                  if not h then
                                                     return{}
                                                  end 
                                                  local m={}
                                                  for r=1,6,1 
                                                    do 
                                                      local S=h:FindFirstChild("Stand"..r)
                                                      if S then
                                                         m[r]=(S:GetPivot())["Position"]
                                                      end 
                                                    end 
                                                    return m 
                                                  end 
                                                  local l_=15 
                                                  local 
                                                  function v_(r,h)
                                                    local m,S=nil,math["huge"]
                                                    for h,C in pairs(h)
                                                      do 
                                                        local W=((Vector3["new"](r["X"],0,r["Z"])-Vector3["new"](C["X"],0,C["Z"])))["Magnitude"]
                                                        if W<S then
                                                           S=W m=h 
                                                        end 
                                                      end 
                                                      return m,S 
                                                    end 
                                                    local 
                                                    function e_()
                                                      local r={}
                                                      local h=u_()
                                                      if next(h)==nil then
                                                         return r 
                                                      end 
                                                      for m,S in ipairs(workspace:GetChildren())
                                                        do 
                                                          if S:IsA("Model")then
                                                             local m,C=v_((S:GetPivot())["Position"],h)
                                                            if m and C<l_ then
                                                               if S:FindFirstChild("BuySeed",true)then
                                                                 local h=0 
                                                                local C=S:FindFirstChild("SeedGui",true)
                                                                if C then
                                                                   for r,m in pairs(C:GetDescendants())
                                                                    do 
                                                                      if((m:IsA("TextLabel")or m:IsA("TextButton")))and string["find"](m["Text"],"%$")then
                                                                         h=v(m["Text"])break 
                                                                      end 
                                                                    end 
                                                                  end r[S["Name"]]={["standIdx"]=m;["price"]=h}
                                                                end 
                                                              end 
                                                            end 
                                                          end 
                                                          return r 
                                                        end 
                                                        local 
                                                        function H_(r)
                                                          if _G["AutoRollAndBuyAll"]then
                                                             return true 
                                                          end 
                                                          if _G["AutoRollAndBuySelected"]then
                                                             if next(_G["TargetGachaSeeds"])==nil then
                                                               return false 
                                                            end 
                                                            return _G["TargetGachaSeeds"][r]==true 
                                                          end 
                                                          if _G["AutoRollAndBuyByRarity"]then
                                                             if next(_G["TargetGachaRarities"])==nil then
                                                               return false 
                                                            end 
                                                            local h=b_[r]
                                                            return h~=nil and _G["TargetGachaRarities"][h]==true 
                                                          end 
                                                          return false 
                                                        end 
                                                        local 
                                                        function E_()
                                                          if I["isSeedGachaLoopRunning"]then
                                                             return 
                                                          end 
                                                          if not _G["AutoRollAndBuyAll"]and(not _G["AutoRollAndBuySelected"]and not _G["AutoRollAndBuyByRarity"])then
                                                             return 
                                                          end I["isSeedGachaLoopRunning"]=true task["spawn"](function()while _G["AutoRollAndBuyAll"]or _G["AutoRollAndBuySelected"]or _G["AutoRollAndBuyByRarity"]do local r=e_()local h=false for r,S in pairs(r)do if not((_G["AutoRollAndBuyAll"]or _G["AutoRollAndBuySelected"]or _G["AutoRollAndBuyByRarity"]))then break end if H_(r)then if H(S["price"],"Seed",r)then pcall(function()m["Remotes"]["BuySeed"]:FireServer(S["standIdx"])end)h=true task["wait"](.5)end end end if not h and((_G["AutoRollAndBuyAll"]or _G["AutoRollAndBuySelected"]or _G["AutoRollAndBuyByRarity"]))then __LD_fireRoll() task["wait"](3.5)end task["wait"](.5)end I["isSeedGachaLoopRunning"]=false end)
                                                        end u["SectionGeneral"]=h:Section({["Title"]="Farming & Shop";["Icon"]="sprout",["Opened"]=true})u["TabFarming"]=u["SectionGeneral"]:Tab({["Title"]="Farming";["Icon"]="chevron-right"})u["TabShop"]=u["SectionGeneral"]:Tab({["Title"]="Gacha $ Shop";["Icon"]="chevron-right"})u["TabPets"]=u["SectionGeneral"]:Tab({["Title"]="Pets";["Icon"]="chevron-right"})u["SectionFloor"]=h:Section({["Title"]="Floors",["Icon"]="layers";["Opened"]=false})u["TabFloor1"]=u["SectionFloor"]:Tab({["Title"]="Floor 1";["Icon"]="chevron-right"})u["TabFloor2"]=u["SectionFloor"]:Tab({["Title"]="Floor 2",["Icon"]="chevron-right"})u["TabFloor3"]=u["SectionFloor"]:Tab({["Title"]="Floor 3",["Icon"]="chevron-right"})u["SectionCompost"]=h:Section({["Title"]="Composters",["Icon"]="layers",["Opened"]=false})u["TabCompost2"]=u["SectionCompost"]:Tab({["Title"]="Floor 2 Compost",["Icon"]="chevron-right"})u["TabCompost3"]=u["SectionCompost"]:Tab({["Title"]="Floor 3 Compost",["Icon"]="chevron-right"})u["SectionActivity"]=h:Section({["Title"]="Rewards & Events";["Icon"]="gift";["Opened"]=false})u["TabEvents"]=u["SectionActivity"]:Tab({["Title"]="Events";["Icon"]="chevron-right"})u["TabRewards"]=u["SectionActivity"]:Tab({["Title"]="Rewards",["Icon"]="chevron-right"})u["SectionSystem"]=h:Section({["Title"]="Utilities & Config",["Icon"]="settings";["Opened"]=false})u["TabUtilities"]=u["SectionSystem"]:Tab({["Title"]="Utilities",["Icon"]="chevron-right"})u["TabConfig"]=u["SectionSystem"]:Tab({["Title"]="Config",["Icon"]="chevron-right"})u["TabFarming"]:Select()u["TabFarming"]:Section({["Title"]="AUTO FARMING"})_G["UIRefs"]["ToggleAutoSellCrates"]=u["TabFarming"]:Toggle({["Title"]="Auto Sell Crates";["Value"]=false;["Callback"]=function(r)_G["AutoSellCrates"]=r if r and not I["isSellCratesLoopRunning"]then I["isSellCratesLoopRunning"]=true task["spawn"](function()while _G["AutoSellCrates"]do pcall(function()if m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("SellCrates")then m["Remotes"]["SellCrates"]:FireServer()end end)task["wait"](2)end I["isSellCratesLoopRunning"]=false end)end end})_G["UIRefs"]["ToggleAutoUnlockFarmPlots"]=u["TabFarming"]:Toggle({["Title"]="Auto Unlock Farm Plots";["Value"]=false,["Callback"]=function(r)_G["AutoUnlockFarmPlots"]=r if r and not I["isUnlockFarmPlotsLoopRunning"]then I["isUnlockFarmPlotsLoopRunning"]=true task["spawn"](function()while _G["AutoUnlockFarmPlots"]do local r=o()if r then for r,h in ipairs(r:GetDescendants())do if not _G["AutoUnlockFarmPlots"]then break end if h["Name"]=="Dirt"then pcall(function()m["Remotes"]["UnlockPlot"]:FireServer(h)end)task["wait"](2)end end end task["wait"](2)end I["isUnlockFarmPlotsLoopRunning"]=false end)end end})_G["UIRefs"]["ToggleAutoExpandFarmPlot"]=u["TabFarming"]:Toggle({["Title"]="Auto Expand Farm Plot";["Value"]=false,["Callback"]=function(r)_G["AutoExpandFarmPlot"]=r if r and not I["isExpandFarmPlotLoopRunning"]then I["isExpandFarmPlotLoopRunning"]=true task["spawn"](function()while _G["AutoExpandFarmPlot"]do pcall(function()local r=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")local h=m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("UpgradeFarm")if r and h then for r,m in pairs(r:GetChildren())do if not _G["AutoExpandFarmPlot"]then break end local S=m:FindFirstChild("ExpandSign")local C=S and S:FindFirstChild("Screen")local W=C and C:FindFirstChild("SurfaceGui")local z=W and W:FindFirstChild("Expand")local V=z and z:FindFirstChild("Btn")local R=V and V:FindFirstChild("Txt")if R and((R:IsA("TextLabel")or R:IsA("TextButton")))then local r=v(R["Text"])if H(r,"Plot Expansion")then h:InvokeServer()end end end end end)task["wait"](2)end I["isExpandFarmPlotLoopRunning"]=false end)end end})
                                                        local 
                                                        function d_()
                                                          return m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("Composter")and m["Remotes"]["Composter"]:FindFirstChild("InsertSeed"))
                                                        end 
                                                        local 
                                                        function J_(r)
                                                          local h=string["match"](r["Name"],"%(x(%d+)%)")
                                                          return h and tonumber(h)or 1 
                                                        end 
                                                        local 
                                                        function w_(r,h,m)
                                                          local S=r:GetAttribute("seedKey")
                                                          if S then
                                                             return S 
                                                          end 
                                                          local C=r:GetAttribute("Level")or 1 
                                                          return tostring(h)..("_"..(tostring(C)..("_"..tostring(m))))
                                                        end 
                                                        local o_={[2]={["CompostMachineFrameName"]="CompostMachine";["PullLeverServerId"]=2};[3]={["CompostMachineFrameName"]="CompostMachineTier2";["PullLeverServerId"]=3}}
                                                        local 
                                                        function A_(r)
                                                          local h=z["Character"]
                                                          local m=z:FindFirstChild("Backpack")
                                                          local S={h,m}
                                                          local C=_G["F"..(r.."_TargetCompostSeeds")]
                                                          local W=_G["F"..(r.."_TargetCompostRarities")]
                                                          local V=_G["F"..(r.."_AutoCompostByRarity")]
                                                          local R=_G["F"..(r.."_AutoCompostSelected")]
                                                          for r,h in ipairs(S)
                                                            do 
                                                              if h then
                                                                 for r,h in ipairs(h:GetChildren())
                                                                  do 
                                                                    if h:IsA("Tool")then
                                                                       local r=h:GetAttribute("Plant")or h:GetAttribute("trueName")
                                                                      if r then
                                                                         local m=h:GetAttribute("Mutation")or "Normal"
                                                                        local S=true 
                                                                        if R then
                                                                           if next(C)==nil or C[r]~=true then
                                                                             S=false 
                                                                          end 
                                                                        elseif V then
                                                                           if next(W)==nil then
                                                                             S=false 
                                                                          else 
                                                                            local h=b_[r]
                                                                            if not h or W[h]~=true then
                                                                               S=false 
                                                                            end 
                                                                          end 
                                                                        end 
                                                                        if S then
                                                                           return h,r,m 
                                                                        end 
                                                                      end 
                                                                    end 
                                                                  end 
                                                                end 
                                                              end 
                                                              return nil 
                                                            end 
                                                            local 
                                                            function t_(r)
                                                              local h=d_()
                                                              if not h then
                                                                 return false 
                                                              end 
                                                              local m,S,C=A_(r)
                                                              if not m then
                                                                 return false 
                                                              end 
                                                              local W=J_(m)
                                                              local z=W 
                                                              local V=_G["F"..(r.."_MaxCompostInsertAmount")]
                                                              if V and V>0 then
                                                                 z=math["min"](W,V)
                                                              end 
                                                              if z<=0 then
                                                                 return false 
                                                              end 
                                                              local R=w_(m,S,C)
                                                              local c=pcall(function()h:InvokeServer(r,R,z)end)
                                                              return c 
                                                            end 
                                                            local 
                                                            function k_(h,S)
                                                              local C="F"..(h.."_")
                                                              local W="Composter"S:Section({["Title"]=W})
                                                              local V 
                                                              local R 
                                                              local c 
                                                              local x c=S:Dropdown({["Title"]="Select Seeds",["Values"]=_G["CachedIndexSeedEntries"],["Value"]={};["Multi"]=true;["AllowNone"]=true,["Callback"]=function(r)_G[C.."TargetCompostSeeds"]={}if type(r)=="table"then for r,h in pairs(r)do local m=string["match"](h,"%] (.*)")or h _G[C.."TargetCompostSeeds"][m]=true end elseif r and r~=""then local h=string["match"](r,"%] (.*)")or r _G[C.."TargetCompostSeeds"][h]=true end end})
                                                              local 
                                                              function b(r)
                                                                if r~="selected"then
                                                                   _G[C.."AutoCompostSelected"]=false pcall(function()V:Set(false)end)
                                                                end 
                                                                if r~="rarity"then
                                                                   _G[C.."AutoCompostByRarity"]=false pcall(function()R:Set(false)end)
                                                                end 
                                                              end 
                                                              local q="isF"..(h.."CompostLoopRunning")
                                                              local 
                                                              function u()
                                                                if h==2 and I["isF2CompostLoopRunning"]then
                                                                   return 
                                                                end 
                                                                if h==3 and I["isF3CompostLoopRunning"]then
                                                                   return 
                                                                end 
                                                                if not _G[C.."AutoCompostSelected"]and not _G[C.."AutoCompostByRarity"]then
                                                                   return 
                                                                end 
                                                                if h==2 then
                                                                   I["isF2CompostLoopRunning"]=true 
                                                                else I["isF3CompostLoopRunning"]=true 
                                                                end task["spawn"](function()while _G[C.."AutoCompostSelected"]or _G[C.."AutoCompostByRarity"]do t_(h)task["wait"](_G[C.."CompostInsertDelay"]or 2)end if h==2 then I["isF2CompostLoopRunning"]=false else I["isF3CompostLoopRunning"]=false end end)
                                                              end V=S:Toggle({["Title"]="Auto Compost Selected";["Desc"]="Automatically insert selected seeds into the composter";["Value"]=false;["Callback"]=function(r)_G[C.."AutoCompostSelected"]=r if r then b("selected")end u()end})x=S:Dropdown({["Title"]="Select Rarities",["Values"]=x_,["Value"]={};["Multi"]=true,["AllowNone"]=true;["Callback"]=function(r)_G[C.."TargetCompostRarities"]={}if type(r)=="table"then for r,h in pairs(r)do _G[C.."TargetCompostRarities"][h]=true end elseif r and r~=""then _G[C.."TargetCompostRarities"][r]=true end end})R=S:Toggle({["Title"]="Auto Compost By Rarity";["Desc"]="Automatically insert seeds matching selected rarities";["Value"]=false;["Callback"]=function(r)_G[C.."AutoCompostByRarity"]=r if r then b("rarity")end u()end})
                                                              local l=S:Input({["Title"]="Insert Delay";["Desc"]="Delay in seconds between seed inserts",["Placeholder"]="60",["Value"]="60";["Numeric"]=true;["Finished"]=true,["Callback"]=function(r)local h=tonumber(r)if not h or h<1 then _G[C.."CompostInsertDelay"]=60 pcall(function()InputCompostInsertDelay:Set("60")end)return end h=math["floor"](h)_G[C.."CompostInsertDelay"]=h pcall(function()InputCompostInsertDelay:Set(tostring(h))end)end})
                                                              local v=S:Input({["Title"]="Max Seeds Per Insert",["Desc"]="Maximum amount of seeds to insert (0 = ALL)";["Placeholder"]="0";["Value"]="0";["Numeric"]=true;["Finished"]=true,["Callback"]=function(r)local h=tonumber(r)if not h or h<0 or h%1~=0 then _G[C.."MaxCompostInsertAmount"]=0 pcall(function()InputCompostMaxInsertAmount:Set("0")end)return end _G[C.."MaxCompostInsertAmount"]=math["floor"](h)pcall(function()InputCompostMaxInsertAmount:Set(tostring(math["floor"](h)))end)end})S:Divider()TabCompostButton=S:Button({["Title"]="Manual Insert",["Desc"]="Manually insert seeds once immediately";["Callback"]=function()local m="0"pcall(function()m=tostring(v["Value"])end)local S=tonumber(m)if not S or S<0 or S%1~=0 then _G[C.."MaxCompostInsertAmount"]=0 else _G[C.."MaxCompostInsertAmount"]=math["floor"](S)end local W=t_(h)if W then r:Notify({["Title"]="Manual Compost",["Content"]="F"..(h.." seed insert command sent."),["Duration"]=2})else r:Notify({["Title"]="Manual Compost";["Content"]="F"..(h.." no matching seed found.");["Duration"]=2})end end})S:Divider()
                                                              local e 
                                                              local H 
                                                              local 
                                                              function E(r)
                                                                if r~="interval"then
                                                                   _G[C.."AutoPullLever"]=false pcall(function()e:Set(false)end)
                                                                end 
                                                                if r~="whenMax"then
                                                                   _G[C.."AutoPullLeverWhenMax"]=false pcall(function()H:Set(false)end)
                                                                end 
                                                              end 
                                                              local d=S:Input({["Title"]="Pull Lever Delay",["Desc"]="Delay in seconds between lever pulls (for Auto Pull Lever only)";["Placeholder"]="60";["Value"]="60",["Numeric"]=true,["Finished"]=true,["Callback"]=function(r)local h=tonumber(r)if not h or h<1 then _G[C.."PullLeverDelay"]=60 pcall(function()InputPullLeverDelay:Set("60")end)return end h=math["floor"](h)_G[C.."PullLeverDelay"]=h pcall(function()InputPullLeverDelay:Set(tostring(h))end)end})e=S:Toggle({["Title"]="Auto Pull Lever";["Value"]=false,["Callback"]=function(r)_G[C.."AutoPullLever"]=r if r then E("interval")end local S=(h==2)and I["isF2PullLeverLoopRunning"]or I["isF3PullLeverLoopRunning"]if r and not S then if h==2 then I["isF2PullLeverLoopRunning"]=true else I["isF3PullLeverLoopRunning"]=true end task["spawn"](function()while _G[C.."AutoPullLever"]do local r=o_[h]pcall(function()local h=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("Composter")and m["Remotes"]["Composter"]:FindFirstChild("PullLever"))if h and r then h:InvokeServer(r["PullLeverServerId"])end end)task["wait"](_G[C.."PullLeverDelay"]or 60)end if h==2 then I["isF2PullLeverLoopRunning"]=false else I["isF3PullLeverLoopRunning"]=false end end)end end})H=S:Toggle({["Title"]="Auto Pull Lever When MAX";["Desc"]=(h==2)and "Temporarily Disabled (Bugged on Floor 2)"or "Pull lever when machine is at MAX capacity ГўВЂВ” checks every 2 seconds",["Locked"]=(h==2);["Value"]=false,["Callback"]=function(r)if h==2 then pcall(function()H:Set(false)end)return end _G[C.."AutoPullLeverWhenMax"]=r if r then E("whenMax")end local S=(h==2)and I["isF2PullLeverWhenMaxLoopRunning"]or I["isF3PullLeverWhenMaxLoopRunning"]if r and not S then if h==2 then I["isF2PullLeverWhenMaxLoopRunning"]=true else I["isF3PullLeverWhenMaxLoopRunning"]=true end task["spawn"](function()while _G[C.."AutoPullLeverWhenMax"]do local r=o_[h]if r then local S=z:FindFirstChild("PlayerGui")and z["PlayerGui"]:FindFirstChild("CompostMachine")local C=S and S:FindFirstChild(r["CompostMachineFrameName"])local W=C and(C:FindFirstChild("Main")and C["Main"]:FindFirstChild("Progress"))local V=W and W:FindFirstChild("Requirements")if V and(((V:IsA("TextLabel")or V:IsA("TextButton")))and string["find"](string["upper"](V["Text"]),"MAX",1,true))then local S=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("Composter")and m["Remotes"]["Composter"]:FindFirstChild("PullLever"))if S then local m=pcall(function()S:InvokeServer(r["PullLeverServerId"])end)if m then print("[Lamduck] Composter MAX | F"..(tostring(h).." lever pulled"))end end end end task["wait"](2)end if h==2 then I["isF2PullLeverWhenMaxLoopRunning"]=false else I["isF3PullLeverWhenMaxLoopRunning"]=false end end)end end})
                                                              if h==2 then
                                                                 pcall(function()H:Lock()end)
                                                              end 
                                                              return{["ToggleAutoCompostSelected"]=V;["ToggleAutoCompostByRarity"]=R;["DropdownCompostSeed"]=c,["DropdownCompostRarities"]=x,["InputCompostInsertDelay"]=l,["InputCompostMaxInsertAmount"]=v;["ToggleAutoPullLever"]=e,["ToggleAutoPullLeverWhenMax"]=H,["InputPullLeverDelay"]=d,["startCompostLoopForFloor"]=u}
                                                            end 
                                                            local T_=k_(2,u["TabCompost2"])
                                                            local Q_=k_(3,u["TabCompost3"])
                                                            local f_={[1]=false,[2]=false;[3]=false}
                                                            local 
                                                            function O_(r)
                                                              if f_[r]then
                                                                 return 
                                                              end f_[r]=true 
                                                              local h="F"..(r.."_")task["spawn"](function()while _G[h.."AutoPlantByRarity"]do local S=O(r)if S then local r={}for h,m in ipairs(S:GetChildren())do local S=string["match"](m["Name"],"^Plot(%d+)$")if S then local h=m:FindFirstChild("Dirt")if h and h:GetAttribute("PlantLevel")==nil then table["insert"](r,h)end end end if#r>0 then local function S()local r=z["Character"]local m=z:FindFirstChild("Backpack")local S={r;m}local C={}for r,m in ipairs(S)do if m then for r,m in ipairs(m:GetChildren())do if m:IsA("Tool")and m:GetAttribute("InventoryCategory")=="Seeds"then local r=m:GetAttribute("trueName")if r then local m=q_(r)local S=_G[h.."TargetAutoPlantRarities"]if m and(S and S[m])then local h=c_[m]or 0 table["insert"](C,{["TrueName"]=r;["Weight"]=h})end end end end end end if#C>0 then table["sort"](C,function(r,h)return r["Weight"]>h["Weight"]end)return C[1]["TrueName"]end return nil end for r,C in ipairs(r)do if not _G[h.."AutoPlantByRarity"]then break end if C:GetAttribute("PlantLevel")==nil then local r=S()if r then local h=W_(r)if h then pcall(function()if m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("PlantSeed")then m["Remotes"]["PlantSeed"]:FireServer(C)end end)task["wait"](.2)end else break end end end end end task["wait"](30)end f_[r]=false end)
                                                            end 
                                                            local 
                                                            function n_(r)
                                                              local h=O(r)
                                                              if h then
                                                                 for r,h in ipairs(h:GetChildren())
                                                                  do 
                                                                    local S=string["match"](h["Name"],"^Plot(%d+)$")
                                                                    if S then
                                                                       local r=h:FindFirstChild("Dirt")
                                                                      if r and r:GetAttribute("PlantLevel")~=nil then
                                                                         pcall(function()if m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("RemovePlant")then m["Remotes"]["RemovePlant"]:FireServer(r)end end)task["wait"](.2)
                                                                      end 
                                                                    end 
                                                                  end 
                                                                end 
                                                              end 
                                                              local 
                                                              function y_(r)
                                                                local h="isUpgradePlantsF"..(r.."LoopRunning")
                                                                if I[h]then
                                                                   return 
                                                                end I[h]=true task["spawn"](function()while _G["FloorUpgradeConfig"][r]["AutoUpgrade"]or _G["FloorUpgradeConfig"][r]["AutoAll"]do local h=O(r)if h then local S=Q(h)local C=_G["FloorUpgradeConfig"][r]for h,S in ipairs(S)do if not((_G["FloorUpgradeConfig"][r]["AutoUpgrade"]or _G["FloorUpgradeConfig"][r]["AutoAll"]))then break end if S:GetAttribute("PlantLevel")then local r=S:GetAttribute("PlantName")local h=q_(r)local W="["..(h..("] "..r))local z=C["AutoAll"]or C["TargetPlantNames"][W]if z then local r=S:GetAttribute("UpgradePrice")or 0 if H(r)then pcall(function()m["Remotes"]["UpgradePlant"]:InvokeServer(S)end)task["wait"](.1)end end end end end task["wait"](.1)end I[h]=false end)
                                                              end 
                                                              local 
                                                              function G_(r)
                                                                local h="isFertilizePlantsF"..(r.."LoopRunning")
                                                                if I[h]then
                                                                   return 
                                                                end I[h]=true task["spawn"](function()while _G["FloorFertilizeConfig"][r]["AutoFertilize"]or _G["FloorFertilizeConfig"][r]["AutoAll"]do local h=V_(r)if h then local S=O(r)local C=false if S then local W=Q(S)local V=_G["FloorFertilizeConfig"][r]for S,W in ipairs(W)do if not((_G["FloorFertilizeConfig"][r]["AutoFertilize"]or _G["FloorFertilizeConfig"][r]["AutoAll"]))then break end if W:GetAttribute("PlantLevel")~=nil and not W:GetAttribute("Fertilized")then local r=W:GetAttribute("PlantName")local S=q_(r)local R="["..(S..("] "..r))local c=V["AutoAll"]or V["TargetPlantNames"][R]if c then local r=z["Character"]and z["Character"]:FindFirstChild("Humanoid")if r then r:EquipTool(h)task["wait"](.1)pcall(function()m["Remotes"]["UseFertilizer"]:FireServer(W)end)task["wait"](.1)r:UnequipTools()C=true break end end end end end if C then task["wait"](.1)else task["wait"](2)end else task["wait"](2)end end I[h]=false end)
                                                              end 
                                                              local 
                                                              function U_(m,S)
                                                                local C="F"..(m.."_")S:Section({["Title"]="Plants",["Opened"]=true})
                                                                local W=S:Paragraph({["Title"]="Plant Status";["Desc"]="Loading plant information..."})
                                                                local z=S:Dropdown({["Title"]="Select Rarities",["Values"]=x_;["Value"]={};["Multi"]=true;["AllowNone"]=true;["Callback"]=function(r)_G[C.."TargetAutoPlantRarities"]={}if type(r)=="table"then for r,h in pairs(r)do _G[C.."TargetAutoPlantRarities"][h]=true end elseif r and r~=""then _G[C.."TargetAutoPlantRarities"][r]=true end end})
                                                                local V=S:Toggle({["Title"]="Auto Plant";["Desc"]="Auto plant seeds matching selected rarities";["Value"]=false,["Callback"]=function(r)_G[C.."AutoPlantByRarity"]=r if r then O_(m)end end})S:Button({["Title"]="Remove All Plants";["Callback"]=function()h:Dialog({["Title"]="Confirm Removal";["Content"]="Are you sure you want to remove all plants on Floor "..(m.."?"),["Buttons"]={{["Title"]="Confirm",["Callback"]=function()r:Notify({["Title"]="Removing Plants";["Content"]="Removing Floor "..(m.." plants...");["Duration"]=5})n_(m)end};{["Title"]="No"}}})end})S:Section({["Title"]="PLANT UPGRADE"})
                                                                local R=S:Dropdown({["Title"]="Target Upgrade Plants",["Values"]=_G["CachedIndexSeedEntries"],["Value"]={},["Multi"]=true,["AllowNone"]=true,["Callback"]=function(r)local h=_G["FloorUpgradeConfig"][m]h["TargetPlantNames"]={}if type(r)=="table"then for r,m in pairs(r)do h["TargetPlantNames"][m]=true end elseif r and r~=""then h["TargetPlantNames"][r]=true end end})
                                                                local c=S:Toggle({["Title"]="Auto Upgrade Selected";["Desc"]="Auto upgrade only selected plants",["Value"]=false;["Callback"]=function(r)_G["FloorUpgradeConfig"][m]["AutoUpgrade"]=r if r then _G["FloorUpgradeConfig"][m]["AutoAll"]=false local r=_G["UIRefs"]["ToggleFloor"..(m.."AutoAllUpgrade")]if r then pcall(function()r:Set(false)end)end y_(m)end end})
                                                                local x=S:Toggle({["Title"]="Auto Upgrade All";["Desc"]="Auto upgrade all plants on this floor";["Value"]=false,["Callback"]=function(r)_G["FloorUpgradeConfig"][m]["AutoAll"]=r if r then _G["FloorUpgradeConfig"][m]["AutoUpgrade"]=false local r=_G["UIRefs"]["ToggleFloor"..(m.."AutoUpgrade")]if r then pcall(function()r:Set(false)end)end y_(m)end end})S:Section({["Title"]="PLANT FERTILIZATION"})
                                                                local b=S:Dropdown({["Title"]="Target Fertilize Plants";["Values"]=_G["CachedIndexSeedEntries"];["Value"]={};["Multi"]=true;["AllowNone"]=true,["Callback"]=function(r)local h=_G["FloorFertilizeConfig"][m]h["TargetPlantNames"]={}if type(r)=="table"then for r,m in pairs(r)do h["TargetPlantNames"][m]=true end elseif r and r~=""then h["TargetPlantNames"][r]=true end end})
                                                                local I=S:Dropdown({["Title"]="Fertilizer Type",["Values"]=z_,["Value"]={},["Multi"]=true,["AllowNone"]=true;["Callback"]=function(r)local h=_G["FloorFertilizeConfig"][m]h["TargetFertilizerTypes"]={}if type(r)=="table"then for r,m in pairs(r)do h["TargetFertilizerTypes"][m]=true end end end})
                                                                local q=S:Toggle({["Title"]="Auto Fertilize Selected",["Desc"]="Auto fertilize only selected plants";["Value"]=false,["Callback"]=function(r)_G["FloorFertilizeConfig"][m]["AutoFertilize"]=r if r then _G["FloorFertilizeConfig"][m]["AutoAll"]=false local r=_G["UIRefs"]["ToggleFloor"..(m.."AutoAllFertilize")]if r then pcall(function()r:Set(false)end)end G_(m)end end})
                                                                local u=S:Toggle({["Title"]="Auto Fertilize All",["Desc"]="Auto fertilize all plants on this floor";["Value"]=false,["Callback"]=function(r)_G["FloorFertilizeConfig"][m]["AutoAll"]=r if r then _G["FloorFertilizeConfig"][m]["AutoFertilize"]=false local r=_G["UIRefs"]["ToggleFloor"..(m.."AutoFertilize")]if r then pcall(function()r:Set(false)end)end G_(m)end end})
                                                                return{["ParagraphFloor"]=W,["DropdownFloorPlantRarities"]=z;["ToggleFloorAutoPlant"]=V;["DropdownUpgradePlant"]=R,["ToggleAutoAllUpgrade"]=x,["ToggleAutoUpgrade"]=c;["DropdownFertilizePlant"]=b,["DropdownFertilizerType"]=I,["ToggleAutoAllFertilize"]=u;["ToggleAutoFertilize"]=q}
                                                              end 
                                                              do 
                                                                local r=U_(1,u["TabFloor1"])
                                                                local h=r["ParagraphFloor"]_G["UIRefs"]["DropdownFloor1PlantRarities"]=r["DropdownFloorPlantRarities"]_G["UIRefs"]["ToggleFloor1AutoPlant"]=r["ToggleFloorAutoPlant"]_G["UIRefs"]["DropdownFloor1UpgradePlant"]=r["DropdownUpgradePlant"]_G["UIRefs"]["ToggleFloor1AutoAllUpgrade"]=r["ToggleAutoAllUpgrade"]_G["UIRefs"]["ToggleFloor1AutoUpgrade"]=r["ToggleAutoUpgrade"]_G["UIRefs"]["DropdownFloor1FertilizePlant"]=r["DropdownFertilizePlant"]_G["UIRefs"]["DropdownFloor1FertilizerType"]=r["DropdownFertilizerType"]_G["UIRefs"]["ToggleFloor1AutoAllFertilize"]=r["ToggleAutoAllFertilize"]_G["UIRefs"]["ToggleFloor1AutoFertilize"]=r["ToggleAutoFertilize"]
                                                                local m=U_(2,u["TabFloor2"])
                                                                local S=m["ParagraphFloor"]_G["UIRefs"]["DropdownFloor2PlantRarities"]=m["DropdownFloorPlantRarities"]_G["UIRefs"]["ToggleFloor2AutoPlant"]=m["ToggleFloorAutoPlant"]_G["UIRefs"]["DropdownFloor2UpgradePlant"]=m["DropdownUpgradePlant"]_G["UIRefs"]["ToggleFloor2AutoAllUpgrade"]=m["ToggleAutoAllUpgrade"]_G["UIRefs"]["ToggleFloor2AutoUpgrade"]=m["ToggleAutoUpgrade"]_G["UIRefs"]["DropdownFloor2FertilizePlant"]=m["DropdownFertilizePlant"]_G["UIRefs"]["DropdownFloor2FertilizerType"]=m["DropdownFertilizerType"]_G["UIRefs"]["ToggleFloor2AutoAllFertilize"]=m["ToggleAutoAllFertilize"]_G["UIRefs"]["ToggleFloor2AutoFertilize"]=m["ToggleAutoFertilize"]
                                                                local C=U_(3,u["TabFloor3"])
                                                                local W=C["ParagraphFloor"]_G["UIRefs"]["DropdownFloor3PlantRarities"]=C["DropdownFloorPlantRarities"]_G["UIRefs"]["ToggleFloor3AutoPlant"]=C["ToggleFloorAutoPlant"]_G["UIRefs"]["DropdownFloor3UpgradePlant"]=C["DropdownUpgradePlant"]_G["UIRefs"]["ToggleFloor3AutoAllUpgrade"]=C["ToggleAutoAllUpgrade"]_G["UIRefs"]["ToggleFloor3AutoUpgrade"]=C["ToggleAutoUpgrade"]_G["UIRefs"]["DropdownFloor3FertilizePlant"]=C["DropdownFertilizePlant"]_G["UIRefs"]["DropdownFloor3FertilizerType"]=C["DropdownFertilizerType"]_G["UIRefs"]["ToggleFloor3AutoAllFertilize"]=C["ToggleAutoAllFertilize"]_G["UIRefs"]["ToggleFloor3AutoFertilize"]=C["ToggleAutoFertilize"]
                                                                local 
                                                                function z(r,h,m)
                                                                  local S={r,h,m}task["spawn"](function()while true do task["wait"](1.5)for r=1,3,1 do local h=""local m=n(r)for r,m in ipairs(m)do if m["PlantName"]and m["PlantName"]~=""then h=h..string["format"]("- %s | Lvl %d | %s | Fertilized: %s\n",m["PlantName"],m["PlantLevel"],m["PlantMutation"],tostring(m["Fertilized"]))end end if h==""then h="No plants planted."end local C=S[r]if C then pcall(function()C:SetDesc(h)end)end end end end)
                                                                end z(h,S,W)
                                                              end u["TabFarming"]:Section({["Title"]="PLOT POWERUPS"})_G["UIRefs"]["DropdownPowerupsToUpgrade"]=u["TabFarming"]:Dropdown({["Title"]="Select Powerups";["Values"]=c;["Value"]={},["Multi"]=true;["AllowNone"]=true,["Callback"]=function(r)_G["TargetPowerups"]={}if type(r)=="table"then for r,h in pairs(r)do _G["TargetPowerups"][h]=true end elseif r~=""then _G["TargetPowerups"][r]=true end end})_G["UIRefs"]["ToggleAutoUpgradePowerups"]=u["TabFarming"]:Toggle({["Title"]="Auto Upgrade Powerups",["Value"]=false;["Callback"]=function(r)_G["AutoUpgradePowerups"]=r if r and not I["isUpgradePowerupsLoopRunning"]then I["isUpgradePowerupsLoopRunning"]=true task["spawn"](function()while _G["AutoUpgradePowerups"]do local r=e()for h,m in pairs(_G["TargetPowerups"])do if not _G["AutoUpgradePowerups"]then break end local S=R[h]["Type"]if S=="plot"then local m=1 while true do if not _G["AutoUpgradePowerups"]then break end local S=Y(h,m)if S==nil then break end if S=="MAX"then break end if H(S,nil,nil,r)then if not _G["AutoUpgradePowerups"]then break end E(h,m)if not _G["AutoUpgradePowerups"]then break end task["wait"](.5)if not _G["SkipMoneyCheck"]then r=e()end break else break end end elseif S=="seedluck"then local m=Y(h,1)if m and(m~="MAX"and H(m,nil,nil,r))then if not _G["AutoUpgradePowerups"]then break end d()task["wait"](.5)if not _G["SkipMoneyCheck"]then r=e()end end elseif S=="seedrolls"then local m=Y(h,1)if m and(m~="MAX"and H(m,nil,nil,r))then if not _G["AutoUpgradePowerups"]then break end J()task["wait"](.5)if not _G["SkipMoneyCheck"]then r=e()end end end end if not _G["AutoUpgradePowerups"]then break end task["wait"](2)end I["isUpgradePowerupsLoopRunning"]=false end)end end})u["TabShop"]:Section({["Title"]="SEED GACHA (ROLL & BUY)"})
                                                              local 
                                                              function j_(r)
                                                                if r~="all"then
                                                                   _G["AutoRollAndBuyAll"]=false pcall(function()_G["UIRefs"]["ToggleAutoRollBuyAll"]:Set(false)end)
                                                                end 
                                                                if r~="selected"then
                                                                   _G["AutoRollAndBuySelected"]=false pcall(function()_G["UIRefs"]["ToggleAutoRollBuySelected"]:Set(false)end)
                                                                end 
                                                                if r~="rarity"then
                                                                   _G["AutoRollAndBuyByRarity"]=false pcall(function()_G["UIRefs"]["ToggleAutoRollBuyByRarity"]:Set(false)end)
                                                                end 
                                                              end _G["UIRefs"]["ToggleAutoRollBuyAll"]=u["TabShop"]:Toggle({["Title"]="Auto Roll & Buy ALL Seeds",["Value"]=false;["Callback"]=function(r)_G["AutoRollAndBuyAll"]=r if r then j_("all")E_()end end})_G["UIRefs"]["DropdownGachaSeeds"]=u["TabShop"]:Dropdown({["Title"]="Select Seeds",["Values"]=_G["CachedIndexSeedEntries"];["Value"]={};["Multi"]=true;["AllowNone"]=true;["Callback"]=function(r)_G["TargetGachaSeeds"]={}if type(r)=="table"then for r,h in pairs(r)do local m=string["match"](h,"%] (.*)")or h _G["TargetGachaSeeds"][m]=true end elseif r and r~=""then local h=string["match"](r,"%] (.*)")or r _G["TargetGachaSeeds"][h]=true end end})_G["UIRefs"]["ToggleAutoRollBuySelected"]=u["TabShop"]:Toggle({["Title"]="Auto Buy Selected Seeds";["Value"]=false;["Callback"]=function(r)_G["AutoRollAndBuySelected"]=r if r then j_("selected")E_()end end})_G["UIRefs"]["DropdownGachaRarities"]=u["TabShop"]:Dropdown({["Title"]="Select Rarities";["Values"]=x_;["Value"]={};["Multi"]=true,["AllowNone"]=true,["Callback"]=function(r)_G["TargetGachaRarities"]={}if type(r)=="table"then for r,h in pairs(r)do _G["TargetGachaRarities"][h]=true end elseif r and r~=""then _G["TargetGachaRarities"][r]=true end end})_G["UIRefs"]["ToggleAutoRollBuyByRarity"]=u["TabShop"]:Toggle({["Title"]="Auto Buy Selected Rarities",["Value"]=false;["Callback"]=function(r)_G["AutoRollAndBuyByRarity"]=r if r then j_("rarity")E_()end end})u["TabShop"]:Section({["Title"]="GEAR SHOP"})
                                                              local L_={}_G["UIRefs"]["ToggleBuyAllGears"]=u["TabShop"]:Toggle({["Title"]="Auto Buy All Available Gears",["Value"]=false,["Callback"]=function(r)_G["AutoBuyAllGears"]=r if r and _G["UIRefs"]["ToggleBuySelectedGears"]then pcall(function()_G["UIRefs"]["ToggleBuySelectedGears"]:Set(false)end)end if r and not I["isBuyAllGearsLoopRunning"]then I["isBuyAllGearsLoopRunning"]=true task["spawn"](function()while _G["AutoBuyAllGears"]do task["wait"](.1)for r,h in pairs(K)do if not _G["AutoBuyAllGears"]then break end if P(h)>0 then pcall(function()Z(h)end)task["wait"](.1)end end end I["isBuyAllGearsLoopRunning"]=false end)end end})_G["UIRefs"]["ToggleBuySelectedGears"]=u["TabShop"]:Toggle({["Title"]="Auto Buy Selected Gears";["Value"]=false,["Callback"]=function(r)_G["AutoBuySelectedGears"]=r if r and _G["UIRefs"]["ToggleBuyAllGears"]then pcall(function()_G["UIRefs"]["ToggleBuyAllGears"]:Set(false)end)end if r and not I["isBuySelectedGearsLoopRunning"]then I["isBuySelectedGearsLoopRunning"]=true task["spawn"](function()while _G["AutoBuySelectedGears"]do task["wait"](.1)if#L_>0 then for r,h in pairs(L_)do if not _G["AutoBuySelectedGears"]then break end if P(h)>0 then pcall(function()Z(h)end)task["wait"](.1)end end end end I["isBuySelectedGearsLoopRunning"]=false end)end end})_G["UIRefs"]["DropdownGearsToBuy"]=u["TabShop"]:Dropdown({["Title"]="Select Gears to Buy",["Values"]=K;["Value"]={},["Multi"]=true,["AllowNone"]=true;["Callback"]=function(r)L_={}if type(r)=="table"then L_=r elseif r and r~=""then L_={r}end end})u["TabShop"]:Section({["Title"]="EGG SHOP"})
                                                              local 
                                                              function B_()
                                                                if I["isEggShopBuyLoopRunning"]then
                                                                   return 
                                                                end 
                                                                if not _G["AutoBuySelectedEggs"]and not _G["AutoBuyAllEggs"]then
                                                                   return 
                                                                end I["isEggShopBuyLoopRunning"]=true task["spawn"](function()while _G["AutoBuySelectedEggs"]or _G["AutoBuyAllEggs"]do local r=m_()for r,h in ipairs(r)do if not _G["AutoBuySelectedEggs"]and not _G["AutoBuyAllEggs"]then break end local m=_G["AutoBuyAllEggs"]or(_G["AutoBuySelectedEggs"]and _G["TargetEggShopEggs"][h["Name"]]==true)if m then local r=h_(h["Name"])if H(r,"Egg Shop",h["Name"])then S_(h)end task["wait"](.2)end end task["wait"](1)end I["isEggShopBuyLoopRunning"]=false end)
                                                              end _G["UIRefs"]["ToggleAutoUnlockEggSlots"]=u["TabShop"]:Toggle({["Title"]="Auto Unlock Egg Slots";["Value"]=false;["Callback"]=function(r)_G["AutoUnlockEggSlots"]=r if r and not I["isUnlockEggSlotsLoopRunning"]then I["isUnlockEggSlotsLoopRunning"]=true task["spawn"](function()while _G["AutoUnlockEggSlots"]do local r=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("EggShop")and m["Remotes"]["EggShop"]:FindFirstChild("Transaction"))if r then local h=e()local m=M()for m,S in ipairs(m)do if not _G["AutoUnlockEggSlots"]then break end local C=S["EggSlotNumber"]if not _G["SessionUnlockedEggSlots"][C]and H(S["UnlockPrice"],"Egg Slot","Slot "..tostring(C),h)then local m=pcall(function()r:InvokeServer("UnlockSlot",C)end)if m then _G["SessionUnlockedEggSlots"][C]=true print("[Lamduck] AutoUnlockEggSlot | Slot "..(tostring(C)..(" | price: "..tostring(S["UnlockPrice"]))))task["wait"](1.5)if not _G["SkipMoneyCheck"]then h=e()end end end end end task["wait"](5)end I["isUnlockEggSlotsLoopRunning"]=false end)end end})_G["UIRefs"]["DropdownEggShopEggs"]=u["TabShop"]:Dropdown({["Title"]="Select Eggs to Buy";["Values"]=r_(),["Value"]={};["Multi"]=true,["AllowNone"]=true;["Callback"]=function(r)_G["TargetEggShopEggs"]={}if type(r)=="table"then for r,h in pairs(r)do _G["TargetEggShopEggs"][h]=true end elseif r~=""then _G["TargetEggShopEggs"][r]=true end end})u["TabShop"]:Button({["Title"]="Refresh Egg List",["Callback"]=function()pcall(function()_G["UIRefs"]["DropdownEggShopEggs"]:Refresh(r_())end)r:Notify({["Title"]="Egg Shop",["Content"]="Egg list refreshed.",["Duration"]=2})end})_G["UIRefs"]["ToggleAutoBuySelectedEggs"]=u["TabShop"]:Toggle({["Title"]="Auto Buy Selected Eggs";["Value"]=false,["Callback"]=function(r)_G["AutoBuySelectedEggs"]=r if r and _G["UIRefs"]["ToggleAutoBuyAllEggs"]then pcall(function()_G["UIRefs"]["ToggleAutoBuyAllEggs"]:Set(false)end)end B_()end})_G["UIRefs"]["ToggleAutoBuyAllEggs"]=u["TabShop"]:Toggle({["Title"]="Auto Buy All Available Eggs",["Value"]=false,["Callback"]=function(r)_G["AutoBuyAllEggs"]=r if r and _G["UIRefs"]["ToggleAutoBuySelectedEggs"]then pcall(function()_G["UIRefs"]["ToggleAutoBuySelectedEggs"]:Set(false)end)end B_()end})u["TabShop"]:Section({["Title"]="LIVE SHOP STOCK"})
                                                              local a_=u["TabShop"]:Paragraph({["Title"]="Current Available Items",["Desc"]="Loading shop stock..."})
                                                              local 
                                                              function s_()pcall(function()a_:SetDesc(p())end)
                                                              end u["TabShop"]:Button({["Title"]="Refresh Stock Info",["Callback"]=function()s_()r:Notify({["Title"]="Shop Stock";["Content"]="Stock info refreshed.",["Duration"]=2})end})task["spawn"](function()while task["wait"](10)do s_()end end)s_()
                                                              local F_=15 
                                                              local 
                                                              function Y_()
                                                                local r=z:FindFirstChild("PlayerGui")
                                                                if not r then
                                                                   return false 
                                                                end 
                                                                local h=r:FindFirstChild("MainUI")
                                                                local m=h and h:FindFirstChild("Menus")
                                                                local S=m and m:FindFirstChild("SeedCollectorFrame")
                                                                local C=S and S:FindFirstChild("Main")
                                                                local W=C and C:FindFirstChild("Frame")
                                                                local V=W and W:FindFirstChild("ProgressBarDaily")
                                                                local R=V and V:FindFirstChild("Progress")
                                                                if not R or not R:IsA("TextLabel")then
                                                                   return false 
                                                                end 
                                                                local c=R["Text"]
                                                                if not c or c==""then
                                                                   return false 
                                                                end 
                                                                local x=string["gsub"](c,",","")
                                                                local b,I=string["match"](x,"(%d+)%s*/%s*(%d+)")
                                                                return b and(I and tonumber(b)>=tonumber(I))
                                                              end u["TabEvents"]:Section({["Title"]="WORLD EVENTS"})
                                                              local 
                                                              function i_()
                                                                local r=z["Character"]
                                                                if r then
                                                                   for r,h in ipairs(r:GetChildren())
                                                                    do 
                                                                      if h:IsA("Tool")and string["find"](string["lower"](h["Name"]),"honey token",1,true)then
                                                                         return true 
                                                                      end 
                                                                    end 
                                                                  end 
                                                                  local h=z:FindFirstChild("Backpack")
                                                                  if h then
                                                                     for r,h in ipairs(h:GetChildren())
                                                                      do 
                                                                        if h:IsA("Tool")and string["find"](string["lower"](h["Name"]),"honey token",1,true)then
                                                                           return true 
                                                                        end 
                                                                      end 
                                                                    end 
                                                                    return false 
                                                                  end 
                                                                  local K_=nil 
                                                                  local g_=nil 
                                                                  local 
                                                                  function D_()
                                                                    if K_ and K_["Parent"]then
                                                                       return K_,g_ 
                                                                    end K_=nil g_=nil 
                                                                    local r=workspace:FindFirstChild("InteractiveEvents")and(workspace["InteractiveEvents"]:FindFirstChild("QueenBee")and(workspace["InteractiveEvents"]["QueenBee"]:FindFirstChild("HoneyJarMachine")and workspace["InteractiveEvents"]["QueenBee"]["HoneyJarMachine"]:FindFirstChild("Honey Jar Machine")))
                                                                    local h=r and r:FindFirstChild("InsertPrompt")
                                                                    if not h then
                                                                       return nil,nil 
                                                                    end 
                                                                    local m=h["Parent"]
                                                                    if m and m:IsA("Attachment")then
                                                                       m=m["Parent"]
                                                                    end 
                                                                    if not m then
                                                                       return nil,nil 
                                                                    end K_=h g_=m["CFrame"]+Vector3["new"](0,3,0)
                                                                    return K_,g_ 
                                                                  end _G["UIRefs"]["ToggleAutoPlantRush"]=u["TabEvents"]:Toggle({["Title"]="Auto Shoot Plant Rush";["Value"]=false;["Callback"]=function(r)_G["AutoPlantRush"]=r if r and not I["isPlantRushLoopRunning"]then I["isPlantRushLoopRunning"]=true task["spawn"](function()while _G["AutoPlantRush"]do local r=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("PlantRush")and m["Remotes"]["PlantRush"]:FindFirstChild("Shoot"))local h=z["Character"]and z["Character"]:FindFirstChild("HumanoidRootPart")local S=workspace:FindFirstChild("InteractiveEvents")and(workspace["InteractiveEvents"]:FindFirstChild("PlantRush")and workspace["InteractiveEvents"]["PlantRush"]:FindFirstChild("Runtime"))if r and(h and S)then local m=h["Position"]+Vector3["new"](0,1.5,0)for h,S in ipairs(S:GetChildren())do if not _G["AutoPlantRush"]then break end local C=S:IsA("Model")and S["PrimaryPart"]if C then local h=C["Position"]pcall(function()r:FireServer(m,((h-m))["Unit"],h)end)task["wait"](.05)end end end task["wait"](.1)end I["isPlantRushLoopRunning"]=false end)end end})_G["UIRefs"]["ToggleAutoClaimPlantRushBossDrop"]=u["TabEvents"]:Toggle({["Title"]="Auto Claim Plant Rush Boss Drops",["Value"]=false;["Callback"]=function(h)_G["AutoClaimPlantRushBossDrop"]=h if h and not I["isClaimPlantRushBossDropLoopRunning"]then I["isClaimPlantRushBossDropLoopRunning"]=true task["spawn"](function()while _G["AutoClaimPlantRushBossDrop"]do pcall(function()local h=z["Character"]and z["Character"]:FindFirstChild("HumanoidRootPart")if h then for m,S in ipairs(workspace:GetChildren())do if not _G["AutoClaimPlantRushBossDrop"]then break end if string["find"](S["Name"],"PlantRushLocalDrop_",1,true)then local m=S:FindFirstChildWhichIsA("ProximityPrompt",true)if m then local C=S:IsA("BasePart")and S or S:FindFirstChildWhichIsA("BasePart",true)if C then h["CFrame"]=C["CFrame"]task["wait"](.1)if fireproximityprompt and _G["AutoClaimPlantRushBossDrop"]then fireproximityprompt(m)task["wait"](.2)r:Notify({["Title"]="Plant Rush Boss Drop Claimed";["Content"]="Claimed: "..tostring(S["Name"]);["Duration"]=3})end end end end end end end)task["wait"](.5)end I["isClaimPlantRushBossDropLoopRunning"]=false end)end end})_G["UIRefs"]["ToggleAutoCollectQueenBeeHoneycomb"]=u["TabEvents"]:Toggle({["Title"]="Auto Collect Queen Bee Honeycomb";["Value"]=false;["Callback"]=function(r)_G["AutoCollectQueenBeeHoneycomb"]=r if r and not I["isCollectHoneycombLoopRunning"]then I["isCollectHoneycombLoopRunning"]=true task["spawn"](function()while _G["AutoCollectQueenBeeHoneycomb"]do pcall(function()local r=z["Character"]and z["Character"]:FindFirstChild("HumanoidRootPart")local h=workspace:FindFirstChild("InteractiveEvents")and(workspace:FindFirstChild("QueenBee",true)and workspace["InteractiveEvents"]["QueenBee"]:FindFirstChild("RuntimeHoneycombs"))if h and r then for h,m in pairs(h:GetChildren())do if not _G["AutoCollectQueenBeeHoneycomb"]then break end local S=m:FindFirstChildWhichIsA("ProximityPrompt",true)if S then local h=m:IsA("BasePart")and m or(m:IsA("Model")and((m["PrimaryPart"]or m:FindFirstChildWhichIsA("BasePart",true))))if h then r["CFrame"]=h["CFrame"]task["wait"](.2)if fireproximityprompt and _G["AutoCollectQueenBeeHoneycomb"]then fireproximityprompt(S)task["wait"](.2)end end end end end end)task["wait"](1)end I["isCollectHoneycombLoopRunning"]=false end)end end})_G["UIRefs"]["ToggleAutoSubmitQueenBeeHoneyToken"]=u["TabEvents"]:Toggle({["Title"]="Auto Submit Honey Token";["Desc"]="Submit honey tokens to the Jar Machine (Honey Pot)";["Value"]=false,["Callback"]=function(r)_G["AutoSubmitQueenBeeHoneyToken"]=r if r and not I["isSubmitQueenBeeHoneyTokenLoopRunning"]then I["isSubmitQueenBeeHoneyTokenLoopRunning"]=true task["spawn"](function()while _G["AutoSubmitQueenBeeHoneyToken"]do if not i_()then task["wait"](2)else local r,h=D_()if r and h then local m=z["Character"]and z["Character"]:FindFirstChild("HumanoidRootPart")if m then m["CFrame"]=h task["wait"](.5)if fireproximityprompt then fireproximityprompt(r)task["wait"](.2)end end else task["wait"](2)end end task["wait"](1)end I["isSubmitQueenBeeHoneyTokenLoopRunning"]=false end)end end})u["TabEvents"]:Section({["Title"]="SEED COLLECTOR"})_G["UIRefs"]["DropdownSeedCollectorSubmitSeeds"]=u["TabEvents"]:Dropdown({["Title"]="Select Seeds";["Values"]=_G["CachedIndexSeedEntries"],["Value"]={},["Multi"]=true;["Callback"]=function(r)_G["TargetSeedCollectorSubmitSeeds"]={}if type(r)=="table"then for r,h in pairs(r)do local m=string["match"](h,"%] (.*)")or h _G["TargetSeedCollectorSubmitSeeds"][m]=true end elseif r~=""then local h=string["match"](r,"%] (.*)")or r _G["TargetSeedCollectorSubmitSeeds"][h]=true end end})u["TabEvents"]:Button({["Title"]="Clear Seed Collector Targets",["Callback"]=function()_G["TargetSeedCollectorSubmitSeeds"]={}pcall(function()_G["UIRefs"]["DropdownSeedCollectorSubmitSeeds"]:Select({})end)r:Notify({["Title"]="Seed Collector";["Content"]="Seed collector targets cleared.",["Duration"]=2})end})
                                                                  local 
                                                                  function P_(r)
                                                                    local h=workspace:FindFirstChild("SeedCollector")
                                                                    local m=h and h:FindFirstChild("Attachment")
                                                                    local S=m and m:FindFirstChild("SubmitSeed")
                                                                    if not S then
                                                                       return false 
                                                                    end 
                                                                    local C={}
                                                                    if r then
                                                                       for r,h in ipairs({z["Backpack"],z["Character"]})
                                                                        do 
                                                                          if h then
                                                                             for r,h in pairs(h:GetChildren())
                                                                              do 
                                                                                if h:IsA("Tool")and h:GetAttribute("InventoryCategory")=="Seeds"then
                                                                                   local r=h:GetAttribute("trueName")
                                                                                  if r then
                                                                                     C[r]=true 
                                                                                  end 
                                                                                end 
                                                                              end 
                                                                            end 
                                                                          end 
                                                                        else C=_G["TargetSeedCollectorSubmitSeeds"]
                                                                        end 
                                                                        local W=false 
                                                                        for r,h in pairs(C)
                                                                          do 
                                                                            if not _G["AutoSubmitSeedToCollector"]and not _G["AutoSubmitAllSeedsToCollector"]then
                                                                               break 
                                                                            end 
                                                                            if Y_()then
                                                                               break 
                                                                            end 
                                                                            local C=W_(r)
                                                                            if C then
                                                                               local r=z["Character"]and z["Character"]:FindFirstChild("HumanoidRootPart")
                                                                              if r then
                                                                                 local h=((r["Position"]-m["WorldCFrame"]["Position"]))["Magnitude"]
                                                                                if h>F_ then
                                                                                   r["CFrame"]=m["WorldCFrame"]task["wait"](1)
                                                                                end 
                                                                                if fireproximityprompt then
                                                                                   fireproximityprompt(S)task["wait"](.1)W=true 
                                                                                  if Y_()then
                                                                                     break 
                                                                                  end 
                                                                                end 
                                                                              end 
                                                                            end 
                                                                          end 
                                                                          return W 
                                                                        end 
                                                                        local 
                                                                        function X_()
                                                                          if I["isSeedCollectorSubmitLoopRunning"]then
                                                                             return 
                                                                          end 
                                                                          if not _G["AutoSubmitSeedToCollector"]and not _G["AutoSubmitAllSeedsToCollector"]then
                                                                             return 
                                                                          end I["isSeedCollectorSubmitLoopRunning"]=true task["spawn"](function()while _G["AutoSubmitSeedToCollector"]or _G["AutoSubmitAllSeedsToCollector"]do if Y_()then task["wait"](10)else local r=P_(_G["AutoSubmitAllSeedsToCollector"])if not r then task["wait"](2)end end task["wait"](1)end I["isSeedCollectorSubmitLoopRunning"]=false end)
                                                                        end _G["UIRefs"]["ToggleAutoSubmitSeedToCollector"]=u["TabEvents"]:Toggle({["Title"]="Auto Submit Selected",["Desc"]="Automatically submit selected seeds to the collector";["Value"]=false,["Callback"]=function(r)_G["AutoSubmitSeedToCollector"]=r if r and _G["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]then pcall(function()_G["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]:Set(false)end)end X_()end})_G["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]=u["TabEvents"]:Toggle({["Title"]="Auto Submit All";["Desc"]="Automatically submit all seeds, ignoring filter";["Value"]=false,["Callback"]=function(r)_G["AutoSubmitAllSeedsToCollector"]=r if r and _G["UIRefs"]["ToggleAutoSubmitSeedToCollector"]then pcall(function()_G["UIRefs"]["ToggleAutoSubmitSeedToCollector"]:Set(false)end)end X_()end})u["TabRewards"]:Section({["Title"]="DAILY REWARDS"})_G["UIRefs"]["ToggleAutoClaimDailyReward"]=u["TabRewards"]:Toggle({["Title"]="Auto Claim Daily Reward";["Value"]=false,["Callback"]=function(r)_G["AutoClaimDailyReward"]=r if r and not I["isClaimDailyRewardLoopRunning"]then I["isClaimDailyRewardLoopRunning"]=true task["spawn"](function()while _G["AutoClaimDailyReward"]do pcall(function()if m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("ClaimDailyReward")then m["Remotes"]["ClaimDailyReward"]:InvokeServer()end end)task["wait"](60)end I["isClaimDailyRewardLoopRunning"]=false end)end end})_G["UIRefs"]["ToggleAutoClaimPlaytimeReward"]=u["TabRewards"]:Toggle({["Title"]="Auto Claim Playtime Reward",["Value"]=false,["Callback"]=function(r)_G["AutoClaimPlaytimeReward"]=r if r and not I["isClaimPlaytimeRewardLoopRunning"]then I["isClaimPlaytimeRewardLoopRunning"]=true task["spawn"](function()while _G["AutoClaimPlaytimeReward"]do pcall(function()local r=m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("ClaimPlaytimeReward")if r then for h=1,15,1 do if not _G["AutoClaimPlaytimeReward"]then break end r:InvokeServer(h)task["wait"](.2)end end end)task["wait"](10)end I["isClaimPlaytimeRewardLoopRunning"]=false end)end end})u["TabRewards"]:Section({["Title"]="SPIN WHEEL (WIP)"})
                                                                        local N_=5 _G["UIRefs"]["ToggleAutoSpinWheel"]=u["TabRewards"]:Toggle({["Title"]="Auto Spin Wheel",["Value"]=false,["Callback"]=function(r)_G["AutoSpinWheel"]=r if r and not I["isSpinWheelLoopRunning"]then I["isSpinWheelLoopRunning"]=true task["spawn"](function()while _G["AutoSpinWheel"]do pcall(function()local r=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("SpinWheel")and m["Remotes"]["SpinWheel"]:FindFirstChild("RequestSpin"))if r then r:InvokeServer(false)end end)task["wait"](N_)end I["isSpinWheelLoopRunning"]=false end)end end})
                                                                        local p_="Pet_"..(z["Name"].."_")
                                                                        local 
                                                                        function Z_(r,h)
                                                                          if not r or not h or next(h)==nil then
                                                                             return false 
                                                                          end 
                                                                          local m=string["lower"](r)
                                                                          for r,h in pairs(h)
                                                                            do 
                                                                              if h then
                                                                                 local h=string["lower"](r)
                                                                                if string["find"](m,h,1,true)then
                                                                                   return true 
                                                                                end 
                                                                              end 
                                                                            end 
                                                                            return false 
                                                                          end 
                                                                          local 
                                                                          function M_(r)
                                                                            if not r then
                                                                               return nil 
                                                                            end 
                                                                            local h=r:GetAttribute("PetKey")or r:GetAttribute("petKey")
                                                                            local m=r:GetAttribute("TrueName")or r:GetAttribute("trueName")or r:GetAttribute("PetName")or r:GetAttribute("petName")or r["Name"]
                                                                            local S=tonumber(r:GetAttribute("PetLevel"))or tonumber(r:GetAttribute("petLevel"))or tonumber(r:GetAttribute("Level"))or tonumber(r:GetAttribute("level"))or 1 
                                                                            local C=tonumber(r:GetAttribute("EarningsMultiplier"))or tonumber(r:GetAttribute("earningsMultiplier"))or tonumber(r:GetAttribute("Earnings"))or tonumber(r:GetAttribute("earnings"))or 0 
                                                                            local W=tonumber(r:GetAttribute("FloorIndex"))or tonumber(r:GetAttribute("floorIndex"))
                                                                            local z=tonumber(r:GetAttribute("SlotIndex"))or tonumber(r:GetAttribute("slotIndex"))
                                                                            local V=r:GetAttribute("PetBoosted")or r:GetAttribute("petBoosted")
                                                                            local R=tonumber(r:GetAttribute("PetBoostEndTimestamp"))or tonumber(r:GetAttribute("petBoostEndTimestamp"))
                                                                            local c=tonumber(r:GetAttribute("PetBoostMultiplier"))or tonumber(r:GetAttribute("petBoostMultiplier"))
                                                                            local x=r:GetAttribute("PetOwner")or r:GetAttribute("petOwner")
                                                                            local b=r:GetAttribute("PetSize")or r:GetAttribute("petSize")
                                                                            local I=r:GetAttribute("RBX_ReimportId")or r:GetAttribute("rbx_reimportid")
                                                                            return{["instance"]=r,["petKey"]=h,["petName"]=m;["level"]=S;["earnings"]=C;["floorIndex"]=W;["slotIndex"]=z,["petBoosted"]=V;["petBoostEndTimestamp"]=R,["petBoostMultiplier"]=c;["petOwner"]=x,["petSize"]=b,["rbxReimportId"]=I}
                                                                          end 
                                                                          local 
                                                                          function r3()
                                                                            local r={}
                                                                            local h=o()
                                                                            if not h then
                                                                               return r 
                                                                            end 
                                                                            for h,m in ipairs(h:GetChildren())
                                                                              do 
                                                                                if string["sub"](m["Name"],1,4)=="Pet_"then
                                                                                   local h=M_(m)
                                                                                  if h then
                                                                                     if not h["petKey"]then
                                                                                       local r=string["split"](m["Name"],"_")h["petKey"]=r[#r]
                                                                                    end table["insert"](r,h)
                                                                                  end 
                                                                                end 
                                                                              end 
                                                                              return r 
                                                                            end 
                                                                            local 
                                                                            function h3()
                                                                              local r={}
                                                                              local h={}
                                                                              local 
                                                                              function m(m)
                                                                                if not m then
                                                                                   return 
                                                                                end 
                                                                                for m,S in ipairs(m:GetChildren())
                                                                                  do 
                                                                                    if S:IsA("Tool")then
                                                                                       local m=M_(S)
                                                                                      if m and(m["petKey"]and not h[m["petKey"]])then
                                                                                         h[m["petKey"]]=true table["insert"](r,m)
                                                                                      end 
                                                                                    end 
                                                                                  end 
                                                                                end m(z["Character"])m(z:FindFirstChild("Backpack"))
                                                                                return r 
                                                                              end 
                                                                              local 
                                                                              function m3()
                                                                                local r={}
                                                                                local h={}
                                                                                for m,S in ipairs(r3())
                                                                                  do 
                                                                                    if S["petKey"]and not h[S["petKey"]]then
                                                                                       h[S["petKey"]]=true table["insert"](r,S)
                                                                                    end 
                                                                                  end 
                                                                                  for m,S in ipairs(h3())
                                                                                    do 
                                                                                      if S["petKey"]and not h[S["petKey"]]then
                                                                                         h[S["petKey"]]=true table["insert"](r,S)
                                                                                      end 
                                                                                    end 
                                                                                    return r 
                                                                                  end 
                                                                                  local 
                                                                                  function S3(r)
                                                                                    local h=z["Character"]
                                                                                    if h then
                                                                                       for h,m in ipairs(h:GetChildren())
                                                                                        do 
                                                                                          if m:IsA("Tool")and string["find"](m["Name"],r,1,true)then
                                                                                             return m 
                                                                                          end 
                                                                                        end 
                                                                                      end 
                                                                                      local m=z:FindFirstChild("Backpack")
                                                                                      if m then
                                                                                         for h,m in ipairs(m:GetChildren())
                                                                                          do 
                                                                                            if m:IsA("Tool")and string["find"](m["Name"],r,1,true)then
                                                                                               return m 
                                                                                            end 
                                                                                          end 
                                                                                        end 
                                                                                        return nil 
                                                                                      end 
                                                                                      local 
                                                                                      function C3()
                                                                                        local r={}
                                                                                        local h=m:FindFirstChild("GearStocks")and m["GearStocks"]:FindFirstChild(z["Name"])
                                                                                        if not h then
                                                                                           return r 
                                                                                        end 
                                                                                        for h,m in ipairs(h:GetChildren())
                                                                                          do 
                                                                                            if string["find"](m["Name"],"Treat",1,true)then
                                                                                               table["insert"](r,m["Name"])
                                                                                            end 
                                                                                          end table["sort"](r)
                                                                                          return r 
                                                                                        end 
                                                                                        local 
                                                                                        function W3()
                                                                                          local r={}
                                                                                          local h=m:FindFirstChild("Assets")and m["Assets"]:FindFirstChild("Pets")
                                                                                          if not h then
                                                                                             return r 
                                                                                          end 
                                                                                          for h,m in ipairs(h:GetChildren())
                                                                                            do table["insert"](r,m["Name"])
                                                                                            end table["sort"](r)
                                                                                            return r 
                                                                                          end u["TabPets"]:Section({["Title"]="PET MANAGEMENT"})
                                                                                          local z3=3 
                                                                                          local 
                                                                                          function V3()
                                                                                            local r=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("Pets")and m["Remotes"]["Pets"]:FindFirstChild("UnequipPet"))
                                                                                            if not r then
                                                                                               return false 
                                                                                            end 
                                                                                            local h=r3()
                                                                                            for h,m in ipairs(h)
                                                                                              do 
                                                                                                for h=1,10,1 
                                                                                                  do pcall(function()r:FireServer(m["petKey"])end)task["wait"](.1)
                                                                                                  end 
                                                                                                end 
                                                                                                return true 
                                                                                              end u["TabPets"]:Button({["Title"]="Unequip All Pets",["Callback"]=function()local h=r3()if#h==0 then r:Notify({["Title"]="Pets";["Content"]="No pets found on plot.";["Duration"]=2})return end task["spawn"](function()if not V3()then r:Notify({["Title"]="Pets",["Content"]="UnequipPet remote not found.",["Duration"]=3})return end r:Notify({["Title"]="Pets",["Content"]="Unequipped "..(#h.." pets."),["Duration"]=3})end)end})u["TabPets"]:Button({["Title"]="Equip 3 Best Earnings Multiplier Pets",["Callback"]=function()task["spawn"](function()local h=h3()if#h==0 then r:Notify({["Title"]="Pets",["Content"]="No pets found in inventory.";["Duration"]=2})return end local S=z["Character"]and z["Character"]:FindFirstChild("Humanoid")local C=z["Character"]and z["Character"]:FindFirstChild("HumanoidRootPart")if not S or not C then r:Notify({["Title"]="Pets";["Content"]="Character not found.";["Duration"]=2})return end local W=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("Pets")and m["Remotes"]["Pets"]:FindFirstChild("EquipPet"))if not W then r:Notify({["Title"]="Pets";["Content"]="EquipPet remote not found.";["Duration"]=3})return end V3()task["wait"](.5)table["sort"](h,function(r,h)return r["earnings"]>h["earnings"]end)local V=0 for r=1,math["min"](z3,#h),1 do local m=h[r]local C=G[r]if C then local r=L(C)U(r)task["wait"](.3)end S:EquipTool(m["instance"])task["wait"](.3)pcall(function()W:FireServer()end)V=V+1 task["wait"](.3)end r:Notify({["Title"]="Pets",["Content"]="Equipped "..(V..(" best pets across "..(V.." floors.")));["Duration"]=3})end)end})u["TabPets"]:Section({["Title"]="PET FEEDING"})_G["UIRefs"]["DropdownPetTreatTypes"]=u["TabPets"]:Dropdown({["Title"]="Select Treats";["Values"]=C3(),["Value"]={},["Multi"]=true,["AllowNone"]=true,["Callback"]=function(r)_G["TargetPetTreatNames"]={}if type(r)=="table"then for r,h in pairs(r)do _G["TargetPetTreatNames"][h]=true end elseif r and r~=""then _G["TargetPetTreatNames"][r]=true end end})u["TabPets"]:Button({["Title"]="Refresh Treat List",["Callback"]=function()pcall(function()_G["UIRefs"]["DropdownPetTreatTypes"]:Refresh(C3())end)pcall(function()_G["UIRefs"]["DropdownPetTreatTypes"]:Select({})end)_G["TargetPetTreatNames"]={}r:Notify({["Title"]="Pets",["Content"]="Treat list refreshed.";["Duration"]=2})end})_G["UIRefs"]["ToggleAutoFeedPets"]=u["TabPets"]:Toggle({["Title"]="Auto Feed Pets",["Value"]=false,["Callback"]=function(r)_G["AutoFeedPets"]=r if r and not I["isAutoFeedPetsLoopRunning"]then I["isAutoFeedPetsLoopRunning"]=true task["spawn"](function()while _G["AutoFeedPets"]do local r=r3()local h=m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("UsePetTreat")local S=z["Character"]and z["Character"]:FindFirstChild("Humanoid")print("[Lamduck] AutoFeedPets | Checked: "..(#r..(" pets on plot | Remote: "..(tostring(h~=nil)..(" | Humanoid: "..tostring(S~=nil))))))if h and(S and#r>0)then local m={}if next(_G["TargetPetTreatNames"])~=nil then for r,h in pairs(_G["TargetPetTreatNames"])do m[r]=true end end for m,C in pairs(m)do if not _G["AutoFeedPets"]then break end local W=S3(m)print("[Lamduck] AutoFeedPets | Treat tool check: "..(m..(" -> "..tostring(W~=nil))))if W then S:EquipTool(W)task["wait"](.3)for r,S in ipairs(r)do if not _G["AutoFeedPets"]then break end print("[Lamduck] AutoFeedPets | Feeding pet: "..(tostring(S["instance"]["Name"])..(" with "..m)))pcall(function()h:FireServer(S["instance"])end)task["wait"](.5)end end end end task["wait"](3)end I["isAutoFeedPetsLoopRunning"]=false end)end end})u["TabPets"]:Section({["Title"]="PET UPGRADE"})_G["UIRefs"]["ToggleAutoUpgradePets"]=u["TabPets"]:Toggle({["Title"]="Auto Upgrade Pets";["Value"]=false;["Callback"]=function(r)_G["AutoUpgradePets"]=r if r and not I["isAutoUpgradePetsLoopRunning"]then I["isAutoUpgradePetsLoopRunning"]=true task["spawn"](function()while _G["AutoUpgradePets"]do local r=m:FindFirstChild("Remotes")and(m["Remotes"]:FindFirstChild("Pets")and m["Remotes"]["Pets"]:FindFirstChild("UpgradePet"))print("[Lamduck] AutoUpgradePets | Remote: "..tostring(r~=nil))if r then local h=r3()print("[Lamduck] AutoUpgradePets | Found "..(#h.." active pets on plot"))for h,m in ipairs(h)do if not _G["AutoUpgradePets"]then break end pcall(function()if r:IsA("RemoteFunction")then r:InvokeServer(m["petKey"])elseif r:IsA("RemoteEvent")then r:FireServer(m["petKey"])end end)task["wait"](.1)end end task["wait"](2)end I["isAutoUpgradePetsLoopRunning"]=false end)end end})u["TabPets"]:Section({["Title"]="PET SELL"})_G["UIRefs"]["DropdownPetSellSelection"]=u["TabPets"]:Dropdown({["Title"]="Select Pets",["Values"]=W3();["Value"]={};["Multi"]=true;["AllowNone"]=true;["Callback"]=function(r)_G["TargetPetSellNames"]={}if type(r)=="table"then for r,h in pairs(r)do _G["TargetPetSellNames"][h]=true end elseif r and r~=""then _G["TargetPetSellNames"][r]=true end end})_G["UIRefs"]["ToggleAutoSellPets"]=u["TabPets"]:Toggle({["Title"]="Auto Sell Pets",["Value"]=false,["Callback"]=function(r)_G["AutoSellPets"]=r if r and not I["isAutoSellPetsLoopRunning"]then I["isAutoSellPetsLoopRunning"]=true task["spawn"](function()while _G["AutoSellPets"]do local r=m:FindFirstChild("Remotes")and m["Remotes"]:FindFirstChild("SellPet")if r then local h=h3()for h,m in ipairs(h)do if not _G["AutoSellPets"]then break end local S=false if next(_G["TargetPetSellNames"])~=nil then S=Z_(m["petName"],_G["TargetPetSellNames"])end print("[Lamduck] AutoSellPets | Pet: "..(m["petName"]..(" | Level: "..(m["level"]..(" | Eligible: "..tostring(S))))))if S then pcall(function()r:InvokeServer(m["petKey"])end)task["wait"](.1)end end end task["wait"](2)end I["isAutoSellPetsLoopRunning"]=false end)end end})u["TabUtilities"]:Section({["Title"]="PURCHASE"})_G["UIRefs"]["ToggleSkipMoneyCheck"]=u["TabUtilities"]:Toggle({["Title"]="Skip Money Check",["Desc"]="Skip client-side money checks (use only if auto buy is bugged)";["Value"]=false;["Callback"]=function(r)_G["SkipMoneyCheck"]=r end})u["TabUtilities"]:Section({["Title"]="LAG REDUCTION"})_G["UIRefs"]["ToggleHideOtherPlots"]=u["TabUtilities"]:Toggle({["Title"]="Hide Other Plots";["Value"]=false,["Callback"]=function(r)_G["HideOtherPlots"]=r T(r)end})
                                                                                              local R3=nil _G["UIRefs"]["ToggleMuteAndHideAlerts"]=u["TabUtilities"]:Toggle({["Title"]="Mute & Hide Alerts",["Value"]=false;["Callback"]=function(r)_G["MuteAndHideAlerts"]=r pcall(function()local h=(z:WaitForChild("PlayerGui")):FindFirstChild("MainUI")and z["PlayerGui"]["MainUI"]:FindFirstChild("AlertFrame")if h then h["Visible"]=not r end end)pcall(function()local h=C:FindFirstChild("SFX")and C["SFX"]:FindFirstChild("SAAlert")if h then if r then if not R3 then R3=h["Volume"]end h["Volume"]=0 else if R3 then h["Volume"]=R3 end end end end)end})u["TabUtilities"]:Section({["Title"]="TELEPORT"})q["UserInputService"]=game:GetService("UserInputService")q["CoreGui"]=game:GetService("CoreGui")
                                                                                              for r,h in ipairs({"LamduckUtilitiesFloatingGui","LamduckTeleportGui","LamduckRejoinUI";"LamduckFloatingTP"})
                                                                                                do 
                                                                                                  local m=q["CoreGui"]:FindFirstChild(h)
                                                                                                  if m then
                                                                                                     m:Destroy()
                                                                                                  end 
                                                                                                end q["TELEPORT_FLOATING_BTN_DEFAULT_POSITION"]=UDim2["new"](.8,0,.2,0)q["FloatingTeleportScreenGui"]=Instance["new"]("ScreenGui")q["FloatingTeleportScreenGui"]["Name"]="LamduckFloatingTP"q["FloatingTeleportScreenGui"]["ResetOnSpawn"]=false q["FloatingTeleportScreenGui"]["Enabled"]=false 
                                                                                                local c3=pcall(function()q["FloatingTeleportScreenGui"]["Parent"]=gethui and gethui()or q["CoreGui"]end)
                                                                                                if not c3 then
                                                                                                   q["FloatingTeleportScreenGui"]["Parent"]=z:WaitForChild("PlayerGui")
                                                                                                end q["FloatingTeleportMainButton"]=Instance["new"]("TextButton")q["FloatingTeleportMainButton"]["Size"]=UDim2["new"](0,48,0,32)q["FloatingTeleportMainButton"]["Position"]=q["TELEPORT_FLOATING_BTN_DEFAULT_POSITION"]q["FloatingTeleportMainButton"]["BackgroundColor3"]=Color3["fromRGB"](40,40,40)q["FloatingTeleportMainButton"]["TextColor3"]=Color3["fromRGB"](255,255,255)q["FloatingTeleportMainButton"]["Text"]="TP"q["FloatingTeleportMainButton"]["Font"]=Enum["Font"]["GothamBold"]q["FloatingTeleportMainButton"]["TextSize"]=14 q["FloatingTeleportMainButton"]["Parent"]=q["FloatingTeleportScreenGui"]
                                                                                                local x3=Instance["new"]("UICorner")x3["CornerRadius"]=UDim["new"](0,6)x3["Parent"]=q["FloatingTeleportMainButton"]q["FloatingTeleportListFrame"]=Instance["new"]("Frame")q["FloatingTeleportListFrame"]["Position"]=UDim2["new"](0,54,0,0)q["FloatingTeleportListFrame"]["Size"]=UDim2["new"](0,140,0,0)q["FloatingTeleportListFrame"]["AutomaticSize"]=Enum["AutomaticSize"]["Y"]q["FloatingTeleportListFrame"]["BackgroundTransparency"]=1 q["FloatingTeleportListFrame"]["Visible"]=false q["FloatingTeleportListFrame"]["Parent"]=q["FloatingTeleportMainButton"]
                                                                                                local b3=Instance["new"]("UIListLayout")b3["Padding"]=UDim["new"](0,5)b3["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]b3["Parent"]=q["FloatingTeleportListFrame"]
                                                                                                local I3=false 
                                                                                                local q3=nil 
                                                                                                local u3=nil 
                                                                                                local l3=nil q["FloatingTeleportMainButton"]["InputBegan"]:Connect(function(r)if r["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or r["UserInputType"]==Enum["UserInputType"]["Touch"]then I3=true u3=r["Position"]l3=q["FloatingTeleportMainButton"]["Position"]r["Changed"]:Connect(function()if r["UserInputState"]==Enum["UserInputState"]["End"]then I3=false end end)end end)q["FloatingTeleportMainButton"]["InputChanged"]:Connect(function(r)if r["UserInputType"]==Enum["UserInputType"]["MouseMovement"]or r["UserInputType"]==Enum["UserInputType"]["Touch"]then q3=r end end)q["UserInputService"]["InputChanged"]:Connect(function(r)if r==q3 and I3 then local h=r["Position"]-u3 q["FloatingTeleportMainButton"]["Position"]=UDim2["new"](l3["X"]["Scale"],l3["X"]["Offset"]+h["X"],l3["Y"]["Scale"],l3["Y"]["Offset"]+h["Y"])end end)
                                                                                                for r,h in ipairs(G)
                                                                                                  do 
                                                                                                    local m=Instance["new"]("TextButton")m["Size"]=UDim2["new"](1,0,0,32)m["BackgroundColor3"]=Color3["fromRGB"](30,30,30)m["TextColor3"]=Color3["fromRGB"](200,200,200)m["Text"]=h["Label"]m["Font"]=Enum["Font"]["GothamSemibold"]m["TextSize"]=13 m["LayoutOrder"]=r m["Parent"]=q["FloatingTeleportListFrame"]
                                                                                                    local S=Instance["new"]("UICorner")S["CornerRadius"]=UDim["new"](0,6)S["Parent"]=m m["MouseButton1Click"]:Connect(function()B(h)q["FloatingTeleportListFrame"]["Visible"]=false end)
                                                                                                  end 
                                                                                                  local v3=nil q["FloatingTeleportMainButton"]["InputBegan"]:Connect(function(r)if r["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or r["UserInputType"]==Enum["UserInputType"]["Touch"]then v3=tick()end end)q["FloatingTeleportMainButton"]["InputEnded"]:Connect(function(r)if r["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or r["UserInputType"]==Enum["UserInputType"]["Touch"]then if v3 and tick()-v3<.2 then q["FloatingTeleportListFrame"]["Visible"]=not q["FloatingTeleportListFrame"]["Visible"]end end end)_G["UIRefs"]["ToggleFloatingTeleportButton"]=u["TabUtilities"]:Toggle({["Title"]="Show Floating Teleport Button",["Value"]=false;["Callback"]=function(r)q["FloatingTeleportScreenGui"]["Enabled"]=r if not r then q["FloatingTeleportListFrame"]["Visible"]=false end end})u["TabUtilities"]:Button({["Title"]="Reset Floating TP Button Position",["Callback"]=function()q["FloatingTeleportMainButton"]["Position"]=q["TELEPORT_FLOATING_BTN_DEFAULT_POSITION"]r:Notify({["Title"]="Utilities";["Content"]="TP button position reset to default.";["Duration"]=2})end})u["TabUtilities"]:Button({["Title"]="Teleport to My Plot",["Callback"]=a})
                                                                                                  local e3="build-a-ring-farm.json"
                                                                                                  local 
                                                                                                  function H3(r)
                                                                                                    local h={}
                                                                                                    for r,m in pairs(r)
                                                                                                      do table["insert"](h,r)
                                                                                                      end 
                                                                                                      return h 
                                                                                                    end 
                                                                                                    local 
                                                                                                    function E3()
                                                                                                      local r={["F1_AutoPlantByRarity"]=_G["UIRefs"]["ToggleFloor1AutoPlant"]and _G["UIRefs"]["ToggleFloor1AutoPlant"]["Value"]or false,["F1_TargetAutoPlantRaritiesList"]=H3(_G["F1_TargetAutoPlantRarities"]),["F2_AutoPlantByRarity"]=_G["UIRefs"]["ToggleFloor2AutoPlant"]and _G["UIRefs"]["ToggleFloor2AutoPlant"]["Value"]or false;["F2_TargetAutoPlantRaritiesList"]=H3(_G["F2_TargetAutoPlantRarities"]),["F3_AutoPlantByRarity"]=_G["UIRefs"]["ToggleFloor3AutoPlant"]and _G["UIRefs"]["ToggleFloor3AutoPlant"]["Value"]or false;["F3_TargetAutoPlantRaritiesList"]=H3(_G["F3_TargetAutoPlantRarities"]),["AutoSellCrates"]=_G["UIRefs"]["ToggleAutoSellCrates"]["Value"];["AutoUnlockFarmPlots"]=_G["UIRefs"]["ToggleAutoUnlockFarmPlots"]["Value"];["AutoExpandFarmPlot"]=_G["UIRefs"]["ToggleAutoExpandFarmPlot"]["Value"],["AutoCollectQueenBeeHoneycomb"]=_G["UIRefs"]["ToggleAutoCollectQueenBeeHoneycomb"]["Value"],["AutoPlantRush"]=_G["UIRefs"]["ToggleAutoPlantRush"]["Value"],["AutoClaimPlantRushBossDrop"]=_G["UIRefs"]["ToggleAutoClaimPlantRushBossDrop"]["Value"],["AutoSubmitQueenBeeHoneyToken"]=_G["UIRefs"]["ToggleAutoSubmitQueenBeeHoneyToken"]["Value"];["AutoSubmitSeedToCollector"]=_G["UIRefs"]["ToggleAutoSubmitSeedToCollector"]["Value"];["AutoSubmitAllSeedsToCollector"]=_G["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]["Value"];["TargetSeedCollectorSubmitSeedsList"]=H3(_G["TargetSeedCollectorSubmitSeeds"]);["F2_AutoCompostSelected"]=T_["ToggleAutoCompostSelected"]["Value"],["F2_AutoCompostByRarity"]=T_["ToggleAutoCompostByRarity"]["Value"];["F2_AutoPullLever"]=T_["ToggleAutoPullLever"]["Value"],["F2_AutoPullLeverWhenMax"]=T_["ToggleAutoPullLeverWhenMax"]["Value"];["F2_TargetCompostSeedsList"]=H3(_G["F2_TargetCompostSeeds"]);["F2_TargetCompostRaritiesList"]=H3(_G["F2_TargetCompostRarities"]),["F2_MaxCompostInsertAmount"]=_G["F2_MaxCompostInsertAmount"];["F2_CompostInsertDelay"]=_G["F2_CompostInsertDelay"];["F2_PullLeverDelay"]=_G["F2_PullLeverDelay"];["F3_AutoCompostSelected"]=Q_["ToggleAutoCompostSelected"]["Value"];["F3_AutoCompostByRarity"]=Q_["ToggleAutoCompostByRarity"]["Value"],["F3_AutoPullLever"]=Q_["ToggleAutoPullLever"]["Value"];["F3_AutoPullLeverWhenMax"]=Q_["ToggleAutoPullLeverWhenMax"]["Value"],["F3_TargetCompostSeedsList"]=H3(_G["F3_TargetCompostSeeds"]);["F3_TargetCompostRaritiesList"]=H3(_G["F3_TargetCompostRarities"]),["F3_MaxCompostInsertAmount"]=_G["F3_MaxCompostInsertAmount"];["F3_CompostInsertDelay"]=_G["F3_CompostInsertDelay"];["F3_PullLeverDelay"]=_G["F3_PullLeverDelay"];["AutoClaimDailyReward"]=_G["UIRefs"]["ToggleAutoClaimDailyReward"]["Value"],["AutoClaimPlaytimeReward"]=_G["UIRefs"]["ToggleAutoClaimPlaytimeReward"]["Value"],["AutoSpinWheel"]=_G["UIRefs"]["ToggleAutoSpinWheel"]["Value"],["AutoFeedPets"]=_G["AutoFeedPets"],["AutoUpgradePets"]=_G["AutoUpgradePets"],["AutoSellPets"]=_G["AutoSellPets"],["TargetPetTreatNamesList"]=H3(_G["TargetPetTreatNames"]);["TargetPetUpgradeLevel"]=_G["TargetPetUpgradeLevel"];["TargetPetSellNamesList"]=H3(_G["TargetPetSellNames"]);["AutoBuyAllGears"]=_G["UIRefs"]["ToggleBuyAllGears"]["Value"];["AutoBuySelectedGears"]=_G["UIRefs"]["ToggleBuySelectedGears"]["Value"],["AutoUnlockEggSlots"]=_G["UIRefs"]["ToggleAutoUnlockEggSlots"]["Value"],["AutoBuyAllEggs"]=_G["UIRefs"]["ToggleAutoBuyAllEggs"]["Value"],["AutoBuySelectedEggs"]=_G["UIRefs"]["ToggleAutoBuySelectedEggs"]["Value"],["TargetEggShopEggsList"]=H3(_G["TargetEggShopEggs"]),["FloorUpgradeConfig"]={["1"]={["AutoUpgrade"]=_G["UIRefs"]["ToggleFloor1AutoUpgrade"]["Value"],["AutoAll"]=_G["UIRefs"]["ToggleFloor1AutoAllUpgrade"]["Value"],["TargetPlantNamesList"]=H3(_G["FloorUpgradeConfig"][1]["TargetPlantNames"])};["2"]={["AutoUpgrade"]=_G["UIRefs"]["ToggleFloor2AutoUpgrade"]["Value"],["AutoAll"]=_G["UIRefs"]["ToggleFloor2AutoAllUpgrade"]["Value"],["TargetPlantNamesList"]=H3(_G["FloorUpgradeConfig"][2]["TargetPlantNames"])},["3"]={["AutoUpgrade"]=_G["UIRefs"]["ToggleFloor3AutoUpgrade"]["Value"];["AutoAll"]=_G["UIRefs"]["ToggleFloor3AutoAllUpgrade"]["Value"],["TargetPlantNamesList"]=H3(_G["FloorUpgradeConfig"][3]["TargetPlantNames"])}},["FloorFertilizeConfig"]={["1"]={["AutoFertilize"]=_G["UIRefs"]["ToggleFloor1AutoFertilize"]["Value"],["AutoAll"]=_G["UIRefs"]["ToggleFloor1AutoAllFertilize"]["Value"];["TargetPlantNamesList"]=H3(_G["FloorFertilizeConfig"][1]["TargetPlantNames"]),["TargetFertilizerTypesList"]=H3(_G["FloorFertilizeConfig"][1]["TargetFertilizerTypes"])};["2"]={["AutoFertilize"]=_G["UIRefs"]["ToggleFloor2AutoFertilize"]["Value"];["AutoAll"]=_G["UIRefs"]["ToggleFloor2AutoAllFertilize"]["Value"];["TargetPlantNamesList"]=H3(_G["FloorFertilizeConfig"][2]["TargetPlantNames"]);["TargetFertilizerTypesList"]=H3(_G["FloorFertilizeConfig"][2]["TargetFertilizerTypes"])};["3"]={["AutoFertilize"]=_G["UIRefs"]["ToggleFloor3AutoFertilize"]["Value"],["AutoAll"]=_G["UIRefs"]["ToggleFloor3AutoAllFertilize"]["Value"],["TargetPlantNamesList"]=H3(_G["FloorFertilizeConfig"][3]["TargetPlantNames"]);["TargetFertilizerTypesList"]=H3(_G["FloorFertilizeConfig"][3]["TargetFertilizerTypes"])}},["AutoRollAndBuyAll"]=_G["UIRefs"]["ToggleAutoRollBuyAll"]["Value"],["AutoRollAndBuySelected"]=_G["UIRefs"]["ToggleAutoRollBuySelected"]["Value"];["AutoRollAndBuyByRarity"]=_G["UIRefs"]["ToggleAutoRollBuyByRarity"]["Value"],["AutoUpgradePowerups"]=_G["UIRefs"]["ToggleAutoUpgradePowerups"]["Value"];["SelectedPowerupsToUpgrade"]=H3(_G["TargetPowerups"]),["SelectedGearsToBuy"]=L_;["SelectedGachaSeedsToSnipe"]=H3(_G["TargetGachaSeeds"]);["TargetGachaRaritiesList"]=H3(_G["TargetGachaRarities"]);["ShowFloatingTeleportButton"]=_G["UIRefs"]["ToggleFloatingTeleportButton"]["Value"],["TeleportButtonPosXScale"]=q["FloatingTeleportMainButton"]["Position"]["X"]["Scale"],["TeleportButtonPosXOffset"]=q["FloatingTeleportMainButton"]["Position"]["X"]["Offset"];["TeleportButtonPosYScale"]=q["FloatingTeleportMainButton"]["Position"]["Y"]["Scale"];["TeleportButtonPosYOffset"]=q["FloatingTeleportMainButton"]["Position"]["Y"]["Offset"],["SkipMoneyCheck"]=_G["UIRefs"]["ToggleSkipMoneyCheck"]["Value"],["HideOtherPlots"]=_G["HideOtherPlots"],["MuteAndHideAlerts"]=_G["MuteAndHideAlerts"]}
                                                                                                      if writefile then
                                                                                                         writefile(e3,S:JSONEncode(r))
                                                                                                      end 
                                                                                                    end u["TabConfig"]:Section({["Title"]="INFO & COMMUNITY"})u["TabConfig"]:Paragraph({["Title"]="About Script";["Desc"]="<font color='#00FF7F'><b>Script created by Lamduck.</b></font>\n<font color='#FF6AFF'>Join the community below to chat, give feedback, request features, or request games.</font>"})u["TabConfig"]:Button({["Title"]="Join Discord Server",["Callback"]=function()if setclipboard then setclipboard("https://discord.gg/N3uxkAHYtM")r:Notify({["Title"]="Discord",["Content"]="Link copied to clipboard!",["Duration"]=3})end end})u["TabConfig"]:Section({["Title"]="CONFIGURATION"})u["TabConfig"]:Button({["Title"]="Save Current Config",["Callback"]=function()h:Dialog({["Title"]="Confirm Save";["Content"]="Are you sure you want to save the current configuration?",["Buttons"]={{["Title"]="Confirm",["Callback"]=function()E3()r:Notify({["Title"]="Success",["Content"]="Configuration saved to device!",["Duration"]=3})end};{["Title"]="Cancel"}}})end})u["TabConfig"]:Button({["Title"]="Delete & Reset Config";["Callback"]=function()h:Dialog({["Title"]="Confirm Reset",["Content"]="Are you sure you want to delete all saved configs and reset?",["Buttons"]={{["Title"]="Confirm";["Callback"]=function()if isfile and(isfile(e3)and delfile)then delfile(e3)end pcall(function()if _G["UIRefs"]["ToggleFloor1AutoPlant"]then _G["UIRefs"]["ToggleFloor1AutoPlant"]:Set(false)end if _G["UIRefs"]["ToggleFloor2AutoPlant"]then _G["UIRefs"]["ToggleFloor2AutoPlant"]:Set(false)end if _G["UIRefs"]["ToggleFloor3AutoPlant"]then _G["UIRefs"]["ToggleFloor3AutoPlant"]:Set(false)end _G["UIRefs"]["ToggleAutoSellCrates"]:Set(false)_G["UIRefs"]["ToggleAutoUnlockFarmPlots"]:Set(false)_G["UIRefs"]["ToggleAutoExpandFarmPlot"]:Set(false)_G["UIRefs"]["ToggleAutoCollectQueenBeeHoneycomb"]:Set(false)_G["UIRefs"]["ToggleAutoPlantRush"]:Set(false)_G["UIRefs"]["ToggleAutoClaimPlantRushBossDrop"]:Set(false)_G["UIRefs"]["ToggleAutoSubmitQueenBeeHoneyToken"]:Set(false)_G["UIRefs"]["ToggleAutoSubmitSeedToCollector"]:Set(false)_G["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]:Set(false)T_["ToggleAutoCompostSelected"]:Set(false)T_["ToggleAutoCompostByRarity"]:Set(false)T_["ToggleAutoPullLever"]:Set(false)T_["ToggleAutoPullLeverWhenMax"]:Set(false)Q_["ToggleAutoCompostSelected"]:Set(false)Q_["ToggleAutoCompostByRarity"]:Set(false)Q_["ToggleAutoPullLever"]:Set(false)Q_["ToggleAutoPullLeverWhenMax"]:Set(false)_G["UIRefs"]["ToggleAutoClaimDailyReward"]:Set(false)_G["UIRefs"]["ToggleAutoClaimPlaytimeReward"]:Set(false)_G["UIRefs"]["ToggleAutoSpinWheel"]:Set(false)_G["UIRefs"]["ToggleAutoFeedPets"]:Set(false)_G["UIRefs"]["ToggleAutoUpgradePets"]:Set(false)_G["UIRefs"]["ToggleAutoSellPets"]:Set(false)_G["UIRefs"]["ToggleBuyAllGears"]:Set(false)_G["UIRefs"]["ToggleBuySelectedGears"]:Set(false)_G["UIRefs"]["ToggleAutoUnlockEggSlots"]:Set(false)_G["UIRefs"]["ToggleAutoBuySelectedEggs"]:Set(false)_G["UIRefs"]["ToggleAutoBuyAllEggs"]:Set(false)for r=1,3,1 do if _G["UIRefs"]["ToggleFloor"..(r.."AutoUpgrade")]then pcall(function()_G["UIRefs"]["ToggleFloor"..(r.."AutoUpgrade")]:Set(false)end)end if _G["UIRefs"]["ToggleFloor"..(r.."AutoAllUpgrade")]then pcall(function()_G["UIRefs"]["ToggleFloor"..(r.."AutoAllUpgrade")]:Set(false)end)end if _G["UIRefs"]["ToggleFloor"..(r.."AutoFertilize")]then pcall(function()_G["UIRefs"]["ToggleFloor"..(r.."AutoFertilize")]:Set(false)end)end if _G["UIRefs"]["ToggleFloor"..(r.."AutoAllFertilize")]then pcall(function()_G["UIRefs"]["ToggleFloor"..(r.."AutoAllFertilize")]:Set(false)end)end end _G["UIRefs"]["ToggleAutoRollBuyAll"]:Set(false)_G["UIRefs"]["ToggleAutoRollBuySelected"]:Set(false)_G["UIRefs"]["ToggleAutoRollBuyByRarity"]:Set(false)_G["UIRefs"]["ToggleAutoUpgradePowerups"]:Set(false)end)for r=1,3,1 do _G["FloorUpgradeConfig"][r]={["AutoUpgrade"]=false,["AutoAll"]=false,["TargetPlantNames"]={}}_G["FloorFertilizeConfig"][r]={["AutoFertilize"]=false;["AutoAll"]=false,["TargetPlantNames"]={},["TargetFertilizerTypes"]={}}end _G["TargetPowerups"]={}_G["TargetGachaSeeds"]={}_G["TargetGachaRarities"]={}_G["TargetSeedCollectorSubmitSeeds"]={}_G["AutoSubmitAllSeedsToCollector"]=false _G["F2_TargetCompostSeeds"]={}_G["F2_TargetCompostRarities"]={}_G["F2_MaxCompostInsertAmount"]=0 _G["F2_CompostInsertDelay"]=2 _G["F2_PullLeverDelay"]=2 _G["F3_TargetCompostSeeds"]={}_G["F3_TargetCompostRarities"]={}_G["F3_MaxCompostInsertAmount"]=0 _G["F3_CompostInsertDelay"]=2 _G["F3_PullLeverDelay"]=2 _G["SessionUnlockedEggSlots"]={}_G["TargetEggShopEggs"]={}L_={}_G["AutoFeedPets"]=false _G["AutoUpgradePets"]=false _G["HideOtherPlots"]=false _G["MuteAndHideAlerts"]=false _G["AutoSellPets"]=false _G["TargetPetTreatNames"]={}_G["TargetPetSellNames"]={}_G["F1_TargetAutoPlantRarities"]={}_G["F2_TargetAutoPlantRarities"]={}_G["F3_TargetAutoPlantRarities"]={}if _G["UIRefs"]["DropdownFloor1PlantRarities"]then pcall(function()_G["UIRefs"]["DropdownFloor1PlantRarities"]:Select({})end)end if _G["UIRefs"]["DropdownFloor2PlantRarities"]then pcall(function()_G["UIRefs"]["DropdownFloor2PlantRarities"]:Select({})end)end if _G["UIRefs"]["DropdownFloor3PlantRarities"]then pcall(function()_G["UIRefs"]["DropdownFloor3PlantRarities"]:Select({})end)end pcall(function()_G["UIRefs"]["DropdownPetTreatTypes"]:Select({})end)pcall(function()_G["UIRefs"]["DropdownPetSellSelection"]:Select({})end)for r=1,3,1 do pcall(function()_G["UIRefs"]["DropdownFloor"..(r.."UpgradePlant")]:Select({})end)pcall(function()_G["UIRefs"]["DropdownFloor"..(r.."FertilizePlant")]:Select({})end)pcall(function()_G["UIRefs"]["DropdownFloor"..(r.."FertilizerType")]:Select({})end)end pcall(function()_G["UIRefs"]["DropdownPowerupsToUpgrade"]:Select({})end)pcall(function()_G["UIRefs"]["DropdownGachaSeeds"]:Select({})end)pcall(function()_G["UIRefs"]["DropdownGachaRarities"]:Select({})end)pcall(function()_G["UIRefs"]["DropdownSeedCollectorSubmitSeeds"]:Select({})end)pcall(function()T_["DropdownCompostSeed"]:Select({})end)pcall(function()T_["DropdownCompostRarities"]:Select({})end)pcall(function()T_["InputCompostMaxInsertAmount"]:Set("0")end)pcall(function()T_["InputCompostInsertDelay"]:Set("60")end)pcall(function()T_["InputPullLeverDelay"]:Set("60")end)pcall(function()Q_["DropdownCompostSeed"]:Select({})end)pcall(function()Q_["DropdownCompostRarities"]:Select({})end)pcall(function()Q_["InputCompostMaxInsertAmount"]:Set("0")end)pcall(function()Q_["InputCompostInsertDelay"]:Set("60")end)pcall(function()Q_["InputPullLeverDelay"]:Set("60")end)pcall(function()_G["UIRefs"]["DropdownGearsToBuy"]:Select({})end)pcall(function()_G["UIRefs"]["DropdownEggShopEggs"]:Refresh(r_())end)pcall(function()_G["UIRefs"]["DropdownEggShopEggs"]:Select({})end)pcall(function()_G["UIRefs"]["ToggleFloatingTeleportButton"]:Set(false)end)pcall(function()_G["UIRefs"]["ToggleSkipMoneyCheck"]:Set(false)end)pcall(function()_G["UIRefs"]["ToggleHideOtherPlots"]:Set(false)end)pcall(function()_G["UIRefs"]["ToggleMuteAndHideAlerts"]:Set(false)end)q["FloatingTeleportMainButton"]["Position"]=q["TELEPORT_FLOATING_BTN_DEFAULT_POSITION"]r:Notify({["Title"]="Success";["Content"]="All previous configs deleted!";["Duration"]=3})end};{["Title"]="Cancel"}}})end})
                                                                                                    if isfile and isfile(e3)then
                                                                                                       local h,m=pcall(function()return S:JSONDecode(readfile(e3))end)
                                                                                                      if h and m then
                                                                                                         pcall(function()if m["AutoSellCrates"]~=nil then _G["UIRefs"]["ToggleAutoSellCrates"]:Set(m["AutoSellCrates"])end if m["AutoUnlockFarmPlots"]~=nil then _G["UIRefs"]["ToggleAutoUnlockFarmPlots"]:Set(m["AutoUnlockFarmPlots"])end if m["AutoExpandFarmPlot"]~=nil then _G["UIRefs"]["ToggleAutoExpandFarmPlot"]:Set(m["AutoExpandFarmPlot"])end if m["AutoCollectQueenBeeHoneycomb"]~=nil then _G["UIRefs"]["ToggleAutoCollectQueenBeeHoneycomb"]:Set(m["AutoCollectQueenBeeHoneycomb"])end if m["AutoPlantRush"]~=nil then _G["UIRefs"]["ToggleAutoPlantRush"]:Set(m["AutoPlantRush"])end if m["AutoClaimPlantRushBossDrop"]~=nil then _G["UIRefs"]["ToggleAutoClaimPlantRushBossDrop"]:Set(m["AutoClaimPlantRushBossDrop"])elseif m["AutoClaimBossDrops"]~=nil then _G["UIRefs"]["ToggleAutoClaimPlantRushBossDrop"]:Set(m["AutoClaimBossDrops"])end if m["AutoSubmitQueenBeeHoneyToken"]~=nil then _G["UIRefs"]["ToggleAutoSubmitQueenBeeHoneyToken"]:Set(m["AutoSubmitQueenBeeHoneyToken"])end if m["AutoSubmitSeedToCollector"]~=nil then _G["UIRefs"]["ToggleAutoSubmitSeedToCollector"]:Set(m["AutoSubmitSeedToCollector"])elseif m["AutoSubmitSeed"]~=nil then _G["UIRefs"]["ToggleAutoSubmitSeedToCollector"]:Set(m["AutoSubmitSeed"])end if m["AutoSubmitAllSeedsToCollector"]~=nil then _G["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]:Set(m["AutoSubmitAllSeedsToCollector"])end if m["F1_AutoPlantByRarity"]~=nil and _G["UIRefs"]["ToggleFloor1AutoPlant"]then pcall(function()_G["UIRefs"]["ToggleFloor1AutoPlant"]:Set(m["F1_AutoPlantByRarity"])end)end if m["F1_TargetAutoPlantRaritiesList"]and(type(m["F1_TargetAutoPlantRaritiesList"])=="table"and _G["UIRefs"]["DropdownFloor1PlantRarities"])then _G["F1_TargetAutoPlantRarities"]={}for r,h in ipairs(m["F1_TargetAutoPlantRaritiesList"])do _G["F1_TargetAutoPlantRarities"][h]=true end pcall(function()_G["UIRefs"]["DropdownFloor1PlantRarities"]:Select(m["F1_TargetAutoPlantRaritiesList"])end)end if m["F2_AutoPlantByRarity"]~=nil and _G["UIRefs"]["ToggleFloor2AutoPlant"]then pcall(function()_G["UIRefs"]["ToggleFloor2AutoPlant"]:Set(m["F2_AutoPlantByRarity"])end)end if m["F2_TargetAutoPlantRaritiesList"]and(type(m["F2_TargetAutoPlantRaritiesList"])=="table"and _G["UIRefs"]["DropdownFloor2PlantRarities"])then _G["F2_TargetAutoPlantRarities"]={}for r,h in ipairs(m["F2_TargetAutoPlantRaritiesList"])do _G["F2_TargetAutoPlantRarities"][h]=true end pcall(function()_G["UIRefs"]["DropdownFloor2PlantRarities"]:Select(m["F2_TargetAutoPlantRaritiesList"])end)end if m["F3_AutoPlantByRarity"]~=nil and _G["UIRefs"]["ToggleFloor3AutoPlant"]then pcall(function()_G["UIRefs"]["ToggleFloor3AutoPlant"]:Set(m["F3_AutoPlantByRarity"])end)end if m["F3_TargetAutoPlantRaritiesList"]and(type(m["F3_TargetAutoPlantRaritiesList"])=="table"and _G["UIRefs"]["DropdownFloor3PlantRarities"])then _G["F3_TargetAutoPlantRarities"]={}for r,h in ipairs(m["F3_TargetAutoPlantRaritiesList"])do _G["F3_TargetAutoPlantRarities"][h]=true end pcall(function()_G["UIRefs"]["DropdownFloor3PlantRarities"]:Select(m["F3_TargetAutoPlantRaritiesList"])end)end local function r(r,h)local S="F"..(r.."_")if m[S.."AutoCompostSelected"]~=nil then pcall(function()h["ToggleAutoCompostSelected"]:Set(m[S.."AutoCompostSelected"])end)end if m[S.."AutoCompostByRarity"]~=nil then pcall(function()h["ToggleAutoCompostByRarity"]:Set(m[S.."AutoCompostByRarity"])end)end if m[S.."AutoPullLever"]~=nil then pcall(function()h["ToggleAutoPullLever"]:Set(m[S.."AutoPullLever"])end)end if m[S.."AutoPullLeverWhenMax"]~=nil then pcall(function()h["ToggleAutoPullLeverWhenMax"]:Set(m[S.."AutoPullLeverWhenMax"])end)end if m[S.."CompostInsertDelay"]~=nil then _G[S.."CompostInsertDelay"]=m[S.."CompostInsertDelay"]pcall(function()h["InputCompostInsertDelay"]:Set(tostring(m[S.."CompostInsertDelay"]))end)end if m[S.."PullLeverDelay"]~=nil then _G[S.."PullLeverDelay"]=m[S.."PullLeverDelay"]pcall(function()h["InputPullLeverDelay"]:Set(tostring(m[S.."PullLeverDelay"]))end)end if m[S.."MaxCompostInsertAmount"]~=nil then _G[S.."MaxCompostInsertAmount"]=m[S.."MaxCompostInsertAmount"]pcall(function()h["InputCompostMaxInsertAmount"]:Set(tostring(m[S.."MaxCompostInsertAmount"]))end)end if m[S.."TargetCompostSeedsList"]and(type(m[S.."TargetCompostSeedsList"])=="table"and#m[S.."TargetCompostSeedsList"]>0)then local r=_G["CachedIndexSeedEntries"]local C={}for h,m in ipairs(m[S.."TargetCompostSeedsList"])do for r,h in ipairs(r)do local S=string["match"](h,"%] (.*)")or h if S==m or h==m then table["insert"](C,h)break end end end if#C>0 then pcall(function()h["DropdownCompostSeed"]:Select(C)end)end end if m[S.."TargetCompostRaritiesList"]and(type(m[S.."TargetCompostRaritiesList"])=="table"and#m[S.."TargetCompostRaritiesList"]>0)then local r={}for h,m in ipairs(m[S.."TargetCompostRaritiesList"])do if table["find"](x_,m)then table["insert"](r,m)end end if#r>0 then pcall(function()h["DropdownCompostRarities"]:Select(r)end)end end end r(2,T_)r(3,Q_)if m["F2_AutoCompostSelected"]==nil and m["F3_AutoCompostSelected"]==nil then local r=m["CompostFloor"]or 2 local h=(r==3)and Q_ or T_ if m["AutoCompost"]~=nil then pcall(function()h["ToggleAutoCompostSelected"]:Set(m["AutoCompost"])end)end if m["AutoPullComposterLever"]~=nil then pcall(function()h["ToggleAutoPullLever"]:Set(m["AutoPullComposterLever"])end)end if m["AutoPullComposterLeverWhenMax"]~=nil then pcall(function()h["ToggleAutoPullLeverWhenMax"]:Set(m["AutoPullComposterLeverWhenMax"])end)end if m["MaxCompostInsertAmount"]~=nil then local S="F"..(r.."_")_G[S.."MaxCompostInsertAmount"]=m["MaxCompostInsertAmount"]pcall(function()h["InputCompostMaxInsertAmount"]:Set(tostring(m["MaxCompostInsertAmount"]))end)end if m["TargetCompostSeedsList"]and(type(m["TargetCompostSeedsList"])=="table"and#m["TargetCompostSeedsList"]>0)then local r=_G["CachedIndexSeedEntries"]local S={}for h,m in ipairs(m["TargetCompostSeedsList"])do for r,h in ipairs(r)do local C=string["match"](h,"%] (.*)")or h if C==m or h==m then table["insert"](S,h)break end end end if#S>0 then pcall(function()h["DropdownCompostSeed"]:Select(S)end)end end end if m["AutoClaimDailyReward"]~=nil then _G["UIRefs"]["ToggleAutoClaimDailyReward"]:Set(m["AutoClaimDailyReward"])end if m["AutoClaimPlaytimeReward"]~=nil then _G["UIRefs"]["ToggleAutoClaimPlaytimeReward"]:Set(m["AutoClaimPlaytimeReward"])end if m["AutoSpinWheel"]~=nil then _G["UIRefs"]["ToggleAutoSpinWheel"]:Set(m["AutoSpinWheel"])end if m["AutoFeedPets"]~=nil then _G["UIRefs"]["ToggleAutoFeedPets"]:Set(m["AutoFeedPets"])end if m["AutoUpgradePets"]~=nil then _G["UIRefs"]["ToggleAutoUpgradePets"]:Set(m["AutoUpgradePets"])end if m["AutoSellPets"]~=nil then _G["UIRefs"]["ToggleAutoSellPets"]:Set(m["AutoSellPets"])end if m["TargetPetSellNamesList"]and type(m["TargetPetSellNamesList"])=="table"then _G["TargetPetSellNames"]={}for r,h in ipairs(m["TargetPetSellNamesList"])do _G["TargetPetSellNames"][h]=true end if#m["TargetPetSellNamesList"]>0 then pcall(function()_G["UIRefs"]["DropdownPetSellSelection"]:Select(m["TargetPetSellNamesList"])end)end end if m["TargetPetTreatNamesList"]and type(m["TargetPetTreatNamesList"])=="table"then _G["TargetPetTreatNames"]={}for r,h in ipairs(m["TargetPetTreatNamesList"])do _G["TargetPetTreatNames"][h]=true end if#m["TargetPetTreatNamesList"]>0 then pcall(function()_G["UIRefs"]["DropdownPetTreatTypes"]:Select(m["TargetPetTreatNamesList"])end)end end if m["AutoBuyAllGears"]~=nil then _G["UIRefs"]["ToggleBuyAllGears"]:Set(m["AutoBuyAllGears"])end if m["AutoBuySelectedGears"]~=nil then _G["UIRefs"]["ToggleBuySelectedGears"]:Set(m["AutoBuySelectedGears"])end if m["AutoUnlockEggSlots"]~=nil then _G["UIRefs"]["ToggleAutoUnlockEggSlots"]:Set(m["AutoUnlockEggSlots"])end local h=m["TargetEggShopEggsList"]or m["TargetSnipeEggNamesList"]if h and(type(h)=="table"and#h>0)then local r=r_()local m={}for h,S in ipairs(h)do if table["find"](r,S)then table["insert"](m,S)end end if#m>0 then pcall(function()_G["UIRefs"]["DropdownEggShopEggs"]:Select(m)end)end elseif m["SelectedEggRarity"]and(m["SelectedEggRarity"]~=""and m["SelectedEggRarity"]~="Select Rarity")then local r=m["SelectedEggRarity"].."Egg"local h=r_()if table["find"](h,r)then pcall(function()_G["UIRefs"]["DropdownEggShopEggs"]:Select({r})end)end end if m["AutoBuySelectedEggs"]~=nil then _G["UIRefs"]["ToggleAutoBuySelectedEggs"]:Set(m["AutoBuySelectedEggs"])elseif m["AutoBuySelectedEgg"]~=nil then _G["UIRefs"]["ToggleAutoBuySelectedEggs"]:Set(m["AutoBuySelectedEgg"])end if m["AutoBuyAllEggs"]~=nil then _G["UIRefs"]["ToggleAutoBuyAllEggs"]:Set(m["AutoBuyAllEggs"])end if m["FloorUpgradeConfig"]then for r=1,3,1 do local h=m["FloorUpgradeConfig"][tostring(r)]or m["FloorUpgradeConfig"][r]if h then local m="Floor"..r if h["TargetPlantNamesList"]and type(h["TargetPlantNamesList"])=="table"then local S=_G["UIRefs"]["Dropdown"..(m.."UpgradePlant")]if S then local m={}for r,h in ipairs(h["TargetPlantNamesList"])do m[h]=true end _G["FloorUpgradeConfig"][r]["TargetPlantNames"]=m pcall(function()S:Select(h["TargetPlantNamesList"])end)end end if h["AutoAll"]~=nil then local r=_G["UIRefs"]["Toggle"..(m.."AutoAllUpgrade")]if r then pcall(function()r:Set(h["AutoAll"])end)end end if h["AutoUpgrade"]~=nil then local r=_G["UIRefs"]["Toggle"..(m.."AutoUpgrade")]if r then pcall(function()r:Set(h["AutoUpgrade"])end)end end end end end if m["FloorFertilizeConfig"]then for r=1,3,1 do local h=m["FloorFertilizeConfig"][tostring(r)]or m["FloorFertilizeConfig"][r]if h then local m="Floor"..r if h["TargetPlantNamesList"]and type(h["TargetPlantNamesList"])=="table"then local S=_G["UIRefs"]["Dropdown"..(m.."FertilizePlant")]if S then local m={}for r,h in ipairs(h["TargetPlantNamesList"])do m[h]=true end _G["FloorFertilizeConfig"][r]["TargetPlantNames"]=m pcall(function()S:Select(h["TargetPlantNamesList"])end)end end if h["TargetFertilizerTypesList"]and type(h["TargetFertilizerTypesList"])=="table"then local S=_G["UIRefs"]["Dropdown"..(m.."FertilizerType")]if S then local m={}for r,h in ipairs(h["TargetFertilizerTypesList"])do m[h]=true end _G["FloorFertilizeConfig"][r]["TargetFertilizerTypes"]=m pcall(function()S:Select(h["TargetFertilizerTypesList"])end)end end if h["AutoAll"]~=nil then local r=_G["UIRefs"]["Toggle"..(m.."AutoAllFertilize")]if r then pcall(function()r:Set(h["AutoAll"])end)end end if h["AutoFertilize"]~=nil then local r=_G["UIRefs"]["Toggle"..(m.."AutoFertilize")]if r then pcall(function()r:Set(h["AutoFertilize"])end)end end end end end if m["AutoRollAndBuyAll"]~=nil then _G["UIRefs"]["ToggleAutoRollBuyAll"]:Set(m["AutoRollAndBuyAll"])end if m["AutoRollAndBuySelected"]~=nil then _G["UIRefs"]["ToggleAutoRollBuySelected"]:Set(m["AutoRollAndBuySelected"])end if m["AutoRollAndBuyByRarity"]~=nil then _G["UIRefs"]["ToggleAutoRollBuyByRarity"]:Set(m["AutoRollAndBuyByRarity"])end if m["AutoUpgradePowerups"]~=nil then _G["UIRefs"]["ToggleAutoUpgradePowerups"]:Set(m["AutoUpgradePowerups"])end if m["SelectedPowerupsToUpgrade"]and(type(m["SelectedPowerupsToUpgrade"])=="table"and#m["SelectedPowerupsToUpgrade"]>0)then _G["UIRefs"]["DropdownPowerupsToUpgrade"]:Select(m["SelectedPowerupsToUpgrade"])end if m["SelectedGearsToBuy"]and(type(m["SelectedGearsToBuy"])=="table"and#m["SelectedGearsToBuy"]>0)then _G["UIRefs"]["DropdownGearsToBuy"]:Select(m["SelectedGearsToBuy"])end if m["SelectedGachaSeedsToSnipe"]and(type(m["SelectedGachaSeedsToSnipe"])=="table"and#m["SelectedGachaSeedsToSnipe"]>0)then local r=_G["CachedIndexSeedEntries"]local h={}for m,S in ipairs(m["SelectedGachaSeedsToSnipe"])do for r,m in ipairs(r)do local C=string["match"](m,"%] (.*)")or m if C==S then table["insert"](h,m)break end end end if#h>0 then _G["UIRefs"]["DropdownGachaSeeds"]:Select(h)end end if m["TargetGachaRaritiesList"]and(type(m["TargetGachaRaritiesList"])=="table"and#m["TargetGachaRaritiesList"]>0)then local r={}for h,m in ipairs(m["TargetGachaRaritiesList"])do if table["find"](x_,m)then _G["TargetGachaRarities"][m]=true table["insert"](r,m)end end if#r>0 then pcall(function()_G["UIRefs"]["DropdownGachaRarities"]:Select(r)end)end end local S=m["TargetSeedCollectorSubmitSeedsList"]or m["TargetSubmitSeedsList"]if S and(type(S)=="table"and#S>0)then local r=_G["CachedIndexSeedEntries"]local h={}for m,S in ipairs(S)do for r,m in ipairs(r)do local C=string["match"](m,"%] (.*)")or m if C==S then table["insert"](h,m)break end end end if#h>0 then _G["UIRefs"]["DropdownSeedCollectorSubmitSeeds"]:Select(h)end end end)
                                                                                                        if m["ShowFloatingTeleportButton"]~=nil then
                                                                                                           pcall(function()_G["UIRefs"]["ToggleFloatingTeleportButton"]:Set(m["ShowFloatingTeleportButton"])end)
                                                                                                        end 
                                                                                                        if m["TeleportButtonPosXScale"]~=nil then
                                                                                                           q["FloatingTeleportMainButton"]["Position"]=UDim2["new"](m["TeleportButtonPosXScale"],m["TeleportButtonPosXOffset"],m["TeleportButtonPosYScale"],m["TeleportButtonPosYOffset"])
                                                                                                        end 
                                                                                                        if m["SkipMoneyCheck"]~=nil then
                                                                                                           pcall(function()_G["UIRefs"]["ToggleSkipMoneyCheck"]:Set(m["SkipMoneyCheck"])end)
                                                                                                        end 
                                                                                                        if m["HideOtherPlots"]~=nil then
                                                                                                           pcall(function()_G["UIRefs"]["ToggleHideOtherPlots"]:Set(m["HideOtherPlots"])end)
                                                                                                        end 
                                                                                                        if m["MuteAndHideAlerts"]~=nil then
                                                                                                           pcall(function()_G["UIRefs"]["ToggleMuteAndHideAlerts"]:Set(m["MuteAndHideAlerts"])end)
                                                                                                        elseif m["HideAlert"]~=nil or m["MuteSound"]~=nil then
                                                                                                           pcall(function()_G["UIRefs"]["ToggleMuteAndHideAlerts"]:Set(m["HideAlert"]or m["MuteSound"])end)
                                                                                                        end r:Notify({["Title"]="System";["Content"]="Previous config loaded successfully!",["Duration"]=4})
                                                                                                      end 
                                                                                                    end 
                                                                                                  end)(...)
