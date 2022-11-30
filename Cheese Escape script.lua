
--Wait until game loads
repeat
    wait()
until game:IsLoaded()

--Stops script if on a different game
if game.PlaceId ~= 5777099015 then
    game.Players.LocalPlayer:Kick("This script only works in Cheese Escape")
    return
end

if getgenv().loaded then
    return
else
    getgenv().loaded = true
end

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")() --ui library = flux
local win = Flux:Window("Cheese Escape", "by moon", Color3.fromRGB(100,65.1,0), Enum.KeyCode.RightShift) 
--visual locals
local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = Workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0, 3, 0)
--menu opt
local tab = win:Tab("Credits", "http://www.roblox.com/asset/?id=6023426915")
tab:Label("Made By MOON TEAM")
tab:Button("Discord Server", "Join our discord server for updates", function()
    Flux:Notification("join our discord server saved to ur clipboard", "Ok")
        setclipboard("https://discord.com/invite/e7hcEqdG8a")
    end)
tab:Line()
local general = win:Tab("general", "http://www.roblox.com/asset/?id=6022668888")
general:Toggle("God mode", "This will make u never die",false, function(t)
    if t then
local MouseDamageScript = game.Players.LocalPlayer.Character.MouseDamageScript

for i,v in pairs(getconnections(MouseDamageScript.Changed)) do
    v:Disable()
end

MouseDamageScript:Remove()
else
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
local plyr = game:GetService("Players").LocalPlayer
getgenv().canGoThru = false
general:Toggle("no clip", "This will allow you to move through the walls", false, function (bool)
           getgenv().cg = bool
           if getgenv().cg then
               noclip()
           end
       end)
       function noclip()
           game:GetService("RunService").Stepped:Connect(function()
               if getgenv().cg == true then
                   for i,v in pairs(plyr.Character:GetDescendants()) do
                       if v:IsA("BasePart") and v.CanCollide == true then
                           v.CanCollide = false
                       end
                   end
               end
           end)
        end
general:Button("Add Cheese", "This will add how many cheese do u want",  function()
game:service'ReplicatedStorage'.AddCheese:FireServer()
end)
general:Button("Delete first door", "this will delete the first door in the game, not recommended, use open door faster instead", function(t)
    Flux:Notification("first door Deleted", "Ok")
    local Door = game.Workspace.Door

for i,v in pairs(getconnections(Door.Changed)) do
    v:Disable()
end

Door:Remove()

end)
general:Toggle("Open first door faster", "this will open the door for u", false, function(door)
    if door then
getgenv().faster = true;
    else
 getgenv().faster = false;
    end
             
        while wait() do
            if getgenv().faster == true then
            fireclickdetector(game:GetService("Workspace").Cheese.ClickDetector);
            end
        end
end)
general:Button("Get All item", "this will give you all the item in the game",  function(t)
    for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
    end)
    general:Dropdown("Get Badges", {"all", "You completed the game", "Bloxy Cola", "Defeat The Rat","???", "Complete the second chapter", }, function (t)
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
            local Event = game:GetService("ReplicatedStorage").Events.AwardBadge
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
                    local Event = game:GetService("ReplicatedStorage").Events.AwardBadge
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
                    local Event = game:GetService("ReplicatedStorage").Events.AwardBadge
                    Event:FireServer(A_1)
                    end 
        end
        dt = t
        if dt == "Defeat The Rat" then
            local ids = {
                2124940134 --defeat the rat
                }
                for _,v in next, ids do
                    
                    local A_1 = v
                    local Event = game:GetService("ReplicatedStorage").Events.AwardBadge
                    Event:FireServer(A_1)
                    end
        end
        un = t
        if un == "???" then
            local ids = {
                2124940136 --???
            }
                for _,v in next, ids do
                    
                    local A_1 = v
                    local Event = game:GetService("ReplicatedStorage").Events.AwardBadge
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
                    local Event = game:GetService("ReplicatedStorage").Events.AwardBadge
                    Event:FireServer(A_1)
                    end
        end
end)
general:Slider("WalkSpeed", "this will change ur speed, 20 is the normal speed", 0 , 750, 20, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (t)
end)
general:Slider("Jump Power", "this will change ur Jump Power, 37 is the normal Jump Power", 0,750,37, function (t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (t)
end)
general:Slider("Change Cheese Value", "This will change ur leaderboard stats", 0 , 100, 0, function(t)
    game:service'Players'.LocalPlayer.leaderstats.Cheese.Value = (t)
    end)
        --Visual scripts
-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Camera = game:GetService("Workspace").CurrentCamera

-- Toggles
local Toggle1 = false

-- Variable
local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0, 3, 0)

    local Visualtab = win:Tab("Visual","http://www.roblox.com/asset/?id=6022668888" )
    Visualtab:Label("ESP Options:")
      Visualtab:Toggle("Players", "This will make u see where are the players", false, function(State)
        Toggle1 = State
    end)
    Visualtab:Toggle("Mouse", "This will make u see where are the mouse", false, function (State)
        Toggle = State --i didn't finish this part just wait for an update
    end)

        --Teleport scripts
local Teletab = win:Tab("Teleport", "http://www.roblox.com/asset/?id=6022668888")
Teletab:Label("Teleport Options:")
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
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)
        end

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
    Teletab:Dropdown("Cheeses location", {"Red Cheese", "1", "2", "3", "4","5", "6", "7", "8", "9"}, function (t)
        che10 = t
if che10 == "Red Cheese" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12.8112183, 5.32002211, -120.237991, -1, 0, 0, 0, 1, 0, 0, 0, -1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che1 = t
if che1 == "1" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-278.901978, 4.37002277, -15.0212517, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che2 = t
if che2 == "2" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-278.901978, 4.37002277, -54.5212517, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che3 = t
if che3 == "3" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-275.901978, 4.37002277, -141.021255, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che4 = t
if che4 == "4" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-127.401978, 4.37002277, -162.521255, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che5 = t
if che5 == "5" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(77.0980225, 4.37002277, -452.52124, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che6 = t
if che6 == "6" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-255.141968, 48.9200211, -171.011246, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che7 = t
if che7 == "7" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-146.201996, 4.47002268, -238.121262, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che8 = t
if che8 == "8" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(45.4980354, 24.7700233, -21.2212505, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)

end
che9 = t
if che9 == "9" then
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
        if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = (37)
        end

        end
    end)
-- ESP
function ESP(Object)
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Color = Color3.new(0, 0 ,0)
    BoxOutline.Thickness = 3
    BoxOutline.Transparency = 1 
    BoxOutline.Filled = false

    local Box = Drawing.new("Square")
    Box.Color = Color3.new(1, 1 ,1)
    Box.Thickness = 1
    Box.Transparency = 1
    Box.Filled = false

    local function Update()
        local Connection
        Connection = RunService.RenderStepped:Connect(function()
            if Object.Character and Object.Character:FindFirstChildOfClass("Humanoid") and Object.Character.Humanoid.Health > 0 and Object.Character:FindFirstChild("HumanoidRootPart") and Object ~= Players.LocalPlayer and Toggle1 then
                local Vector, OnScreen = Camera:WorldToViewportPoint(Object.Character.HumanoidRootPart.Position)

                local Head = Camera:WorldToViewportPoint(Object.Character.Head.Position + HeadOff)
                local HumanoidRootPart = Camera:WorldToViewportPoint(Object.Character.HumanoidRootPart.Position)
                local Leg = Camera:WorldToViewportPoint(Object.Character.HumanoidRootPart.Position - LegOff)

                if OnScreen then
                    BoxOutline.Size = Vector2.new(2000 / HumanoidRootPart.z, Head.y - Leg.y)
                    BoxOutline.Position = Vector2.new(HumanoidRootPart.x - BoxOutline.Size.x / 2, HumanoidRootPart.y - BoxOutline.Size.y / 2)
                    BoxOutline.Visible = true
 
                    Box.Size = Vector2.new(2000 / HumanoidRootPart.z, Head.y - Leg.y)
                    Box.Position = Vector2.new(HumanoidRootPart.x - Box.Size.x / 2, HumanoidRootPart.y - Box.Size.y / 2)
                    Box.Visible = true
                else
                    BoxOutline.Visible = false
                    Box.Visible = false
                end
            else
                BoxOutline.Visible = false
                Box.Visible = false

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



 
