
--Wait until game loads
repeat
    wait()
until game:IsLoaded()

--Stops script if on a different game


if _G.menu ~= true then
    _G.menu = true
    elseif _G.menu == true then
    local removethat = game.CoreGui:FindFirstChild("FluxLib")
    removethat:Destroy()
    removethat:Remove()
    end
 
local Flux = loadstring(game:HttpGet"https://plsdonateautofarmloader.000webhostapp.com/uilibmoon.txt")()
local win = Flux:Window("Cheese Escape", "by moon", Color3.fromRGB(100,65.1,0))
--visual locals
local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

 local Name = "" ..PlaceName.. " " .. Player.Name .. ".json"
 local HttpService = game:GetService("HttpService")
Des = {}
if makefolder then
    makefolder("MOON")
end
local Settings
if
    not pcall(
        function()
            readfile("MOON//" .. Name)
        end
    )
 then
    writefile("MOON//" .. Name, HttpService:JSONEncode(Des))
end
if readfile("MOON//" .. Name) then
    Settings = HttpService:JSONDecode(readfile("MOON//" .. Name))
end

local function Save()
    writefile("MOON//" .. Name, HttpService:JSONEncode(Settings))
end
local function Reset()
    writefile("MOON//" .. Name, HttpService:JSONEncode({}))
end
Time = 1 -- seconds
repeat wait() until game:IsLoaded()
wait(Time)
local PlaceID = 5777099015
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
   local Site;
   if foundAnything == "" then
       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
   else
       Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
   end
   local ID = ""
   if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
       foundAnything = Site.nextPageCursor
   end
   local num = 0;
   for i,v in pairs(Site.data) do
       local Possible = true
       ID = tostring(v.id)
       if tonumber(v.maxPlayers) > tonumber(v.playing) then
           for _,Existing in pairs(AllIDs) do
               if num ~= 0 then
                   if ID == tostring(Existing) then
                       Possible = false
                   end
               else
                   if tonumber(actualHour) ~= tonumber(Existing) then
                       local delFile = pcall(function()
                           delfile("MOON/Serverhop.json")
                           AllIDs = {}
                           table.insert(AllIDs, actualHour)
                       end)
                   end
               end
               num = num + 1
           end
           if Possible == true then
               table.insert(AllIDs, ID)
               wait()
               pcall(function()
                   writefile("MOON/Serverhop.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                   wait()
                   game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
               end)
               wait(4)
           end
       end
   end
end
 
function Teleport()
   while wait() do
       pcall(function()
           TPReturner()
           if foundAnything ~= "" then
               TPReturner()
           end
       end)
   end
end
local Premium = false 
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = Workspace.CurrentCamera
local RunService = game:GetService("RunService")
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0, 3, 0)
local HeadItemOff = Vector3.new(0, 0.3, 0)
local LegItemOff = Vector3.new(0, 2, 0)
--menu opt

local general = win:Tab("general", "id")
general:Toggle("God mode", "This will make u never die",Settings.Godmode, function(t)
    Settings.Godmode = t
    local MouseDamageScript = game.Players.LocalPlayer.Character.MouseDamageScript
    MouseDamageScript.Disabled = false
    if Settings.Godmode then
        MouseDamageScript.Disabled = true

end 
if Settings.StatesAutoSaveSettings then
    Save()
   end
end)

general:Toggle("No clip", "allow you to move through the walls", Settings.Noclip, function(State)
    noclips = false
    Settings.Noclip = State
                if Settings.Noclip then
                    noclips = not noclips
                    for i, v in pairs(Player.Character:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false
                        end
                    end
                end
            
        
    RunService.Stepped:connect(
        function()
            if noclips then
                for i, v in pairs(Player.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end
    )
    if Settings.StatesAutoSaveSettings then
        Save()
       end
    end)

        general:Toggle("InfiniteJump", "with this u can be afk and u won't Disconnect", Settings.InfiniteJumpEnabled, function (t)
            Settings.InfiniteJumpEnabled = t
            game:GetService("UserInputService").JumpRequest:connect(function()
                if Settings.InfiniteJumpEnabled then
                    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                end
            end)
            if Settings.StatesAutoSaveSettings then
                Save()
               end
        end)
local WS = general:Slider("WalkSpeed", "this will change ur speed, 20 is the normal speed", 0 , 750, 20, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (t)
end)
local JP = general:Slider("Jump Power", "this will change ur Jump Power, 37 is the normal Jump Power", 0,750,37, function (t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (t)
end)
local CCV = general:Slider("Change Cheese Value", "This will change ur leaderboard stats", 0 , 100, 0, function(t)
    game:service'Players'.LocalPlayer.leaderstats.Cheese.Value = (t)
    end)
    general:Dropdown("Settings Reset", {"All", "Reset WalkSpeed", "Reset Jump Power", "Reset Cheese Value"}, function (t)
        if t == "All" then
            WS:Change(20)
            JP:Change(37)
            CCV:Change(0)
        end
        if t == "Reset WalkSpeed" then
            WS:Change(20)
        
        end
        if t == "Reset Jump Power" then
            JP:Change(37)
        
        end
        if t == "Reset Cheese Value" then
            CCV:Change(0)
        end
            end)
        --Visual scripts
-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = game:GetService("Workspace").CurrentCamera
local Work = game:GetService("Workspace")

-- Players ESP Toggles
local Toggle1 = false
local ToggleNameOfPlayers = false
local ToggleTrackerPlayers = false
--main of the toggles 
local MainToggle = false
--Mouse ESP Toggles
local ToggleMouse = false
local ToggleNameOfMouse = false
local ToggleMouseTracer = false
--New Mouse ESP Toggles
local ToggleNewMouse = false
local ToggleNewMouseName = false
local ToggleNewMouseTracer = false
--Items ESP
local ToggleItemespNames = false
local ToggleItemespTracker = false
local ToggleItemsespBox = false
-- Variable
local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0, 3, 0)

local HeadOffmouse = Vector3.new(0, 5, 0)
local LegOffmouse = Vector3.new(0, 3, 0)

local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")
    local Visualtab = win:Tab("Visual","id" )
    Visualtab:Label("ESP Options:")
    Visualtab:Toggle("Players", "ESP Playes", Settings.espplayer, function(State)
        Settings.espplayer = State
     MainToggle = Settings.espplayer
     ToggleNameOfPlayers = Settings.espplayer
     Toggle1 = Settings.espplayer
     ToggleTrackerPlayers = Settings.espplayer

     if Settings.StatesAutoSaveSettings then
        Save()
       end
    end)
    local Highlight = Instance.new("Highlight")
    Visualtab:Toggle("Mouse", "ESP Mouse", Settings.espMouse, function (State)
        Settings.espMouse = State
        MainToggle = Settings.espMouse
        ToggleMouse = Settings.espMouse
        ToggleNameOfMouse = Settings.espMouse 
        ToggleMouseTracer = Settings.espMouse 

            if Settings.StatesAutoSaveSettings then
                Save()
               end
    end)
    Visualtab:Toggle("New Mouse", "ESP Mouse", Settings.espnewMouse, function (State)
        Settings.espnewMouse = State
        MainToggle = Settings.espnewMouse
        ToggleNewMouse = Settings.espnewMouse
        ToggleNewMouseName = Settings.espnewMouse 
        ToggleNewMouseTracer = Settings.espnewMouse 

            if Settings.StatesAutoSaveSettings then
                Save()
               end
    end)
    Visualtab:Toggle("Items", "ESP Items", Settings.espitems, function (State)
        Settings.espitems = State
        MainToggle = Settings.espitems
        ToggleItemespNames = Settings.espitems
        ToggleItemespTracker = Settings.espitems
        ToggleItemsespBox = Settings.espitems

        if Settings.StatesAutoSaveSettings then
            Save()
           end
    end)
    Visualtab:Dropdown("ESP Style", {"All", "All With out Tracers", "All With out Names", "All With out Box", "Names Only", "Box Only", "Tracers Only"}, function (t)
        if MainToggle then
 if t == "All" then
    if Settings.espplayer then
    ToggleNameOfPlayers = true
    Toggle1 = true
    ToggleTrackerPlayers = true
    end
    if Settings.espMouse then
    ToggleMouse = true
    ToggleNameOfMouse = true
    ToggleMouseTracer = true
    end
    if Settings.espnewMouse then
    ToggleNewMouse = true
    ToggleNewMouseName = true
    ToggleNewMouseTracer = true
    end
    if Settings.espitems then
        ToggleItemespNames = true
        ToggleItemespTracker = true
        ToggleItemsespBox = true
    end
 end
 if t == "All With out Tracers" then
    if Settings.espplayer then
    ToggleNameOfPlayers = true
    Toggle1 = true
    ToggleTrackerPlayers = false
    end
    if Settings.espMouse then
    ToggleMouse = true
    ToggleNameOfMouse = true
    ToggleMouseTracer = false
    end
    if Settings.espnewMouse then
    ToggleNewMouse = true
    ToggleNewMouseName = true
    ToggleNewMouseTracer = false
    end
    if Settings.espitems then
        ToggleItemespNames = true
        ToggleItemespTracker = false
        ToggleItemsespBox = true
    end
 end
 if t == "All With out Names" then
    if Settings.espplayer then
    ToggleNameOfPlayers = false
    Toggle1 = true
    ToggleTrackerPlayers = true
    end
    if Settings.espMouse then
    ToggleMouse = true
    ToggleNameOfMouse = false
    ToggleMouseTracer = true
    end
    if Settings.espnewMouse then
    ToggleNewMouse = true
    ToggleNewMouseName = false
    ToggleNewMouseTracer = true
    end
    if Settings.espitems then
        ToggleItemespNames = false
        ToggleItemespTracker = true
        ToggleItemsespBox = true
    end
 end
 if t == "All With out Box" then
    if Settings.espplayer then
    ToggleNameOfPlayers = true
    Toggle1 = false
    ToggleTrackerPlayers = true
    end
    if Settings.espMouse then
    ToggleMouse = false
    ToggleNameOfMouse = true
    ToggleMouseTracer = true
    end
    if Settings.espnewMouse then
    ToggleNewMouse = false
    ToggleNewMouseName = true
    ToggleNewMouseTracer = true
    end
    if Settings.espitems then
        ToggleItemespNames = true
        ToggleItemespTracker = true
        ToggleItemsespBox = false
    end
 end
 if t == "Names Only" then
    if Settings.espplayer then
    ToggleNameOfPlayers = true
    Toggle1 = false
    ToggleTrackerPlayers = false
    end
    if Settings.espMouse then
    ToggleMouse = false
    ToggleNameOfMouse = true
    ToggleMouseTracer = false
    end
    if Settings.espnewMouse then
    ToggleNewMouse = false
    ToggleNewMouseName = true
    ToggleNewMouseTracer = false
    end
    if Settings.espitems then
        ToggleItemespNames = true
        ToggleItemespTracker = false
        ToggleItemsespBox = false
    end
 end
 if t == "Box Only" then
    if Settings.espplayer then
    ToggleNameOfPlayers = false
    Toggle1 = true
    ToggleTrackerPlayers = false
    end
    if Settings.espMouse then
    ToggleMouse = true
    ToggleNameOfMouse = false
    ToggleMouseTracer = false
    end
    if Settings.espnewMouse then
    ToggleNewMouse = true
    ToggleNewMouseName = false
    ToggleNewMouseTracer = false
    end
    if Settings.espitems then
        ToggleItemespNames = false
        ToggleItemespTracker = false
        ToggleItemsespBox = true
    end
 end
 if t == "Tracers Only" then
    if Settings.espplayer then
    ToggleNameOfPlayers = false
    Toggle1 = false
    ToggleTrackerPlayers = true
    end
    if Settings.espMouse then
    ToggleMouse = false
    ToggleNameOfMouse = false
    ToggleMouseTracer = true
    end
    if Settings.espnewMouse then
    ToggleNewMouse = false
    ToggleNewMouseName = false
    ToggleNewMouseTracer = true
    end
    if Settings.espitems then
        ToggleItemespNames = false
        ToggleItemespTracker = true
        ToggleItemsespBox = false
    end
 end
end
    end)


        --Teleport scripts
        local playerlist = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v ~= game.Players.LocalPlayer then
                table.insert(playerlist,v.Name)
            end
        end   
local Teletab = win:Tab("Teleport", "id")
Teletab:Label("Teleport Options:")
playerDropdowns = Teletab:Dropdown("Teleport to players",  playerlist, function (t)
    players = game:GetService("Players")
    targetPlayer = players:FindFirstChild(t)
    players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
end)
Teletab:Dropdown("SafeZones",  {"SafeZone 1", "SafeZone 2"}, function (t)
    if t == "SafeZone 1" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-120.790001, 10.5, -13.0999994, 0, 0, 1, 0, 1, -0, -1, 0, 0) 
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end
    if t == "SafeZone 2" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-97.1900024, 6.5999999, -118.599998, 0, 0, 1, 0, 1, -0, -1, 0, 0) 
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end
end)
Teletab:Dropdown("Cheeses location", {"Red Cheese", "Cheese 1", "Cheese 2", "Cheese 3", "Cheese 4","Cheese 5", "Cheese 6", "Cheese 7", "Cheese 8", "Cheese 9"}, function (t)
    che10 = t
if che10 == "Red Cheese" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.8112183, 5.32002211, -120.237991, -1, 0, 0, 0, 1, 0, 0, 0, -1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che1 = t
if che1 == "Cheese 1" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-278.901978, 4.37002277, -15.0212517, 0, 0, -1, 0, 1, 0, 1, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che2 = t
if che2 == "Cheese 2" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-278.901978, 4.37002277, -54.5212517, 0, 0, -1, 0, 1, 0, 1, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che3 = t
if che3 == "Cheese 3" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-275.901978, 4.37002277, -141.021255, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che4 = t
if che4 == "Cheese 4" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-127.401978, 4.37002277, -162.521255, 0, 0, 1, 0, 1, -0, -1, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che5 = t
if che5 == "Cheese 5" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(77.0980225, 4.37002277, -452.52124, 0, 0, 1, 0, 1, -0, -1, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che6 = t
if che6 == "Cheese 6" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-255.141968, 48.9200211, -171.011246, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che7 = t
if che7 == "Cheese 7" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-146.201996, 4.47002268, -238.121262, -1, 0, 0, 0, 1, 0, 0, 0, -1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che8 = t
if che8 == "Cheese 8" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(45.4980354, 24.7700233, -21.2212505, 0, 0, 1, 0, 1, -0, -1, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che9 = t
if che9 == "Cheese 9" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-276.741974, 48.9200211, -223.211243, 0, 0, 1, 0, 1, -0, -1, 0, 0)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end

end)
Teletab:Dropdown("Keys location", {"green", "red", "blue", "Yellow","White", "Purple"}, function (t)
    green = t
    if green == "green" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-279.601654, 1.29329336, -38.6287994, 0.707060337, -0.707153201, 1.33812428e-05, 1.33812428e-05, 3.23057175e-05, 1, -0.707153201, -0.707060337, 3.23057175e-05)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end
    red = t
    if red == "red" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(70.8000183, 1.20000398, -448.399994, -0.707060337, 0.707153201, 1.33812428e-05, -1.33812428e-05, -3.23057175e-05, 1, 0.707153201, 0.707060337, 3.23057175e-05)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end
    blue = t
    if blue == "blue" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110.590004, 44.5, -91.7500076, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end
    YellowKey = t
    if YellowKey == "Yellow" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64.2216949, 26.8932934, -481.771179, 0.707060337, 0.707153201, -1.33812428e-05, -1.33812428e-05, 3.23057175e-05, 1, 0.707153201, -0.707060337, 3.23057175e-05)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end

    White = t
    if White == "White" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.5016365, 5.14329338, -80.5288086, 0.707060337, -0.707153201, 1.33812428e-05, 1.33812428e-05, 3.23057175e-05, 1, -0.707153201, -0.707060337, 3.23057175e-05)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end
    PurpleKey = t
    if PurpleKey == "Purple" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-295.501617, 122.143295, 497.471191, -0.707060337, -0.707153201, -1.33812428e-05, 1.33812428e-05, -3.23057175e-05, 1, -0.707153201, 0.707060337, 3.23057175e-05)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (80)
------------------------------------------------------------------------------------------------------------------
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then --this line no need  u can delete it
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)
        end
------------------------------------------------------------------------------------------------------------------
    end
end)
Teletab:Button("the baginning" , "this will teleport u to the baginning of the game", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.29999542, 2.5, -12.2999973, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)
    end)
    Teletab:Button("the end" , "this will teleport u to the baginning of the game", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1434, 56.5000305, -138, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end)
    Teletab:Button("Secret End", "this will teleport u to the secret end of the game",  function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.6089001, 103.647919, -1036.71289, 0.383885145, 2.03347863e-08, 0.923380852, -7.00402438e-08, 1, 7.09633952e-09, -0.923380852, -6.73979983e-08, 0.383885145)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (80)
------------------------------------------------------------------------------------------------------------------
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then --this line no need  u can delete it
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)
        end
------------------------------------------------------------------------------------------------------------------
    end)
    Teletab:Button("Teleport to chapter 2",  "this will take u to the chapter 2 of the game", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.3599968, 11.0000038, -69.9499969, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end)
    Teletab:Button("Secret Place",  "this will take u to a secret place with a new rat", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(839.100037, 59.9000053, -1282.3999, 0, 0, 1, 0, 1, -0, -1, 0, 0)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end)
    Teletab:Button("Exit door", "this will teleport u to the Exit door", function ()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-285.001648, 13.0932932, -125.903641, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

    end)
  


    local misc = win:Tab("Misc", "id")
    
    misc:Slider("Server Hop Delay (M)", "How long to wait before server change\n0 = Disabled", 0, 120,Settings.serverHopDelay,function(t)
        Settings.serverHopDelay = t
        if Settings.StatesAutoSaveSettings then
            Save()
        end
    end)
    misc:Toggle("Auto Server Hop", "Allow Server changer", Settings.serverHop, function (t)
        Settings.serverHop = t
        if Settings.StatesAutoSaveSettings then
            Save()
        end
        spawn(function()
            while wait() and Settings.serverHop do
                pcall(function()
                    if Settings.serverHopDelay == 0 then
                        Flux:Notification("You have to change the Server Hop Delay from 0 to anything you want", "Okay")
                        Settings.serverHop = false
                        return
                    end
                    task.wait(Settings.serverHopDelay * 60)
                    Teleport()
                end)  
            end
        end)
    end)
    misc:Button("Server Hop", "Server Hopping you", function ()
        Teleport()
    end)
    misc:Dropdown("Grab Bagdes", {"all", "You completed the game", "Bloxy Cola", "Defeat The Rat","???", "Complete the second chapter", }, function (t)
        getall = t 
        if getall == "all" then
    local ids = {
        2124910071, --complete game
        2124910945, --bloxy
        2124940134, --defeat the rat
        2124940136, --???
        2126421424  --second cr
        }
        for _,v in next, ids do
            
            local A_1 = v
            local Event = game:GetService("ReplicatedStorage").Events.GiveBadge
            Event:FireServer(A_1)
            end
        end
        ce = t
        if ce == "You completed the game" then
            local ids = {
                2124910071 --complete game
                }
                for _,v in next, ids do
                    
                    local A_1 = v
                    local Event = game:GetService("ReplicatedStorage").Events.GiveBadge
                    Event:FireServer(A_1)
                    end
        end
        ba = t
        if ba == "Bloxy Cola" then
            local ids = {
                2124910945 --bloxy
                }
                for _,v in next, ids do
                    
                    local A_1 = v
                    local Event = game:GetService("ReplicatedStorage").Events.GiveBadge
                    Event:FireServer(A_1)
                    end 
        end
        dt = t
        if dt == "Defeat The Rat" then
            local ids = {
                2124940134
                }
                for _,v in next, ids do
                    
                    local A_1 = v
                    local Event = game:GetService("ReplicatedStorage").Events.GiveBadge
                    Event:FireServer(A_1)
                    end
        end
        un = t
        if un == "???" then
            local ids = {
                2124940136
            }
                for _,v in next, ids do
                    
                    local A_1 = v
                    local Event = game:GetService("ReplicatedStorage").Events.GiveBadge
                    Event:FireServer(A_1)
                    end
        end
        csc = t
        if csc == "Complete the second chapter" then
            local ids = {
                2126421424  --second cr
                }
                for _,v in next, ids do
                    
                    local A_1 = v
                    local Event = game:GetService("ReplicatedStorage").Events.GiveBadge
                    Event:FireServer(A_1)
                    end
        end
end)
    misc:Button("Add Cheese", "This will add how many cheese do u want",  function()
        game:service'ReplicatedStorage'.AddCheese:FireServer()
        end)
        misc:Button("Delete first door", "this will delete the first door in the game, not recommended, use open door faster instead", function(t)
            Flux:Infofunc("Are You sure Want to delete the First door\nuse open Door Faster better then this", "NO", "YES", function (t)
                if t == "YES" then
                local Door = game.Workspace.Door
        
                for i,v in pairs(getconnections(Door.Changed)) do
                    v:Disable()
                end
                
                Door:Remove() 
            end
            end)

        end)
        misc:Toggle("Open first door faster", "this will open the door for u", Settings.DoorFaster, function(door)
            Settings.DoorFaster = door
            if Settings.StatesAutoSaveSettings then
                Save()
               end
                while wait() and Settings.DoorFaster do
                    fireclickdetector(game:GetService("Workspace").Cheese.ClickDetector);
                    end

        end)
        misc:Button("Get All item", "this will give you all the item in the game",  function(t)
            for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("ClickDetector") then
        fireclickdetector(v)
        end
        end
            end)
            misc:Toggle("Auto rejoin", "This will Auto rejoin you",Settings.Autorejoin, function (t)
                Settings.Autorejoin = t
                if Settings.Autorejoin then
                repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
 
local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')
 
po.ChildAdded:connect(function(a)
    if a.Name == 'ErrorPrompt' then
        repeat
            ts:Teleport(game.PlaceId)
            wait(2)
        until false
    end
end)
end
if Settings.StatesAutoSaveSettings then
    Save()
   end
            end)

      
    

    local menuset = win:Tab("Menu Settings", "id")
    menuset:Bind("Key to open/close the menu", Enum.KeyCode.RightShift, function(t) 
        _G.toggleUiHere(t)
        if Settings.StatesAutoSaveSettings then
            Save()
           end
            end) 
            
            menuset:Colorpicker("Menu Color", Color3.fromRGB(100,65.1,0), function(t)
                _G.PresetColor = t
                coroutine.wrap(_G.changeColor)()
                if Settings.StatesAutoSaveSettings then
                    Save()
                   end
                end) 
                menuset:Button("Save Settings", "Save the Settings of the script", function(t)
                    Save()
                       end)  
                       menuset:Toggle("Auto Save Settings", "Save the Settings of the script", Settings.StatesAutoSaveSettings, function(t)
                           Settings.StatesAutoSaveSettings = t
                           if Settings.StatesAutoSaveSettings then
                            Save()
                            else
                                Settings.StatesAutoSaveSettings = false
                                Save()
                           end
                              end)
                       menuset:Button("Reset all Settings", "Reset the Settings of the script", function(t)
                           Reset()
                              end)    
-- ESP

function ESP(Object)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Color = Color3.new(0, 0 ,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1 
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Color = Color3.new(0,1,0)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,255,255)
    text.Size = 13

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(0,255,0)
    Tracer.Thickness = 1
    Tracer.Transparency = 1
    
    local function Update()
        local Connection
        Connection = RunService.RenderStepped:Connect(function()
            if Object.Character and Object.Character:FindFirstChildOfClass("Humanoid") and Object.Character.Humanoid.Health > 0 and Object.Character:FindFirstChild("HumanoidRootPart") and Object ~= Players.LocalPlayer then
                local Vector, OnScreen = Camera:WorldToViewportPoint(Object.Character.HumanoidRootPart.Position)

                local Head = Camera:WorldToViewportPoint(Object.Character.Head.Position + HeadOff)
                local HumanoidRootPart = Camera:WorldToViewportPoint(Object.Character.HumanoidRootPart.Position)
                local Leg = Camera:WorldToViewportPoint(Object.Character.HumanoidRootPart.Position - LegOff)

                if OnScreen then
                    if Toggle1 then
                    BoxOutline.Size = Vector2.new(2500 / HumanoidRootPart.z, Head.y - Leg.y)
                    BoxOutline.Position = Vector2.new(HumanoidRootPart.x - BoxOutline.Size.x / 2, HumanoidRootPart.y - BoxOutline.Size.y / 2)
                    BoxOutline.Visible = true
 
                    Box.Size = Vector2.new(2500 / HumanoidRootPart.z, Head.y - Leg.y)
                    Box.Position = Vector2.new(HumanoidRootPart.x - Box.Size.x / 2, HumanoidRootPart.y - Box.Size.y / 2)
                    Box.Visible = true
                    else
                        BoxOutline.Visible = false
                        Box.Visible = false
                    end
                    if ToggleNameOfPlayers then
                    text.Position = Vector2.new(HumanoidRootPart.X, HumanoidRootPart.Y)
                    text.Text = Object.Name
                    text.Visible = true
                    else
                    text.Visible = false
                    end
                    if ToggleTrackerPlayers then
                        Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                        Tracer.To = Vector2.new(Leg.X, Leg.Y)
                        Tracer.Visible = true
                        else
                     Tracer.Visible = false
                    end

                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    text.Visible = false
                    Tracer.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false
                text.Visible = false
                Tracer.Visible = false 

                if not Players:FindFirstChild(Object.Name) then
                    BoxOutline:Remove()
                    Box:Remove()
                    Connection:Disconnect()
                end

            end
        end)
    end

    task.spawn(Update)
end

for _,v in pairs(Players:GetPlayers()) do
    ESP(v)
end

Players.PlayerAdded:Connect(function(Player)
    ESP(Player)
end)


function ESPmouse(Object)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Color = Color3.new(0, 0 ,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1 
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Color = Color3.new(1, 0 ,0)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,0,0)
    text.Size = 13

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(255,0,0)
    Tracer.Thickness = 1
    Tracer.Transparency = 1
    
    local function Update()
        local Connection
        Connection = RunService.RenderStepped:Connect(function()
            if Object and Object:FindFirstChildOfClass("Humanoid") and Object:FindFirstChild("HumanoidRootPart")  then
                local Vector, OnScreen = Camera:WorldToViewportPoint(Object.HumanoidRootPart.Position)

                local Head = Camera:WorldToViewportPoint(Object.Head.Position + HeadOffmouse)
                local HumanoidRootPart = Camera:WorldToViewportPoint(Object.HumanoidRootPart.Position)
                local Leg = Camera:WorldToViewportPoint(Object.HumanoidRootPart.Position - LegOffmouse)

                if OnScreen then
                    if ToggleMouse then
                    BoxOutline.Size = Vector2.new(7000 / HumanoidRootPart.z, Head.y - Leg.y)
                    BoxOutline.Position = Vector2.new(HumanoidRootPart.x - BoxOutline.Size.x / 2, HumanoidRootPart.y - BoxOutline.Size.y / 2)
                    BoxOutline.Visible = true
 
                    Box.Size = Vector2.new(7000 / HumanoidRootPart.z, Head.y - Leg.y)
                    Box.Position = Vector2.new(HumanoidRootPart.x - Box.Size.x / 2, HumanoidRootPart.y - Box.Size.y / 2)
                    Box.Visible = true
                   else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    end
                    if ToggleNameOfMouse then
                    text.Position = Vector2.new(HumanoidRootPart.X, HumanoidRootPart.Y)
                    text.Text = Object.Name
                    text.Visible = true
                    else
                        text.Visible = false
                    end
                    if ToggleMouseTracer then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Leg.X, Leg.Y)
                    Tracer.Visible = true
                    else
                        Tracer.Visible = false
                    end
                else
                        Tracer.Visible = false
                        text.Visible = false
                        BoxOutline.Visible = false
                        Box.Visible = false
                end
            else
                Tracer.Visible = false
                text.Visible = false
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end

    task.spawn(Update)
end

for _,v in pairs(Work:GetChildren()) do
    if v.Name == "Mouse" then
        ESPmouse(v)
    end
end

function ESPmouseNew(Object)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Color = Color3.new(0, 0 ,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1 
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Color = Color3.new(1, 0 ,0)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,0,0)
    text.Size = 13

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(255,0,0)
    Tracer.Thickness = 1
    Tracer.Transparency = 1
    
    local function Update()
        local Connection
        Connection = RunService.RenderStepped:Connect(function()
            if Object and Object:FindFirstChildOfClass("Humanoid") and Object:FindFirstChild("HumanoidRootPart")  then
                local Vector, OnScreen = Camera:WorldToViewportPoint(Object.HumanoidRootPart.Position)

                local Head = Camera:WorldToViewportPoint(Object.Head.Position + HeadOffmouse)
                local HumanoidRootPart = Camera:WorldToViewportPoint(Object.HumanoidRootPart.Position)
                local Leg = Camera:WorldToViewportPoint(Object.HumanoidRootPart.Position - LegOffmouse)

                if OnScreen then
                    if ToggleNewMouse then
                    BoxOutline.Size = Vector2.new(7000 / HumanoidRootPart.z, Head.y - Leg.y)
                    BoxOutline.Position = Vector2.new(HumanoidRootPart.x - BoxOutline.Size.x / 2, HumanoidRootPart.y - BoxOutline.Size.y / 2)
                    BoxOutline.Visible = true
 
                    Box.Size = Vector2.new(7000 / HumanoidRootPart.z, Head.y - Leg.y)
                    Box.Position = Vector2.new(HumanoidRootPart.x - Box.Size.x / 2, HumanoidRootPart.y - Box.Size.y / 2)
                    Box.Visible = true
                   else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    end
                    if ToggleNewMouseName then
                    text.Position = Vector2.new(HumanoidRootPart.X, HumanoidRootPart.Y)
                    text.Text = Object.Name
                    text.Visible = true
                    else
                        text.Visible = false
                    end
                    if ToggleNewMouseTracer then
                    Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 1)
                    Tracer.To = Vector2.new(Leg.X, Leg.Y)
                    Tracer.Visible = true
                    else
                        Tracer.Visible = false
                    end
                else
                        Tracer.Visible = false
                        text.Visible = false
                        BoxOutline.Visible = false
                        Box.Visible = false
                end
            else
                Tracer.Visible = false
                text.Visible = false
                BoxOutline.Visible = false
                Box.Visible = false
            end
        end)
    end

    task.spawn(Update)
end

for _,v in pairs(Work:GetChildren()) do
    if v.Name == "NewMouse" then
        ESPmouseNew(v)
    end
end
function ESPItems(Object)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Color = Color3.new(0, 0 ,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1 
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Color = Color3.new(255,0,0)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,0,0)
    text.Size = 13

    local Tracer = Drawing.new("Line")
    Tracer.Visible = false
    Tracer.Color = Color3.new(255,0,0)
    Tracer.Thickness = 1
    Tracer.Transparency = 1
    
    local function Update()
        local Connection
        Connection = RunService.RenderStepped:Connect(function()
                local Vector, OnScreen = Camera:WorldToViewportPoint(Object.Position)
                local Head = Camera:WorldToViewportPoint(Object.Position + HeadItemOff)
                local HumanoidRootPart = Camera:WorldToViewportPoint(Object.Position)
                local Leg = Camera:WorldToViewportPoint(Object.Position - LegItemOff)

                if OnScreen then
                    if ToggleItemsespBox then
                        BoxOutline.Size = Vector2.new(2500 / HumanoidRootPart.z, Head.y - Leg.y)
                        BoxOutline.Position = Vector2.new(HumanoidRootPart.x - BoxOutline.Size.x / 2, HumanoidRootPart.y - BoxOutline.Size.y / 2)
                        BoxOutline.Visible = true
     
                        Box.Size = Vector2.new(2500 / HumanoidRootPart.z, Head.y - Leg.y)
                        Box.Position = Vector2.new(HumanoidRootPart.x - Box.Size.x / 2, HumanoidRootPart.y - Box.Size.y / 2)
                        Box.Visible = true
                        else
                            BoxOutline.Visible = false
                            Box.Visible = false
                        end
                    if ToggleItemespNames then
                    text.Position = Vector2.new(HumanoidRootPart.X, HumanoidRootPart.Y)
        if Object.Color == Color3.fromRGB(248, 248, 248) then
                    text.Text = "White Key"
        elseif Object.Color == Color3.fromRGB(196, 40, 28) then
                    text.Text = "Red Cheese"
        elseif Object.Color == Color3.fromRGB(0, 255, 0) then
                       text.Text = "Green Key"
        elseif Object.Color == Color3.fromRGB(255, 255, 0) then
                    text.Text = "Yellow Key"
        elseif Object.Color == Color3.fromRGB(16, 42, 220) then
                    text.Text = "Blue Key"
         elseif Object.Color == Color3.fromRGB(205, 205, 205) then
            text.Text = "Bloxy Cola"
        elseif Object.Color == Color3.fromRGB(159, 161, 172) then
            text.Text = "Board"
        elseif Object.Color == Color3.fromRGB(255, 0, 0) then
            text.Text = "Red Key"
        elseif Object.Color == Color3.fromRGB(255, 0, 0) then
            text.Text = "Red Key"
        elseif Object.Color == Color3.fromRGB(170, 0, 170) then
            text.Text = "Purple Key"
                    end
                    text.Visible = true
                    else
                        text.Visible = false  
                end
                if ToggleItemespTracker then
                Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 1)
                Tracer.To = Vector2.new(HumanoidRootPart.X, HumanoidRootPart.Y)
                Tracer.Visible = true
                else
                Tracer.Visible = false
                end
                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                    text.Visible = false
                    Tracer.Visible = false
                end
        end)
    end

    task.spawn(Update)
end

for _,v in pairs(Work:GetChildren()) do
    if v.Name == "Handle" then
        ESPItems(v)
    end
end
Players.PlayerAdded:Connect(function(player)
    local name = player.Name
    table.insert(playerlist,name)
    playerDropdowns:Add(name)
end)

Players.PlayerRemoving:Connect(function(player)
    local name = player.Name
    for i,v in pairs(playerlist)do
        if v == name then  
            table.remove(playerlist,i)
            playerDropdowns:ClearText(name)
        end
    end
end)

 
