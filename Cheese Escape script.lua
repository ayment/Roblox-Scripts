
--Wait until game loads
repeat
    wait()
until game:IsLoaded()

--Stops script if on a different game
if game.PlaceId ~= 5777099015 then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Cheese Escape",
        Text = "Failed This script works only in Cheese Escape",
        Duration = 10
    })
    return
end


if _G.menu ~= true then
    _G.menu = true
    elseif _G.menu == true then
    local removethat = game.CoreGui:FindFirstChild("FluxLib")
    removethat:Destroy()
    removethat:Remove()
    end
--if someone wants to learn more about this ui then take this https://gist.githubusercontent.com/Simak90/bf6e06309d013331eda908d06058b323/raw/87531e808f8b56a33974826804ea9939aa3234cd/Flux%2520docs
--this helps me a lot so I hope this helps you too.
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/ayment/Roblox-Scripts/main/lib.txt")() --ui library = flux
local win = Flux:Window("Cheese Escape", "by ayment", Color3.fromRGB(100,65.1,0))
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
tab:Button("Github", "For Updates", function()
    Flux:Notification("My Github link saved to ur clipboard", "Ok")
        setclipboard("https://github.com/ayment")
    end)
tab:Line()


---------------------------------------------------------------------
--Before anything you say I'm new to this, so this is my first script
---------------------------------------------------------------------



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
           getgenv().canGoThru = bool
           if getgenv().canGoThru then
               noclip()
           end
       end)
       function noclip()
           game:GetService("RunService").Stepped:Connect(function()
               if getgenv().canGoThru == true then
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
    local Door = game.Workspace.Door

for i,v in pairs(getconnections(Door.Changed)) do
    v:Disable()
end

Door:Remove()
end)
local opendoor = general:Toggle("Open first door faster", "this will open the door for u", false, function(door)
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
                2124940134
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
                2124940136
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


local WS = general:Slider("WalkSpeed", "this will change ur speed, 20 is the normal speed", 0 , 750, 20, function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (t)
end)
local JP = general:Slider("Jump Power", "this will change ur Jump Power, 37 is the normal Jump Power", 0,750,37, function (t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (t)
end)
local CCV = general:Slider("Change Cheese Value", "This will change ur leaderboard stats", 0 , 100, 0, function(t)
    game:service'Players'.LocalPlayer.leaderstats.Cheese.Value = (t)
    end)
    general:Line()
    general:Dropdown("Settings Reset", {"All", "Reset all item", "Reset WalkSpeed", "Reset Jump Power", "Reset Cheese Value"}, function (t)
        if t == "All" then
            WS:Change(20)
            JP:Change(37)
            CCV:Change(0)
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
        if t == "Reset all item" then
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
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

-- Toggles
local Toggle1 = false
local Toggle = false
local Toggle3 = false
local MainToggle = false
-- Variable
local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0, 3, 0)
local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")
    local Visualtab = win:Tab("Visual","http://www.roblox.com/asset/?id=6022668888" )
    Visualtab:Label("ESP Options:")
    Visualtab:Toggle("Players", "This will make u see where are the players", false, function(State)
     MainToggle = State
     Toggle3 = State
     Toggle1 = State
    end)
    Visualtab:Dropdown("ESP Style", {"All", "Names Only", "Box Only"}, function (t)
        if MainToggle then
 if t == "All" then
    Toggle3 = true
    Toggle1 = true
 end
 if t == "Names Only" then
    Toggle3 = true
    Toggle1 = false
 end
 if t == "Box Only" then
    Toggle3 = false
    Toggle1 = true
 end
end
    end)
    Visualtab:Toggle("Mouse Name", "This will make u see where are the mouse", false, function (State)
        if State then
        Toggle = true 
        else
        Toggle = false 
        end
        for i,v in pairs(game.Workspace.Mouse:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Mouse" and Toggle == true then 
            local BillboardGui = Instance.new("BillboardGui")
            local TextLabel = Instance.new("TextLabel")
            
            BillboardGui.Parent = v.Parent
            BillboardGui.AlwaysOnTop = true
            BillboardGui.LightInfluence = 1
            BillboardGui.Size = UDim2.new(0, 50, 0, 50)
            BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
            
            TextLabel.Parent = BillboardGui
            TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
            TextLabel.BackgroundTransparency = 1
            TextLabel.Size = UDim2.new(1, 0, 1, 0)
            TextLabel.Text = "Mouse"
            TextLabel.TextColor3 = Color3.new(1, 0, 0)
            TextLabel.TextScaled = true
            end
            end
            if Toggle == false then
                local esp = game.Workspace.Mouse.Mouse.BillboardGui

                for i,v in pairs(getconnections(esp.Changed)) do
                    v:Disable()
                end
                
                esp:Remove()  
            end
    end)

        --Teleport scripts
local Teletab = win:Tab("Teleport", "http://www.roblox.com/asset/?id=6022668888")
Teletab:Label("Teleport Options:")
Teletab:Textbox("Teleport to player:", "this will teleport u to any player", true, function (t)
    targetUsername = t

    players = game:GetService("Players")
    targetPlayer = players:FindFirstChild(targetUsername)
    players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
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
    local menuset = win:Tab("Menu Settings", "http://www.roblox.com/asset/?id=6022668888")
    menuset:Bind("Key to open/close the menu", Enum.KeyCode.RightShift, function(t) 
        _G.toggleUiHere(t)
            end) 
            
            menuset:Colorpicker("Menu Color", Color3.fromRGB(100,65.1,0), function(t)
                _G.PresetColor = t
                coroutine.wrap(_G.changeColor)()
                end)   
-- ESP

local function esp(p,cr)
    local h = cr:WaitForChild("Humanoid")
    local hrp = cr:WaitForChild("HumanoidRootPart")

    local text = Drawing.new("Text")
    text.Visible = false
    text.Center = true
    text.Outline = true 
    text.Font = 2
    text.Color = Color3.fromRGB(255,255,255)
    text.Size = 13

    local c1
    local c2
    local c3

    local function dc()
        text.Visible = false
        text:Remove()
        if c1 then
            c1:Disconnect()
            c1 = nil 
        end
        if c2 then
            c2:Disconnect()
            c2 = nil 
        end
        if c3 then
            c3:Disconnect()
            c3 = nil 
        end
    end

    c2 = cr.AncestryChanged:Connect(function(_,parent)
        if not parent then
            dc()
        end
    end)

    c3 = h.HealthChanged:Connect(function(v)
        if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
            dc()
        end
    end)

    c1 = rs.RenderStepped:Connect(function()
        local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
        if hrp_onscreen and Toggle3 then
            text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
            text.Text = p.Name
            text.Visible = true
        else
            text.Visible = false
        end
    end)
end

local function p_added(p)
    if p.Character then
        esp(p,p.Character)
    end
    p.CharacterAdded:Connect(function(cr)
        esp(p,cr)
    end)
end

for i,p in next, ps:GetPlayers() do 
    if p ~= lp then
        p_added(p)
    end
end

ps.PlayerAdded:Connect(p_added)

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

                    if v.TeamColor == lp.TeamColor then
                        Box.Color = Color3.new(0,1,0)
                        else
                        Box.Color = Color3.new(1,0,0)  
                    end
                    
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



 
