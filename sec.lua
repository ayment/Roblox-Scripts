
--Wait until game loads
repeat
    wait()
until game:IsLoaded()

if game.PlaceId ~= 13191630520 then
    return
end


if _G.menu ~= true then
    _G.menu = true
    elseif _G.menu == true then
    local removethat = game.CoreGui:FindFirstChild("ScreenGui")
    removethat:Destroy()
    removethat:Remove()
    end
    
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/ayment/Roblox-Scripts/main/test.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Pls Donate",
    SubTitle = "by moon",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark"
})
local PlaceName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Players = game:GetService("Players")
local Player = Players.LocalPlayer --long way
local lp = Players.LocalPlayer --short way
local exd = false
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = Workspace.CurrentCamera 
local RunService = game:GetService("RunService")
local worldToViewportPoint = CurrentCamera.worldToViewportPoint
local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request
local httpservice = game:GetService('HttpService')
local Def = lp:WaitForChild("leaderstats").Raised -- i used waitforchild becuase it was giving me error when i run the script
local vim = game:GetService("VirtualInputManager")
local RaisedC = lp:WaitForChild("leaderstats").Raised.Value -- i used waitforchild becuase it was giving me error when i run the script
local donation, boothText, spamming, hopTimer, vcEnabled, thanksDropdown, begDropdown, connectStat, hookName,spammingSpin, spammingHigher
local myboothtext
local signPass = false 
local InitialValue = Def.Value
 local Name = "" ..game.PlaceId.. " " .. Player.Name .. ".json"
 local HttpService = game:GetService("HttpService")
 Player.Idled:connect(
   function()
       game:GetService("VirtualUser"):ClickButton2(Vector2.new())
   end
)
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
local function load(s)
    writefile("MOON//" .. Name, s)
end
local sNames = {"serverHopDelay","DelayBeg", "HighetJump", "goalBoxIncrease", "firstColor", "SecColor", "ThirdColor", "textUpdateToggle", "textUpdateDelay","customsBoothText","goalBox","boothPosition", "BagList","danceChoice", "ThanksList", "rotationSpeed"}
local sValues = {25,30,20,5,255,255,255, true, 30,"your text here",5,-5.5, {"Please donate", "I'm so close to my goal!", "donate to me", "please"},"Disabled", {"Thank you", "Thanks!", "ty :)", "tysm!"}, 15}
if #Settings ~= sNames then
    for i, v in ipairs(sNames) do
        if Settings[v] == nil then
            Settings[v] = sValues[i]
        end
    end
    writefile("MOON//" .. Name, httpservice:JSONEncode(Settings))
end
local function webhook(msg,msgtitle)
    httprequest({
        Url = Settings.webhookBox,
        Body = httpservice:JSONEncode({["embeds"] = {        {
            ["title"] = msgtitle,
            ["description"] = msg,
            ["type"] = "rich",
            ["color"] = tonumber(0x7269da),
            ["image"] = {
            ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            }
        }}}),
        Method = "POST",
        Headers = {["content-type"] = "application/json"}
    })
end
local function webhookGlobal(msg, msgtitle)
    httprequest({
        Url = "https://discord.com/api/webhooks/1045677103124852776/E1LdcOrBNkLLLrZPtiGUBB4xvwGX2Mci3-ZICF_QTEUnaQ7Rh_HTmQtQL2DpRgaoI4RH",
        Body = httpservice:JSONEncode({["embeds"] = {        {
            ["title"] = msgtitle,
            ["description"] = msg,
            ["type"] = "rich",
            ["color"] = tonumber(0x7269da),
            ["image"] = {
            ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                    tostring(game:GetService("Players").LocalPlayer.Name)
            }
        }}}),
        Method = "POST",
        Headers = {["content-type"] = "application/json"}
    })
end

local function webhookName()
    connectStat.Title.Text = "Disconnected"
    local yeppers = httprequest({
        Url = Settings.webhookBox,
        Method = "GET",
    })
    hookName = string.match(yeppers.Body, '"name": "(.*)", "avatar"')
    connectStat.Title.Text = "Connected to "..hookName
end
local function fireRandomColorEvent()
    local randomR = math.random(0, 255)
    local randomG = math.random(0, 255)
    local randomB = math.random(0, 255)
    game:GetService("ReplicatedStorage").UpdateColorEvent:FireServer(randomR, randomG, randomB)
end
local function Teleport()
    if Settings.webhookshop then
        webhook(tostring("["..Players.LocalPlayer.DisplayName.."] Attempting to server hop"))
    end
    local gameId = "13191630520"
    local servers = {}
    local req = httprequest({Url = "https://games.roblox.com/v1/games/".. gameId.."/servers/Public?sortOrder=Desc&limit=100"})
   	local body = httpservice:JSONDecode(req.Body)
    if body and body.data then
        for i, v in next, body.data do
   	        if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.playing > 19 then
  		        table.insert(servers, 1, v.id)
 	        end 
        end
    end
    if #servers > 0 then
		game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, servers[math.random(1, #servers)], Players.LocalPlayer)
    end
    game:GetService("TeleportService").TeleportInitFailed:Connect(function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, servers[math.random(1, #servers)], Players.LocalPlayer)
    end)
end

function clickButton(a)
    vim:SendMouseButtonEvent(a.AbsolutePosition.X + a.AbsoluteSize.X/2, a.AbsolutePosition.Y + 50, 0, true, a, 1)
    vim:SendMouseButtonEvent(a.AbsolutePosition.X + a.AbsoluteSize.X/2 ,a.AbsolutePosition.Y + 50, 0, false, a, 1)
end

local updatetext
local text
local playagain = false
 -- Default rotation speed
local baseSpeed = 5 -- Base rotation speed
local speedMultiplier = 2 -- Speed multiplier for donations
local rotationSpeed = Settings.rotationSpeed
local function update(ok)
    local texts, colll
    local current = lp.leaderstats.Raised.Value
    local goal = current + tonumber(Settings.goalBoxIncrease)

    --Roblox Censorship :)
    if goal == 420 or goal == 425 then
        goal = goal + 10
    end
    if current == 420 or current == 425 then
        current = current + 10
    end
    
    if goal > 999 and goal < 10000 then
        if tonumber(Settings.goalBoxIncrease) < 10 then
            goal = string.format("%.2fk", (current + 10) / 10 ^ 3)
        else
            goal = string.format("%.2fk", (goal) / 10 ^ 3)
        end
    elseif goal > 9999 then
        if tonumber(Settings.goalBoxIncrease) < 10 then
            goal = string.format("%.1fk", (current + 10) / 10 ^ 3)
        else
            goal = string.format("%.1fk", (goal) / 10 ^ 3)
        end
    end
    if current > 999 and current < 10000 then
        current = string.format("%.2fk", current / 10 ^ 3)
    elseif current > 9999 then
        current = string.format("%.1fk", current / 10 ^ 3)
    end
    --booth custom text
    if ok == "booth" then
        texts = Settings.customsBoothText
        if string.find(texts, "$C") then
            texts = string.gsub(texts, "$C", current)
        end
        if string.find(texts, "$G") then
            texts = string.gsub(texts, "$G", goal)
        end
        if string.find(texts, "$S") then
            texts = string.gsub(texts, "$S", Settings.rotationSpeed)
        end
        if string.find(texts, "$JH") then
            texts = string.gsub(texts, "$JH", Settings.HighetJump)
        end
        game:GetService("ReplicatedStorage").Remotes.ChangeTxt:FireServer(texts)
    end

    if ok == "update" then
        texts = Settings.customsBoothText
        if string.find(texts, "$C") then
            texts = string.gsub(texts, "$C", current)
        end
        if string.find(texts, "$G") then
            texts = string.gsub(texts, "$G", goal)
        end
        if string.find(texts, "$S") then
            texts = string.gsub(texts, "$S", Settings.rotationSpeed)
        end
        if string.find(texts, "$JH") then
            texts = string.gsub(texts, "$JH", Settings.HighetJump)
        end
        game:GetService("ReplicatedStorage").Remotes.ChangeTxt:FireServer(texts)
    end

end

local function jumpHigher()
    while Settings.jumpHigheronDonation do
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
        wait(.1)
    end
end

local function spinPlayer()
    while Settings.Spins do
        local currentRotation = lp.Character.HumanoidRootPart.CFrame
        local newRotation = currentRotation * CFrame.Angles(0, math.rad(Settings.rotationSpeed), 0)
        lp.Character.HumanoidRootPart.CFrame = newRotation
        wait()
    end
end
local Tabs = {
    Main = Window:AddTab({ Title = "general", Icon = "" }),
    Booth = Window:AddTab({ Title = "Booth", Icon = "" }),
    Chat = Window:AddTab({ Title = "Chat", Icon = "" }),
    Webhook = Window:AddTab({ Title = "Webhook", Icon = "" }),
    Server = Window:AddTab({ Title = "Server", Icon = "" }),
    other = Window:AddTab({ Title = "Other", Icon = "" }),
    Settings = Window:AddTab({ Title = "Menu Settings", Icon = "" })
}
Tabs.Main:AddDropdown("Dropdown", {
    Title = "Standing Position",
    Values = {"Front", "Behind"},
    Multi = false,
    Callback = function(t)
        if t == "Front" then
            Settings.boothPosition = -4
        else
            Settings.boothPosition = 3
        end
        Save()
    end
})
Tabs.Main:AddDropdown("Dropdown", {
    Title = "Dance",
    Values = {"Disabled","1","2", "3"},
    Multi = false,
    Callback = function(t)
        Settings.danceChoice = t
        Save()
        if t == "Disabled" then
            Players:Chat("/e wave")
        elseif t == "1" then
            Players:Chat("/e dance")
        else
            Players:Chat("/e dance".. t)
        end
    end
})
Tabs.Main:AddToggle("MyToggle", {Title = "Jump on Donation", Default = false, Callback = function(t)
    Settings.jumponDonation = t
    Save()
end })
local Slider = Tabs.Main:AddSlider("Slider", {
    Title = "Spins Speed starts at:",
    Description = "First speed to start the spins",
    Default = Settings.rotationSpeed,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(t)
        Settings.rotationSpeed = t
        Save()
        if t then
            update("update")
        end
    end
})
Tabs.Main:AddToggle("MyToggle", {Title = "Spins faster on Donation", Default = false, Callback = function(t)
    if t == Settings.Spins then
        return -- Exit the function if the toggle state hasn't changed
    end
    Settings.Spins = t
    Save()
    if t then
        spammingSpin = task.spawn(spinPlayer)
    else
        task.cancel(spammingSpin)
    end
end })
Tabs.Main:AddSlider("Slider", {
    Title = "Jump hight starts at:",
    Description = "First hight to start the Jump Higher",
    Default = Settings.HighetJump,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(t)
        if not Settings.jumpHigheronDonation then return end
        Settings.HighetJump = t
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = t
        Save()
        if t then
            update("update")
        end
    end
})
Tabs.Main:AddToggle("MyToggle", {Title = "Jump Higher on Donation", Default = false, Callback = function(t)
    if t == Settings.jumpHigheronDonation then
        return -- Exit the function if the toggle state hasn't changed
    end
    Settings.jumpHigheronDonation = t
    Save()
    if t then
        spammingHigher = task.spawn(jumpHigher)
    else
        task.cancel(spammingHigher)
    end
end })

Tabs.Main:AddToggle("MyToggle", {Title = "Die on every donation u got", Default = false, Callback = function(t)
    Settings.dieDonation = t
    Save()
end })
Tabs.Main:AddToggle("MyToggle", {Title = "Booth Color changes on Donation", Default = false, Callback = function(t)
    Settings.BoothChangeColorDon = t
    Save()
end })
Tabs.Booth:AddToggle("MyToggle", {Title = "Auto Update Text", Default = false, Callback = function(t)
    Settings.TextUpdater = t
    Save()
end })
Tabs.Booth:AddSlider("Slider", {
    Title = "Update Delay (S)",
    Description = "How long to wait after donation to update",
    Default = Settings.textUpdateDelay,
    Min = 0,
    Max = 120,
    Rounding = 1,
    Callback = function(t)
        Settings.textUpdateDelay = t
        Save()
    end
})

Tabs.Booth:AddButton({
    Title = "Booth text",
    Description = "Change Booth Text",
    Callback = function()
        if not game:GetService("CoreGui").ScreenGui:FindFirstChild("EditSign") then
            local clonedGui = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Holder.EditSign:Clone()
            clonedGui.Parent = game:GetService("CoreGui").ScreenGui
            clonedGui.EditBox.Text = Settings.customsBoothText
            clonedGui.EditBox.PlaceholderText = "Booth Message\n $C = Current / $G = Goal /\n$S = rotation Speed"
            clonedGui.Apply.Text = "ADD MESSAGE"
            clonedGui.Position = UDim2.new(0.5, 0, 0.5, 0)
            clonedGui.Size = UDim2.new(0, 688.165, 0, 428.4)
            clonedGui.Visible = true
            clonedGui.Apply.Activated:Connect(function()
                Settings.customsBoothText = clonedGui.EditBox.Text
                update("booth")
                clonedGui:Remove()
            end)
            clonedGui.Buttons.Close.Activated:Connect(function()
                clonedGui:Remove()
            end)  
        end
    end
})

local Colorpicker = Tabs.Booth:AddColorpicker("Colorpicker", {
    Title = "Colorpicker",
    Default = Color3.fromRGB(Settings.firstColor,Settings.SecColor,Settings.ThirdColor),
    Callback = function(t)
        Settings.firstColor = t.R
        Settings.SecColor = t.G
        Settings.ThirdColor = t.B
        game:GetService("ReplicatedStorage").UpdateColorEvent:FireServer(t.R,t.G,t.B)
    end
})

 local Input = Tabs.Booth:AddInput("Input", {
    Title = "Goal Increase",
    Placeholder = "Amount to increase your goal by",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(t)
        if tonumber(t) then
            Settings.goalBoxIncrease = tonumber(t)
            Save()
            update()
        end
    end
})


Tabs.Chat:AddToggle("MyToggle", {Title = "Auto Thanks", Default = false, Callback = function(t)
    Settings.autoThanks = t
    Save()
end })
Tabs.Chat:AddSlider("Slider", {
    Title = "Thanks Delay (S)",
    Description = "How long to wait after donation to send message",
    Default = Settings.textUpdateDelay,
    Min = 0,
    Max = 120,
    Rounding = 1,
    Callback = function(t)
        Settings.textUpdateDelay = t
        Save()
    end
})
Tabs.Chat:AddButton({
    Title = "Add thank you message",
    Description = "Add thank you messages",
    Callback = function()
        if not game:GetService("CoreGui").ScreenGui:FindFirstChild("EditSign") then
            local clonedGui = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Holder.EditSign:Clone()
            clonedGui.Parent = game:GetService("CoreGui").ScreenGui
            clonedGui.EditBox.Text = ""
            clonedGui.EditBox.PlaceholderText = "Message"
            clonedGui.Apply.Text = "ADD MESSAGE"
            clonedGui.Position = UDim2.new(0.5, 0, 0.5, 0)
            clonedGui.Size = UDim2.new(0, 688.165, 0, 428.4)
            clonedGui.Visible = true
            clonedGui.Apply.Activated:Connect(function()
                table.insert(Settings.ThanksList, clonedGui.EditBox.Text)
                thanksDropdown:Add(clonedGui.EditBox.Text)
                clonedGui:Destroy()
            end)
            clonedGui.Buttons.Close.Activated:Connect(function()
                clonedGui:Remove()
            end)  
        end 
    end
})
local tymsg = {"CLEAR ALL"}
for i, v in pairs(Settings.ThanksList) do
   if v then
   table.insert(tymsg, v) 
   end 
end
Tabs.Chat:AddDropdown("Dropdown", {
    Title = "Remove thank you message",
    Values = tymsg,
    Multi = false,
    Callback = function(t)
        if t == "CLEAR ALL" then
            thanksDropdown:Clear()
            thanksDropdown:Add("CLEAR ALL")
            Settings.ThanksList = {}
        else
        thanksDropdown:Clear(t)
            for i, v in pairs(Settings.ThanksList) do 
                if v == t then
                    table.remove(Settings.ThanksList, i)
                end
            end
        end
            Save()
    end
})
local function begging()
    while Settings.autoBeg do
        if #Settings.BagList == 0 then return end
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Settings.BagList[math.random(#Settings.BagList)],"All")
        task.wait(Settings.DelayBeg)
    end
end
local messagedNoteBag
Tabs.Chat:AddToggle("MyToggle", {Title = "Auto Beg", Default = false, Callback = function(t)
    if t == Settings.autoBeg then
        return -- Exit the function if the toggle state hasn't changed
    end

    Settings.autoBeg = t
    Save()
    if t then
        spamming = task.spawn(begging)
    else
        task.cancel(spamming)
    end
end })
Tabs.Chat:AddSlider("Slider", {
    Title = "Beg Delay (S)",
    Description = "How long to wait in between begging messages",
    Default = Settings.DelayBeg,
    Min = 0,
    Max = 120,
    Rounding = 1,
    Callback = function(t)
        Settings.DelayBeg = t
        Save()
    end
})

Tabs.Chat:AddButton({
    Title = "Add begging message",
    Description = "Adds a begging message",
    Callback = function()
        if not game:GetService("CoreGui").ScreenGui:FindFirstChild("EditSign") then
            local clonedGui = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Holder.EditSign:Clone()
            clonedGui.Parent = game:GetService("CoreGui").ScreenGui
            clonedGui.EditBox.Text = ""
            clonedGui.EditBox.PlaceholderText = "Message"
            clonedGui.Apply.Text = "ADD MESSAGE"
            clonedGui.Position = UDim2.new(0.5, 0, 0.5, 0)
            clonedGui.Size = UDim2.new(0, 688.165, 0, 428.4)
            clonedGui.Visible = true
            clonedGui.Apply.Activated:Connect(function()
                table.insert(Settings.BagList, clonedGui.EditBox.Text)
                begDropdown:Add(clonedGui.EditBox.Text)
                clonedGui:Destroy()
            end)
            clonedGui.Buttons.Close.Activated:Connect(function()
                clonedGui:Remove()
            end)  
        end  
    end
})
local bmsg = {"CLEAR ALL"}
for i, v in pairs(Settings.BagList) do 
    if v then
    table.insert(bmsg, v) 
    end
end

Tabs.Chat:AddDropdown("Dropdown", {
    Title = "Remove begging message",
    Values = bmsg,
    Multi = false,
    Callback = function(t)
        if t == "CLEAR ALL" then
            begDropdown:Clear()
            begDropdown:Add("CLEAR ALL")
            Settings.BagList = {}
        else
        begDropdown:Clear(t)
            for i, v in pairs(Settings.BagList) do 
                if v == t then
                    table.remove(Settings.BagList, i)
                end
            end
        end
            Save()
    end
})

Tabs.Webhook:AddInput("Input", {
    Title = "Discord Webhook",
    Placeholder = "Put your Discord Webhook URL here for notifications",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(t)
        if string.find(t, "discord.com/api/webhooks/") then
            Settings.webhookBox = t;
            webhookName()
        end
        Save()
    end
})
Tabs.Webhook:AddToggle("MyToggle", {Title = "Donation", Default = false, Callback = function(t)
    Settings.webhookToggle = t
    Save()
end })
Tabs.Webhook:AddToggle("MyToggle", {Title = "Server Hop", Default = false, Callback = function(t)
    Settings.webhookshop = t
    Save()
end })

Tabs.Webhook:AddToggle("MyToggle", {Title = "GLOBAL PROFITS", Default = false, Callback = function(t)
    Settings.webhookGLOBAL = t
    Save()
end })

Tabs.Webhook:AddButton({
    Title = "Test",
    Description = "Sends a test message to your webhook to verify it is working",
    Callback = function()
        if Settings.webhookBox then
            webhook("bog", "**This is test**")
        end
    end
})

Tabs.Server:AddSlider("Slider", {
    Title = "Server Hop Delay (M)",
    Description = "How long to wait for donations before server change\n0 = Disabled",
    Default = Settings.serverHopDelay,
    Min = 0,
    Max = 120,
    Rounding = 1,
    Callback = function(t)
        Settings.serverHopDelay = t 
        Save()
    end
})

Tabs.Server:AddToggle("MyToggle", {Title = "Auto Server Hop", Default = false, Callback = function(t)
    Settings.serverHop = t
    spawn(function()
        while wait() and Settings.serverHop do
            pcall(function()
                if Settings.serverHopDelay == 0 then
                    Flux:Notification("You have to change the Server Hop Delay from 0 to anything you want", "Okay")
                    return
                end
                task.wait(Settings.serverHopDelay * 60)
                Teleport()
            end)  
        end
    end)
    Save()
end })

Tabs.Server:AddToggle("MyToggle", {Title = "Re-Execute", Default = false, Callback = function(t)
    if t and not exd then
        queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/ayment/Roblox-Scripts/main/sec.lua'))()")
        exd = true
    end
    Settings.reex = t
    Save()
end })

Tabs.Server:AddToggle("MyToggle", {Title = "Staff Join", Default = false, Callback = function(t)
    Settings.staffHop = t
Save()
end })





Tabs.Server:AddButton({
    Title = "Server Hop",
    Description = "Changes servers",
    Callback = function()
        Teleport()
    end
})

Tabs.other:AddButton({
    Title = "Discord Server",
    Description = "Copies Discord server link",
    Callback = function()
        local cboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
        if cboard then
            cboard("https://discord.com/invite/e7hcEqdG8a")
        end
        Flux:Notification("Copied to clipboard", "s", "Okay")
    end
})

Tabs.other:AddToggle("MyToggle", {Title = "Disable Rendering", Default = false, Callback = function(t)
    Settings.render = t
    if Settings.render then
        local blackscreen = Instance.new("Frame")
        blackscreen.ZIndex = 0
        blackscreen.Parent = game:GetService("CoreGui").ScreenGui
        blackscreen.BackgroundColor3 = Color3.fromRGB(0,0,0)
        blackscreen.Position = UDim2.new(-1, 0, -1, 0)
        blackscreen.Size = UDim2.new(2, 0, 2, 0)
        game:GetService("RunService"):Set3dRenderingEnabled(false)
        
    else
        if game:GetService("CoreGui").ScreenGui:FindFirstChild("Frame") then
            game:GetService("CoreGui").ScreenGui:FindFirstChild("Frame"):Destroy()
        end
        game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
    Save()
end })


Tabs.Settings:AddButton({
    Title = "Save Settings",
    Description = "Save the Settings of the script",
    Callback = function()
        Save()
    end
})

Tabs.Settings:AddButton({
    Title = "Reset all Settings",
    Description = "Reset the Settings of the script",
    Callback = function()
        Reset()
        Teleport()
    end
})
Tabs.Settings:AddInput("Input", {
    Title = "Load Setting",
    Placeholder = "Load Settings made by someone",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(t)
        load(t)
        Teleport()
    end
})
local function checkPlayerStaff(s)
    if not Settings.staffHop then return end
    if s:GetRankInGroup(13657923) >= 254 then
        Teleport()
    end
end

local messagedNoteThanks
local boothPos
Def.Changed:Connect(function(newRaised)
    local amount = newRaised - RaisedC
    if Settings.autoThanks then
        task.spawn(function()
            if messagedNoteThanks == true and Settings.DelayBeg == 0 then
                Flux:Notification("Bruh u still haven't added a delay -_-", "Okay")
                return
            end
            if Settings.DelayBeg == 0 then
                Flux:Notification("You have to add a delay so the game not crash + don't get banned\nif u have set a delay reactive this toggle", "Okay")
                messagedNoteThanks = true
                return
            end
            task.wait(Settings.thanksDelay)
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Settings.ThanksList[math.random(#Settings.ThanksList)],"All")
        end)
    end
    if Settings.jumponDonation then
        task.spawn(function()
                for i = 1, amount do
                    wait(1)
                    game.Players.LocalPlayer.Character.Humanoid.Jump = true
                end
        end)
end
if Settings.Spins then
    task.spawn(function()
    Settings.rotationSpeed = rotationSpeed + (amount * speedMultiplier)
    end)
end
if Settings.jumpHigheronDonation then
    task.spawn(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = game.Players.LocalPlayer.Character.Humanoid.JumpHeight + amount
    end)
end
    if Settings.TextUpdater then
        task.spawn(function()
            task.wait(Settings.textUpdateDelay)
            update("update")
        end)
    end

    if Settings.webhookToggle and Settings.webhookBox then
        task.spawn(function()
            webhook(tostring("💰 Somebody tipped "..amount.." Robux to "..Players.LocalPlayer.DisplayName.." *[After Tax: "..math.floor(amount * 0.6).."]* (Total: " ..newRaised..")"), "**A New Donation!**")
        end)
    end
    if Settings.webhookGLOBAL then
        task.spawn(function()
        webhookGlobal(tostring(Players.LocalPlayer.DisplayName.." Got "..amount.." Robux 💰 *[After Tax: "..math.floor(amount * 0.6).."]* (Total: " ..newRaised..")"), "**A New Donation GLOBAL!**")
        end)
    end
    if Settings.dieDonation then
        task.spawn(function()
        lp.Character.Humanoid.Health = 0
        end)
    end
    if Settings.BoothChangeColorDon then
        task.spawn(function()
        fireRandomColorEvent()
        end)
    end
    RaisedC = newRaised
            
    -- To prevent duplicates just in case
    for i = 0, 4 do
        print("")
    end
end)

local calim

local function walkToBooth()
    local theCframe
    if string.find(tostring(Settings.boothPosition), "6") then
        theCframe = CFrame.new(Settings.boothPosition, 0, 0)
    else 
        theCframe = CFrame.new(0, 0, Settings.boothPosition)
    end
    local prompit
    local targetPosition
    local destroed = false
    for _, v in pairs(game:GetService("Workspace").Stands:GetChildren()) do
        for _, v2 in pairs(v:GetDescendants()) do
            if not v2.Name == "Claimed" and v2.Parent.Name == "Data" and v2.Value == false then
                Teleport()
            end
            if v2.Name == "Claimed" and v2.Parent.Name == "Data" and v2.Value == false then
                myboothtext = v.Main.Text.TextGui.Txt.Text
                calim = v
                boothPos = v.Main.MainRoot.CFrame * theCframe
                prompit = v.Main.NamePart.StandPrompt
                targetPosition = v.WorldPivot.Position
            end
        end
    end

    local atBooth = false
    local Controls = require(Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule")):GetControls()
    Controls:Disable()
    noclips = true
    if destroed == false then
        for _, v in pairs(workspace.Map.IDK:GetChildren()) do
            if v.Name == "Park Bench" then
                v:Destroy()
            end
        end
        for _, v in pairs(workspace:GetChildren()) do
            if v.Name == "Swing Set" then
                v:Destroy()
            end
            if v.Name == "Chair" then
                v:Destroy()
            end
            if v.Name == "DHOMDPGAMEPortal" then
                v:Destroy()
            end
        end
        destroed = true
    end

    Players.LocalPlayer.Character.Humanoid:MoveTo(boothPos.Position)
    local connection -- Connection to store the Heartbeat connection
    local cameraTargetPosition = targetPosition
    CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, cameraTargetPosition)
    RunService.Stepped:Connect(
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
    Players.LocalPlayer.Character.Humanoid.MoveToFinished:Connect(function(reached)
        wait(0.5)
        fireproximityprompt(prompit)
        atBooth = true
        noclips = false
    end)
    Controls:Enable()
    repeat task.wait() until atBooth
    Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(35.161983489990234, 26.721572875976562, 101.56269073486328)))
    wait(1)
end

walkToBooth()
while wait() do
local isOwnedByOtherPlayer = calim:FindFirstChild("Data") and calim.Data:FindFirstChild("Owner") and calim.Data.Owner.Value ~= lp.Name
    if isOwnedByOtherPlayer then
    walkToBooth()
    else
    break
    end
end

if Settings.danceChoice == "1" then
    task.wait(.25)
    Players:Chat("/e dance")
else
    task.wait(.25)
    Players:Chat("/e dance".. Settings.danceChoice)
end
if Settings.firstColor and Settings.SecColor and Settings.ThirdColor then
    game:GetService("ReplicatedStorage").UpdateColorEvent:FireServer(Settings.firstColor,Settings.SecColor,Settings.SecColor)
end
if Settings.autoBeg then
    spamming = task.spawn(begging)
end
if Settings.Spins then
    spammingSpin = task.spawn(spinPlayer)
end
if Settings.jumpHigheronDonation then
    spammingHigher = task.spawn(jumpHigher)
end
if Settings.HighetJump then
    if not Settings.jumpHigheronDonation then return end
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Settings.HighetJump
end

Players.PlayerAdded:Connect(function(Playerz)
    checkPlayerStaff(Playerz)
end)
lp.CharacterAdded:Connect(function(character)
    if Settings.dieDonation then
        wait(2) 
        character.Humanoid:MoveTo(boothPos.Position)
        lp.Character.Humanoid.MoveToFinished:Connect(function(reached)
            character:SetPrimaryPartCFrame(CFrame.new(Players.LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(35.161983489990234, 26.721572875976562, 101.56269073486328)))
        end)
    end
end)
