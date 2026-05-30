-- Deobfuscated body (strings inlined, variable names remain mangled)

local x,W=pcall(function()return(loadstring(game:HttpGet("http://127.0.0.1:5500/ui",false)))()end
)
local S=(x and W)or(loadstring(game:HttpGet("https://raw.githubusercontent.com/lamduck2005/RobloxScript/master/ui.lua",false)))()
local  function T(x,...)if select("#",...)>0  then
 print("[Lamduck] "..string["format"](tostring(x),...))
else
 print("[Lamduck] "..tostring(x))end
 end
 T("Loading logic...")
local t=S:CreateWindow({["Title"]="Build A Ring Farm",["Author"]="Lamduck",["Folder"]="Lamduck",["Transparent"]=false;["HasOutline"]=false,["ToggleKey"]=Enum["KeyCode"]["RightControl"]})t:EditOpenButton({["Title"]="Open | RightCtrl";["Icon"]="",["OnlyMobile"]=false,["Enabled"]=true;["Draggable"]=true})
local H={}H["SectionGeneral"]=t:Section({["Title"]="Farming & Shop";["Icon"]="sprout";["Opened"]=true})H["TabFarming"]=H["SectionGeneral"]:Tab({["Title"]="Farming",["Icon"]="chevron-right"})H["TabFarming"]:Select()
local o=game:GetService("ReplicatedStorage")
local C=game:GetService("HttpService")
local M=game:GetService("SoundService")
local G=game:GetService("Lighting")
local i=game["Players"]["LocalPlayer"]
local Y={["Config"]={["AutoSellCrates"]=false,["AutoUnlockFarmPlots"]=false;["AutoExpandFarmPlot"]=false,["AutoCollectQueenBeeHoneycomb"]=false,["AutoPlantRush"]=false,["AutoClaimPlantRushBossDrop"]=false,["AutoSubmitQueenBeeHoneyToken"]=false,["AutoSubmitSeedToCollector"]=false,["AutoSubmitAllSeedsToCollector"]=false,["TargetSeedCollectorSubmitSeeds"]={};["F2_AutoCompostSelected"]=false,["F2_AutoCompostByRarity"]=false,["F2_TargetCompostSeeds"]={},["F2_TargetCompostRarities"]={};["F2_MaxCompostInsertAmount"]=0,["F2_CompostInsertDelay"]=2,["F2_AutoPullLever"]=false,["F2_AutoPullLeverWhenMax"]=false,["F2_PullLeverDelay"]=2,["F3_AutoCompostSelected"]=false;["F3_AutoCompostByRarity"]=false,["F3_TargetCompostSeeds"]={};["F3_TargetCompostRarities"]={},["F3_MaxCompostInsertAmount"]=0;["F3_CompostInsertDelay"]=2,["F3_AutoPullLever"]=false;["F3_AutoPullLeverWhenMax"]=false;["F3_PullLeverDelay"]=2;["AutoClaimDailyReward"]=false,["AutoClaimPlaytimeReward"]=false,["AutoSpinWheel"]=false,["AutoFeedPets"]=false;["TargetPetTreatNames"]={},["AutoUpgradePets"]=false;["TargetPetUpgradeLevel"]=10;["AutoSellPets"]=false,["TargetPetSellNames"]={},["TargetManageFloor"]=1;["AutoPlantByRarity"]=false,["TargetAutoPlantRarities"]={};["AutoBuyAllGears"]=false,["AutoBuySelectedGears"]=false;["AutoUnlockEggSlots"]=false,["SessionUnlockedEggSlots"]={},["AutoBuyAllEggs"]=false;["AutoBuySelectedEggs"]=false;["TargetEggShopEggs"]={};["SkipMoneyCheck"]=false,["AutoRollAndBuyAll"]=false;["AutoRollAndBuySelected"]=false;["AutoRollAndBuyByRarity"]=false,["TargetGachaSeeds"]={},["TargetGachaRarities"]={};["HideOtherPlots"]=false;["MuteAndHideAlerts"]=false,["AutoUpgradePowerups"]=false,["TargetPowerups"]={};["FloorUpgradeConfig"]={["AutoUpgrade"]=false,["AutoAll"]=false,["TargetPlantNames"]={},["MaxLevel"]=10};["FloorFertilizeConfig"]={["AutoFertilize"]=false;["AutoAll"]=false,["TargetPlantNames"]={};["TargetFertilizerTypes"]={}};["FloorSprayConfig"]={["TargetPlantNames"]={};["TargetSprayType"]=nil;["TargetAcidPlantNames"]={};["TargetAcidMutations"]={}};["ShowFloatingTeleportButton"]=false,["TeleportButtonPosXScale"]=nil;["TeleportButtonPosXOffset"]=nil,["TeleportButtonPosYScale"]=nil,["TeleportButtonPosYOffset"]=nil};["Flags"]={["isSellCratesLoopRunning"]=false;["isUnlockFarmPlotsLoopRunning"]=false;["isExpandFarmPlotLoopRunning"]=false;["isCollectHoneycombLoopRunning"]=false;["isPlantRushLoopRunning"]=false,["isSubmitQueenBeeHoneyTokenLoopRunning"]=false;["isSeedCollectorSubmitLoopRunning"]=false,["isF2CompostLoopRunning"]=false;["isF2PullLeverLoopRunning"]=false,["isF2PullLeverWhenMaxLoopRunning"]=false;["isF3CompostLoopRunning"]=false;["isF3PullLeverLoopRunning"]=false,["isF3PullLeverWhenMaxLoopRunning"]=false;["isClaimPlaytimeRewardLoopRunning"]=false,["isClaimDailyRewardLoopRunning"]=false;["isSpinWheelLoopRunning"]=false;["isAutoFeedPetsLoopRunning"]=false;["isAutoUpgradePetsLoopRunning"]=false;["isAutoSellPetsLoopRunning"]=false,["isBuyAllGearsLoopRunning"]=false,["isBuySelectedGearsLoopRunning"]=false,["isUnlockEggSlotsLoopRunning"]=false,["isEggShopBuyLoopRunning"]=false;["isAutoPlantLoopRunning"]=false;["isUpgradePlantsLoopRunning"]=false,["isFertilizePlantsLoopRunning"]=false;["isUpgradePowerupsLoopRunning"]=false;["isSeedGachaLoopRunning"]=false;["isClaimPlantRushBossDropLoopRunning"]=false};["UIRefs"]={}}
local  function L(x,W)for W,S in pairs(W)do
 if type(S)=="table" then
 if next(S)==nil and(x[W]and type(x[W])=="table") then
 
else
 if not x[W]or type(x[W])~="table" then
 x[W]={}end
 L(x[W],S)end
 
else
 x[W]=S end
 end
 end
 
local  function K(x)
local W={}for x,S in pairs(x)do
 table["insert"](W,x)end
 return W end
 
local  function Q(x)
local W={}for x in pairs(x)do
 table["insert"](W,x)end
 table["sort"](W)return W end
 
local b={}
local d={}
local V={}
local s={}
local  function E()
local x,W,S={},{},{}
local T=o:FindFirstChild("Assets")and o["Assets"]:FindFirstChild("Gear")if T  then
 for T,t in ipairs(T:GetChildren())do
 
local H=t["Name"]table["insert"](x,H)if string["find"](H,"Fertilizer",1,true) then
 table["insert"](W,H)end
 if string["find"](H,"Spray",1,true) then
 table["insert"](S,H)end
 end
 end
 table["sort"](x)table["sort"](W)table["sort"](S)if#W==0  then
 W={"Bee Fertilizer","Normal Fertilizer";"Scrappy Fertilizer";"Strong Fertilizer","Super Fertilizer"}end
 if#S==0  then
 S={"Acid Spray","Autumn Spray","Cosmic Spray";"Frozen Spray","Radioactive Spray";"Rainbow Spray";"Trucker Spray";"Void Spray";"Wet Spray"}end
 
local t={}for x,W in ipairs(S)do
 if W~="Acid Spray" then
 table["insert"](t,W)end
 end
 return x,W,S,t end
 
local  function a()
local x={}
local W={}
local S=0 
local t=0 
local H=0 
local C=0 
local M="none"
local  function G()
local T=i:FindFirstChild("PlayerGui")
local o=T and T:WaitForChild("MainUI",5)
local C=o and o:FindFirstChild("Menus")
local G=C and C:FindFirstChild("IndexFrame")
local Y=G and G:FindFirstChild("Main")
local L=Y and Y:FindFirstChild("PlantsFrame")if not L  then
 return false end
 
local K=false for T,H in pairs(L:GetChildren())do
 if H:IsA("Frame") then
 
local T=H:FindFirstChild("RarityName")
local o=H:FindFirstChild("SeedName")
local C=o and o["Text"]
local M=T and T["Text"]
local G=H["Name"]if C and(C~=""and C~="???") then
 G=C 
elseif C=="???" then
 S=S+1 end
 
local i=G if M and(M~=""and M~="???") then
 i="["..(M..("] "..G))end
 if not W[G] then
 table["insert"](x,i)W[G]=true K=true 
else
 t=t+1 end
 end
 end
 H=#x if K  then
 M="UI"end
 return K end
 
local  function Y()
local S=o:FindFirstChild("Assets")and o["Assets"]:FindFirstChild("Seeds")if not S  then
 return false end
 
local T=0 for S,H in ipairs(S:GetChildren())do
 
local o=string["gsub"](H["Name"]," Seed$","")if not W[o]and not W[H["Name"]] then
 table["insert"](x,o)W[o]=true T=T+1 
else
 t=t+1 end
 end
 C=T if T>0  then
 M=(M=="UI")and "UI+RS"or "RS"end
 return T>0 end
 
local L=G()if not L or#x==0  then
 Y()end
 table["sort"](x)T("getIndexSeeds | loaded: %s | locked: %s | duplicates: %s | ui: %s | rs: %s | source: %s",tostring(#x),tostring(S),tostring(t),tostring(H),tostring(C),tostring(M))return x end
 
local g={}
local X={["Common"]=1;["Uncommon"]=2;["Rare"]=3,["Epic"]=4,["Legendary"]=5,["Secret"]=6;["Prismatic"]=7,["Divine"]=8;["Exotic"]=9;["Transcended"]=10}
local I={}
local e={}
local  function r()
local x={}I={}e={}for W,S in ipairs(Y["CachedIndexSeedEntries"])do
 
local T,t=string["match"](S,"%[(.-)%] (.+)")if T and t  then
 e[t]=T if not x[T] then
 x[T]=true table["insert"](I,T)end
 end
 end
 table["sort"](I,function(x,W)
local S=X[x]or 99 
local T=X[W]or 99 return S<T end
)end
 
local D={["SawRange"]={["SignName"]="PlotUpgradeSign";["UIFolder"]="SawRange";["RemoteArg"]="ExtraSawRange";["Type"]="plot"},["SawYield"]={["SignName"]="PlotUpgradeSign";["UIFolder"]="SawYield",["RemoteArg"]="ExtraYield";["Type"]="plot"},["SprinklerRange"]={["SignName"]="PlotUpgradeSign";["UIFolder"]="SprinklerRange";["RemoteArg"]="ExtraSprinklerRange";["Type"]="plot"};["SprinklerPower"]={["SignName"]="PlotUpgradeSign",["UIFolder"]="SprinklerPower",["RemoteArg"]="ExtraPower";["Type"]="plot"},["SeedLuck"]={["SignName"]="UpgradeSign";["UIFolder"]="SeedLuck",["Type"]="seedluck"};["SeedRolls"]={["SignName"]="UpgradeSign";["UIFolder"]="SeedRolls";["Type"]="seedrolls"}}
local h={"SawRange";"SawYield";"SprinklerRange","SprinklerPower";"SeedLuck","SeedRolls"}
local  function U(x,W)if W and W~="" then
 T("Insufficient Cash - Skipped "..(x..(": "..tostring(W))))
else
 T("Insufficient Cash - Skipped "..x)end
 end
 
local B={}T("Loading game data synchronously...")
local f=tick()b,d,V,s=E()Y["CachedIndexSeedEntries"]=a()r()g={}for x,W in ipairs(Y["CachedIndexSeedEntries"])do
 
local S=string["match"](W,"%] (.*)")or W if string["lower"](S)~="acid"and string["lower"](S)~="acid seed" then
 table["insert"](g,W)end
 end
 T("Loaded seed index and assets in %.3f seconds",tick()-f)
local A="build-a-ring-farm.json"if isfile and isfile(A) then
 
local x,W=pcall(function()return C:JSONDecode(readfile(A))end
)if x and W  then
 pcall(function()L(Y["Config"],W)end
)end
 end
 
local p={["K"]=1000,["M"]=1000000,["B"]=1000000000;["T"]=1000000000000,["QA"]=1e+015;["QD"]=1e+015;["QI"]=1e+018;["QN"]=1e+018;["SX"]=1e+021;["SP"]=1e+024,["OC"]=1e+027,["O"]=1e+027,["NO"]=1e+030,["N"]=1e+030,["DE"]=1e+033;["D"]=1e+033,["UN"]=1e+036;["UD"]=1e+036;["DD"]=1e+039;["TD"]=1e+042;["QAD"]=1e+045,["QID"]=1e+048;["SXD"]=1e+051,["SPD"]=1e+054,["OCD"]=1e+057,["NOD"]=1e+060,["VG"]=1e+063}
local  function j(x)if type(x)=="number" then
 return x end
 if type(x)~="string"or x=="" then
 return 0 end
 
local W=(string["upper"](x)):gsub("[$%,%s]","")
local S,T=string["match"](W,"^([%d%.]+)(%a*)$")if not S  then
 return 0 end
 
local t=1 if T and T~="" then
 t=p[T]if not t  then
 warn("[Lamduck] Unknown money suffix not in dictionary: "..T)t=1 end
 end
 return((tonumber(S)or 0))*t end
 
local  function Z()
local x=nil 
local W=i:FindFirstChild("leaderstats")or i:FindFirstChild("Leaderstats")if W and W:FindFirstChild("Cash") then
 x=j(W["Cash"]["Value"])end
 
local S=nil 
local t=i:FindFirstChild("PlayerGui")
local H=t and(t:FindFirstChild("MainUI")and(t["MainUI"]:FindFirstChild("MoneyCounter")and t["MainUI"]["MoneyCounter"]:FindFirstChild("CashCounter")))if H  then
 S=j(H["Text"])end
 if S~=nil and(x~=nil and S~=x) then
 T("Cash mismatch | leaderstats: "..(tostring(x)..(" | gui: "..(tostring(S).." | using gui"))))return S end
 if S~=nil  then
 return S end
 if x~=nil  then
 return x end
 return 0 end
 
local  function y(x,W,S)if Y["Config"]["SkipMoneyCheck"] then
 return true end
 
local T=Z()if T>=x  then
 return true end
 if W  then
 U(W,S)end
 return false end
 
local  function n(x,W)pcall(function()
local S=D[x]["RemoteArg"]
local T="Floor"..W o["Remotes"]["PlotUpgradeTransaction"]:InvokeServer(table["unpack"]({[1]=S,[2]=T}))end
)end
 
local  function m()pcall(function()o["Remotes"]["UpgradeSeedLuck"]:InvokeServer()end
)end
 
local  function F()pcall(function()o["Remotes"]["UpgradeSeedRolls"]:InvokeServer()end
)end
 
local u=nil 
local  function P()if u and u["Parent"] then
 return u end
 u=nil 
local x=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")if x  then
 for x,W in ipairs(x:GetChildren())do
 
local S=W:FindFirstChild("Owner")if S and S["Value"]==i  then
 u=W return u end
 end
 end
 pcall(function()
local W=o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("Plot")if W and W:FindFirstChild("GetPlot") then
 
local S=W["GetPlot"]:InvokeServer()if typeof(S)=="Instance" then
 u=S 
elseif typeof(S)=="string"and x  then
 u=x:FindFirstChild(S)end
 end
 end
)return u end
 
local N=nil 
local  function k()if N  then
 return N end
 
local x=P()if x  then
 N=x["Name"]return N end
 
local W=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")if W  then
 for x,W in ipairs(W:GetChildren())do
 for x,S in ipairs(W:GetDescendants())do
 if S:IsA("TextLabel")or S:IsA("TextButton") then
 
local x=tostring(S["Text"])if string["find"](string["lower"](x),string["lower"](i["Name"]),1,true) then
 N=W["Name"]return N end
 end
 end
 end
 end
 return nil end
 
local l=nil 
local  function c(x)
local W=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")if not W  then
 return end
 if x  then
 if not l  then
 l=k()end
 if not l  then
 T("Error: Could not locate your plot name!")return end
 for x,W in ipairs(W:GetChildren())do
 if W["Name"]~=l  then
 W["Parent"]=G end
 end
 
else
 if not l  then
 return end
 for x,S in ipairs(G:GetChildren())do
 if string["find"](S["Name"],"Plot")and S["Name"]~=l  then
 S["Parent"]=W end
 end
 end
 end
 
local  function w(x)
local W={}for x,S in ipairs(x:GetDescendants())do
 if S["Name"]=="Dirt" then
 table["insert"](W,S)end
 end
 return W end
 
local z={"";"SecondFloor";"ThirdFloor"}
local  function J(x)
local W=P()if not W  then
 return nil end
 if x==1  then
 return W:FindFirstChild("FarmPlot")
else
 
local S=z[x]if S  then
 
local x=W:FindFirstChild(S)if x  then
 return x:FindFirstChild("FarmPlot")end
 end
 end
 return nil end
 
local  function O(x)
local W={}
local S=J(x)if not S  then
 return W end
 for S,T in ipairs(S:GetChildren())do
 
local t=string["match"](T["Name"],"^Plot(%d+)$")if t  then
 
local S=tonumber(t)
local H=T:FindFirstChild("Dirt")if H  then
 
local t={["Instance"]=H;["Floor"]=x,["PlotName"]=T["Name"],["PlotIndex"]=S,["PlantFullyGrown"]=H:GetAttribute("PlantFullyGrown")or false,["PlantLevel"]=H:GetAttribute("PlantLevel")or 0;["PlantMaxStages"]=H:GetAttribute("PlantMaxStages")or 0,["PlantMutation"]=H:GetAttribute("PlantMutation")or "Normal",["PlantName"]=H:GetAttribute("PlantName")or "",["PlantStage"]=H:GetAttribute("PlantStage")or 0,["PlantTag"]=H:GetAttribute("PlantTag")or "",["PlotRing"]=H:GetAttribute("PlotRing")or 0,["Watered"]=H:GetAttribute("Watered")or false;["WaterTimeBonus"]=H:GetAttribute("WaterTimeBonus")or 0;["Fertilized"]=H:GetAttribute("Fertilized")or false}table["insert"](W,t)end
 end
 end
 return W end
 
local  function v()return i["Name"]end
 
local R={{["Label"]="Farm Floor 1",["DestinationType"]="MyPlotFloor",["PlotFloorModelName"]="Floor",["PlotFloorYOffset"]=5};{["Label"]="Farm Floor 2";["DestinationType"]="MyPlotFloor";["PlotFloorModelName"]="SecondFloor",["PlotFloorYOffset"]=35},{["Label"]="Farm Floor 3",["DestinationType"]="MyPlotFloor",["PlotFloorModelName"]="ThirdFloor";["PlotFloorYOffset"]=70},{["Label"]="Seed Collector";["DestinationType"]="WorkspacePivot",["WorkspaceModelName"]="SeedCollector",["PositionOffset"]=Vector3["new"](0,5,8)};{["Label"]="Pet Merchant",["DestinationType"]="WorkspaceChildCFrame";["WorkspaceModelName"]="PetMerchant",["WorkspaceChildName"]="MerchantSign",["PositionOffset"]=Vector3["new"](0,5,10)};{["Label"]="Friend-O-Tron";["DestinationType"]="WorkspacePivot",["WorkspaceModelName"]="FriendOTron",["PositionOffset"]=Vector3["new"](0,5,10)},{["Label"]="Rejoin",["DestinationType"]="Rejoin"}}
local  function q(x)
local W=i["Character"]and i["Character"]:FindFirstChild("HumanoidRootPart")if W and x  then
 W["CFrame"]=x return true end
 return false end
 
local  function x6(x)if x["DestinationType"]=="MyPlotFloor" then
 
local W=P()if not W  then
 return nil end
 return W:GetPivot()*CFrame["new"](0,x["PlotFloorYOffset"]or 5,0)end
 if x["DestinationType"]=="WorkspacePivot" then
 
local W=workspace:FindFirstChild(x["WorkspaceModelName"])if not W  then
 return nil end
 return W:GetPivot()*CFrame["new"](x["PositionOffset"]or Vector3["zero"])end
 if x["DestinationType"]=="WorkspaceChildCFrame" then
 
local W=workspace:FindFirstChild(x["WorkspaceModelName"])
local S=W and W:FindFirstChild(x["WorkspaceChildName"])if not S  then
 return nil end
 return S["CFrame"]+((x["PositionOffset"]or Vector3["zero"]))end
 return nil end
 
local  function W6(x)if x["DestinationType"]=="Rejoin" then
(game:GetService("TeleportService")):TeleportToPlaceInstance(game["PlaceId"],game["JobId"],i)return end
 q(x6(x))end
 
local  function S6()if q(x6(R[1])) then
 S:Notify({["Title"]="Teleport";["Content"]="Arrived at your plot!",["Duration"]=2})
else
 S:Notify({["Title"]="Error";["Content"]="Plot not found or character not loaded.";["Duration"]=2})end
 end
 
local  function T6()
local x={"Normal"}
local W=o:FindFirstChild("Shared")and o["Shared"]:FindFirstChild("MutationAppliers")if W  then
 for W,S in ipairs(W:GetChildren())do
 if S["Name"]and S["Name"]~="" then
 table["insert"](x,S["Name"])end
 end
 end
 table["sort"](x,function(x,W)if x=="Normal" then
 return true end
 if W=="Normal" then
 return false end
 return x<W end
)if#x==1  then
 x={"Normal","Alien";"Autumn";"Cosmic";"Farm";"Frozen","Honeycomb","Radioactive","Rainbow";"Void";"Wet"}end
 return x end
 
local  function t6(x,W)
local S=P()if not S  then
 return nil end
 
local T=D[x]if not T  then
 return nil end
 
local t=S if W>1  then
 if T["SignName"]=="UpgradeSign" then
 return nil end
 
local x={"","SecondFloor","ThirdFloor";"FourthFloor";"FifthFloor","SixthFloor"}
local H=x[W]if not H  then
 return nil end
 t=S:FindFirstChild(H)if not t  then
 return nil end
 end
 
local H=t:FindFirstChild(T["SignName"])if H and(H:FindFirstChild("Screen")and H["Screen"]:FindFirstChild("SurfaceGui")) then
 
local x=H["Screen"]["SurfaceGui"]:FindFirstChild(T["UIFolder"])if x and(x:FindFirstChild("Btn")and x["Btn"]:FindFirstChild("Txt")) then
 
local W=x["Btn"]["Txt"]["Text"]if W=="MAX" then
 return "MAX"end
 return j(W)end
 end
 return nil end
 
local  function H6()
local x=i:FindFirstChild("PlayerGui")
local W=x and x:FindFirstChild("MainUI")
local S=W and W:FindFirstChild("Menus")
local T=S and S:FindFirstChild("GearShopFrame")return T and T:FindFirstChild("ScrollingFrame")end
 
local  function o6(x)
local W=H6()if not W  then
 return "N/A"end
 
local S=W:FindFirstChild(x)if not S  then
 return "N/A"end
 for x,W in pairs(S:GetDescendants())do
 if W:IsA("TextLabel")or W:IsA("TextButton") then
 
local x=W["Text"]if x and string["sub"](x,1,1)=="$" then
 return x end
 end
 end
 return "N/A"end
 
local  function C6(x)
local W=o:FindFirstChild("GearStocks")and o["GearStocks"]:FindFirstChild(i["Name"])if not W  then
 return 0 end
 
local S=W:FindFirstChild(x)return S and S["Value"]or 0 end
 
local  function M6()
local x=workspace:FindFirstChild("PetMerchant")if not x  then
 return "--- EGG SHOP ---\nPet Merchant not found"end
 
local W={}
local S=x:FindFirstChild("MerchantSign")
local T=S and S:FindFirstChildWhichIsA("SurfaceGui")
local t=T and T:FindFirstChild("TimeLabel")
local H=t and t["Text"]or "Restocks In: Unknown"table["insert"](W,"--- EGG SHOP ("..(H..") ---"))
local o=false for S=1,5,1 do
 
local T=x:FindFirstChild("Podium"..(S.."Stock"))or x:FindFirstChild("Podium"..S)if T  then
 
local x=T:FindFirstChild("EggLabel",true)
local t=T:FindFirstChild("PriceLabel",true)if x and(t and x["Text"]~="") then
 table["insert"](W,string["format"]("[Slot %d] %s | %s",S,x["Text"],t["Text"]))o=true end
 end
 end
 if not o  then
 table["insert"](W,"No eggs listed (loading or empty)")end
 return table["concat"](W,"\n")end
 
local  function G6()
local x={"--- GEAR SHOP ---"}
local W=false for S,T in ipairs(b)do
 
local t=C6(T)
local H=o6(T)
local o=t==0 and "#FF5050"or "#00FF7F"table["insert"](x,string["format"]("- <font color='%s'>[%d x]</font> <font color='#FFD250'>[%s]</font> <font color='#FFFFFF'>%s</font>",o,t,H,T))if t>0  then
 W=true end
 end
 if not W  then
 table["insert"](x,"- All gears are out of stock!")end
 return table["concat"](x,"\n")end
 
local  function i6()return M6()..("\n\n"..G6())end
 
local  function Y6(x)
local W=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Gear")and o["Remotes"]["Gear"]:FindFirstChild("Transaction"))if W  then
 
local S=o6(x)
local T=j(S)if y(T,"Gear",x) then
 W:InvokeServer(x)end
 end
 end
 
local L6=nil 
local  function K6()if L6~=nil  then
 return L6~=false and L6 or nil end
 
local x=o:FindFirstChild("Shared")and o["Shared"]:FindFirstChild("EggConfig")if not x  then
 L6=false return nil end
 
local W,S=pcall(require,x)L6=((W and type(S)=="table"))and S or false return L6~=false and L6 or nil end
 
local  function Q6()
local x={}
local W=K6()if W and W["UnlockPrices"] then
 for W,S in pairs(W["UnlockPrices"])do
 
local T=string["match"](W,"%d+")if T  then
 table["insert"](x,{["EggSlotNumber"]=tonumber(T),["UnlockPrice"]=tonumber(S)or 0})end
 end
 end
 table["sort"](x,function(x,W)return x["EggSlotNumber"]<W["EggSlotNumber"]end
)return x end
 
local  function b6()
local x={}
local W=K6()if W  then
 for W,S in pairs(W)do
 if type(S)=="table"and string["match"](tostring(W),"Egg$") then
 table["insert"](x,tostring(W))end
 end
 end
 table["sort"](x)if#x==0  then
 x={"CommonEgg";"RareEgg","EpicEgg"}end
 return x end
 
local  function d6(x)if not x  then
 return 0 end
 
local W=K6()if not W  then
 return 0 end
 if type(W["Eggs"])=="table"and type(W["Eggs"][x])=="table" then
 
local S=W["Eggs"][x]return tonumber(S["Price"]or S["Cost"]or S["RollPrice"])or 0 end
 if type(W["Prices"])=="table" then
 return tonumber(W["Prices"][x])or 0 end
 if type(W["RollPrices"])=="table" then
 return tonumber(W["RollPrices"][x])or 0 end
 return 0 end
 
local  function V6()
local x={}
local W=workspace:FindFirstChild("PetMerchant")if not W  then
 return x end
 for S=1,5,1 do
 
local T=W:FindFirstChild("Podium"..(S.."Stock"))or W:FindFirstChild("Podium"..S)if T  then
 
local W=T:FindFirstChild("EggLabel",true)if W and(W["Text"]and W["Text"]~="") then
 
local T=string["gsub"](W["Text"]," ","")if not string["match"](string["lower"](T),"egg$") then
 T=T.."Egg"end
 table["insert"](x,{["Slot"]=S;["Name"]=T})end
 end
 end
 return x end
 
local  function s6(x)
local W=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("EggShop")and o["Remotes"]["EggShop"]:FindFirstChild("Transaction"))
local S=o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("RollEgg")if not W or not S or not x["Slot"]or not x["Name"] then
 return false end
 
local T=pcall(function()W:InvokeServer("BuyEgg",x["Slot"])end
)if T  then
 pcall(function()S:FireServer(x["Name"])end
)task["wait"](.1)pcall(function()S:FireServer(x["Name"],"ClaimRolledPet")end
)return true end
 return false end
 
local  function E6()
local x={"None"}
local W={}
local  function S(S)if not S  then
 return end
 for S,T in pairs(S:GetChildren())do
 if T:IsA("Tool")and T:GetAttribute("InventoryCategory")=="Seeds" then
 
local S=T:GetAttribute("trueName")if S and not W[S] then
 W[S]=true table["insert"](x,S)end
 end
 end
 end
 S(i["Character"])S(i:FindFirstChild("Backpack"))return x end
 
local  function a6(x)
local W=i["Character"]
local S=W and W:FindFirstChild("Humanoid")if not W or not S  then
 return nil end
 
local T=W:FindFirstChildWhichIsA("Tool")if T and(T:GetAttribute("InventoryCategory")=="Seeds"and T:GetAttribute("trueName")==x) then
 return T end
 if T  then
 S:UnequipTools()task["wait"](.1)end
 if i:FindFirstChild("Backpack") then
 for W,T in pairs(i["Backpack"]:GetChildren())do
 if T:IsA("Tool")and(T:GetAttribute("InventoryCategory")=="Seeds"and T:GetAttribute("trueName")==x) then
 S:EquipTool(T)task["wait"](.3)return T end
 end
 end
 return nil end
 
local  function g6()
local x={}
local W=(game:GetService("ReplicatedStorage")):FindFirstChild("Shared")
local S=W and W:FindFirstChild("Registry")
local T=S and S:FindFirstChild("Mutations")if T  then
 for W,S in ipairs(T:GetChildren())do
 table["insert"](x,S["Name"])end
 end
 if#x==0  then
 x={"Alien";"Autumn";"Cosmic";"Exclusive!","Farm";"Frozen";"Honeycomb","Normal";"Radioactive";"Rainbow";"Void","Wet"}end
 table["sort"](x)return x end
 
local X6=g6()
local  function I6()
local x=Y["Config"]["FloorFertilizeConfig"]if not x  then
 return nil end
 if next(x["TargetFertilizerTypes"])==nil  then
 return nil end
 
local W=x["TargetFertilizerTypes"]
local  function S(x)if not x  then
 return nil end
 for x,S in ipairs(x:GetChildren())do
 for x,T in ipairs(d)do
 if string["find"](S["Name"],T,1,true) then
 if W[T] then
 return S end
 end
 end
 end
 return nil end
 return S(i["Character"])or S(i["Backpack"])end
 
local  function e6(x)if not x or x=="" then
 return true end
 
local W=string["lower"](x)return W=="normal"or W=="none"end
 
local  function r6(x)if not x or x=="" then
 return nil end
 
local  function W(W)if not W  then
 return nil end
 for W,S in ipairs(W:GetChildren())do
 if string["find"](S["Name"],x,1,true) then
 return S end
 end
 return nil end
 return W(i["Character"])or W(i["Backpack"])end
 
local  function D6(x)if not x or x=="" then
 return 0 end
 
local W=0 
local  function S(S)if not S  then
 return end
 for S,T in ipairs(S:GetChildren())do
 if T:IsA("Tool")and string["find"](T["Name"],x,1,true) then
 
local x=string["match"](T["Name"],"%(x(%d+)%)")if x  then
 W=W+tonumber(x)
else
 
local x=T:GetAttribute("Amount")or T:GetAttribute("Quantity")or T:GetAttribute("Uses")if x and typeof(x)=="number" then
 W=W+x 
else
 
local x=T:FindFirstChild("Value")or T:FindFirstChild("Quantity")or T:FindFirstChild("Uses")if x and((x:IsA("IntValue")or x:IsA("NumberValue"))) then
 W=W+x["Value"]
else
 W=W+1 end
 end
 end
 end
 end
 end
 S(i["Character"])S(i["Backpack"])return W end
 
local  function h6(x,W)if not x or next(x)==nil  then
 return false end
 if x[W] then
 return true end
 
local S=string["lower"](W)for x,W in pairs(x)do
 if W  then
 
local W=string["match"](x,"%] (.*)")or x if string["lower"](W)==S  then
 return true end
 end
 end
 return false end
 
local  function U6()
local x=Y["Config"]["TargetManageFloor"]
local W=Y["Config"]["FloorSprayConfig"]if not W  then
 return end
 
local T=W["TargetSprayType"]if not T or T=="" then
 S:Notify({["Title"]="Spray Error",["Content"]="Please select a spray type first!";["Duration"]=3})return end
 
local t=W["TargetPlantNames"]if next(t)==nil  then
 S:Notify({["Title"]="Spray Error";["Content"]="Please select target plants first!",["Duration"]=3})return end
 
local H=J(x)if not H  then
 S:Notify({["Title"]="Spray Error";["Content"]="Farm plot not found for this floor!";["Duration"]=3})return end
 
local C=o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("UseSpray")if not C  then
 S:Notify({["Title"]="Spray Error",["Content"]="UseSpray remote not found!",["Duration"]=3})return end
 
local M=r6(T)if not M  then
 S:Notify({["Title"]="Spray Error",["Content"]="Spray tool '"..(T.."' not found in inventory!");["Duration"]=3})return end
 
local G=D6(T)
local L={}
local K=w(H)for x,W in ipairs(K)do
 
local S=W:GetAttribute("PlantName")if S and S~="" then
 if h6(t,S) then
 
local x=W:GetAttribute("PlantMutation")or "None"if e6(x) then
 table["insert"](L,{["dirt"]=W;["name"]=S;["mutation"]=x})end
 end
 end
 end
 
local Q=#L S:Notify({["Title"]="Spray Status",["Content"]=string["format"]("Found: %d matching plants.\nOwned Spray: %d.",Q,G);["Duration"]=4})if Q==0 or G<=0  then
 return end
 
local b=i["Character"]and i["Character"]:FindFirstChild("Humanoid")if b  then
 b:EquipTool(M)task["wait"](.25)
local x=math["min"](G,Q)for x=1,x,1 do
 
local W=L[x]pcall(function()C:FireServer(W["dirt"])end
)task["wait"](1)end
 task["wait"](.25)b:UnequipTools()if G<Q  then
 S:Notify({["Title"]="Spray Completed",["Content"]=string["format"]("Sprayed %d plants.\n%d plants left unsprayed due to insufficient spray.",G,Q-G),["Duration"]=5})
else
 S:Notify({["Title"]="Spray Completed",["Content"]=string["format"]("Sprayed all %d plants successfully!",Q);["Duration"]=5})end
 
else
 S:Notify({["Title"]="Spray Error",["Content"]="Character humanoid not found!",["Duration"]=3})end
 end
 
local  function B6()
local x=Y["Config"]["TargetManageFloor"]
local W=Y["Config"]["FloorSprayConfig"]if not W  then
 return end
 
local T=W["TargetAcidPlantNames"]if next(T)==nil  then
 S:Notify({["Title"]="Spray Error",["Content"]="Please select target plants first!",["Duration"]=3})return end
 
local t=W["TargetAcidMutations"]if next(t)==nil  then
 S:Notify({["Title"]="Spray Error",["Content"]="Please select target mutations first!";["Duration"]=3})return end
 
local H=J(x)if not H  then
 S:Notify({["Title"]="Spray Error",["Content"]="Farm plot not found for this floor!",["Duration"]=3})return end
 
local C=o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("UseSpray")if not C  then
 S:Notify({["Title"]="Spray Error";["Content"]="UseSpray remote not found!",["Duration"]=3})return end
 
local M=r6("Acid Spray")if not M  then
 S:Notify({["Title"]="Spray Error";["Content"]="Acid Spray tool not found in inventory!",["Duration"]=3})return end
 
local G=D6("Acid Spray")
local L={}
local K=w(H)for x,W in ipairs(K)do
 
local S=W:GetAttribute("PlantName")if S and S~="" then
 if h6(T,S) then
 
local x=W:GetAttribute("PlantMutation")or "None"if not e6(x) then
 
local T=false for W,S in pairs(t)do
 if S and string["lower"](W)==string["lower"](x) then
 T=true break end
 end
 if T  then
 table["insert"](L,{["dirt"]=W;["name"]=S;["mutation"]=x})end
 end
 end
 end
 end
 
local Q=#L S:Notify({["Title"]="Clear Mutation Status";["Content"]=string["format"]("Found: %d mutated plants.\nOwned Acid Spray: %d.",Q,G);["Duration"]=4})if Q==0 or G<=0  then
 return end
 
local b=i["Character"]and i["Character"]:FindFirstChild("Humanoid")if b  then
 b:EquipTool(M)task["wait"](.25)
local x=math["min"](G,Q)for x=1,x,1 do
 
local W=L[x]pcall(function()C:FireServer(W["dirt"])end
)task["wait"](1)end
 task["wait"](.25)b:UnequipTools()if G<Q  then
 S:Notify({["Title"]="Clear Mutation Completed";["Content"]=string["format"]("Sprayed %d plants.\n%d plants left unsprayed due to insufficient Acid Spray.",G,Q-G),["Duration"]=5})
else
 S:Notify({["Title"]="Clear Mutation Completed",["Content"]=string["format"]("Sprayed all %d plants successfully!",Q);["Duration"]=5})end
 
else
 S:Notify({["Title"]="Spray Error";["Content"]="Character humanoid not found!",["Duration"]=3})end
 end
 
local  function f6(x)if not x  then
 return "Unknown"end
 
local W=""if typeof(x)=="Instance" then
 W=x:GetAttribute("trueName")or x["Name"]
elseif typeof(x)=="string" then
 W=x 
else
 W=tostring(x)end
 
local S=string["match"](W,"%[(.-)%]")if S and S~="" then
 return S end
 
local T=string["match"](W,"%]%s*(.*)")or W T=string["gsub"](T,"^%s*(.-)%s*$","%1")if e[T] then
 return e[T]end
 
local t=string["lower"](T)for x,W in pairs(e)do
 if string["lower"](x)==t  then
 return W end
 end
 return "Unknown"end
 
local  function A6()
local x=P()if not x  then
 return{}end
 
local W=x:FindFirstChild("SeedRoller")if not W  then
 return{}end
 
local S={}for x=1,6,1 do
 
local T=W:FindFirstChild("Stand"..x)if T  then
 S[x]=(T:GetPivot())["Position"]end
 end
 return S end
 
local p6=15 
local  function j6(x,W)
local S,T=nil,math["huge"]for W,t in pairs(W)do
 
local H=((Vector3["new"](x["X"],0,x["Z"])-Vector3["new"](t["X"],0,t["Z"])))["Magnitude"]if H<T  then
 T=H S=W end
 end
 return S,T end
 
local  function Z6()
local x={}
local W=A6()if next(W)==nil  then
 return x end
 for S,T in ipairs(workspace:GetChildren())do
 if T:IsA("Model") then
 
local S,t=j6((T:GetPivot())["Position"],W)if S and t<p6  then
 if T:FindFirstChild("BuySeed",true) then
 
local W=0 
local t=T:FindFirstChild("SeedGui",true)if t  then
 for x,S in pairs(t:GetDescendants())do
 if((S:IsA("TextLabel")or S:IsA("TextButton")))and string["find"](S["Text"],"%$") then
 W=j(S["Text"])break end
 end
 end
 x[T["Name"]]={["standIdx"]=S;["price"]=W}end
 end
 end
 end
 return x end
 
local  function y6(x)if Y["Config"]["AutoRollAndBuyAll"] then
 return true end
 if Y["Config"]["AutoRollAndBuySelected"] then
 if next(Y["Config"]["TargetGachaSeeds"])==nil  then
 return false end
 return Y["Config"]["TargetGachaSeeds"][x]==true end
 if Y["Config"]["AutoRollAndBuyByRarity"] then
 if next(Y["Config"]["TargetGachaRarities"])==nil  then
 return false end
 
local W=e[x]return W~=nil and Y["Config"]["TargetGachaRarities"][W]==true end
 return false end
 
local  function n6()if Y["Flags"]["isSeedGachaLoopRunning"] then
 return end
 if not Y["Config"]["AutoRollAndBuyAll"]and(not Y["Config"]["AutoRollAndBuySelected"]and not Y["Config"]["AutoRollAndBuyByRarity"]) then
 return end
 Y["Flags"]["isSeedGachaLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoRollAndBuyAll"]or Y["Config"]["AutoRollAndBuySelected"]or Y["Config"]["AutoRollAndBuyByRarity"]do
 
local x=Z6()
local W=false for x,S in pairs(x)do
 if not((Y["Config"]["AutoRollAndBuyAll"]or Y["Config"]["AutoRollAndBuySelected"]or Y["Config"]["AutoRollAndBuyByRarity"])) then
 break end
 if y6(x) then
 if y(S["price"],"Seed",x) then
 pcall(function()o["Remotes"]["BuySeed"]:FireServer(S["standIdx"])end
)W=true task["wait"](.5)end
 end
 end
 if not W and((Y["Config"]["AutoRollAndBuyAll"]or Y["Config"]["AutoRollAndBuySelected"]or Y["Config"]["AutoRollAndBuyByRarity"])) then
 pcall(function()o["Remotes"]["RollSeeds"]:FireServer()end
)task["wait"](3.5)end
 task["wait"](.5)end
 Y["Flags"]["isSeedGachaLoopRunning"]=false end
)end
 
local m6=tick()T("Building UI...")H["TabShop"]=H["SectionGeneral"]:Tab({["Title"]="Gacha $ Shop",["Icon"]="chevron-right"})H["TabPets"]=H["SectionGeneral"]:Tab({["Title"]="Pets",["Icon"]="chevron-right"})H["TabFloor"]=H["SectionGeneral"]:Tab({["Title"]="Floor Manager",["Icon"]="chevron-right"})H["SectionCompost"]=t:Section({["Title"]="Composters",["Icon"]="layers";["Opened"]=false})H["TabCompost2"]=H["SectionCompost"]:Tab({["Title"]="Floor 2 Compost";["Icon"]="chevron-right"})H["TabCompost3"]=H["SectionCompost"]:Tab({["Title"]="Floor 3 Compost";["Icon"]="chevron-right"})H["SectionActivity"]=t:Section({["Title"]="Rewards & Events",["Icon"]="gift",["Opened"]=false})H["TabEvents"]=H["SectionActivity"]:Tab({["Title"]="Events",["Icon"]="chevron-right"})H["TabRewards"]=H["SectionActivity"]:Tab({["Title"]="Rewards",["Icon"]="chevron-right"})H["TabConfig"]=t:Tab({["Title"]="Utilities & Config";["Icon"]="settings"})T("Created UI tabs in %.3f seconds",tick()-m6)H["TabFarming"]:Section({["Title"]="AUTO FARMING"})Y["UIRefs"]["ToggleAutoSellCrates"]=H["TabFarming"]:Toggle({["Title"]="Auto Sell Crates",["Value"]=Y["Config"]["AutoSellCrates"]or false;["Callback"]=function(x)Y["Config"]["AutoSellCrates"]=x if x and not Y["Flags"]["isSellCratesLoopRunning"] then
 Y["Flags"]["isSellCratesLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoSellCrates"]do
 pcall(function()if o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("SellCrates") then
 o["Remotes"]["SellCrates"]:FireServer()end
 end
)task["wait"](2)end
 Y["Flags"]["isSellCratesLoopRunning"]=false end
)end
 end
})Y["UIRefs"]["ToggleAutoUnlockFarmPlots"]=H["TabFarming"]:Toggle({["Title"]="Auto Unlock Farm Plots",["Value"]=Y["Config"]["AutoUnlockFarmPlots"]or false,["Callback"]=function(x)Y["Config"]["AutoUnlockFarmPlots"]=x if x and not Y["Flags"]["isUnlockFarmPlotsLoopRunning"] then
 Y["Flags"]["isUnlockFarmPlotsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoUnlockFarmPlots"]do
 
local x=P()if x  then
 for x,W in ipairs(x:GetDescendants())do
 if not Y["Config"]["AutoUnlockFarmPlots"] then
 break end
 if W["Name"]=="Dirt" then
 pcall(function()o["Remotes"]["UnlockPlot"]:FireServer(W)end
)task["wait"](2)end
 end
 end
 task["wait"](2)end
 Y["Flags"]["isUnlockFarmPlotsLoopRunning"]=false end
)end
 end
})Y["UIRefs"]["ToggleAutoExpandFarmPlot"]=H["TabFarming"]:Toggle({["Title"]="Auto Expand Farm Plot",["Value"]=Y["Config"]["AutoExpandFarmPlot"]or false,["Callback"]=function(x)Y["Config"]["AutoExpandFarmPlot"]=x if x and not Y["Flags"]["isExpandFarmPlotLoopRunning"] then
 Y["Flags"]["isExpandFarmPlotLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoExpandFarmPlot"]do
 pcall(function()
local x=workspace:FindFirstChild("Map")and workspace["Map"]:FindFirstChild("Plots")
local W=o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("UpgradeFarm")if x and W  then
 for x,S in pairs(x:GetChildren())do
 if not Y["Config"]["AutoExpandFarmPlot"] then
 break end
 
local T=S:FindFirstChild("ExpandSign")
local t=T and T:FindFirstChild("Screen")
local H=t and t:FindFirstChild("SurfaceGui")
local o=H and H:FindFirstChild("Expand")
local C=o and o:FindFirstChild("Btn")
local M=C and C:FindFirstChild("Txt")if M and((M:IsA("TextLabel")or M:IsA("TextButton"))) then
 
local x=j(M["Text"])if y(x,"Plot Expansion") then
 W:InvokeServer()end
 end
 end
 end
 end
)task["wait"](2)end
 Y["Flags"]["isExpandFarmPlotLoopRunning"]=false end
)end
 end
})
local  function F6()return o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Composter")and o["Remotes"]["Composter"]:FindFirstChild("InsertSeed"))end
 
local  function u6(x)
local W=string["match"](x["Name"],"%(x(%d+)%)")return W and tonumber(W)or 1 end
 
local  function P6(x,W,S)
local T=x:GetAttribute("seedKey")if T  then
 return T end
 
local t=x:GetAttribute("Level")or 1 return tostring(W)..("_"..(tostring(t)..("_"..tostring(S))))end
 
local N6={[2]={["CompostMachineFrameName"]="CompostMachine",["PullLeverServerId"]=2};[3]={["CompostMachineFrameName"]="CompostMachineTier2";["PullLeverServerId"]=3}}
local  function k6(x)
local W=i["Character"]
local S=i:FindFirstChild("Backpack")
local T={W;S}
local t=Y["Config"]["F"..(x.."_TargetCompostSeeds")]
local H=Y["Config"]["F"..(x.."_TargetCompostRarities")]
local o=Y["Config"]["F"..(x.."_AutoCompostByRarity")]
local C=Y["Config"]["F"..(x.."_AutoCompostSelected")]for x,W in ipairs(T)do
 if W  then
 for x,W in ipairs(W:GetChildren())do
 if W:IsA("Tool") then
 
local x=W:GetAttribute("Plant")or W:GetAttribute("trueName")if x  then
 
local S=W:GetAttribute("Mutation")or "Normal"
local T=true if C  then
 if next(t)==nil or t[x]~=true  then
 T=false end
 
elseif o  then
 if next(H)==nil  then
 T=false 
else
 
local W=e[x]if not W or H[W]~=true  then
 T=false end
 end
 end
 if T  then
 return W,x,S end
 end
 end
 end
 end
 end
 return nil end
 
local  function l6(x)
local W=F6()if not W  then
 return false end
 
local S,T,t=k6(x)if not S  then
 return false end
 
local H=u6(S)
local o=H 
local C=Y["Config"]["F"..(x.."_MaxCompostInsertAmount")]if C and C>0  then
 o=math["min"](H,C)end
 if o<=0  then
 return false end
 
local M=P6(S,T,t)
local G=pcall(function()W:InvokeServer(x,M,o)end
)return G end
 
local  function c6(x,W)
local t="F"..(x.."_")
local H="Composter"W:Section({["Title"]=H})
local C 
local M 
local G 
local L G=W:Dropdown({["Title"]="Select Seeds";["Values"]=Y["CachedIndexSeedEntries"],["Value"]=Q(Y["Config"][t.."TargetCompostSeeds"]or{}),["Multi"]=true;["AllowNone"]=true;["Callback"]=function(x)Y["Config"][t.."TargetCompostSeeds"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 
local S=string["match"](W,"%] (.*)")or W Y["Config"][t.."TargetCompostSeeds"][S]=true end
 
elseif x and x~="" then
 
local W=string["match"](x,"%] (.*)")or x Y["Config"][t.."TargetCompostSeeds"][W]=true end
 end
})
local  function K(x)if x~="selected" then
 Y["Config"][t.."AutoCompostSelected"]=false pcall(function()C:Set(false)end
)end
 if x~="rarity" then
 Y["Config"][t.."AutoCompostByRarity"]=false pcall(function()M:Set(false)end
)end
 end
 
local  function b()if x==2 and Y["Flags"]["isF2CompostLoopRunning"] then
 return end
 if x==3 and Y["Flags"]["isF3CompostLoopRunning"] then
 return end
 if not Y["Config"][t.."AutoCompostSelected"]and not Y["Config"][t.."AutoCompostByRarity"] then
 return end
 if x==2  then
 Y["Flags"]["isF2CompostLoopRunning"]=true 
else
 Y["Flags"]["isF3CompostLoopRunning"]=true end
 task["spawn"](function()while Y["Config"][t.."AutoCompostSelected"]or Y["Config"][t.."AutoCompostByRarity"]do
 l6(x)task["wait"](Y["Config"][t.."CompostInsertDelay"]or 2)end
 if x==2  then
 Y["Flags"]["isF2CompostLoopRunning"]=false 
else
 Y["Flags"]["isF3CompostLoopRunning"]=false end
 end
)end
 C=W:Toggle({["Title"]="Auto Compost Selected";["Desc"]="Automatically insert selected seeds into the composter",["Value"]=Y["Config"][t.."AutoCompostSelected"]or false;["Callback"]=function(x)Y["Config"][t.."AutoCompostSelected"]=x if x  then
 K("selected")end
 b()end
})L=W:Dropdown({["Title"]="Select Rarities",["Values"]=I,["Value"]=Q(Y["Config"][t.."TargetCompostRarities"]or{}),["Multi"]=true;["AllowNone"]=true;["Callback"]=function(x)Y["Config"][t.."TargetCompostRarities"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 Y["Config"][t.."TargetCompostRarities"][W]=true end
 
elseif x and x~="" then
 Y["Config"][t.."TargetCompostRarities"][x]=true end
 end
})M=W:Toggle({["Title"]="Auto Compost By Rarity",["Desc"]="Automatically insert seeds matching selected rarities",["Value"]=Y["Config"][t.."AutoCompostByRarity"]or false,["Callback"]=function(x)Y["Config"][t.."AutoCompostByRarity"]=x if x  then
 K("rarity")end
 b()end
})
local d=W:Input({["Title"]="Insert Delay",["Desc"]="Delay in seconds between seed inserts",["Placeholder"]="60";["Value"]=tostring(Y["Config"][t.."CompostInsertDelay"]or 60);["Numeric"]=true;["Finished"]=true;["Callback"]=function(x)
local W=tonumber(x)if not W or W<1  then
 Y["Config"][t.."CompostInsertDelay"]=60 pcall(function()InputCompostInsertDelay:Set("60")end
)return end
 W=math["floor"](W)Y["Config"][t.."CompostInsertDelay"]=W end
})
local V=W:Input({["Title"]="Max Seeds Per Insert",["Desc"]="Maximum amount of seeds to insert (0 = ALL)",["Placeholder"]="0";["Value"]=tostring(Y["Config"][t.."MaxCompostInsertAmount"]or 0),["Numeric"]=true,["Finished"]=true;["Callback"]=function(x)
local W=tonumber(x)if not W or W<0 or W%1~=0  then
 Y["Config"][t.."MaxCompostInsertAmount"]=0 pcall(function()InputCompostMaxInsertAmount:Set("0")end
)return end
 Y["Config"][t.."MaxCompostInsertAmount"]=math["floor"](W)end
})W:Divider()
local s=W:Button({["Title"]="Manual Insert";["Desc"]="Manually insert seeds once immediately",["Callback"]=function()
local W="0"pcall(function()W=tostring(V["Value"])end
)
local T=tonumber(W)if not T or T<0 or T%1~=0  then
 Y["Config"][t.."MaxCompostInsertAmount"]=0 
else
 Y["Config"][t.."MaxCompostInsertAmount"]=math["floor"](T)end
 
local H=l6(x)if H  then
 S:Notify({["Title"]="Manual Compost",["Content"]="F"..(x.." seed insert command sent."),["Duration"]=2})
else
 S:Notify({["Title"]="Manual Compost",["Content"]="F"..(x.." no matching seed found.");["Duration"]=2})end
 end
})W:Divider()
local E 
local a 
local  function g(x)if x~="interval" then
 Y["Config"][t.."AutoPullLever"]=false pcall(function()E:Set(false)end
)end
 if x~="whenMax" then
 Y["Config"][t.."AutoPullLeverWhenMax"]=false pcall(function()a:Set(false)end
)end
 end
 
local  function X()
local W=(x==2)and Y["Flags"]["isF2PullLeverLoopRunning"]or Y["Flags"]["isF3PullLeverLoopRunning"]if not Y["Config"][t.."AutoPullLever"]or W  then
 return end
 if x==2  then
 Y["Flags"]["isF2PullLeverLoopRunning"]=true 
else
 Y["Flags"]["isF3PullLeverLoopRunning"]=true end
 task["spawn"](function()while Y["Config"][t.."AutoPullLever"]do
 
local W=N6[x]pcall(function()
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Composter")and o["Remotes"]["Composter"]:FindFirstChild("PullLever"))if x and W  then
 x:InvokeServer(W["PullLeverServerId"])end
 end
)task["wait"](Y["Config"][t.."PullLeverDelay"]or 60)end
 if x==2  then
 Y["Flags"]["isF2PullLeverLoopRunning"]=false 
else
 Y["Flags"]["isF3PullLeverLoopRunning"]=false end
 end
)end
 
local  function e()
local W=(x==2)and Y["Flags"]["isF2PullLeverWhenMaxLoopRunning"]or Y["Flags"]["isF3PullLeverWhenMaxLoopRunning"]if not Y["Config"][t.."AutoPullLeverWhenMax"]or W  then
 return end
 if x==2  then
 return end
 Y["Flags"]["isF3PullLeverWhenMaxLoopRunning"]=true task["spawn"](function()while Y["Config"][t.."AutoPullLeverWhenMax"]do
 
local W=N6[x]if W  then
 
local S=i:FindFirstChild("PlayerGui")and i["PlayerGui"]:FindFirstChild("CompostMachine")
local t=S and S:FindFirstChild(W["CompostMachineFrameName"])
local H=t and(t:FindFirstChild("Main")and t["Main"]:FindFirstChild("Progress"))
local C=H and H:FindFirstChild("Requirements")if C and(((C:IsA("TextLabel")or C:IsA("TextButton")))and string["find"](string["upper"](C["Text"]),"MAX",1,true)) then
 
local S=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Composter")and o["Remotes"]["Composter"]:FindFirstChild("PullLever"))if S  then
 
local t=pcall(function()S:InvokeServer(W["PullLeverServerId"])end
)if t  then
 T("Composter MAX | F"..(tostring(x).." lever pulled"))end
 end
 end
 end
 task["wait"](2)end
 Y["Flags"]["isF3PullLeverWhenMaxLoopRunning"]=false end
)end
 
local r=W:Input({["Title"]="Pull Lever Delay",["Desc"]="Delay in seconds between lever pulls (for Auto Pull Lever only)";["Placeholder"]="60";["Value"]=tostring(Y["Config"][t.."PullLeverDelay"]or 60),["Numeric"]=true;["Finished"]=true,["Callback"]=function(x)
local W=tonumber(x)if not W or W<1  then
 Y["Config"][t.."PullLeverDelay"]=60 pcall(function()InputPullLeverDelay:Set("60")end
)return end
 Y["Config"][t.."PullLeverDelay"]=math["floor"](W)end
})E=W:Toggle({["Title"]="Auto Pull Lever";["Value"]=Y["Config"][t.."AutoPullLever"]or false;["Callback"]=function(x)Y["Config"][t.."AutoPullLever"]=x if x  then
 g("interval")end
 X()end
})a=W:Toggle({["Title"]="Auto Pull Lever When MAX";["Desc"]=(x==2)and "Temporarily Disabled (Bugged on Floor 2)"or "Pull lever when machine is at MAX capacity — checks every 2 seconds";["Locked"]=(x==2),["Value"]=Y["Config"][t.."AutoPullLeverWhenMax"]or false;["Callback"]=function(W)if x==2  then
 pcall(function()a:Set(false)end
)return end
 Y["Config"][t.."AutoPullLeverWhenMax"]=W if W  then
 g("whenMax")end
 e()end
})if x==2  then
 pcall(function()a:Lock()end
)end
 if Y["Config"][t.."AutoCompostSelected"]or Y["Config"][t.."AutoCompostByRarity"] then
 b()end
 if Y["Config"][t.."AutoPullLever"] then
 X()end
 if Y["Config"][t.."AutoPullLeverWhenMax"]and x==3  then
 e()end
 return{["ToggleAutoCompostSelected"]=C,["ToggleAutoCompostByRarity"]=M;["DropdownCompostSeed"]=G,["DropdownCompostRarities"]=L;["InputCompostInsertDelay"]=d,["InputCompostMaxInsertAmount"]=V,["ToggleAutoPullLever"]=E,["ToggleAutoPullLeverWhenMax"]=a,["InputPullLeverDelay"]=r,["startCompostLoopForFloor"]=b}end
 
local w6=c6(2,H["TabCompost2"])
local z6=c6(3,H["TabCompost3"])
local  function J6()if Y["Flags"]["isAutoPlantLoopRunning"] then
 return end
 Y["Flags"]["isAutoPlantLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoPlantByRarity"]do
 
local x=Y["Config"]["TargetManageFloor"]
local W=J(x)if W  then
 
local x={}for W,S in ipairs(W:GetChildren())do
 
local T=string["match"](S["Name"],"^Plot(%d+)$")if T  then
 
local W=S:FindFirstChild("Dirt")if W and W:GetAttribute("PlantLevel")==nil  then
 table["insert"](x,W)end
 end
 end
 if#x>0  then
 
local  function W()
local x=i["Character"]
local W=i:FindFirstChild("Backpack")
local S={x;W}
local T={}for x,W in ipairs(S)do
 if W  then
 for x,W in ipairs(W:GetChildren())do
 if W:IsA("Tool")and W:GetAttribute("InventoryCategory")=="Seeds" then
 
local x=W:GetAttribute("trueName")if x  then
 
local W=f6(x)
local S=Y["Config"]["TargetAutoPlantRarities"]if W and(S and S[W]) then
 
local S=X[W]or 0 table["insert"](T,{["TrueName"]=x,["Weight"]=S})end
 end
 end
 end
 end
 end
 if#T>0  then
 table["sort"](T,function(x,W)return x["Weight"]>W["Weight"]end
)return T[1]["TrueName"]end
 return nil end
 for x,S in ipairs(x)do
 if not Y["Config"]["AutoPlantByRarity"] then
 break end
 if S:GetAttribute("PlantLevel")==nil  then
 
local x=W()if x  then
 
local W=a6(x)if W  then
 pcall(function()if o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("PlantSeed") then
 o["Remotes"]["PlantSeed"]:FireServer(S)end
 end
)task["wait"](.2)end
 
else
 break end
 end
 end
 end
 end
 task["wait"](5)end
 Y["Flags"]["isAutoPlantLoopRunning"]=false end
)end
 
local  function O6()
local x=Y["Config"]["TargetManageFloor"]
local W=J(x)if W  then
 for x,W in ipairs(W:GetChildren())do
 
local S=string["match"](W["Name"],"^Plot(%d+)$")if S  then
 
local x=W:FindFirstChild("Dirt")if x and x:GetAttribute("PlantLevel")~=nil  then
 pcall(function()if o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("RemovePlant") then
 o["Remotes"]["RemovePlant"]:FireServer(x)end
 end
)task["wait"](.5)end
 end
 end
 end
 end
 
local  function v6()if Y["Flags"]["isUpgradePlantsLoopRunning"] then
 return end
 Y["Flags"]["isUpgradePlantsLoopRunning"]=true task["spawn"](function()while Y["Config"]["FloorUpgradeConfig"]["AutoUpgrade"]or Y["Config"]["FloorUpgradeConfig"]["AutoAll"]do
 
local x=Y["Config"]["TargetManageFloor"]
local W=J(x)if W  then
 
local x=w(W)
local S=Y["Config"]["FloorUpgradeConfig"]for x,W in ipairs(x)do
 if not((S["AutoUpgrade"]or S["AutoAll"])) then
 break end
 
local T=W:GetAttribute("PlantLevel")if T  then
 
local x=W:GetAttribute("PlantName")
local t=f6(x)
local H="["..(t..("] "..x))
local C=S["AutoAll"]or S["TargetPlantNames"][H]if C  then
 
local x=S["MaxLevel"]or 10 if T<x  then
 
local x=W:GetAttribute("UpgradePrice")or 0 if y(x) then
 pcall(function()o["Remotes"]["UpgradePlant"]:InvokeServer(W)end
)task["wait"](.1)end
 end
 end
 end
 end
 end
 task["wait"](.1)end
 Y["Flags"]["isUpgradePlantsLoopRunning"]=false end
)end
 
local  function R6()if Y["Flags"]["isFertilizePlantsLoopRunning"] then
 return end
 Y["Flags"]["isFertilizePlantsLoopRunning"]=true task["spawn"](function()while Y["Config"]["FloorFertilizeConfig"]["AutoFertilize"]or Y["Config"]["FloorFertilizeConfig"]["AutoAll"]do
 
local x=Y["Config"]["TargetManageFloor"]
local W=I6()if W  then
 
local S=J(x)
local T=false if S  then
 
local x=w(S)
local t=Y["Config"]["FloorFertilizeConfig"]for x,S in ipairs(x)do
 if not((Y["Config"]["FloorFertilizeConfig"]["AutoFertilize"]or Y["Config"]["FloorFertilizeConfig"]["AutoAll"])) then
 break end
 if S:GetAttribute("PlantLevel")~=nil and not S:GetAttribute("Fertilized") then
 
local x=S:GetAttribute("PlantName")
local H=f6(x)
local C="["..(H..("] "..x))
local M=t["AutoAll"]or t["TargetPlantNames"][C]if M  then
 
local x=i["Character"]and i["Character"]:FindFirstChild("Humanoid")if x  then
 x:EquipTool(W)task["wait"](.1)pcall(function()o["Remotes"]["UseFertilizer"]:FireServer(S)end
)task["wait"](.1)x:UnequipTools()T=true break end
 end
 end
 end
 end
 if T  then
 task["wait"](.1)
else
 task["wait"](2)end
 
else
 task["wait"](2)end
 end
 Y["Flags"]["isFertilizePlantsLoopRunning"]=false end
)end
 
local  function q6(x)
local W=x:Dropdown({["Title"]="* Select Floor",["Values"]={"Floor 1","Floor 2";"Floor 3"};["Value"]="Floor "..tostring(Y["Config"]["TargetManageFloor"]or 1);["Callback"]=function(x)
local W=tonumber(string["match"](x,"%d+"))if W  then
 Y["Config"]["TargetManageFloor"]=W end
 end
})x:Section({["Title"]="Plants";["Opened"]=true})
local T=x:Paragraph({["Title"]="Plant Status",["Desc"]="Loading plant information..."})
local H=x:Dropdown({["Title"]="Select Rarities";["Values"]=I;["Value"]=Q(Y["Config"]["TargetAutoPlantRarities"]or{});["Multi"]=true;["AllowNone"]=true;["Callback"]=function(x)Y["Config"]["TargetAutoPlantRarities"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 Y["Config"]["TargetAutoPlantRarities"][W]=true end
 
elseif x and x~="" then
 Y["Config"]["TargetAutoPlantRarities"][x]=true end
 end
})
local o=x:Toggle({["Title"]="Auto Plant",["Desc"]="Auto plant seeds matching selected rarities";["Value"]=Y["Config"]["AutoPlantByRarity"]or false;["Callback"]=function(x)Y["Config"]["AutoPlantByRarity"]=x if x  then
 J6()end
 end
})x:Button({["Title"]="Remove All Plants",["Callback"]=function()t:Dialog({["Title"]="Confirm Removal",["Content"]="Are you sure you want to remove all plants on the targeted floor?";["Buttons"]={{["Title"]="Confirm",["Callback"]=function()S:Notify({["Title"]="Removing Plants",["Content"]="Removing plants on target floor...",["Duration"]=5})O6()end
},{["Title"]="No"}}})end
})x:Section({["Title"]="PLANT UPGRADE"})
local C=x:Dropdown({["Title"]="Target Upgrade Plants",["Values"]=Y["CachedIndexSeedEntries"];["Value"]=Q(Y["Config"]["FloorUpgradeConfig"]["TargetPlantNames"]or{});["Multi"]=true,["AllowNone"]=true,["Callback"]=function(x)
local W=Y["Config"]["FloorUpgradeConfig"]W["TargetPlantNames"]={}if type(x)=="table" then
 for x,S in pairs(x)do
 W["TargetPlantNames"][S]=true end
 
elseif x and x~="" then
 W["TargetPlantNames"][x]=true end
 end
})
local M=x:Input({["Title"]="Max Upgrade Level";["Desc"]="Limit maximum level for auto upgrade",["Placeholder"]="10";["Value"]=tostring(Y["Config"]["FloorUpgradeConfig"]["MaxLevel"]or 10);["Numeric"]=true,["Finished"]=true;["Callback"]=function(x)
local W=tonumber(x)if not W or W<1  then
 Y["Config"]["FloorUpgradeConfig"]["MaxLevel"]=10 pcall(function()InputMaxUpgradeLevel:Set("10")end
)return end
 W=math["floor"](W)Y["Config"]["FloorUpgradeConfig"]["MaxLevel"]=W end
})
local G=x:Toggle({["Title"]="Auto Upgrade Selected",["Desc"]="Auto upgrade only selected plants",["Value"]=Y["Config"]["FloorUpgradeConfig"]["AutoUpgrade"]or false;["Callback"]=function(x)Y["Config"]["FloorUpgradeConfig"]["AutoUpgrade"]=x if x  then
 Y["Config"]["FloorUpgradeConfig"]["AutoAll"]=false 
local x=Y["UIRefs"]["ToggleAutoAllUpgrade"]if x  then
 pcall(function()x:Set(false)end
)end
 v6()end
 end
})
local i=x:Toggle({["Title"]="Auto Upgrade All";["Desc"]="Auto upgrade all plants on this floor";["Value"]=Y["Config"]["FloorUpgradeConfig"]["AutoAll"]or false,["Callback"]=function(x)Y["Config"]["FloorUpgradeConfig"]["AutoAll"]=x if x  then
 Y["Config"]["FloorUpgradeConfig"]["AutoUpgrade"]=false 
local x=Y["UIRefs"]["ToggleAutoUpgrade"]if x  then
 pcall(function()x:Set(false)end
)end
 v6()end
 end
})x:Section({["Title"]="PLANT FERTILIZATION"})
local L=x:Dropdown({["Title"]="Target Fertilize Plants",["Values"]=Y["CachedIndexSeedEntries"],["Value"]=Q(Y["Config"]["FloorFertilizeConfig"]["TargetPlantNames"]or{}),["Multi"]=true;["AllowNone"]=true;["Callback"]=function(x)
local W=Y["Config"]["FloorFertilizeConfig"]W["TargetPlantNames"]={}if type(x)=="table" then
 for x,S in pairs(x)do
 W["TargetPlantNames"][S]=true end
 
elseif x and x~="" then
 W["TargetPlantNames"][x]=true end
 end
})
local K=x:Dropdown({["Title"]="Fertilizer Type";["Values"]=d;["Value"]=Q(Y["Config"]["FloorFertilizeConfig"]["TargetFertilizerTypes"]or{});["Multi"]=true,["AllowNone"]=true,["Callback"]=function(x)
local W=Y["Config"]["FloorFertilizeConfig"]W["TargetFertilizerTypes"]={}if type(x)=="table" then
 for x,S in pairs(x)do
 W["TargetFertilizerTypes"][S]=true end
 end
 end
})
local b=x:Toggle({["Title"]="Auto Fertilize Selected",["Desc"]="Auto fertilize only selected plants",["Value"]=Y["Config"]["FloorFertilizeConfig"]["AutoFertilize"]or false;["Callback"]=function(x)Y["Config"]["FloorFertilizeConfig"]["AutoFertilize"]=x if x  then
 Y["Config"]["FloorFertilizeConfig"]["AutoAll"]=false 
local x=Y["UIRefs"]["ToggleAutoAllFertilize"]if x  then
 pcall(function()x:Set(false)end
)end
 R6()end
 end
})
local V=x:Toggle({["Title"]="Auto Fertilize All",["Desc"]="Auto fertilize all plants on this floor";["Value"]=Y["Config"]["FloorFertilizeConfig"]["AutoAll"]or false,["Callback"]=function(x)Y["Config"]["FloorFertilizeConfig"]["AutoAll"]=x if x  then
 Y["Config"]["FloorFertilizeConfig"]["AutoFertilize"]=false 
local x=Y["UIRefs"]["ToggleAutoFertilize"]if x  then
 pcall(function()x:Set(false)end
)end
 R6()end
 end
})x:Section({["Title"]="PLANT SPRAY"})
local E=x:Dropdown({["Title"]="Target Spray Plants",["Desc"]="Only sprays on unmutated plants",["Values"]=g;["Value"]=Q(Y["Config"]["FloorSprayConfig"]["TargetPlantNames"]or{});["Multi"]=true,["AllowNone"]=true;["Callback"]=function(x)
local W=Y["Config"]["FloorSprayConfig"]W["TargetPlantNames"]={}if type(x)=="table" then
 for x,S in pairs(x)do
 W["TargetPlantNames"][S]=true end
 
elseif x and x~="" then
 W["TargetPlantNames"][x]=true end
 end
})
local a=x:Dropdown({["Title"]="Select Spray";["Values"]=s,["Value"]=Y["Config"]["FloorSprayConfig"]["TargetSprayType"]or "";["Multi"]=false;["AllowNone"]=true,["Callback"]=function(x)
local W=Y["Config"]["FloorSprayConfig"]if x and x~="" then
 W["TargetSprayType"]=x 
else
 W["TargetSprayType"]=nil end
 end
})x:Button({["Title"]="Run Spray",["Callback"]=function()U6()end
})x:Divider()
local X=x:Dropdown({["Title"]="Target Acid Plants";["Values"]=g;["Value"]=Q(Y["Config"]["FloorSprayConfig"]["TargetAcidPlantNames"]or{}),["Multi"]=true,["AllowNone"]=true;["Callback"]=function(x)
local W=Y["Config"]["FloorSprayConfig"]W["TargetAcidPlantNames"]={}if type(x)=="table" then
 for x,S in pairs(x)do
 W["TargetAcidPlantNames"][S]=true end
 
elseif x and x~="" then
 W["TargetAcidPlantNames"][x]=true end
 end
})
local e=x:Dropdown({["Title"]="Clear Mutations List",["Desc"]="Only clear the selected mutations",["Values"]=X6;["Value"]=Q(Y["Config"]["FloorSprayConfig"]["TargetAcidMutations"]or{});["Multi"]=true;["AllowNone"]=true;["Callback"]=function(x)
local W=Y["Config"]["FloorSprayConfig"]W["TargetAcidMutations"]={}if type(x)=="table" then
 for x,S in pairs(x)do
 W["TargetAcidMutations"][S]=true end
 
elseif x and x~="" then
 W["TargetAcidMutations"][x]=true end
 end
})x:Button({["Title"]="Clear Mutation";["Desc"]="Only sprays Acid Spray on mutated plants to clear mutations";["Callback"]=function()t:Dialog({["Title"]="Confirm Clear Mutation";["Content"]="Are you sure you want to clear mutations for targeted plants on the selected floor?",["Buttons"]={{["Title"]="Confirm",["Callback"]=function()B6()end
},{["Title"]="Cancel"}}})end
})if Y["Config"]["AutoPlantByRarity"] then
 J6()end
 if Y["Config"]["FloorUpgradeConfig"]["AutoUpgrade"]or Y["Config"]["FloorUpgradeConfig"]["AutoAll"] then
 v6()end
 if Y["Config"]["FloorFertilizeConfig"]["AutoFertilize"]or Y["Config"]["FloorFertilizeConfig"]["AutoAll"] then
 R6()end
 return{["DropdownTargetManageFloor"]=W,["ParagraphFloor"]=T,["DropdownFloorPlantRarities"]=H;["ToggleFloorAutoPlant"]=o,["DropdownUpgradePlant"]=C;["InputMaxUpgradeLevel"]=M;["ToggleAutoAllUpgrade"]=i;["ToggleAutoUpgrade"]=G;["DropdownFertilizePlant"]=L;["DropdownFertilizerType"]=K;["ToggleAutoAllFertilize"]=V,["ToggleAutoFertilize"]=b;["DropdownSprayPlant"]=E,["DropdownSprayType"]=a;["DropdownAcidPlant"]=X,["DropdownAcidMutation"]=e}end
 do
 
local x=q6(H["TabFloor"])Y["UIRefs"]["DropdownTargetManageFloor"]=x["DropdownTargetManageFloor"]Y["UIRefs"]["ParagraphFloor"]=x["ParagraphFloor"]Y["UIRefs"]["DropdownFloorPlantRarities"]=x["DropdownFloorPlantRarities"]Y["UIRefs"]["ToggleFloorAutoPlant"]=x["ToggleFloorAutoPlant"]Y["UIRefs"]["DropdownUpgradePlant"]=x["DropdownUpgradePlant"]Y["UIRefs"]["InputMaxUpgradeLevel"]=x["InputMaxUpgradeLevel"]Y["UIRefs"]["ToggleAutoAllUpgrade"]=x["ToggleAutoAllUpgrade"]Y["UIRefs"]["ToggleAutoUpgrade"]=x["ToggleAutoUpgrade"]Y["UIRefs"]["DropdownFertilizePlant"]=x["DropdownFertilizePlant"]Y["UIRefs"]["DropdownFertilizerType"]=x["DropdownFertilizerType"]Y["UIRefs"]["ToggleAutoAllFertilize"]=x["ToggleAutoAllFertilize"]Y["UIRefs"]["ToggleAutoFertilize"]=x["ToggleAutoFertilize"]Y["UIRefs"]["DropdownSprayPlant"]=x["DropdownSprayPlant"]Y["UIRefs"]["DropdownSprayType"]=x["DropdownSprayType"]Y["UIRefs"]["DropdownAcidPlant"]=x["DropdownAcidPlant"]Y["UIRefs"]["DropdownAcidMutation"]=x["DropdownAcidMutation"]
local  function W(x)task["spawn"](function()while true do
 task["wait"](1.5)
local W=Y["Config"]["TargetManageFloor"]or 1 
local S=""
local T=O(W)for x,W in ipairs(T)do
 if W["PlantName"]and W["PlantName"]~="" then
 S=S..string["format"]("- %s | Lvl %d | %s | Fertilized: %s\n",W["PlantName"],W["PlantLevel"],W["PlantMutation"],tostring(W["Fertilized"]))end
 end
 if S=="" then
 S="No plants planted."end
 if x  then
 pcall(function()x:SetDesc(S)end
)end
 end
 end
)end
 W(Y["UIRefs"]["ParagraphFloor"])end
 H["TabFarming"]:Section({["Title"]="PLOT POWERUPS"})
local  function xB()if Y["Flags"]["isUpgradePowerupsLoopRunning"]or not Y["Config"]["AutoUpgradePowerups"] then
 return end
 Y["Flags"]["isUpgradePowerupsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoUpgradePowerups"]do
 
local x=Z()for W,S in pairs(Y["Config"]["TargetPowerups"])do
 if not Y["Config"]["AutoUpgradePowerups"] then
 break end
 
local T=D[W]["Type"]if T=="plot" then
 
local S=1 while true do
 if not Y["Config"]["AutoUpgradePowerups"] then
 break end
 
local T=t6(W,S)if T==nil  then
 break end
 if T=="MAX" then
 break end
 if y(T) then
 if not Y["Config"]["AutoUpgradePowerups"] then
 break end
 n(W,S)if not Y["Config"]["AutoUpgradePowerups"] then
 break end
 task["wait"](.5)if not Y["Config"]["SkipMoneyCheck"] then
 x=Z()end
 break 
else
 break end
 end
 
elseif T=="seedluck" then
 
local S=t6(W,1)if S and(S~="MAX"and y(S)) then
 if not Y["Config"]["AutoUpgradePowerups"] then
 break end
 m()task["wait"](.5)if not Y["Config"]["SkipMoneyCheck"] then
 x=Z()end
 end
 
elseif T=="seedrolls" then
 
local S=t6(W,1)if S and(S~="MAX"and y(S)) then
 if not Y["Config"]["AutoUpgradePowerups"] then
 break end
 F()task["wait"](.5)if not Y["Config"]["SkipMoneyCheck"] then
 x=Z()end
 end
 end
 end
 if not Y["Config"]["AutoUpgradePowerups"] then
 break end
 task["wait"](2)end
 Y["Flags"]["isUpgradePowerupsLoopRunning"]=false end
)end
 Y["UIRefs"]["DropdownPowerupsToUpgrade"]=H["TabFarming"]:Dropdown({["Title"]="Select Powerups",["Values"]=h,["Value"]=Q(Y["Config"]["TargetPowerups"]or{}),["Multi"]=true,["AllowNone"]=true,["Callback"]=function(x)Y["Config"]["TargetPowerups"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 Y["Config"]["TargetPowerups"][W]=true end
 
elseif x~="" then
 Y["Config"]["TargetPowerups"][x]=true end
 end
})Y["UIRefs"]["ToggleAutoUpgradePowerups"]=H["TabFarming"]:Toggle({["Title"]="Auto Upgrade Powerups";["Value"]=Y["Config"]["AutoUpgradePowerups"]or false,["Callback"]=function(x)Y["Config"]["AutoUpgradePowerups"]=x xB()end
})if Y["Config"]["AutoUpgradePowerups"] then
 xB()end
 H["TabShop"]:Section({["Title"]="SEED GACHA (ROLL & BUY)"})
local  function WB(x)if x~="all" then
 Y["Config"]["AutoRollAndBuyAll"]=false pcall(function()Y["UIRefs"]["ToggleAutoRollBuyAll"]:Set(false)end
)end
 if x~="selected" then
 Y["Config"]["AutoRollAndBuySelected"]=false pcall(function()Y["UIRefs"]["ToggleAutoRollBuySelected"]:Set(false)end
)end
 if x~="rarity" then
 Y["Config"]["AutoRollAndBuyByRarity"]=false pcall(function()Y["UIRefs"]["ToggleAutoRollBuyByRarity"]:Set(false)end
)end
 end
 
local  function SB()if Y["Flags"]["isBuyAllGearsLoopRunning"]or not Y["Config"]["AutoBuyAllGears"] then
 return end
 Y["Flags"]["isBuyAllGearsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoBuyAllGears"]do
 task["wait"](.1)for x,W in pairs(b)do
 if not Y["Config"]["AutoBuyAllGears"] then
 break end
 if C6(W)>0  then
 pcall(function()Y6(W)end
)task["wait"](.1)end
 end
 end
 Y["Flags"]["isBuyAllGearsLoopRunning"]=false end
)end
 
local  function TB()if Y["Flags"]["isBuySelectedGearsLoopRunning"]or not Y["Config"]["AutoBuySelectedGears"] then
 return end
 Y["Flags"]["isBuySelectedGearsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoBuySelectedGears"]do
 task["wait"](.1)if#selectedGearNamesToBuy>0  then
 for x,W in pairs(selectedGearNamesToBuy)do
 if not Y["Config"]["AutoBuySelectedGears"] then
 break end
 if C6(W)>0  then
 pcall(function()Y6(W)end
)task["wait"](.1)end
 end
 end
 end
 Y["Flags"]["isBuySelectedGearsLoopRunning"]=false end
)end
 
local  function tB()if Y["Flags"]["isUnlockEggSlotsLoopRunning"]or not Y["Config"]["AutoUnlockEggSlots"] then
 return end
 Y["Flags"]["isUnlockEggSlotsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoUnlockEggSlots"]do
 
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("EggShop")and o["Remotes"]["EggShop"]:FindFirstChild("Transaction"))if x  then
 
local W=Z()
local S=Q6()for S,T in ipairs(S)do
 if not Y["Config"]["AutoUnlockEggSlots"] then
 break end
 
local t=T["EggSlotNumber"]if not Y["Config"]["SessionUnlockedEggSlots"][t]and y(T["UnlockPrice"],"Egg Slot","Slot "..tostring(t)) then
 
local S=pcall(function()x:InvokeServer("UnlockSlot",t)end
)if S  then
 Y["Config"]["SessionUnlockedEggSlots"][t]=true task["wait"](1.5)if not Y["Config"]["SkipMoneyCheck"] then
 W=Z()end
 end
 end
 end
 end
 task["wait"](5)end
 Y["Flags"]["isUnlockEggSlotsLoopRunning"]=false end
)end
 Y["UIRefs"]["ToggleAutoRollBuyAll"]=H["TabShop"]:Toggle({["Title"]="Auto Roll & Buy ALL Seeds";["Value"]=Y["Config"]["AutoRollAndBuyAll"]or false,["Callback"]=function(x)Y["Config"]["AutoRollAndBuyAll"]=x if x  then
 WB("all")n6()end
 end
})Y["UIRefs"]["DropdownGachaSeeds"]=H["TabShop"]:Dropdown({["Title"]="Select Seeds";["Values"]=Y["CachedIndexSeedEntries"];["Value"]=Q(Y["Config"]["TargetGachaSeeds"]or{});["Multi"]=true;["AllowNone"]=true,["Callback"]=function(x)Y["Config"]["TargetGachaSeeds"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 
local S=string["match"](W,"%] (.*)")or W Y["Config"]["TargetGachaSeeds"][S]=true end
 
elseif x and x~="" then
 
local W=string["match"](x,"%] (.*)")or x Y["Config"]["TargetGachaSeeds"][W]=true end
 end
})Y["UIRefs"]["ToggleAutoRollBuySelected"]=H["TabShop"]:Toggle({["Title"]="Auto Buy Selected Seeds";["Value"]=Y["Config"]["AutoRollAndBuySelected"]or false;["Callback"]=function(x)Y["Config"]["AutoRollAndBuySelected"]=x if x  then
 WB("selected")n6()end
 end
})Y["UIRefs"]["DropdownGachaRarities"]=H["TabShop"]:Dropdown({["Title"]="Select Rarities",["Values"]=I;["Value"]=Q(Y["Config"]["TargetGachaRarities"]or{}),["Multi"]=true;["AllowNone"]=true,["Callback"]=function(x)Y["Config"]["TargetGachaRarities"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 Y["Config"]["TargetGachaRarities"][W]=true end
 
elseif x and x~="" then
 Y["Config"]["TargetGachaRarities"][x]=true end
 end
})Y["UIRefs"]["ToggleAutoRollBuyByRarity"]=H["TabShop"]:Toggle({["Title"]="Auto Buy Selected Rarities",["Value"]=Y["Config"]["AutoRollAndBuyByRarity"]or false;["Callback"]=function(x)Y["Config"]["AutoRollAndBuyByRarity"]=x if x  then
 WB("rarity")n6()end
 end
})H["TabShop"]:Section({["Title"]="GEAR SHOP"})
local HB={}Y["UIRefs"]["ToggleBuyAllGears"]=H["TabShop"]:Toggle({["Title"]="Auto Buy All Available Gears",["Value"]=Y["Config"]["AutoBuyAllGears"]or false,["Callback"]=function(x)Y["Config"]["AutoBuyAllGears"]=x if x and Y["UIRefs"]["ToggleBuySelectedGears"] then
 pcall(function()Y["UIRefs"]["ToggleBuySelectedGears"]:Set(false)end
)end
 SB()end
})Y["UIRefs"]["ToggleBuySelectedGears"]=H["TabShop"]:Toggle({["Title"]="Auto Buy Selected Gears";["Value"]=Y["Config"]["AutoBuySelectedGears"]or false,["Callback"]=function(x)Y["Config"]["AutoBuySelectedGears"]=x if x and Y["UIRefs"]["ToggleBuyAllGears"] then
 pcall(function()Y["UIRefs"]["ToggleBuyAllGears"]:Set(false)end
)end
 TB()end
})Y["UIRefs"]["DropdownGearsToBuy"]=H["TabShop"]:Dropdown({["Title"]="Select Gears to Buy";["Values"]=b;["Value"]=HB or{};["Multi"]=true;["AllowNone"]=true,["Callback"]=function(x)HB={}if type(x)=="table" then
 HB=x 
elseif x and x~="" then
 HB={x}end
 end
})H["TabShop"]:Section({["Title"]="EGG SHOP"})
local  function oB()if Y["Flags"]["isEggShopBuyLoopRunning"] then
 return end
 if not Y["Config"]["AutoBuySelectedEggs"]and not Y["Config"]["AutoBuyAllEggs"] then
 return end
 Y["Flags"]["isEggShopBuyLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoBuySelectedEggs"]or Y["Config"]["AutoBuyAllEggs"]do
 
local x=V6()for x,W in ipairs(x)do
 if not Y["Config"]["AutoBuySelectedEggs"]and not Y["Config"]["AutoBuyAllEggs"] then
 break end
 
local S=Y["Config"]["AutoBuyAllEggs"]or(Y["Config"]["AutoBuySelectedEggs"]and Y["Config"]["TargetEggShopEggs"][W["Name"]]==true)if S  then
 
local x=d6(W["Name"])if y(x,"Egg Shop",W["Name"]) then
 s6(W)end
 task["wait"](.2)end
 end
 task["wait"](1)end
 Y["Flags"]["isEggShopBuyLoopRunning"]=false end
)end
 Y["UIRefs"]["ToggleAutoUnlockEggSlots"]=H["TabShop"]:Toggle({["Title"]="Auto Unlock Egg Slots",["Value"]=Y["Config"]["AutoUnlockEggSlots"]or false;["Callback"]=function(x)Y["Config"]["AutoUnlockEggSlots"]=x tB()end
})Y["UIRefs"]["DropdownEggShopEggs"]=H["TabShop"]:Dropdown({["Title"]="Select Eggs to Buy";["Values"]=b6()or{};["Value"]=Q(Y["Config"]["TargetEggShopEggs"]or{}),["Multi"]=true;["AllowNone"]=true,["Callback"]=function(x)Y["Config"]["TargetEggShopEggs"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 Y["Config"]["TargetEggShopEggs"][W]=true end
 
elseif x~="" then
 Y["Config"]["TargetEggShopEggs"][x]=true end
 end
})H["TabShop"]:Button({["Title"]="Refresh Egg List";["Callback"]=function()pcall(function()Y["UIRefs"]["DropdownEggShopEggs"]:Refresh(b6())end
)S:Notify({["Title"]="Egg Shop";["Content"]="Egg list refreshed.",["Duration"]=2})end
})Y["UIRefs"]["ToggleAutoBuySelectedEggs"]=H["TabShop"]:Toggle({["Title"]="Auto Buy Selected Eggs",["Value"]=Y["Config"]["AutoBuySelectedEggs"]or false;["Callback"]=function(x)Y["Config"]["AutoBuySelectedEggs"]=x if x and Y["UIRefs"]["ToggleAutoBuyAllEggs"] then
 pcall(function()Y["UIRefs"]["ToggleAutoBuyAllEggs"]:Set(false)end
)end
 oB()end
})Y["UIRefs"]["ToggleAutoBuyAllEggs"]=H["TabShop"]:Toggle({["Title"]="Auto Buy All Available Eggs";["Value"]=Y["Config"]["AutoBuyAllEggs"]or false,["Callback"]=function(x)Y["Config"]["AutoBuyAllEggs"]=x if x and Y["UIRefs"]["ToggleAutoBuySelectedEggs"] then
 pcall(function()Y["UIRefs"]["ToggleAutoBuySelectedEggs"]:Set(false)end
)end
 oB()end
})if Y["Config"]["AutoRollAndBuyAll"]or Y["Config"]["AutoRollAndBuySelected"]or Y["Config"]["AutoRollAndBuyByRarity"] then
 n6()end
 if Y["Config"]["AutoBuyAllGears"] then
 SB()end
 if Y["Config"]["AutoBuySelectedGears"] then
 TB()end
 if Y["Config"]["AutoUnlockEggSlots"] then
 tB()end
 if Y["Config"]["AutoBuySelectedEggs"]or Y["Config"]["AutoBuyAllEggs"] then
 oB()end
 H["TabShop"]:Section({["Title"]="LIVE SHOP STOCK"})
local CB=H["TabShop"]:Paragraph({["Title"]="Current Available Items",["Desc"]="Loading shop stock..."})
local  function MB()pcall(function()CB:SetDesc(i6())end
)end
 H["TabShop"]:Button({["Title"]="Refresh Stock Info",["Callback"]=function()MB()S:Notify({["Title"]="Shop Stock";["Content"]="Stock info refreshed.",["Duration"]=2})end
})task["spawn"](function()while task["wait"](10)do
 MB()end
 end
)MB()
local GB=15 
local  function iB()
local x=i:FindFirstChild("PlayerGui")if not x  then
 return false end
 
local W=x:FindFirstChild("MainUI")
local S=W and W:FindFirstChild("Menus")
local T=S and S:FindFirstChild("SeedCollectorFrame")
local t=T and T:FindFirstChild("Main")
local H=t and t:FindFirstChild("Frame")
local o=H and H:FindFirstChild("ProgressBarDaily")
local C=o and o:FindFirstChild("Progress")if not C or not C:IsA("TextLabel") then
 return false end
 
local M=C["Text"]if not M or M=="" then
 return false end
 
local G=string["gsub"](M,",","")
local Y,L=string["match"](G,"(%d+)%s*/%s*(%d+)")return Y and(L and tonumber(Y)>=tonumber(L))end
 H["TabEvents"]:Section({["Title"]="WORLD EVENTS"})
local  function YB()
local x=i["Character"]if x  then
 for x,W in ipairs(x:GetChildren())do
 if W:IsA("Tool")and string["find"](string["lower"](W["Name"]),"honey token",1,true) then
 return true end
 end
 end
 
local W=i:FindFirstChild("Backpack")if W  then
 for x,W in ipairs(W:GetChildren())do
 if W:IsA("Tool")and string["find"](string["lower"](W["Name"]),"honey token",1,true) then
 return true end
 end
 end
 return false end
 
local LB=nil 
local KB=nil 
local  function QB()if LB and LB["Parent"] then
 return LB,KB end
 LB=nil KB=nil 
local x=workspace:FindFirstChild("InteractiveEvents")and(workspace["InteractiveEvents"]:FindFirstChild("QueenBee")and(workspace["InteractiveEvents"]["QueenBee"]:FindFirstChild("HoneyJarMachine")and workspace["InteractiveEvents"]["QueenBee"]["HoneyJarMachine"]:FindFirstChild("Honey Jar Machine")))
local W=x and x:FindFirstChild("InsertPrompt")if not W  then
 return nil,nil end
 
local S=W["Parent"]if S and S:IsA("Attachment") then
 S=S["Parent"]end
 if not S  then
 return nil,nil end
 LB=W KB=S["CFrame"]+Vector3["new"](0,3,0)return LB,KB end
 
local  function bB()if Y["Flags"]["isPlantRushLoopRunning"]or not Y["Config"]["AutoPlantRush"] then
 return end
 Y["Flags"]["isPlantRushLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoPlantRush"]do
 
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("PlantRush")and o["Remotes"]["PlantRush"]:FindFirstChild("Shoot"))
local W=i["Character"]and i["Character"]:FindFirstChild("HumanoidRootPart")
local S=workspace:FindFirstChild("InteractiveEvents")and(workspace["InteractiveEvents"]:FindFirstChild("PlantRush")and workspace["InteractiveEvents"]["PlantRush"]:FindFirstChild("Runtime"))if x and(W and S) then
 
local T=W["Position"]+Vector3["new"](0,1.5,0)for W,S in ipairs(S:GetChildren())do
 if not Y["Config"]["AutoPlantRush"] then
 break end
 
local t=S:IsA("Model")and S["PrimaryPart"]if t  then
 
local W=t["Position"]pcall(function()x:FireServer(T,((W-T))["Unit"],W)end
)task["wait"](.05)end
 end
 end
 task["wait"](.1)end
 Y["Flags"]["isPlantRushLoopRunning"]=false end
)end
 
local  function dB()if Y["Flags"]["isClaimPlantRushBossDropLoopRunning"]or not Y["Config"]["AutoClaimPlantRushBossDrop"] then
 return end
 Y["Flags"]["isClaimPlantRushBossDropLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoClaimPlantRushBossDrop"]do
 pcall(function()
local x=i["Character"]and i["Character"]:FindFirstChild("HumanoidRootPart")if x  then
 for W,T in ipairs(workspace:GetChildren())do
 if not Y["Config"]["AutoClaimPlantRushBossDrop"] then
 break end
 if string["find"](T["Name"],"PlantRushLocalDrop_",1,true) then
 
local W=T:FindFirstChildWhichIsA("ProximityPrompt",true)if W  then
 
local t=T:IsA("BasePart")and T or T:FindFirstChildWhichIsA("BasePart",true)if t  then
 x["CFrame"]=t["CFrame"]task["wait"](.1)if fireproximityprompt and Y["Config"]["AutoClaimPlantRushBossDrop"] then
 fireproximityprompt(W)task["wait"](.2)S:Notify({["Title"]="Plant Rush Boss Drop Claimed",["Content"]="Claimed: "..tostring(T["Name"]),["Duration"]=3})end
 end
 end
 end
 end
 end
 end
)task["wait"](.5)end
 Y["Flags"]["isClaimPlantRushBossDropLoopRunning"]=false end
)end
 
local  function VB()if Y["Flags"]["isCollectHoneycombLoopRunning"]or not Y["Config"]["AutoCollectQueenBeeHoneycomb"] then
 return end
 Y["Flags"]["isCollectHoneycombLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoCollectQueenBeeHoneycomb"]do
 pcall(function()
local x=i["Character"]and i["Character"]:FindFirstChild("HumanoidRootPart")
local W=workspace:FindFirstChild("InteractiveEvents")and(workspace:FindFirstChild("QueenBee",true)and workspace["InteractiveEvents"]["QueenBee"]:FindFirstChild("RuntimeHoneycombs"))if W and x  then
 for W,S in pairs(W:GetChildren())do
 if not Y["Config"]["AutoCollectQueenBeeHoneycomb"] then
 break end
 
local T=S:FindFirstChildWhichIsA("ProximityPrompt",true)if T  then
 
local W=S:IsA("BasePart")and S or(S:IsA("Model")and((S["PrimaryPart"]or S:FindFirstChildWhichIsA("BasePart",true))))if W  then
 x["CFrame"]=W["CFrame"]task["wait"](.2)if fireproximityprompt and Y["Config"]["AutoCollectQueenBeeHoneycomb"] then
 fireproximityprompt(T)task["wait"](.2)end
 end
 end
 end
 end
 end
)task["wait"](1)end
 Y["Flags"]["isCollectHoneycombLoopRunning"]=false end
)end
 
local  function sB()if Y["Flags"]["isSubmitQueenBeeHoneyTokenLoopRunning"]or not Y["Config"]["AutoSubmitQueenBeeHoneyToken"] then
 return end
 Y["Flags"]["isSubmitQueenBeeHoneyTokenLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoSubmitQueenBeeHoneyToken"]do
 if not YB() then
 task["wait"](2)
else
 
local x,W=QB()if x and W  then
 
local S=i["Character"]and i["Character"]:FindFirstChild("HumanoidRootPart")if S  then
 S["CFrame"]=W task["wait"](.5)if fireproximityprompt  then
 fireproximityprompt(x)task["wait"](.2)end
 end
 
else
 task["wait"](2)end
 end
 task["wait"](1)end
 Y["Flags"]["isSubmitQueenBeeHoneyTokenLoopRunning"]=false end
)end
 Y["UIRefs"]["ToggleAutoPlantRush"]=H["TabEvents"]:Toggle({["Title"]="Auto Shoot Plant Rush";["Value"]=Y["Config"]["AutoPlantRush"]or false;["Callback"]=function(x)Y["Config"]["AutoPlantRush"]=x bB()end
})Y["UIRefs"]["ToggleAutoClaimPlantRushBossDrop"]=H["TabEvents"]:Toggle({["Title"]="Auto Claim Plant Rush Boss Drops";["Value"]=Y["Config"]["AutoClaimPlantRushBossDrop"]or false;["Callback"]=function(x)Y["Config"]["AutoClaimPlantRushBossDrop"]=x dB()end
})Y["UIRefs"]["ToggleAutoCollectQueenBeeHoneycomb"]=H["TabEvents"]:Toggle({["Title"]="Auto Collect Queen Bee Honeycomb";["Value"]=Y["Config"]["AutoCollectQueenBeeHoneycomb"]or false,["Callback"]=function(x)Y["Config"]["AutoCollectQueenBeeHoneycomb"]=x VB()end
})Y["UIRefs"]["ToggleAutoSubmitQueenBeeHoneyToken"]=H["TabEvents"]:Toggle({["Title"]="Auto Submit Honey Token";["Desc"]="Submit honey tokens to the Jar Machine (Honey Pot)",["Value"]=Y["Config"]["AutoSubmitQueenBeeHoneyToken"]or false;["Callback"]=function(x)Y["Config"]["AutoSubmitQueenBeeHoneyToken"]=x sB()end
})H["TabEvents"]:Section({["Title"]="SEED COLLECTOR"})Y["UIRefs"]["DropdownSeedCollectorSubmitSeeds"]=H["TabEvents"]:Dropdown({["Title"]="Select Seeds";["Values"]=Y["CachedIndexSeedEntries"];["Value"]=Q(Y["Config"]["TargetSeedCollectorSubmitSeeds"]or{}),["Multi"]=true;["Callback"]=function(x)Y["Config"]["TargetSeedCollectorSubmitSeeds"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 
local S=string["match"](W,"%] (.*)")or W Y["Config"]["TargetSeedCollectorSubmitSeeds"][S]=true end
 
elseif x~="" then
 
local W=string["match"](x,"%] (.*)")or x Y["Config"]["TargetSeedCollectorSubmitSeeds"][W]=true end
 end
})H["TabEvents"]:Button({["Title"]="Clear Seed Collector Targets",["Callback"]=function()Y["Config"]["TargetSeedCollectorSubmitSeeds"]={}pcall(function()Y["UIRefs"]["DropdownSeedCollectorSubmitSeeds"]:Select({})end
)S:Notify({["Title"]="Seed Collector",["Content"]="Seed collector targets cleared.";["Duration"]=2})end
})
local  function EB(x)
local W=workspace:FindFirstChild("SeedCollector")
local S=W and W:FindFirstChild("Attachment")
local T=S and S:FindFirstChild("SubmitSeed")if not T  then
 return false end
 
local t={}if x  then
 for x,W in ipairs({i["Backpack"],i["Character"]})do
 if W  then
 for x,W in pairs(W:GetChildren())do
 if W:IsA("Tool")and W:GetAttribute("InventoryCategory")=="Seeds" then
 
local x=W:GetAttribute("trueName")if x  then
 t[x]=true end
 end
 end
 end
 end
 
else
 t=Y["Config"]["TargetSeedCollectorSubmitSeeds"]end
 
local H=false for x,W in pairs(t)do
 if not Y["Config"]["AutoSubmitSeedToCollector"]and not Y["Config"]["AutoSubmitAllSeedsToCollector"] then
 break end
 if iB() then
 break end
 
local t=a6(x)if t  then
 
local x=i["Character"]and i["Character"]:FindFirstChild("HumanoidRootPart")if x  then
 
local W=((x["Position"]-S["WorldCFrame"]["Position"]))["Magnitude"]if W>GB  then
 x["CFrame"]=S["WorldCFrame"]task["wait"](1)end
 if fireproximityprompt  then
 fireproximityprompt(T)task["wait"](.1)H=true if iB() then
 break end
 end
 end
 end
 end
 return H end
 
local  function aB()if Y["Flags"]["isSeedCollectorSubmitLoopRunning"] then
 return end
 if not Y["Config"]["AutoSubmitSeedToCollector"]and not Y["Config"]["AutoSubmitAllSeedsToCollector"] then
 return end
 Y["Flags"]["isSeedCollectorSubmitLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoSubmitSeedToCollector"]or Y["Config"]["AutoSubmitAllSeedsToCollector"]do
 if iB() then
 task["wait"](10)
else
 
local x=EB(Y["Config"]["AutoSubmitAllSeedsToCollector"])if not x  then
 task["wait"](2)end
 end
 task["wait"](1)end
 Y["Flags"]["isSeedCollectorSubmitLoopRunning"]=false end
)end
 Y["UIRefs"]["ToggleAutoSubmitSeedToCollector"]=H["TabEvents"]:Toggle({["Title"]="Auto Submit Selected";["Desc"]="Automatically submit selected seeds to the collector";["Value"]=Y["Config"]["AutoSubmitSeedToCollector"]or false;["Callback"]=function(x)Y["Config"]["AutoSubmitSeedToCollector"]=x if x and Y["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"] then
 pcall(function()Y["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]:Set(false)end
)end
 aB()end
})Y["UIRefs"]["ToggleAutoSubmitAllSeedsToCollector"]=H["TabEvents"]:Toggle({["Title"]="Auto Submit All";["Desc"]="Automatically submit all seeds, ignoring filter";["Value"]=Y["Config"]["AutoSubmitAllSeedsToCollector"]or false;["Callback"]=function(x)Y["Config"]["AutoSubmitAllSeedsToCollector"]=x if x and Y["UIRefs"]["ToggleAutoSubmitSeedToCollector"] then
 pcall(function()Y["UIRefs"]["ToggleAutoSubmitSeedToCollector"]:Set(false)end
)end
 aB()end
})H["TabRewards"]:Section({["Title"]="DAILY REWARDS"})
local  function gB()if Y["Flags"]["isClaimDailyRewardLoopRunning"]or not Y["Config"]["AutoClaimDailyReward"] then
 return end
 Y["Flags"]["isClaimDailyRewardLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoClaimDailyReward"]do
 pcall(function()if o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("ClaimDailyReward") then
 o["Remotes"]["ClaimDailyReward"]:InvokeServer()end
 end
)task["wait"](60)end
 Y["Flags"]["isClaimDailyRewardLoopRunning"]=false end
)end
 
local  function XB()if Y["Flags"]["isClaimPlaytimeRewardLoopRunning"]or not Y["Config"]["AutoClaimPlaytimeReward"] then
 return end
 Y["Flags"]["isClaimPlaytimeRewardLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoClaimPlaytimeReward"]do
 pcall(function()
local x=o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("ClaimPlaytimeReward")if x  then
 for W=1,15,1 do
 if not Y["Config"]["AutoClaimPlaytimeReward"] then
 break end
 x:InvokeServer(W)task["wait"](.2)end
 end
 end
)task["wait"](10)end
 Y["Flags"]["isClaimPlaytimeRewardLoopRunning"]=false end
)end
 
local  function IB()if Y["Flags"]["isSpinWheelLoopRunning"]or not Y["Config"]["AutoSpinWheel"] then
 return end
 Y["Flags"]["isSpinWheelLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoSpinWheel"]do
 pcall(function()
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("SpinWheel")and o["Remotes"]["SpinWheel"]:FindFirstChild("RequestSpin"))if x  then
 x:InvokeServer(false)end
 end
)task["wait"](5)end
 Y["Flags"]["isSpinWheelLoopRunning"]=false end
)end
 Y["UIRefs"]["ToggleAutoClaimDailyReward"]=H["TabRewards"]:Toggle({["Title"]="Auto Claim Daily Reward";["Value"]=Y["Config"]["AutoClaimDailyReward"]or false,["Callback"]=function(x)Y["Config"]["AutoClaimDailyReward"]=x gB()end
})Y["UIRefs"]["ToggleAutoClaimPlaytimeReward"]=H["TabRewards"]:Toggle({["Title"]="Auto Claim Playtime Reward",["Value"]=Y["Config"]["AutoClaimPlaytimeReward"]or false;["Callback"]=function(x)Y["Config"]["AutoClaimPlaytimeReward"]=x XB()end
})H["TabRewards"]:Section({["Title"]="SPIN WHEEL (WIP)"})Y["UIRefs"]["ToggleAutoSpinWheel"]=H["TabRewards"]:Toggle({["Title"]="Auto Spin Wheel";["Value"]=Y["Config"]["AutoSpinWheel"]or false;["Callback"]=function(x)Y["Config"]["AutoSpinWheel"]=x if x and not Y["Flags"]["isSpinWheelLoopRunning"] then
 Y["Flags"]["isSpinWheelLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoSpinWheel"]do
 pcall(function()
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("SpinWheel")and o["Remotes"]["SpinWheel"]:FindFirstChild("RequestSpin"))if x  then
 x:InvokeServer(false)end
 end
)task["wait"](5)end
 Y["Flags"]["isSpinWheelLoopRunning"]=false end
)end
 end
})
local eB="Pet_"..(i["Name"].."_")
local  function rB(x,W)if not x or not W or next(W)==nil  then
 return false end
 
local S=string["lower"](x)for x,W in pairs(W)do
 if W  then
 
local W=string["lower"](x)if string["find"](S,W,1,true) then
 return true end
 end
 end
 return false end
 
local  function DB(x)if not x  then
 return nil end
 
local W=x:GetAttribute("PetKey")or x:GetAttribute("petKey")
local S=x:GetAttribute("TrueName")or x:GetAttribute("trueName")or x:GetAttribute("PetName")or x:GetAttribute("petName")or x["Name"]
local T=tonumber(x:GetAttribute("PetLevel"))or tonumber(x:GetAttribute("petLevel"))or tonumber(x:GetAttribute("Level"))or tonumber(x:GetAttribute("level"))or 1 
local t=tonumber(x:GetAttribute("EarningsMultiplier"))or tonumber(x:GetAttribute("earningsMultiplier"))or tonumber(x:GetAttribute("Earnings"))or tonumber(x:GetAttribute("earnings"))or 0 
local H=tonumber(x:GetAttribute("FloorIndex"))or tonumber(x:GetAttribute("floorIndex"))
local o=tonumber(x:GetAttribute("SlotIndex"))or tonumber(x:GetAttribute("slotIndex"))
local C=x:GetAttribute("PetBoosted")or x:GetAttribute("petBoosted")
local M=tonumber(x:GetAttribute("PetBoostEndTimestamp"))or tonumber(x:GetAttribute("petBoostEndTimestamp"))
local G=tonumber(x:GetAttribute("PetBoostMultiplier"))or tonumber(x:GetAttribute("petBoostMultiplier"))
local i=x:GetAttribute("PetOwner")or x:GetAttribute("petOwner")
local Y=x:GetAttribute("PetSize")or x:GetAttribute("petSize")
local L=x:GetAttribute("RBX_ReimportId")or x:GetAttribute("rbx_reimportid")return{["instance"]=x;["petKey"]=W,["petName"]=S;["level"]=T;["earnings"]=t,["floorIndex"]=H;["slotIndex"]=o,["petBoosted"]=C;["petBoostEndTimestamp"]=M;["petBoostMultiplier"]=G;["petOwner"]=i,["petSize"]=Y;["rbxReimportId"]=L}end
 
local  function hB()
local x={}
local W=P()if not W  then
 return x end
 for W,S in ipairs(W:GetChildren())do
 if string["sub"](S["Name"],1,4)=="Pet_" then
 
local W=DB(S)if W  then
 if not W["petKey"] then
 
local x=string["split"](S["Name"],"_")W["petKey"]=x[#x]end
 table["insert"](x,W)end
 end
 end
 return x end
 
local  function UB()
local x={}
local W={}
local  function S(S)if not S  then
 return end
 for S,T in ipairs(S:GetChildren())do
 if T:IsA("Tool") then
 
local S=DB(T)if S and(S["petKey"]and not W[S["petKey"]]) then
 W[S["petKey"]]=true table["insert"](x,S)end
 end
 end
 end
 S(i["Character"])S(i:FindFirstChild("Backpack"))return x end
 
local  function BB()
local x={}
local W={}for S,T in ipairs(hB())do
 if T["petKey"]and not W[T["petKey"]] then
 W[T["petKey"]]=true table["insert"](x,T)end
 end
 for S,T in ipairs(UB())do
 if T["petKey"]and not W[T["petKey"]] then
 W[T["petKey"]]=true table["insert"](x,T)end
 end
 return x end
 
local  function fB(x)
local W=i["Character"]if W  then
 for W,S in ipairs(W:GetChildren())do
 if S:IsA("Tool")and string["find"](S["Name"],x,1,true) then
 return S end
 end
 end
 
local S=i:FindFirstChild("Backpack")if S  then
 for W,S in ipairs(S:GetChildren())do
 if S:IsA("Tool")and string["find"](S["Name"],x,1,true) then
 return S end
 end
 end
 return nil end
 
local  function AB()
local x={}
local W=o:FindFirstChild("GearStocks")and o["GearStocks"]:FindFirstChild(i["Name"])if not W  then
 return x end
 for W,S in ipairs(W:GetChildren())do
 if string["find"](S["Name"],"Treat",1,true) then
 table["insert"](x,S["Name"])end
 end
 table["sort"](x)return x end
 
local  function pB()
local x={}
local W=o:FindFirstChild("Assets")and o["Assets"]:FindFirstChild("Pets")if not W  then
 return x end
 for W,S in ipairs(W:GetChildren())do
 table["insert"](x,S["Name"])end
 table["sort"](x)return x end
 H["TabPets"]:Section({["Title"]="PET MANAGEMENT"})
local jB=3 
local  function ZB()
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Pets")and o["Remotes"]["Pets"]:FindFirstChild("UnequipPet"))if not x  then
 return false end
 
local W=hB()for W,S in ipairs(W)do
 for W=1,10,1 do
 pcall(function()x:FireServer(S["petKey"])end
)task["wait"](.1)end
 end
 return true end
 H["TabPets"]:Button({["Title"]="Unequip All Pets";["Callback"]=function()
local x=hB()if#x==0  then
 S:Notify({["Title"]="Pets";["Content"]="No pets found on plot.";["Duration"]=2})return end
 task["spawn"](function()if not ZB() then
 S:Notify({["Title"]="Pets";["Content"]="UnequipPet remote not found.";["Duration"]=3})return end
 S:Notify({["Title"]="Pets",["Content"]="Unequipped "..(#x.." pets."),["Duration"]=3})end
)end
})H["TabPets"]:Button({["Title"]="Equip 3 Best Earnings Multiplier Pets",["Callback"]=function()task["spawn"](function()
local x=UB()if#x==0  then
 S:Notify({["Title"]="Pets",["Content"]="No pets found in inventory.",["Duration"]=2})return end
 
local W=i["Character"]and i["Character"]:FindFirstChild("Humanoid")
local T=i["Character"]and i["Character"]:FindFirstChild("HumanoidRootPart")if not W or not T  then
 S:Notify({["Title"]="Pets";["Content"]="Character not found.",["Duration"]=2})return end
 
local t=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Pets")and o["Remotes"]["Pets"]:FindFirstChild("EquipPet"))if not t  then
 S:Notify({["Title"]="Pets",["Content"]="EquipPet remote not found.",["Duration"]=3})return end
 ZB()task["wait"](.5)table["sort"](x,function(x,W)return x["earnings"]>W["earnings"]end
)
local H=0 for S=1,math["min"](jB,#x),1 do
 
local T=x[S]
local o=R[S]if o  then
 
local x=x6(o)q(x)task["wait"](.3)end
 W:EquipTool(T["instance"])task["wait"](.3)pcall(function()t:FireServer()end
)H=H+1 task["wait"](.3)end
 S:Notify({["Title"]="Pets",["Content"]="Equipped "..(H..(" best pets across "..(H.." floors."))),["Duration"]=3})end
)end
})H["TabPets"]:Section({["Title"]="PET FEEDING"})Y["UIRefs"]["DropdownPetTreatTypes"]=H["TabPets"]:Dropdown({["Title"]="Select Treats";["Values"]=AB()or{};["Value"]=K(Y["Config"]["TargetPetTreatNames"]or{});["Multi"]=true,["AllowNone"]=true,["Callback"]=function(x)Y["Config"]["TargetPetTreatNames"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 Y["Config"]["TargetPetTreatNames"][W]=true end
 
elseif x and x~="" then
 Y["Config"]["TargetPetTreatNames"][x]=true end
 end
})H["TabPets"]:Button({["Title"]="Refresh Treat List";["Callback"]=function()pcall(function()Y["UIRefs"]["DropdownPetTreatTypes"]:Refresh(AB())end
)pcall(function()Y["UIRefs"]["DropdownPetTreatTypes"]:Select({})end
)Y["Config"]["TargetPetTreatNames"]={}S:Notify({["Title"]="Pets",["Content"]="Treat list refreshed.";["Duration"]=2})end
})
local  function yB()if not Y["Flags"]["isAutoFeedPetsLoopRunning"] then
 Y["Flags"]["isAutoFeedPetsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoFeedPets"]do
 
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Pets")and o["Remotes"]["Pets"]:FindFirstChild("UseTreat"))
local W=hB()
local S=i["Character"]and i["Character"]:FindFirstChild("Humanoid")if x and(S and#W>0) then
 
local T={}if next(Y["Config"]["TargetPetTreatNames"])~=nil  then
 for x,W in pairs(Y["Config"]["TargetPetTreatNames"])do
 T[x]=true end
 end
 for T,t in pairs(T)do
 if not Y["Config"]["AutoFeedPets"] then
 break end
 
local H=fB(T)if H  then
 S:EquipTool(H)task["wait"](.3)for W,S in ipairs(W)do
 if not Y["Config"]["AutoFeedPets"] then
 break end
 
local t=pcall(function()x:FireServer(S["instance"])end
)if t  then
 lamLog("AutoFeedPets | Successfully fed pet %s with %s",tostring(S["instance"]["Name"]),T)end
 task["wait"](.5)end
 end
 end
 end
 task["wait"](3)end
 Y["Flags"]["isAutoFeedPetsLoopRunning"]=false end
)end
 end
 Y["UIRefs"]["ToggleAutoFeedPets"]=H["TabPets"]:Toggle({["Title"]="Auto Feed Pets";["Value"]=Y["Config"]["AutoFeedPets"]or false,["Callback"]=function(x)Y["Config"]["AutoFeedPets"]=x if x  then
 yB()end
 end
})if Y["Config"]["AutoFeedPets"] then
 yB()end
 H["TabPets"]:Section({["Title"]="PET UPGRADE"})Y["UIRefs"]["InputPetUpgradeLevel"]=H["TabPets"]:Input({["Title"]="Max Upgrade Level",["Desc"]="Limit maximum level for auto pet upgrade";["Placeholder"]="10",["Value"]=tostring(Y["Config"]["TargetPetUpgradeLevel"]or 10),["Numeric"]=true,["Finished"]=true;["Callback"]=function(x)
local W=tonumber(x)if not W or W<1  then
 Y["Config"]["TargetPetUpgradeLevel"]=10 pcall(function()Y["UIRefs"]["InputPetUpgradeLevel"]:Set("10")end
)return end
 W=math["floor"](W)Y["Config"]["TargetPetUpgradeLevel"]=W pcall(function()Y["UIRefs"]["InputPetUpgradeLevel"]:Set(tostring(W))end
)end
})
local  function nB()if not Y["Flags"]["isAutoUpgradePetsLoopRunning"] then
 Y["Flags"]["isAutoUpgradePetsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoUpgradePets"]do
 
local x=o:FindFirstChild("Remotes")and(o["Remotes"]:FindFirstChild("Pets")and o["Remotes"]["Pets"]:FindFirstChild("UpgradePet"))T("AutoUpgradePets | Remote: "..tostring(x~=nil))if x  then
 
local W=hB()T("AutoUpgradePets | Found "..(#W.." active pets on plot"))for W,S in ipairs(W)do
 if not Y["Config"]["AutoUpgradePets"] then
 break end
 
local T=Y["Config"]["TargetPetUpgradeLevel"]or 10 if S["level"]<T  then
 pcall(function()if x:IsA("RemoteFunction") then
 x:InvokeServer(S["petKey"])
elseif x:IsA("RemoteEvent") then
 x:FireServer(S["petKey"])end
 end
)task["wait"](.1)end
 end
 end
 task["wait"](2)end
 Y["Flags"]["isAutoUpgradePetsLoopRunning"]=false end
)end
 end
 Y["UIRefs"]["ToggleAutoUpgradePets"]=H["TabPets"]:Toggle({["Title"]="Auto Upgrade Pets",["Value"]=Y["Config"]["AutoUpgradePets"]or false;["Callback"]=function(x)Y["Config"]["AutoUpgradePets"]=x if x  then
 nB()end
 end
})if Y["Config"]["AutoUpgradePets"] then
 nB()end
 H["TabPets"]:Section({["Title"]="PET SELL"})Y["UIRefs"]["DropdownPetSellSelection"]=H["TabPets"]:Dropdown({["Title"]="Select Pets",["Values"]=pB()or{};["Value"]=K(Y["Config"]["TargetPetSellNames"]or{});["Multi"]=true;["AllowNone"]=true;["Callback"]=function(x)Y["Config"]["TargetPetSellNames"]={}if type(x)=="table" then
 for x,W in pairs(x)do
 Y["Config"]["TargetPetSellNames"][W]=true end
 
elseif x and x~="" then
 Y["Config"]["TargetPetSellNames"][x]=true end
 end
})
local  function mB()if not Y["Flags"]["isAutoSellPetsLoopRunning"] then
 Y["Flags"]["isAutoSellPetsLoopRunning"]=true task["spawn"](function()while Y["Config"]["AutoSellPets"]do
 
local x=o:FindFirstChild("Remotes")and o["Remotes"]:FindFirstChild("SellPet")if x  then
 
local W=UB()for W,S in ipairs(W)do
 if not Y["Config"]["AutoSellPets"] then
 break end
 
local T=false if next(Y["Config"]["TargetPetSellNames"])~=nil  then
 T=rB(S["petName"],Y["Config"]["TargetPetSellNames"])end
 if T  then
 
local W=pcall(function()x:InvokeServer(S["petKey"])end
)if W  then
 lamLog("AutoSellPets | Successfully sold pet %s (Level %s)",tostring(S["petName"]),tostring(S["level"]))end
 task["wait"](.1)end
 end
 end
 task["wait"](2)end
 Y["Flags"]["isAutoSellPetsLoopRunning"]=false end
)end
 end
 Y["UIRefs"]["ToggleAutoSellPets"]=H["TabPets"]:Toggle({["Title"]="Auto Sell Pets",["Value"]=Y["Config"]["AutoSellPets"]or false,["Callback"]=function(x)Y["Config"]["AutoSellPets"]=x if x  then
 mB()end
 end
})if Y["Config"]["AutoSellPets"] then
 mB()end
 H["TabConfig"]:Section({["Title"]="PURCHASE"})Y["UIRefs"]["ToggleSkipMoneyCheck"]=H["TabConfig"]:Toggle({["Title"]="Skip Money Check",["Desc"]="Skip client-side money checks (use only if auto buy is bugged)",["Value"]=Y["Config"]["SkipMoneyCheck"]or false;["Callback"]=function(x)Y["Config"]["SkipMoneyCheck"]=x end
})H["TabConfig"]:Section({["Title"]="LAG REDUCTION"})Y["UIRefs"]["ToggleHideOtherPlots"]=H["TabConfig"]:Toggle({["Title"]="Hide Other Plots";["Value"]=Y["Config"]["HideOtherPlots"]or false,["Callback"]=function(x)Y["Config"]["HideOtherPlots"]=x c(x)end
})
local FB=nil Y["UIRefs"]["ToggleMuteAndHideAlerts"]=H["TabConfig"]:Toggle({["Title"]="Mute & Hide Alerts";["Value"]=Y["Config"]["MuteAndHideAlerts"]or false;["Callback"]=function(x)Y["Config"]["MuteAndHideAlerts"]=x pcall(function()
local W=(i:WaitForChild("PlayerGui")):FindFirstChild("MainUI")and i["PlayerGui"]["MainUI"]:FindFirstChild("AlertFrame")if W  then
 W["Visible"]=not x end
 end
)pcall(function()
local W=M:FindFirstChild("SFX")and M["SFX"]:FindFirstChild("SAAlert")if W  then
 if x  then
 if not FB  then
 FB=W["Volume"]end
 W["Volume"]=0 
else
 if FB  then
 W["Volume"]=FB end
 end
 end
 end
)end
})H["TabConfig"]:Section({["Title"]="TELEPORT"})B["UserInputService"]=game:GetService("UserInputService")B["CoreGui"]=game:GetService("CoreGui")for x,W in ipairs({"LamduckUtilitiesFloatingGui","LamduckTeleportGui";"LamduckRejoinUI";"LamduckFloatingTP"})do
 
local S=B["CoreGui"]:FindFirstChild(W)if S  then
 S:Destroy()end
 end
 B["TELEPORT_FLOATING_BTN_DEFAULT_POSITION"]=UDim2["new"](.8,0,.2,0)B["FloatingTeleportScreenGui"]=Instance["new"]("ScreenGui")B["FloatingTeleportScreenGui"]["Name"]="LamduckFloatingTP"B["FloatingTeleportScreenGui"]["ResetOnSpawn"]=false B["FloatingTeleportScreenGui"]["Enabled"]=Y["Config"]["ShowFloatingTeleportButton"]or false 
local uB=pcall(function()B["FloatingTeleportScreenGui"]["Parent"]=gethui and gethui()or B["CoreGui"]end
)if not uB  then
 B["FloatingTeleportScreenGui"]["Parent"]=i:WaitForChild("PlayerGui")end
 B["FloatingTeleportMainButton"]=Instance["new"]("TextButton")B["FloatingTeleportMainButton"]["Size"]=UDim2["new"](0,48,0,32)B["FloatingTeleportMainButton"]["Position"]=((Y["Config"]["TeleportButtonPosXScale"]and(Y["Config"]["TeleportButtonPosXOffset"]and(Y["Config"]["TeleportButtonPosYScale"]and Y["Config"]["TeleportButtonPosYOffset"]))))and UDim2["new"](Y["Config"]["TeleportButtonPosXScale"],Y["Config"]["TeleportButtonPosXOffset"],Y["Config"]["TeleportButtonPosYScale"],Y["Config"]["TeleportButtonPosYOffset"])or B["TELEPORT_FLOATING_BTN_DEFAULT_POSITION"]B["FloatingTeleportMainButton"]["BackgroundColor3"]=Color3["fromRGB"](40,40,40)B["FloatingTeleportMainButton"]["TextColor3"]=Color3["fromRGB"](255,255,255)B["FloatingTeleportMainButton"]["Text"]="TP"B["FloatingTeleportMainButton"]["Font"]=Enum["Font"]["GothamBold"]B["FloatingTeleportMainButton"]["TextSize"]=14 B["FloatingTeleportMainButton"]["Parent"]=B["FloatingTeleportScreenGui"]
local PB=Instance["new"]("UICorner")PB["CornerRadius"]=UDim["new"](0,6)PB["Parent"]=B["FloatingTeleportMainButton"]B["FloatingTeleportListFrame"]=Instance["new"]("Frame")B["FloatingTeleportListFrame"]["Position"]=UDim2["new"](0,54,0,0)B["FloatingTeleportListFrame"]["Size"]=UDim2["new"](0,140,0,0)B["FloatingTeleportListFrame"]["AutomaticSize"]=Enum["AutomaticSize"]["Y"]B["FloatingTeleportListFrame"]["BackgroundTransparency"]=1 B["FloatingTeleportListFrame"]["Visible"]=false B["FloatingTeleportListFrame"]["Parent"]=B["FloatingTeleportMainButton"]
local NB=Instance["new"]("UIListLayout")NB["Padding"]=UDim["new"](0,5)NB["SortOrder"]=Enum["SortOrder"]["LayoutOrder"]NB["Parent"]=B["FloatingTeleportListFrame"]
local kB=false 
local lB=nil 
local cB=nil 
local wB=nil B["FloatingTeleportMainButton"]["InputBegan"]:Connect(function(x)if x["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or x["UserInputType"]==Enum["UserInputType"]["Touch"] then
 kB=true cB=x["Position"]wB=B["FloatingTeleportMainButton"]["Position"]x["Changed"]:Connect(function()if x["UserInputState"]==Enum["UserInputState"]["End"] then
 kB=false end
 end
)end
 end
)B["FloatingTeleportMainButton"]["InputChanged"]:Connect(function(x)if x["UserInputType"]==Enum["UserInputType"]["MouseMovement"]or x["UserInputType"]==Enum["UserInputType"]["Touch"] then
 lB=x end
 end
)B["UserInputService"]["InputChanged"]:Connect(function(x)if x==lB and kB  then
 
local W=x["Position"]-cB B["FloatingTeleportMainButton"]["Position"]=UDim2["new"](wB["X"]["Scale"],wB["X"]["Offset"]+W["X"],wB["Y"]["Scale"],wB["Y"]["Offset"]+W["Y"])end
 end
)for x,W in ipairs(R)do
 
local S=Instance["new"]("TextButton")S["Size"]=UDim2["new"](1,0,0,32)S["BackgroundColor3"]=Color3["fromRGB"](30,30,30)S["TextColor3"]=Color3["fromRGB"](200,200,200)S["Text"]=W["Label"]S["Font"]=Enum["Font"]["GothamSemibold"]S["TextSize"]=13 S["LayoutOrder"]=x S["Parent"]=B["FloatingTeleportListFrame"]
local T=Instance["new"]("UICorner")T["CornerRadius"]=UDim["new"](0,6)T["Parent"]=S S["MouseButton1Click"]:Connect(function()W6(W)B["FloatingTeleportListFrame"]["Visible"]=false end
)end
 
local zB=nil B["FloatingTeleportMainButton"]["InputBegan"]:Connect(function(x)if x["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or x["UserInputType"]==Enum["UserInputType"]["Touch"] then
 zB=tick()end
 end
)B["FloatingTeleportMainButton"]["InputEnded"]:Connect(function(x)if x["UserInputType"]==Enum["UserInputType"]["MouseButton1"]or x["UserInputType"]==Enum["UserInputType"]["Touch"] then
 if zB and tick()-zB<.2  then
 B["FloatingTeleportListFrame"]["Visible"]=not B["FloatingTeleportListFrame"]["Visible"]end
 end
 end
)Y["UIRefs"]["ToggleFloatingTeleportButton"]=H["TabConfig"]:Toggle({["Title"]="Show Floating Teleport Button",["Value"]=Y["Config"]["ShowFloatingTeleportButton"]or false;["Callback"]=function(x)B["FloatingTeleportScreenGui"]["Enabled"]=x if not x  then
 B["FloatingTeleportListFrame"]["Visible"]=false end
 end
})H["TabConfig"]:Button({["Title"]="Reset Floating TP Button Position";["Callback"]=function()B["FloatingTeleportMainButton"]["Position"]=B["TELEPORT_FLOATING_BTN_DEFAULT_POSITION"]S:Notify({["Title"]="Utilities",["Content"]="TP button position reset to default.",["Duration"]=2})end
})H["TabConfig"]:Button({["Title"]="Teleport to My Plot";["Callback"]=S6})
local JB="build-a-ring-farm.json"
local  function OB()if Y["Config"]["ShowFloatingTeleportButton"] then
 Y["Config"]["TeleportButtonPosXScale"]=B["FloatingTeleportMainButton"]["Position"]["X"]["Scale"]Y["Config"]["TeleportButtonPosXOffset"]=B["FloatingTeleportMainButton"]["Position"]["X"]["Offset"]Y["Config"]["TeleportButtonPosYScale"]=B["FloatingTeleportMainButton"]["Position"]["Y"]["Scale"]Y["Config"]["TeleportButtonPosYOffset"]=B["FloatingTeleportMainButton"]["Position"]["Y"]["Offset"]end
 if writefile  then
 writefile(JB,C:JSONEncode(Y["Config"]))end
 end
 H["TabConfig"]:Section({["Title"]="CONFIGURATION"})H["TabConfig"]:Button({["Title"]="Save Current Config",["Callback"]=function()t:Dialog({["Title"]="Confirm Save",["Content"]="Are you sure you want to save the current configuration?",["Buttons"]={{["Title"]="Confirm",["Callback"]=function()OB()S:Notify({["Title"]="Success";["Content"]="Configuration saved to device!",["Duration"]=3})end
};{["Title"]="Cancel"}}})end
})H["TabConfig"]:Button({["Title"]="Delete & Reset Config";["Callback"]=function()t:Dialog({["Title"]="Confirm Reset",["Content"]="Are you sure you want to delete all saved configs and rejoin?";["Buttons"]={{["Title"]="Confirm";["Callback"]=function()if isfile and(isfile(JB)and delfile) then
 delfile(JB)end
 S:Notify({["Title"]="Success",["Content"]="All previous configs deleted! Rejoining...";["Duration"]=3});(game:GetService("TeleportService")):TeleportToPlaceInstance(game["PlaceId"],game["JobId"],i)end
},{["Title"]="Cancel"}}})end
})T("UI contents built in %.3f seconds",tick()-m6)task["spawn"](function()pcall(function()if Y["Config"]["AutoSellCrates"]and(Y["UIRefs"]["ToggleAutoSellCrates"]and Y["UIRefs"]["ToggleAutoSellCrates"]["Callback"]) then
 Y["UIRefs"]["ToggleAutoSellCrates"]["Callback"](true)end
 if Y["Config"]["AutoUnlockFarmPlots"]and(Y["UIRefs"]["ToggleAutoUnlockFarmPlots"]and Y["UIRefs"]["ToggleAutoUnlockFarmPlots"]["Callback"]) then
 Y["UIRefs"]["ToggleAutoUnlockFarmPlots"]["Callback"](true)end
 if Y["Config"]["AutoExpandFarmPlot"]and(Y["UIRefs"]["ToggleAutoExpandFarmPlot"]and Y["UIRefs"]["ToggleAutoExpandFarmPlot"]["Callback"]) then
 Y["UIRefs"]["ToggleAutoExpandFarmPlot"]["Callback"](true)end
 if Y["Config"]["AutoPlantRush"] then
 bB()end
 if Y["Config"]["AutoClaimPlantRushBossDrop"] then
 dB()end
 if Y["Config"]["AutoCollectQueenBeeHoneycomb"] then
 VB()end
 if Y["Config"]["AutoSubmitQueenBeeHoneyToken"] then
 sB()end
 if Y["Config"]["AutoSubmitSeedToCollector"]or Y["Config"]["AutoSubmitAllSeedsToCollector"] then
 aB()end
 if Y["Config"]["AutoClaimDailyReward"] then
 gB()end
 if Y["Config"]["AutoClaimPlaytimeReward"] then
 XB()end
 if Y["Config"]["AutoSpinWheel"]and(Y["UIRefs"]["ToggleAutoSpinWheel"]and Y["UIRefs"]["ToggleAutoSpinWheel"]["Callback"]) then
 Y["UIRefs"]["ToggleAutoSpinWheel"]["Callback"](true)end
 if Y["Config"]["HideOtherPlots"]and(Y["UIRefs"]["ToggleHideOtherPlots"]and Y["UIRefs"]["ToggleHideOtherPlots"]["Callback"]) then
 Y["UIRefs"]["ToggleHideOtherPlots"]["Callback"](true)end
 if Y["Config"]["MuteAndHideAlerts"]and(Y["UIRefs"]["ToggleMuteAndHideAlerts"]and Y["UIRefs"]["ToggleMuteAndHideAlerts"]["Callback"]) then
 Y["UIRefs"]["ToggleMuteAndHideAlerts"]["Callback"](true)end
 end
)end
)
local  function vB()T("My plot name: "..k())T("Player name: "..v())S:Notify({["Title"]="Info",["Content"]="Please reset config and rejoin if you face any issue!",["Duration"]=10})end
 vB()T("Total loading completed in %.3f seconds",tick()-m6)pcall(function()H["TabFarming"]:Select()end
)end
)(...)