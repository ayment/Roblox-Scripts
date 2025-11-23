-- This file was deobfuscated using Scene Deobfuscator discord.gg/deobfuscate :D

if not game:IsLoaded() then
    game.Loaded:Wait()
end
if not _G.IsOpened then
    _G.IsOpened = true
    spawn(function()
        while true do
            if table.find(loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Blacklist"))(), tostring(game.Players.LocalPlayer.UserId)) then
                local l_LocalPlayer_0 = game.Players.LocalPlayer
                local v1 = Instance.new("ScreenGui", l_LocalPlayer_0:WaitForChild("PlayerGui"))
                v1.ResetOnSpawn = false
                v1.IgnoreGuiInset = true
                for _, v3 in pairs(game.CoreGui:GetDescendants()) do
                    if v3:IsA("ScreenGui") and v3 ~= v1 and v3.Enabled then
                        v3.Enabled = false
                    end
                end
                for _, v5 in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v5:IsA("ScreenGui") and v5 ~= v1 and v5.Enabled then
                        v5.Enabled = false
                    end
                end
                local v6 = Instance.new("Frame", v1)
                v6.Size = UDim2.new(1, 0, 1, 0)
                v6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                v6.BorderSizePixel = 0
                v6.ZIndex = 10
                local v7 = Instance.new("TextLabel", v6)
                v7.Size = UDim2.new(0.8, 0, 0.6, 0)
                v7.Position = UDim2.new(0.1, 0, 0.2, 0)
                v7.Text = "\216\170\217\133 \216\173\216\184\216\177\217\131 \217\133\217\134 \217\135\216\176\216\167 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\168\217\136\216\167\216\179\216\183\216\169 \216\167\217\132\217\133\216\167\217\132\217\131 \217\134\216\170\217\138\216\172\216\169 \216\179\217\136\216\161 \216\167\217\132\216\167\216\179\216\170\216\174\216\175\216\167\217\133. \217\132\216\183\217\132\216\168 \217\129\217\131 \216\167\217\132\216\173\216\184\216\177\216\140 \217\138\216\177\216\172\217\137 \217\129\216\170\216\173 \216\170\217\131\216\170 \216\185\217\132\217\137 \216\179\217\138\216\177\217\129\216\177 VR7."
                v7.TextColor3 = Color3.fromRGB(255, 215, 0)
                v7.TextScaled = true
                v7.BackgroundTransparency = 1
                v7.Font = Enum.Font.SourceSansBold
                v7.TextWrapped = true
                v7.ZIndex = 11
                local v8 = Instance.new("TextLabel", v6)
                v8.Size = UDim2.new(0.2, 0, 0.1, 0)
                v8.Position = UDim2.new(0.05, 0, 0.85, 0)
                v8.TextColor3 = Color3.fromRGB(255, 215, 0)
                v8.TextScaled = true
                v8.BackgroundTransparency = 1
                v8.Font = Enum.Font.SourceSansBold
                v8.Text = "20"
                v8.ZIndex = 12
                spawn(function()
                    for v9 = tonumber(v8.Text), 0, -1 do
                        v8.Text = tostring(v9)
                        wait(1)
                    end
                    pcall(function()
                        v1:Destroy()
                    end)
                end)
                while true do
                    if task.wait() then
                        pcall(function()
                            Instance.new("BlurEffect", game.Lighting).Size = 50
                            local l_Part_0 = Instance.new("Part")
                            l_Part_0.Parent = workspace
                            l_Part_0.Size = Vector3.new(200, 200, 200)
                            l_Part_0.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            for _, v12 in pairs(game.CoreGui:GetDescendants()) do
                                if v12:IsA("ScreenGui") and v12 ~= v1 and v12.Enabled then
                                    v12.Enabled = false
                                end
                            end
                            for _, v14 in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
                                if v14:IsA("ScreenGui") and v14 ~= v1 and v14.Enabled then
                                    v14.Enabled = false
                                end
                            end
                        end)
                    else
                        break
                    end
                end
            end
            wait(100)
        end
    end)
    arg = "14"
    _G.AntiFlingToggled = false
    local v16 = (function()
        local v15 = {
            {r = 0, g = 0, b = 255, r2 = 0, g2 = 0, b2 = 140},
            {r = 255, g = 0, b = 0, r2 = 140, g2 = 0, b2 = 0},
            {r = 255, g = 215, b = 0, r2 = 180, g2 = 120, b2 = 0},
            {r = 255, g = 255, b = 255, r2 = 150, g2 = 150, b2 = 150},
            {r = 255, g = 15, b = 235, r2 = 106, g2 = 2, b2 = 106},
            {r = 127, g = 255, b = 189, r2 = 53, g2 = 106, b2 = 79},
            {r = 255, g = 170, b = 127, r2 = 90, g2 = 60, b2 = 45}
        }
        return v15[math.random(1, #v15)]
    end)()
    local l_r_0 = v16.r
    local l_g_0 = v16.g
    local l_b_0 = v16.b
    local l_r2_0 = v16.r2
    local l_g2_0 = v16.g2
    local l_b2_0 = v16.b2
    local l_Players_0 = game:GetService("Players")
    local l_LocalPlayer_1 = l_Players_0.LocalPlayer
    local _ = game:GetService("TweenService")
    local _ = game:GetService("RunService")
    local l_Lighting_0 = game:GetService("Lighting")
    local _ = game:GetService("HttpService")
    if (not syn or not syn.request) and (not http or not http.request) and not http_request and (not fluxus or not fluxus.request) then
        local _ = request
    end
    local l_l_LocalPlayer_1_Mouse_0 = l_LocalPlayer_1:GetMouse()
    local v31 = nil
    local v32 = 50
    local v33 = nil
    local _ = nil
    local v35 = false
    local _ = {}
    local v37 = {}
    local l_CurrentCamera_0 = workspace.CurrentCamera
    local v39 = "VR7 ON TOP"
    local v40 = pcall(function()
        assert(firesignal)
    end)
    getgenv().Cuff = {Bring = false, Throw = false}
    workspace.FallenPartsDestroyHeight = -500
    function GetCuff()
        local l_FirstChild_0 = game.Players.LocalPlayer.Backpack:FindFirstChild("Cuffing", true)
        local l_FirstChild_1 = game.Players.LocalPlayer.Character:FindFirstChild("Cuffing", true)
        return l_FirstChild_0 and l_FirstChild_0.Parent or l_FirstChild_1 and l_FirstChild_1.Parent or false
    end
    function SendNotify(v43, v44, v45)
        game:GetService("StarterGui"):SetCore("SendNotification", {Title = v43, Text = v44, Duration = v45})
        local v46 = Instance.new("Sound", game.Workspace)
        v46.SoundId = "rbxassetid://3398620867"
        v46.Volume = 10
        v46.Ended:Connect(function()
            v46:Destroy()
        end)
        v46:Play()
    end
    function GetBomb(v47)
        for _, v49 in ipairs(v47.Character:GetChildren()) do
            if v49:IsA("Tool") and v49.Name == "Bomb" then
                return v49
            end
        end
        for _, v51 in ipairs(v47.Backpack:GetChildren()) do
            if v51:IsA("Tool") and v51.Name == "Bomb" then
                return v51
            end
        end
        return nil
    end
    function GetDistanceFar(v52)
        return (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v52.Position).Magnitude
    end
    function GetNearPlayers(v53, v54)
        local l_Players_1 = game:GetService("Players")
        local v56 = {}
        local l_Character_0 = v53.Character
        if l_Character_0 then
            local l_HumanoidRootPart_0 = l_Character_0:FindFirstChild("HumanoidRootPart")
            if l_HumanoidRootPart_0 then
                for _, v60 in ipairs(l_Players_1:GetPlayers()) do
                    if v60 ~= v53 then
                        local l_Character_1 = v60.Character
                        if l_Character_1 then
                            local l_HumanoidRootPart_1 = l_Character_1:FindFirstChild("HumanoidRootPart")
                            if l_HumanoidRootPart_1 then
                                local l_Magnitude_0 = (l_HumanoidRootPart_0.Position - l_HumanoidRootPart_1.Position).Magnitude
                                if l_Magnitude_0 <= v54 then
                                    table.insert(v56, {Player = v60, Distance = l_Magnitude_0})
                                end
                            end
                        end
                    end
                end
                table.sort(v56, function(v64, v65)
                    if v64.Distance >= v65.Distance then
                        local _ = false
                    end
                    return true
                end)
                local v67 = {}
                for _, v69 in ipairs(v56) do
                    table.insert(v67, v69.Player)
                end
                return v67
            else
                return v56
            end
        else
            return v56
        end
    end
    local function v76(v70)
        local v71 = v70:match("[\216-\219][\128-\191]")
        local v72 = {}
        for v73 in v70:gmatch("[%z\001-\127\194-\244][\128-\191]*") do
            if v73 ~= " " then
                table.insert(v72, "\194\171" .. v73 .. "\194\187")
            else
                table.insert(v72, "  ")
            end
        end
        if not v71 then
            return table.concat(v72)
        else
            local v74 = {}
            for v75 = #v72, 1, -1 do
                table.insert(v74, v72[v75])
            end
            return table.concat(v74)
        end
    end
    function Send(v79)
        if game:GetService("TextChatService").ChatVersion ~= Enum.ChatVersion.LegacyChatService then
            local _ = false
        end
        isLegacyChat = true
        if game.CreatorId ~= 35755428 or not string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "\217\135\216\167\216\170") then
            if (game.CreatorId ~= 4001902 or not string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "Mohammad")) and (game.CreatorId ~= 14940374 or not string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "Rob")) then
                if not isLegacyChat then
                    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(tostring(v79))
                else
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(v79), "All")
                end
                return 
            else
                game:GetService("ReplicatedStorage"):FindFirstChild("Events", true):WaitForChild("SendMessage"):FireServer(v79)
                return 
            end
        else
            game:GetService("ReplicatedStorage"):FindFirstChild("Event", true):WaitForChild("SendMessage"):FireServer(v79)
            return 
        end
    end
    function GetRank()
        if game:GetService("StarterGui"):FindFirstChild("HDAdminInterface") and game:GetService("StarterGui").HDAdminInterface.Enabled then
            local l_Text_0 = game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.MainFrame.Pages.About.Info.m2RankName.Text
            if l_Text_0:sub(1, 1) == "'" and l_Text_0:sub(-1) == "'" then
                return (l_Text_0:sub(2, -2))
            end
        end
        return "Not Enabled"
    end
    function GetUserPic(v82)
        return game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar?userIds=" .. v82 .. "&size=420x420&format=Png&isCircular=false"):match("\"imageUrl\"%s*:%s*\"([^\"]+)\"")
    end
    function CheckHWID()
        for _, v84 in ipairs({
            "57D3220E-B408-47A3-95B4-4B8063EC7EAD",
            "d5856005-51ea-496b-8e03-74ee7f287942",
            "2f0d1097-a47b-426d-80d6-618c7b2015fd"
        }) do
            if game:GetService("RbxAnalyticsService"):GetClientId() == v84 then
                return {Value = true, ID = v84}
            end
        end
        return {Value = false, ID = false}
    end
    function GetDevice()
        if table.find({Enum.Platform.IOS, Enum.Platform.Android}, game:GetService("UserInputService"):GetPlatform()) then
            return "Mobile"
        else
            return "PC"
        end
    end
    function Execute(v85)
        if not GetRank() or GetRank() == "Not Enabled" then
            SendNotify("System VR7", "\217\132\217\132\216\167\216\179\217\129 \216\167\217\132\217\133\216\167\216\168 \216\186\217\138\216\177 \217\133\216\175\216\185\217\136\217\133", 5)
        else
            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(v85)
            SendNotify("System VR7", "Executed " .. command, 5)
        end
    end
    function RandomChar()
        local v86 = math.random(1, 5)
        local v87 = {}
        for v88 = 1, v86 do
            v87[v88] = string.char(math.random(32, 126))
        end
        return table.concat(v87)
    end
    function GetSofa()
        for _, v90 in ipairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v90:IsA("Tool") and v90.Name == "Couch" then
                v90.Parent = game.Players.LocalPlayer.Character
                return v90
            end
        end
        for _, v92 in ipairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v92:IsA("Tool") and v92.Name == "Couch" then
                return v92
            end
        end
        return nil
    end
    function BrookBring(v93, v94)
        local v95 = game.Players[v93]
        local v96 = nil
        if game.workspace:FindFirstChild("Platform") then
            v96 = game.workspace:FindFirstChild("Platform")
        else
            v96 = Instance.new("Part", workspace)
            v96.Name = "Platform"
            v96.Anchored = true
            v96.Size = Vector3.new(200, 1, 200)
            v96.CFrame = CFrame.new(0, -500, 0)
            v96.CanCollide = true
            v96.Transparency = 1
        end
        local v97 = 0
        local v98 = 0
        local l_CFrame_0 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        while true do
            task.wait()
            v98 = v98 + 1
            local v100 = GetSofa()
            if v100 then
                local v101 = nil
                if v100.Seat1.Occupant ~= "Occupant" then
                    if not v100.Seat1.Occupant or v100.Seat1.Occupant ~= v95.Character.Humanoid then
                        if v100.Seat1.Occupant and v100.Seat1.Occupant ~= v95.Character.Humanoid then
                            if v100.Seat2.Occupant ~= "Seat2" then
                                if v100.Seat2.Occupant and v100.Seat2.Occupant == v95.Character.Humanoid then
                                    v101 = v100.Seat2
                                end
                            else
                                v101 = v100.Seat2
                            end
                        end
                    else
                        v101 = v100.Seat1
                    end
                else
                    v101 = v100.Seat1
                end
                if not v95.Character.Humanoid.Sit or v95.Character.Humanoid.SeatPart ~= v101 then
                    if not v95.Character.Humanoid.Sit or v95.Character.Humanoid.SeatPart == v101 then
                        if v100.Parent ~= game.Players.LocalPlayer.Character then
                            v100.Parent = game.Players.LocalPlayer.Character
                        end
                        local v102 = math.sin(v97) * 4
                        v97 = v97 + 0.2
                        local v103 = v95.Character.HumanoidRootPart.Position + Vector3.new(0, -4.5 + v102, 0) + v95.Character.HumanoidRootPart.CFrame.lookVector * -0.7 + v95.Character.HumanoidRootPart.Velocity * Vector3.new(0.2, 0, 0.2)
                        local l_Unit_0 = (v95.Character.HumanoidRootPart.CFrame.lookVector * Vector3.new(1, 0, 1)).Unit
                        v101.CFrame = CFrame.new(v103, v103 - l_Unit_0)
                        if v98 >= 200 then
                            break
                        end
                    else
                        SendNotify("System VR7", "\217\132\216\167\217\138\217\133\217\131\217\134 \216\179\216\173\216\168 \216\167\217\132\216\182\216\173\217\138\216\169 \217\132\216\167\217\134\217\135 \217\130\216\167\216\185\216\175", 5)
                        break
                    end
                else
                    if v94 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_CFrame_0
                        game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
                    else
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v96.CFrame * CFrame.new(0, 5, 0)
                    end
                    wait(1)
                    v100.Parent = game.Players.LocalPlayer.Backpack
                    break
                end
            else
                SendNotify("System VR7", "\216\170\216\173\216\170\216\167\216\172 \217\131\217\134\216\168\216\169 \216\173\216\170\216\167 \216\170\217\130\216\175\216\177 \216\170\216\179\216\173\216\168", 5)
                break
            end
        end
        v98 = 0
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_CFrame_0
        game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
    end
    function ChangeToggleColor(v105)
        led = v105.Ticket_Asset
        if led.ImageColor3 == Color3.fromRGB(255, 0, 0) then
            led.ImageColor3 = Color3.fromRGB(0, 255, 0)
        else
            led.ImageColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
    function GetPing()
        return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
    end
    local function v112(v106)
        if v106 ~= "" then
            local v107 = v106:match("^%s*(.-)%s*$")
            for _, v109 in ipairs(game.Players:GetPlayers()) do
                if v109 ~= game.Players.LocalPlayer then
                    local v110 = v109.Name:lower():match("^%s*(.-)%s*$")
                    local v111 = v109.DisplayName:lower():match("^%s*(.-)%s*$")
                    if v110:sub(1, #v107) == v107:lower() or v111:sub(1, #v107) == v107:lower() then
                        return v109
                    end
                end
            end
            return nil
        else
            return nil
        end
    end
    local function v116(v113)
        if v113 == "" then
            return nil
        else
            local v114 = v113:lower():match("^%s*(.-)%s*$")
            local l_LocalPlayer_2 = game.Players.LocalPlayer
            if l_LocalPlayer_2.Name:lower():sub(1, #v114) == v114 or l_LocalPlayer_2.DisplayName:lower():sub(1, #v114) == v114 then
                return l_LocalPlayer_2
            else
                return nil
            end
        end
    end
    function GetCharacter(v117)
        if not v117.Character then
            return 
        else
            return v117.Character
        end
    end
    function GetRoot(v118)
        if GetCharacter(v118):FindFirstChild("HumanoidRootPart") then
            return GetCharacter(v118).HumanoidRootPart
        else
            return 
        end
    end
    function TeleportTO(v119, v120, v121, v122, v123)
        pcall(function()
            if v123 == "safe" then
                task.spawn(function()
                    for _ = 1, 30 do
                        task.wait()
                        GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                        if v122 ~= "pos" then
                            GetRoot(l_LocalPlayer_1).CFrame = CFrame.new(GetRoot(v122).Position) + Vector3.new(0, 2, 0)
                        else
                            GetRoot(l_LocalPlayer_1).CFrame = CFrame.new(v119, v120, v121)
                        end
                    end
                end)
            else
                GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                if v122 == "pos" then
                    GetRoot(l_LocalPlayer_1).CFrame = CFrame.new(v119, v120, v121)
                else
                    GetRoot(l_LocalPlayer_1).CFrame = CFrame.new(GetRoot(v122).Position) + Vector3.new(0, 2, 0)
                end
            end
        end)
    end
    local function v132()
        if RootPart then
            for _, v126 in next, l_Players_0:GetPlayers() do
                if v126 ~= l_LocalPlayer_1 then
                    local l_Character_2 = v126.Character
                    local v128 = l_Character_2 and l_Character_2:FindFirstChildWhichIsA("Humanoid")
                    local v129 = v128 and v128.RootPart
                    if v129 and (RootPart.Position - v129.Position).Magnitude < 2 then
                        for _, v131 in next, v128:GetPlayingAnimationTracks() do
                            if v131.Animation and v131.Animation.AnimationId:match("148840371") or v131.Animation.AnimationId:match("5918726674") then
                                return true
                            end
                        end
                        return false
                    end
                end
            end
        end
        return false
    end
    function PredictionTP(v133, v134)
        local v135 = GetRoot(v133)
        local l_Position_0 = v135.Position
        local l_Velocity_0 = v135.Velocity
        GetRoot(l_LocalPlayer_1).CFrame = CFrame.new(l_Position_0.X + l_Velocity_0.X * (GetPing() * 3.5), l_Position_0.Y + l_Velocity_0.Y * (GetPing() * 2), l_Position_0.Z + l_Velocity_0.Z * (GetPing() * 3.5))
        if v134 == "safe" then
            task.wait()
            GetRoot(l_LocalPlayer_1).CFrame = CFrame.new(l_Position_0)
            task.wait()
            GetRoot(l_LocalPlayer_1).CFrame = CFrame.new(l_Position_0.X + l_Velocity_0.X * (GetPing() * 3.5), l_Position_0.Y + l_Velocity_0.Y * (GetPing() * 2), l_Position_0.Z + l_Velocity_0.Z * (GetPing() * 3.5))
        end
    end
    function Cuffbring()
        if getgenv().Cuff.Bring then
            local v138 = GetCuff()
            if not v138 then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "System VR7",
                    Text = "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169",
                    Duration = 5
                })
                return 
            else
                local v139 = {}
                local v140 = {}
                do
                    local l_v138_0, l_v139_0, l_v140_0 = v138, v139, v140
                    local function v150(v144)
                        local function v148(v145)
                            local l_Humanoid_0 = v145:FindFirstChildOfClass("Humanoid")
                            if l_Humanoid_0 then
                                local v147 = l_Humanoid_0.Died:Connect(function()
                                    l_v139_0[v144] = os.time()
                                end)
                                table.insert(l_v140_0, v147)
                            end
                        end
                        if v144.Character then
                            v148(v144.Character)
                        end
                        local v149 = v144.CharacterAdded:Connect(v148)
                        table.insert(l_v140_0, v149)
                    end
                    for _, v152 in ipairs(game.Players:GetPlayers()) do
                        v150(v152)
                    end
                    local v153 = game.Players.PlayerAdded:Connect(v150)
                    table.insert(l_v140_0, v153)
                    task.spawn(function()
                        if getgenv().Cuff.Throw then
                            local l_CFrame_1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            while getgenv().Cuff.Throw do
                                wait()
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000000, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new()
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = true
                                end)
                            end
                            do
                                local l_l_CFrame_1_0 = l_CFrame_1
                                pcall(function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_l_CFrame_1_0
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                end)
                            end
                        end
                    end)
                    while getgenv().Cuff.Bring do
                        wait()
                        for _, v157 in ipairs(game.Players:GetPlayers()) do
                            if getgenv().Cuff.Bring then
                                do
                                    local l_v157_0 = v157
                                    if l_v157_0 ~= game.Players.LocalPlayer and l_v157_0.Character and not l_v157_0.Character:FindFirstChild("ForceField") and (not l_v139_0[l_v157_0] or os.time() - l_v139_0[l_v157_0] > 8) then
                                        pcall(function()
                                            if l_v138_0 and l_v138_0.Parent == game.Players.LocalPlayer.Backpack then
                                                l_v138_0.Parent = game.Players.LocalPlayer.Character
                                            end
                                            l_v138_0.RemoteEvent:FireServer(l_v157_0.Character.HumanoidRootPart, "Cuff")
                                            task.wait(1.5)
                                        end)
                                    end
                                end
                            else
                                break
                            end
                        end
                    end
                    for _, v160 in ipairs(l_v140_0) do
                        if v160 and v160.Connected then
                            v160:Disconnect()
                        end
                    end
                end
            end
        end
    end
    function WhatTime()
        if os.date("*t").hour < 12 then
            return "light"
        else
            return "dark"
        end
    end
    function PlayAnim(v161, v162, v163, v164)
        local l_v164_0 = v164
        if game.PlaceId ~= 11379739543 then
            pcall(function()
                if not l_v164_0 then
                    l_LocalPlayer_1.Character.Animate.Disabled = false
                end
                local l_Humanoid_1 = l_LocalPlayer_1.Character.Humanoid
                local l_l_Humanoid_1_PlayingAnimationTracks_0 = l_Humanoid_1:GetPlayingAnimationTracks()
                for _, v169 in pairs(l_l_Humanoid_1_PlayingAnimationTracks_0) do
                    v169:Stop()
                end
                l_LocalPlayer_1.Character.Animate.Disabled = true
                local l_Animation_0 = Instance.new("Animation")
                l_Animation_0.AnimationId = "rbxassetid://" .. v161
                local v171 = l_Humanoid_1:LoadAnimation(l_Animation_0)
                v171:Play()
                v171.TimePosition = v162
                v171:AdjustSpeed(v163)
                v171.Stopped:Connect(function()
                    l_LocalPlayer_1.Character.Animate.Disabled = false
                    for _, v173 in pairs(l_l_Humanoid_1_PlayingAnimationTracks_0) do
                        v173:Stop()
                    end
                    l_Animation_0:Destroy()
                end)
            end)
            return 
        else
            return 
        end
    end
    function StopAnim()
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        local l_PlayingAnimationTracks_0 = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for _, v176 in pairs(l_PlayingAnimationTracks_0) do
            v176:Stop()
        end
        wait(0.1)
    end
    function CheckAnim(v177)
        local l_PlayingAnimationTracks_1 = l_LocalPlayer_1.Character.Humanoid:GetPlayingAnimationTracks()
        for _, v180 in pairs(l_PlayingAnimationTracks_1) do
            local v181 = v180.Animation.AnimationId:match("%d+")
            if tonumber(v181) == tonumber(v177) then
                return true
            end
        end
        return false
    end
    getgenv().VR7 = Instance.new("ScreenGui")
    local l_ImageLabel_0 = Instance.new("ImageLabel")
    local l_UIStroke_0 = Instance.new("UIStroke")
    local l_TextLabel_0 = Instance.new("TextLabel")
    local l_Frame_0 = Instance.new("Frame")
    local l_TextButton_0 = Instance.new("TextButton")
    local l_TextButton_1 = Instance.new("TextButton")
    local l_TextButton_2 = Instance.new("TextButton")
    local l_TextButton_3 = Instance.new("TextButton")
    local l_TextButton_4 = Instance.new("TextButton")
    local l_TextButton_5 = Instance.new("TextButton")
    local l_TextButton_6 = Instance.new("TextButton")
    local l_ScrollingFrame_0 = Instance.new("ScrollingFrame")
    local l_TextButton_7 = Instance.new("TextButton")
    local l_TextButton_8 = Instance.new("TextButton")
    local _ = Instance.new("TextButton")
    local _ = Instance.new("TextButton")
    local l_TextButton_11 = Instance.new("TextButton")
    local l_TextBox_0 = Instance.new("TextBox")
    local l_TextBox_1 = Instance.new("TextBox")
    local l_ScrollingFrame_1 = Instance.new("ScrollingFrame")
    local l_ImageLabel_1 = Instance.new("ImageLabel")
    local l_UIStroke_1 = Instance.new("UIStroke")
    local l_TextLabel_1 = Instance.new("TextLabel")
    local l_TextLabel_2 = Instance.new("TextLabel")
    local l_Frame_1 = Instance.new("Frame")
    local l_TextLabel_3 = Instance.new("TextLabel")
    local l_ScrollingFrame_2 = Instance.new("ScrollingFrame")
    local l_TextButton_12 = Instance.new("TextButton")
    local l_TextBox_2 = Instance.new("TextBox")
    local l_TextButton_13 = Instance.new("TextButton")
    local l_TextBox_3 = Instance.new("TextBox")
    local l_TextButton_14 = Instance.new("TextButton")
    local l_TextButton_15 = Instance.new("TextButton")
    local l_TextButton_16 = Instance.new("TextButton")
    local l_TextButton_17 = Instance.new("TextButton")
    local l_TextButton_18 = Instance.new("TextButton")
    local l_TextButton_19 = Instance.new("TextButton")
    local l_TextButton_20 = Instance.new("TextButton")
    local l_TextButton_21 = Instance.new("TextButton")
    local l_TextBox_4 = Instance.new("TextBox")
    local l_TextButton_22 = Instance.new("TextButton")
    local l_ScrollingFrame_3 = Instance.new("ScrollingFrame")
    local l_ImageLabel_2 = Instance.new("ImageLabel")
    local l_ImageButton_0 = Instance.new("ImageButton")
    local l_TextBox_5 = Instance.new("TextBox")
    local l_TextLabel_4 = Instance.new("TextLabel")
    local l_TextButton_23 = Instance.new("TextButton")
    local l_TextButton_24 = Instance.new("TextButton")
    local l_TextButton_25 = Instance.new("TextButton")
    local l_TextButton_26 = Instance.new("TextButton")
    local l_TextButton_27 = Instance.new("TextButton")
    local l_TextButton_28 = Instance.new("TextButton")
    local l_TextButton_29 = Instance.new("TextButton")
    local l_TextButton_30 = Instance.new("TextButton")
    local l_TextButton_31 = Instance.new("TextButton")
    local l_TextButton_32 = Instance.new("TextButton")
    local l_TextButton_33 = Instance.new("TextButton")
    local l_ScrollingFrame_4 = Instance.new("ScrollingFrame")
    local l_ScrollingFrame_5 = Instance.new("ScrollingFrame")
    local l_ScrollingFrame_6 = Instance.new("ScrollingFrame")
    local l_TextButton_34 = Instance.new("TextButton")
    local l_TextButton_35 = Instance.new("TextButton")
    local l_TextButton_36 = Instance.new("TextButton")
    local l_TextButton_37 = Instance.new("TextButton")
    local l_TextButton_38 = Instance.new("TextButton")
    local l_TextButton_39 = Instance.new("TextButton")
    local l_TextButton_40 = Instance.new("TextButton")
    local l_TextButton_41 = Instance.new("TextButton")
    local l_TextButton_42 = Instance.new("TextButton")
    local l_TextButton_43 = Instance.new("TextButton")
    local l_TextButton_44 = Instance.new("TextButton")
    local l_TextButton_45 = Instance.new("TextButton")
    local l_TextButton_46 = Instance.new("TextButton")
    local l_TextButton_47 = Instance.new("TextButton")
    local l_TextButton_48 = Instance.new("TextButton")
    local l_TextButton_49 = Instance.new("TextButton")
    local l_TextButton_50 = Instance.new("TextButton")
    local l_TextButton_51 = Instance.new("TextButton")
    local l_TextButton_52 = Instance.new("TextButton")
    local l_TextButton_53 = Instance.new("TextButton")
    local l_TextButton_54 = Instance.new("TextButton")
    local l_TextButton_55 = Instance.new("TextButton")
    local l_TextButton_56 = Instance.new("TextButton")
    local l_TextButton_57 = Instance.new("TextButton")
    local l_TextButton_58 = Instance.new("TextButton")
    local l_TextButton_59 = Instance.new("TextButton")
    local l_TextButton_60 = Instance.new("TextButton")
    local l_TextButton_61 = Instance.new("TextButton")
    getgenv().SaluteAnimationR15 = Instance.new("TextButton")
    getgenv().DoggyAnimationR15 = Instance.new("TextButton")
    getgenv().Sb3awyAnimationR15 = Instance.new("TextButton")
    getgenv().ZombieWalkAnimationR15 = Instance.new("TextButton")
    getgenv().FlingArmsAnimationR15 = Instance.new("TextButton")
    getgenv().AhmAhmAnimationR15 = Instance.new("TextButton")
    getgenv().DolphinAnimationR15 = Instance.new("TextButton")
    getgenv().SleepyAnimationR15 = Instance.new("TextButton")
    getgenv().HugAnimationR15 = Instance.new("TextButton")
    getgenv().CrazyAnimationR15 = Instance.new("TextButton")
    getgenv().B3b3AnimationR15 = Instance.new("TextButton")
    getgenv().ArmcutAnimationR6 = Instance.new("TextButton")
    getgenv().BoxesAnimationR6 = Instance.new("TextButton")
    getgenv().FaintAnimationR6 = Instance.new("TextButton")
    getgenv().BangAnimationR6 = Instance.new("TextButton")
    getgenv().HugAnimationR6 = Instance.new("TextButton")
    getgenv().BackpackHeadAnimationR6 = Instance.new("TextButton")
    getgenv().FloatingHeadAnimationR6 = Instance.new("TextButton")
    getgenv().IllusionAnimationR6 = Instance.new("TextButton")
    getgenv().JerkingAnimationR6 = Instance.new("TextButton")
    getgenv().InsaneAnimationR6 = Instance.new("TextButton")
    local l_ScrollingFrame_7 = Instance.new("ScrollingFrame")
    local l_TextButton_62 = Instance.new("TextButton")
    local l_TextButton_63 = Instance.new("TextButton")
    local l_TextButton_64 = Instance.new("TextButton")
    local l_TextButton_65 = Instance.new("TextButton")
    local l_TextButton_66 = Instance.new("TextButton")
    local l_TextButton_67 = Instance.new("TextButton")
    local l_TextButton_68 = Instance.new("TextButton")
    local l_TextButton_69 = Instance.new("TextButton")
    local l_TextButton_70 = Instance.new("TextButton")
    local l_TextButton_71 = Instance.new("TextButton")
    local l_TextButton_72 = Instance.new("TextButton")
    local l_TextBox_6 = Instance.new("TextBox")
    local l_ScrollingFrame_8 = Instance.new("ScrollingFrame")
    local l_TextLabel_5 = Instance.new("TextLabel")
    local l_TextButton_73 = Instance.new("TextButton")
    local l_ImageLabel_3 = Instance.new("ImageLabel")
    local l_ImageLabel_4 = Instance.new("ImageLabel")
    local l_Folder_0 = Instance.new("Folder")
    local l_ImageButton_1 = Instance.new("ImageButton")
    local l_ImageButton_2 = Instance.new("ImageButton")
    local l_BodyAngularVelocity_0 = Instance.new("BodyAngularVelocity")
    local l_ImageButton_3 = Instance.new("ImageButton")
    local l_UIGradient_0 = Instance.new("UIGradient")
    local l_TextButton_74 = Instance.new("TextButton")
    local l_TextButton_75 = Instance.new("TextButton")
    local l_TextButton_76 = Instance.new("TextButton")
    local l_TextButton_77 = Instance.new("TextButton")
    local l_ImageButton_4 = Instance.new("ImageButton")
    local l_UICorner_0 = Instance.new("UICorner")
    getgenv().Checksub_Button = Instance.new("TextButton")
    getgenv().HelpHd_Button = Instance.new("TextButton")
    function CreateToggle(v300)
        l_ImageButton_1:Clone().Parent = v300
    end
    function CreateClicker(v301)
        l_ImageButton_2:Clone().Parent = v301
    end
    getgenv().VR7.Name = (function()
        local v302 = "ABCDEFGH#IJKLMNOPQ)RSTUV(WXYZabcdefgh@ijklmnopqrstuv!wxyz0123456789/$%#<>~!@^&*_-+=[]{}:;,.?/|"
        local v303 = ""
        for _ = 1, math.random(5, 15) do
            local v305 = math.random(#v302)
            v303 = v303 .. v302:sub(v305, v305)
        end
        return v303
    end)()
    getgenv().VR7.Parent = gethui()
    getgenv().VR7.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    l_ImageLabel_0.Name = "Background"
    l_ImageLabel_0.Parent = getgenv().VR7
    l_ImageLabel_0.AnchorPoint = Vector2.new(0.5, 0.5)
    l_ImageLabel_0.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    l_ImageLabel_0.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_ImageLabel_0.Position = UDim2.new(0, 0, -1, 0)
    l_ImageLabel_0.Size = UDim2.new(0, 500, 0, 350)
    l_ImageLabel_0.ZIndex = 9
    l_ImageLabel_0.Image = "rbxassetid://16865804820"
    l_ImageLabel_0.ImageColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_ImageLabel_0.ImageTransparency = 0.6
    l_ImageLabel_0.ScaleType = Enum.ScaleType.Tile
    l_ImageLabel_0.SliceCenter = Rect.new(0, 256, 0, 256)
    l_ImageLabel_0.TileSize = UDim2.new(0, 30, 0, 30)
    l_ImageLabel_0.Active = true
    l_ImageLabel_0.Draggable = true
    l_UIStroke_0.Color = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_UIStroke_0.Thickness = 3
    l_UIStroke_0.Parent = l_ImageLabel_0
    l_TextLabel_0.Name = "TitleBarLabel"
    l_TextLabel_0.Parent = l_ImageLabel_0
    l_TextLabel_0.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    l_TextLabel_0.BackgroundTransparency = 0.25
    l_TextLabel_0.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextLabel_0.BorderSizePixel = 0
    l_TextLabel_0.Size = UDim2.new(1, 0, 0, 30)
    l_TextLabel_0.Font = Enum.Font.GothamBold
    l_TextLabel_0.Text = "       VR7 TEAM: The Mercy Script"
    l_TextLabel_0.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextLabel_0.TextScaled = true
    l_TextLabel_0.TextSize = 12
    l_TextLabel_0.TextWrapped = true
    l_TextLabel_0.TextXAlignment = Enum.TextXAlignment.Left
    l_Frame_0.Name = "SectionList"
    l_Frame_0.Parent = l_ImageLabel_0
    l_Frame_0.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    l_Frame_0.BackgroundTransparency = 0.5
    l_Frame_0.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_Frame_0.BorderSizePixel = 0
    l_Frame_0.Position = UDim2.new(0, 0, 0, 30)
    l_Frame_0.Size = UDim2.new(0, 105, 0, 320)
    l_TextButton_0.Name = "Home_Section_Button"
    l_TextButton_0.Parent = l_Frame_0
    l_TextButton_0.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_0.BackgroundTransparency = 0.5
    l_TextButton_0.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_0.BorderSizePixel = 0
    l_TextButton_0.Position = UDim2.new(0, 0, 0, 25)
    l_TextButton_0.Size = UDim2.new(0, 105, 0, 30)
    l_TextButton_0.Font = Enum.Font.Oswald
    l_TextButton_0.Text = "\216\163\217\132\217\130\216\167\216\166\217\133\216\169 \216\167\217\132\216\177\216\166\217\138\216\179\217\138\216\169 | Home"
    l_TextButton_0.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_0.TextScaled = true
    l_TextButton_0.TextSize = 14
    l_TextButton_0.TextWrapped = true
    l_TextButton_1.Name = "Game_Section_Button"
    l_TextButton_1.Parent = l_Frame_0
    l_TextButton_1.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_1.BackgroundTransparency = 0.5
    l_TextButton_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_1.BorderSizePixel = 0
    l_TextButton_1.Position = UDim2.new(0, 0, 0, 65)
    l_TextButton_1.Size = UDim2.new(0, 105, 0, 30)
    l_TextButton_1.Font = Enum.Font.Oswald
    l_TextButton_1.Text = "\216\167\217\132\216\170\216\174\216\177\217\138\216\168 | Game "
    l_TextButton_1.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_1.TextScaled = true
    l_TextButton_1.TextSize = 14
    l_TextButton_1.TextWrapped = true
    l_TextButton_2.Name = "Character_Section_Button"
    l_TextButton_2.Parent = l_Frame_0
    l_TextButton_2.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_2.BackgroundTransparency = 0.5
    l_TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_2.BorderSizePixel = 0
    l_TextButton_2.Position = UDim2.new(0, 0, 0, 105)
    l_TextButton_2.Size = UDim2.new(0, 105, 0, 30)
    l_TextButton_2.Font = Enum.Font.Oswald
    l_TextButton_2.Text = "\216\167\217\132\216\167\216\185\216\168 | Character"
    l_TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_2.TextScaled = true
    l_TextButton_2.TextSize = 14
    l_TextButton_2.TextWrapped = true
    l_TextButton_3.Name = "Target_Section_Button"
    l_TextButton_3.Parent = l_Frame_0
    l_TextButton_3.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_3.BackgroundTransparency = 0.5
    l_TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_3.BorderSizePixel = 0
    l_TextButton_3.Position = UDim2.new(0, 0, 0, 145)
    l_TextButton_3.Size = UDim2.new(0, 105, 0, 30)
    l_TextButton_3.Font = Enum.Font.Oswald
    l_TextButton_3.Text = " \216\167\216\179\216\170\217\135\216\175\216\167\217\129 | Target"
    l_TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_3.TextScaled = true
    l_TextButton_3.TextSize = 14
    l_TextButton_3.TextWrapped = true
    l_TextButton_4.Name = "Animations_Section_Button"
    l_TextButton_4.Parent = l_Frame_0
    l_TextButton_4.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_4.BackgroundTransparency = 0.5
    l_TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_4.BorderSizePixel = 0
    l_TextButton_4.Position = UDim2.new(0, 0, 0, 185)
    l_TextButton_4.Size = UDim2.new(0, 105, 0, 30)
    l_TextButton_4.Font = Enum.Font.Oswald
    l_TextButton_4.Text = "\216\167\217\134\217\133\217\138\216\180\217\134\216\167\216\170 | Anims"
    l_TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_4.TextScaled = true
    l_TextButton_4.TextSize = 14
    l_TextButton_4.TextWrapped = true
    l_TextButton_5.Name = "Misc_Section_Button"
    l_TextButton_5.Parent = l_Frame_0
    l_TextButton_5.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_5.BackgroundTransparency = 0.5
    l_TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_5.BorderSizePixel = 0
    l_TextButton_5.Position = UDim2.new(0, 0, 0, 225)
    l_TextButton_5.Size = UDim2.new(0, 105, 0, 30)
    l_TextButton_5.Font = Enum.Font.Oswald
    l_TextButton_5.Text = "\216\167\216\174\216\177\217\137 | Misc"
    l_TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_5.TextScaled = true
    l_TextButton_5.TextSize = 14
    l_TextButton_5.TextWrapped = true
    l_TextButton_6.Name = "Credits_Section_Button"
    l_TextButton_6.Parent = l_Frame_0
    l_TextButton_6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_6.BackgroundTransparency = 0.5
    l_TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_6.BorderSizePixel = 0
    l_TextButton_6.Position = UDim2.new(0, 0, 0, 265)
    l_TextButton_6.Size = UDim2.new(0, 105, 0, 30)
    l_TextButton_6.Font = Enum.Font.Oswald
    l_TextButton_6.Text = "\216\167\217\132\216\173\217\130\217\136\217\130 | Credits"
    l_TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_6.TextScaled = true
    l_TextButton_6.TextSize = 14
    l_TextButton_6.TextWrapped = true
    l_ScrollingFrame_0.Name = "Game_Section"
    l_ScrollingFrame_0.Parent = l_ImageLabel_0
    l_ScrollingFrame_0.Active = true
    l_ScrollingFrame_0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_0.BackgroundTransparency = 1
    l_ScrollingFrame_0.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_0.BorderSizePixel = 0
    l_ScrollingFrame_0.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_0.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_0.Visible = false
    l_ScrollingFrame_0.CanvasSize = UDim2.new(0, 0, 1.1, 0)
    l_ScrollingFrame_0.ScrollBarThickness = 5
    l_TextButton_7.Name = "ChatMissing_Button"
    l_TextButton_7.Parent = l_ScrollingFrame_0
    l_TextButton_7.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_7.BackgroundTransparency = 0.5
    l_TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_7.BorderSizePixel = 0
    l_TextButton_7.Position = UDim2.new(0, 210, 0, 125)
    l_TextButton_7.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_7.Font = Enum.Font.Oswald
    l_TextButton_7.Text = "\216\170\216\185\217\132\217\138\217\130 \216\167\217\132\216\180\216\167\216\170"
    l_TextButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_7.TextScaled = true
    l_TextButton_7.TextSize = 14
    l_TextButton_7.TextWrapped = true
    getgenv().Checksub_Button.Name = "Checksub_Button"
    getgenv().Checksub_Button.Parent = l_ScrollingFrame_1
    getgenv().Checksub_Button.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().Checksub_Button.BackgroundTransparency = 0.5
    getgenv().Checksub_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().Checksub_Button.BorderSizePixel = 2
    getgenv().Checksub_Button.Position = UDim2.new(0, 130, 0, 25)
    getgenv().Checksub_Button.Size = UDim2.new(0, 20, 0, 20)
    getgenv().Checksub_Button.Font = Enum.Font.Oswald
    getgenv().Checksub_Button.Text = "?"
    getgenv().Checksub_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().Checksub_Button.TextScaled = true
    getgenv().Checksub_Button.TextSize = 14
    getgenv().Checksub_Button.TextWrapped = true
    getgenv().HelpHd_Button.Name = "HelpHd_Button"
    getgenv().HelpHd_Button.Parent = l_ScrollingFrame_0
    getgenv().HelpHd_Button.BackgroundTransparency = 0.3
    getgenv().HelpHd_Button.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
    getgenv().HelpHd_Button.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().HelpHd_Button.BorderSizePixel = 1
    getgenv().HelpHd_Button.Position = UDim2.new(0, 340, 0, 24)
    getgenv().HelpHd_Button.Size = UDim2.new(0, 30, 0, 30)
    getgenv().HelpHd_Button.Font = Enum.Font.Oswald
    getgenv().HelpHd_Button.Text = "?"
    getgenv().HelpHd_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().HelpHd_Button.TextScaled = true
    getgenv().HelpHd_Button.TextSize = 14
    getgenv().HelpHd_Button.TextWrapped = true
    l_TextButton_8.Name = "Jerking_Button"
    l_TextButton_8.Parent = l_ScrollingFrame_0
    l_TextButton_8.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_8.BackgroundTransparency = 0.5
    l_TextButton_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_8.BorderSizePixel = 0
    l_TextButton_8.Position = UDim2.new(0, 210, 0, 175)
    l_TextButton_8.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_8.Font = Enum.Font.Oswald
    l_TextButton_8.Text = "\216\167\217\132\216\185\216\167\216\175\216\169 \216\167\217\132\216\179\216\177\217\138\216\169"
    l_TextButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_8.TextScaled = true
    l_TextButton_8.TextSize = 14
    l_TextButton_8.TextWrapped = true
    l_TextButton_11.Name = "Spam Button"
    l_TextButton_11.Parent = l_ScrollingFrame_0
    l_TextButton_11.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_11.BackgroundTransparency = 0.5
    l_TextButton_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_11.BorderSizePixel = 0
    l_TextButton_11.Position = UDim2.new(0, 25, 0, 125)
    l_TextButton_11.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_11.Font = Enum.Font.Oswald
    l_TextButton_11.Text = "\216\170\217\129\216\185\217\138\217\132 \216\179\216\168\216\167\217\133"
    l_TextButton_11.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_11.TextScaled = true
    l_TextButton_11.TextSize = 14
    l_TextButton_11.TextWrapped = true
    l_TextBox_0.Name = "CMDBar"
    l_TextBox_0.Parent = l_ScrollingFrame_0
    l_TextBox_0.AnchorPoint = Vector2.new(0.5, 0.5)
    l_TextBox_0.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
    l_TextBox_0.BackgroundTransparency = 0.3
    l_TextBox_0.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_0.Position = UDim2.new(0.5, 0, 0, 45)
    l_TextBox_0.Size = UDim2.new(0, 275, 0, 40)
    l_TextBox_0.Font = Enum.Font.Gotham
    l_TextBox_0.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextBox_0.PlaceholderText = "[Cmdbar] \216\174\216\167\217\134\216\169 \216\167\217\132\216\167\217\136\216\167\217\133\216\177"
    l_TextBox_0.Text = ""
    l_TextBox_0.TextColor3 = Color3.fromRGB(20, 20, 20)
    l_TextBox_0.TextSize = 16
    l_TextBox_0.TextWrapped = true
    l_TextBox_1.Name = "ChatBar"
    l_TextBox_1.Parent = l_ScrollingFrame_0
    l_TextBox_1.AnchorPoint = Vector2.new(0.5, 0.5)
    l_TextBox_1.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
    l_TextBox_1.BackgroundTransparency = 0.3
    l_TextBox_1.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_1.Position = UDim2.new(0.5, 0, 0, 90)
    l_TextBox_1.Size = UDim2.new(0, 275, 0, 40)
    l_TextBox_1.Font = Enum.Font.Gotham
    l_TextBox_1.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextBox_1.PlaceholderText = "\217\131\217\132\216\167\217\133"
    l_TextBox_1.Text = ""
    l_TextBox_1.TextColor3 = Color3.fromRGB(20, 20, 20)
    l_TextBox_1.TextSize = 18
    l_TextBox_1.TextWrapped = true
    l_ScrollingFrame_1.Name = "Home_Section"
    l_ScrollingFrame_1.Parent = l_ImageLabel_0
    l_ScrollingFrame_1.Active = true
    l_ScrollingFrame_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_1.BackgroundTransparency = 1
    l_ScrollingFrame_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_1.BorderSizePixel = 0
    l_ScrollingFrame_1.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_1.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_1.CanvasSize = UDim2.new(0, 0, 0, 0)
    l_ScrollingFrame_1.ScrollBarThickness = 5
    l_ImageLabel_1.Name = "Profile_Image"
    l_ImageLabel_1.Parent = l_ScrollingFrame_1
    l_ImageLabel_1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    l_ImageLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ImageLabel_1.BorderSizePixel = 0
    l_ImageLabel_1.Position = UDim2.new(0, 25, 0, 25)
    l_ImageLabel_1.Size = UDim2.new(0, 100, 0, 100)
    local v306 = "GetUserThumbnailAsync"
    local l_l_Players_0_0 = l_Players_0
    l_ImageLabel_1.Image = l_Players_0[v306](l_l_Players_0_0, l_LocalPlayer_1.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
    l_UIStroke_1.Color = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_UIStroke_1.Thickness = 1
    l_UIStroke_1.Parent = l_ImageLabel_1
    l_TextLabel_1.Name = "Welcome_Label"
    l_TextLabel_1.Parent = l_ScrollingFrame_1
    l_TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_TextLabel_1.BackgroundTransparency = 1
    l_TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextLabel_1.BorderSizePixel = 0
    l_TextLabel_1.Position = UDim2.new(0, 174, 0, 25)
    l_TextLabel_1.Size = UDim2.new(0, 200, 0, 100)
    l_TextLabel_1.Font = Enum.Font.SourceSans
    local v308 = (#l_LocalPlayer_1.Name < #l_LocalPlayer_1.DisplayName and l_LocalPlayer_1.Name or l_LocalPlayer_1.DisplayName):sub(1, 9):lower()
    if WhatTime() ~= "dark" then
        l_TextLabel_1.Text = "\216\181\216\168\216\167\216\173 \216\167\217\132\217\134\217\136\216\177 " .. v308 .. "@" .. "\n\216\167\216\182\216\186\216\183 [B] \217\132\216\167\216\174\217\129\216\167\216\161 \216\167\217\132\217\136\216\167\216\172\217\135\216\169"
    else
        l_TextLabel_1.Text = "\217\133\216\179\216\167\216\161 \216\167\217\132\217\134\217\136\216\177 " .. v308 .. "@" .. "\n\216\167\216\182\216\186\216\183 [B] \217\132\216\167\216\174\217\129\216\167\216\161 \216\167\217\132\217\136\216\167\216\172\217\135\216\169"
    end
    l_TextLabel_1.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextLabel_1.TextSize = 24
    l_TextLabel_1.TextWrapped = true
    l_TextLabel_1.TextXAlignment = Enum.TextXAlignment.Right
    l_TextLabel_1.TextYAlignment = Enum.TextYAlignment.Top
    l_Frame_1.Name = "Announce_Label_Frame"
    l_Frame_1.Parent = l_ScrollingFrame_1
    l_Frame_1.Size = UDim2.new(0, 350, 0, 150)
    l_Frame_1.Position = UDim2.new(0, 25, 0, 150)
    l_Frame_1.BackgroundTransparency = 1
    l_l_Players_0_0 = l_UIStroke_1:Clone()
    l_l_Players_0_0.Color = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_l_Players_0_0.Parent = l_Frame_1
    l_TextLabel_3.Name = "Announce_Label"
    l_TextLabel_3.Parent = l_Frame_1
    l_TextLabel_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    l_TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextLabel_3.BorderSizePixel = 0
    l_TextLabel_3.Size = UDim2.new(0, 350, 0, 150)
    l_TextLabel_3.Font = Enum.Font.SourceSans
    l_TextLabel_3.Text = "\216\172\217\133\217\138\216\185 \216\167\217\132\216\173\217\130\217\136\217\130 \217\133\216\173\217\129\217\136\216\184\216\169 \217\132\216\179\217\138\216\177\217\129\216\177 VR7\n\216\167\217\132\217\133\216\183\217\136\216\177\217\138\217\134 \216\186\217\138\216\177 \217\133\216\179\216\164\217\136\217\132\217\138\217\134 \216\185\217\134 \216\179\217\136\216\161 \216\167\217\132\216\167\216\179\216\170\216\174\216\175\216\167\217\133.\n\n\217\134\216\170\217\133\217\134\217\137 \216\167\217\134 \217\138\216\185\216\172\216\168\217\131 \216\167\217\132\216\179\217\131\216\177\216\168\216\170."
    l_TextLabel_3.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextLabel_3.TextSize = 24
    l_TextLabel_3.TextWrapped = true
    l_TextLabel_3.TextXAlignment = Enum.TextXAlignment.Right
    l_TextLabel_3.TextYAlignment = Enum.TextYAlignment.Top
    l_ScrollingFrame_2.Name = "Character_Section"
    l_ScrollingFrame_2.Parent = l_ImageLabel_0
    l_ScrollingFrame_2.Active = true
    l_ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_2.BackgroundTransparency = 1
    l_ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_2.BorderSizePixel = 0
    l_ScrollingFrame_2.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_2.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_2.Visible = false
    l_ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 1.1, 0)
    l_ScrollingFrame_2.ScrollBarThickness = 5
    l_TextButton_12.Name = "WalkSpeed_Button"
    l_TextButton_12.Parent = l_ScrollingFrame_2
    l_TextButton_12.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_12.BackgroundTransparency = 0.5
    l_TextButton_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_12.BorderSizePixel = 0
    l_TextButton_12.Position = UDim2.new(0, 25, 0, 25)
    l_TextButton_12.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_12.Font = Enum.Font.Oswald
    l_TextButton_12.Text = "Ws |\216\167\217\132\216\179\216\177\216\185\217\135"
    l_TextButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_12.TextScaled = true
    l_TextButton_12.TextSize = 14
    l_TextButton_12.TextWrapped = true
    l_TextBox_2.Name = "WalkSpeed_Input"
    l_TextBox_2.Parent = l_ScrollingFrame_2
    l_TextBox_2.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
    l_TextBox_2.BackgroundTransparency = 0.3
    l_TextBox_2.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_2.Position = UDim2.new(0, 210, 0, 25)
    l_TextBox_2.Size = UDim2.new(0, 175, 0, 30)
    l_TextBox_2.Font = Enum.Font.Gotham
    l_TextBox_2.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
    if game.PlaceId == 11379739543 then
        l_TextBox_2.PlaceholderText = "Number [1-10]"
    else
        l_TextBox_2.PlaceholderText = "Number [1-99999]"
    end
    l_TextBox_2.Text = ""
    l_TextBox_2.TextColor3 = Color3.fromRGB(20, 20, 20)
    l_TextBox_2.TextSize = 14
    l_TextBox_2.TextWrapped = true
    l_TextButton_13.Name = "ClearCheckpoint_Button"
    l_TextButton_13.Parent = l_ScrollingFrame_2
    l_TextButton_13.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_13.BackgroundTransparency = 0.5
    l_TextButton_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_13.BorderSizePixel = 0
    l_TextButton_13.Position = UDim2.new(0, 210, 0, 225)
    l_TextButton_13.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_13.Font = Enum.Font.Oswald
    l_TextButton_13.Text = "\216\167\216\178\216\167\217\132\217\135 \216\167\217\132\216\180\217\138\217\131 \216\168\217\136\217\138\217\134\216\170"
    l_TextButton_13.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_13.TextScaled = true
    l_TextButton_13.TextSize = 14
    l_TextButton_13.TextWrapped = true
    l_TextBox_3.Name = "JumpPower_Input"
    l_TextBox_3.Parent = l_ScrollingFrame_2
    l_TextBox_3.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
    l_TextBox_3.BackgroundTransparency = 0.3
    l_TextBox_3.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_3.Position = UDim2.new(0, 210, 0, 75)
    l_TextBox_3.Size = UDim2.new(0, 175, 0, 30)
    l_TextBox_3.Font = Enum.Font.Gotham
    l_TextBox_3.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextBox_3.PlaceholderText = "Number [1-99999]"
    l_TextBox_3.Text = ""
    l_TextBox_3.TextColor3 = Color3.fromRGB(20, 20, 20)
    l_TextBox_3.TextSize = 14
    l_TextBox_3.TextWrapped = true
    l_TextButton_14.Name = "JumpPower_Button"
    l_TextButton_14.Parent = l_ScrollingFrame_2
    l_TextButton_14.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_14.BackgroundTransparency = 0.5
    l_TextButton_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_14.BorderSizePixel = 0
    l_TextButton_14.Position = UDim2.new(0, 25, 0, 75)
    l_TextButton_14.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_14.Font = Enum.Font.Oswald
    l_TextButton_14.Text = "\216\167\217\132\217\134\216\183 | Jump"
    l_TextButton_14.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_14.TextScaled = true
    l_TextButton_14.TextSize = 14
    l_TextButton_14.TextWrapped = true
    l_TextButton_15.Name = "SaveCheckpoint_Button"
    l_TextButton_15.Parent = l_ScrollingFrame_2
    l_TextButton_15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_15.BackgroundTransparency = 0.5
    l_TextButton_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_15.BorderSizePixel = 0
    l_TextButton_15.Position = UDim2.new(0, 210, 0, 175)
    l_TextButton_15.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_15.Font = Enum.Font.Oswald
    l_TextButton_15.Text = "\216\173\217\129\216\184 \216\167\217\132\216\180\217\138\217\131 \216\168\217\136\217\138\217\134\216\170"
    l_TextButton_15.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_15.TextScaled = true
    l_TextButton_15.TextSize = 14
    l_TextButton_15.TextWrapped = true
    l_TextButton_16.Name = "Noclip_Button"
    l_TextButton_16.Parent = l_ScrollingFrame_2
    l_TextButton_16.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_16.BackgroundTransparency = 0.5
    l_TextButton_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_16.BorderSizePixel = 0
    l_TextButton_16.Position = UDim2.new(0, 25, 0, 225)
    l_TextButton_16.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_16.Font = Enum.Font.Oswald
    l_TextButton_16.Text = "\217\134\217\136\217\131\217\132\217\138\216\168"
    l_TextButton_16.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_16.TextScaled = true
    l_TextButton_16.TextSize = 14
    l_TextButton_16.TextWrapped = true
    l_TextButton_17.Name = "Invisible_Button"
    l_TextButton_17.Parent = l_ScrollingFrame_2
    l_TextButton_17.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_17.BackgroundTransparency = 0.5
    l_TextButton_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_17.BorderSizePixel = 0
    l_TextButton_17.Position = UDim2.new(0, 25, 0, 275)
    l_TextButton_17.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_17.Font = Enum.Font.Oswald
    l_TextButton_17.Text = "\216\167\216\174\216\170\217\129\216\167\216\161"
    l_TextButton_17.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_17.TextScaled = true
    l_TextButton_17.TextSize = 14
    l_TextButton_17.TextWrapped = true
    l_TextButton_19.Name = "ShiftLock_Button"
    l_TextButton_19.Parent = l_ScrollingFrame_2
    l_TextButton_19.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_19.BackgroundTransparency = 0.5
    l_TextButton_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_19.BorderSizePixel = 0
    l_TextButton_19.Position = UDim2.new(0, 25, 0, 325)
    l_TextButton_19.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_19.Font = Enum.Font.Oswald
    l_TextButton_19.Text = "\217\130\217\129\217\132 \216\167\217\132\217\131\216\167\217\133\217\138\216\177\216\167"
    l_TextButton_19.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_19.TextScaled = true
    l_TextButton_19.TextSize = 14
    l_TextButton_19.TextWrapped = true
    l_TextButton_18.Name = "Respawn_Button"
    l_TextButton_18.Parent = l_ScrollingFrame_2
    l_TextButton_18.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_18.BackgroundTransparency = 0.5
    l_TextButton_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_18.BorderSizePixel = 0
    l_TextButton_18.Position = UDim2.new(0, 210, 0, 325)
    l_TextButton_18.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_18.Font = Enum.Font.Oswald
    l_TextButton_18.Text = "\216\177\217\138\216\179\216\168\217\136\217\134"
    l_TextButton_18.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_18.TextScaled = true
    l_TextButton_18.TextSize = 14
    l_TextButton_18.TextWrapped = true
    l_TextButton_20.Name = "TeleportTool_Button"
    l_TextButton_20.Parent = l_ScrollingFrame_2
    l_TextButton_20.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_20.BackgroundTransparency = 0.5
    l_TextButton_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_20.BorderSizePixel = 0
    l_TextButton_20.Position = UDim2.new(0, 210, 0, 275)
    l_TextButton_20.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_20.Font = Enum.Font.Oswald
    l_TextButton_20.Text = "\216\167\216\175\216\167\216\169 \216\167\217\132\216\167\217\134\216\170\217\130\216\167\217\132"
    l_TextButton_20.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_20.TextScaled = true
    l_TextButton_20.TextSize = 14
    l_TextButton_20.TextWrapped = true
    l_TextButton_21.Name = "FlySpeed_Button"
    l_TextButton_21.Parent = l_ScrollingFrame_2
    l_TextButton_21.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_21.BackgroundTransparency = 0.5
    l_TextButton_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_21.BorderSizePixel = 0
    l_TextButton_21.Position = UDim2.new(0, 25, 0, 125)
    l_TextButton_21.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_21.Font = Enum.Font.Oswald
    l_TextButton_21.Text = "\216\179\216\177\216\185\217\135 \216\167\217\132\216\183\217\138\216\177\216\167\217\134"
    l_TextButton_21.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_21.TextScaled = true
    l_TextButton_21.TextSize = 14
    l_TextButton_21.TextWrapped = true
    l_TextBox_4.Name = "FlySpeed_Input"
    l_TextBox_4.Parent = l_ScrollingFrame_2
    l_TextBox_4.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
    l_TextBox_4.BackgroundTransparency = 0.3
    l_TextBox_4.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_4.Position = UDim2.new(0, 210, 0, 125)
    l_TextBox_4.Size = UDim2.new(0, 175, 0, 30)
    l_TextBox_4.Font = Enum.Font.Gotham
    l_TextBox_4.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextBox_4.PlaceholderText = "Number [1-99999]"
    l_TextBox_4.Text = ""
    l_TextBox_4.TextColor3 = Color3.fromRGB(20, 20, 20)
    l_TextBox_4.TextSize = 14
    l_TextBox_4.TextWrapped = true
    l_TextButton_22.Name = "Fly_Button"
    l_TextButton_22.Parent = l_ScrollingFrame_2
    l_TextButton_22.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_22.BackgroundTransparency = 0.5
    l_TextButton_22.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_22.BorderSizePixel = 0
    l_TextButton_22.Position = UDim2.new(0, 25, 0, 175)
    l_TextButton_22.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_22.Font = Enum.Font.Oswald
    l_TextButton_22.Text = "\216\179\217\131\216\177\216\168\216\170 \216\183\217\138\216\177\216\167\217\134"
    l_TextButton_22.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_22.TextScaled = true
    l_TextButton_22.TextSize = 14
    l_TextButton_22.TextWrapped = true
    l_ScrollingFrame_3.Name = "Target_Section"
    l_ScrollingFrame_3.Parent = l_ImageLabel_0
    l_ScrollingFrame_3.Active = true
    l_ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_3.BackgroundTransparency = 1
    l_ScrollingFrame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_3.BorderSizePixel = 0
    l_ScrollingFrame_3.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_3.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_3.Visible = false
    l_ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 1.3, 0)
    l_ScrollingFrame_3.ScrollBarThickness = 5
    l_ImageLabel_2.Name = "TargetImage"
    l_ImageLabel_2.Parent = l_ScrollingFrame_3
    l_ImageLabel_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    l_ImageLabel_2.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_ImageLabel_2.Position = UDim2.new(0, 25, 0, 25)
    l_ImageLabel_2.Size = UDim2.new(0, 100, 0, 100)
    l_ImageLabel_2.Image = "rbxassetid://10818605405"
    l_TextBox_5.Name = "TargetName_Input"
    l_TextBox_5.Parent = l_ScrollingFrame_3
    l_TextBox_5.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
    l_TextBox_5.BackgroundTransparency = 0.3
    l_TextBox_5.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_5.Position = UDim2.new(0, 150, 0, 30)
    l_TextBox_5.Size = UDim2.new(0, 175, 0, 30)
    l_TextBox_5.Font = Enum.Font.Gotham
    l_TextBox_5.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextBox_5.PlaceholderText = "@target..."
    l_TextBox_5.Text = ""
    l_TextBox_5.TextColor3 = Color3.fromRGB(20, 20, 20)
    l_TextBox_5.TextSize = 14
    l_TextBox_5.TextWrapped = true
    l_ImageButton_0.Name = "ClickTargetTool_Button"
    l_ImageButton_0.Parent = l_TextBox_5
    l_ImageButton_0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ImageButton_0.BackgroundTransparency = 1
    l_ImageButton_0.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ImageButton_0.BorderSizePixel = 0
    l_ImageButton_0.Position = UDim2.new(0, 180, 0, 0)
    l_ImageButton_0.Size = UDim2.new(0, 30, 0, 30)
    l_ImageButton_0.Image = "rbxassetid://13769558274"
    l_TextLabel_4.Name = "UserIDTargetLabel"
    l_TextLabel_4.Parent = l_ScrollingFrame_3
    l_TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_TextLabel_4.BackgroundTransparency = 1
    l_TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextLabel_4.BorderSizePixel = 0
    l_TextLabel_4.Position = UDim2.new(0, 150, 0, 70)
    l_TextLabel_4.Size = UDim2.new(0, 300, 0, 75)
    l_TextLabel_4.Font = Enum.Font.Oswald
    l_TextLabel_4.Text = "UserID: \nDisplay: \nJoined: "
    l_TextLabel_4.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextLabel_4.TextSize = 18
    l_TextLabel_4.TextWrapped = true
    l_TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
    l_TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top
    l_TextButton_24.Name = "ViewTarget_Button"
    l_TextButton_24.Parent = l_ScrollingFrame_3
    l_TextButton_24.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_24.BackgroundTransparency = 0.5
    l_TextButton_24.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_24.BorderSizePixel = 0
    l_TextButton_24.Position = UDim2.new(0, 25, 0, 200)
    l_TextButton_24.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_24.Font = Enum.Font.Oswald
    l_TextButton_24.Text = "\217\138\216\186\216\170\216\181\216\168\217\131"
    l_TextButton_24.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_24.TextScaled = true
    l_TextButton_24.TextSize = 14
    l_TextButton_24.TextWrapped = true
    l_TextButton_23.Name = "ViewTarget_Button"
    l_TextButton_23.Parent = l_ScrollingFrame_3
    l_TextButton_23.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_23.BackgroundTransparency = 0.5
    l_TextButton_23.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_23.BorderSizePixel = 0
    l_TextButton_23.Position = UDim2.new(0, 210, 0, 150)
    l_TextButton_23.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_23.Font = Enum.Font.Oswald
    l_TextButton_23.Text = "\217\133\216\180\216\167\217\135\216\175\216\169"
    l_TextButton_23.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_23.TextScaled = true
    l_TextButton_23.TextSize = 14
    l_TextButton_23.TextWrapped = true
    l_TextButton_25.Name = "FlingTarget_Button"
    l_TextButton_25.Parent = l_ScrollingFrame_3
    l_TextButton_25.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_25.BackgroundTransparency = 0.5
    l_TextButton_25.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_25.BorderSizePixel = 0
    l_TextButton_25.Position = UDim2.new(0, 25, 0, 150)
    l_TextButton_25.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_25.Font = Enum.Font.Oswald
    l_TextButton_25.Text = "\217\129\217\132\217\134\217\130"
    l_TextButton_25.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_25.TextScaled = true
    l_TextButton_25.TextSize = 14
    l_TextButton_25.TextWrapped = true
    l_TextButton_26.Name = "FocusTarget_Button"
    l_TextButton_26.Parent = l_ScrollingFrame_3
    l_TextButton_26.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_26.BackgroundTransparency = 0.5
    l_TextButton_26.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_26.BorderSizePixel = 0
    l_TextButton_26.Position = UDim2.new(0, 25, 0, 350)
    l_TextButton_26.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_26.Font = Enum.Font.Oswald
    l_TextButton_26.Text = "\216\179\217\133\216\167\216\185"
    l_TextButton_26.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_26.TextScaled = true
    l_TextButton_26.TextSize = 14
    l_TextButton_26.TextWrapped = true
    l_TextButton_27.Name = "BenxTarget_Button"
    l_TextButton_27.Parent = l_ScrollingFrame_3
    l_TextButton_27.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_27.BackgroundTransparency = 0.5
    l_TextButton_27.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_27.BorderSizePixel = 0
    l_TextButton_27.Position = UDim2.new(0, 210, 0, 200)
    l_TextButton_27.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_27.Font = Enum.Font.Oswald
    l_TextButton_27.Text = "\216\167\216\186\216\170\216\181\216\167\216\168"
    l_TextButton_27.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_27.TextScaled = true
    l_TextButton_27.TextSize = 14
    l_TextButton_27.TextWrapped = true
    l_TextButton_29.Name = "TeleportTarget_Button"
    l_TextButton_29.Parent = l_ScrollingFrame_3
    l_TextButton_29.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_29.BackgroundTransparency = 0.5
    l_TextButton_29.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_29.BorderSizePixel = 0
    l_TextButton_29.Position = UDim2.new(0, 25, 0, 400)
    l_TextButton_29.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_29.Font = Enum.Font.Oswald
    l_TextButton_29.Text = "\216\170\217\134\217\130\217\132"
    l_TextButton_29.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_29.TextScaled = true
    l_TextButton_29.TextSize = 14
    l_TextButton_29.TextWrapped = true
    l_TextButton_28.Name = "RepeatTalk_Button"
    l_TextButton_28.Parent = l_ScrollingFrame_3
    l_TextButton_28.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_28.BackgroundTransparency = 0.5
    l_TextButton_28.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_28.BorderSizePixel = 0
    l_TextButton_28.Position = UDim2.new(0, 210, 0, 350)
    l_TextButton_28.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_28.Font = Enum.Font.Oswald
    l_TextButton_28.Text = "\216\170\217\130\217\132\217\138\216\175 \216\167\217\132\217\131\217\132\216\167\217\133"
    l_TextButton_28.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_28.TextScaled = true
    l_TextButton_28.TextSize = 14
    l_TextButton_28.TextWrapped = true
    l_TextButton_30.Name = "HeadsitTarget_Button"
    l_TextButton_30.Parent = l_ScrollingFrame_3
    l_TextButton_30.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_30.BackgroundTransparency = 0.5
    l_TextButton_30.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_30.BorderSizePixel = 0
    l_TextButton_30.Position = UDim2.new(0, 25, 0, 300)
    l_TextButton_30.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_30.Font = Enum.Font.Oswald
    l_TextButton_30.Text = "\216\172\217\132\217\136\216\179 \217\129\217\138 \216\177\216\167\216\179\217\135"
    l_TextButton_30.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_30.TextScaled = true
    l_TextButton_30.TextSize = 14
    l_TextButton_30.TextWrapped = true
    l_TextButton_31.Name = "StandTarget_Button"
    l_TextButton_31.Parent = l_ScrollingFrame_3
    l_TextButton_31.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_31.BackgroundTransparency = 0.5
    l_TextButton_31.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_31.BorderSizePixel = 0
    l_TextButton_31.Position = UDim2.new(0, 210, 0, 250)
    l_TextButton_31.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_31.Font = Enum.Font.Oswald
    l_TextButton_31.Text = "\217\138\217\133\216\181"
    l_TextButton_31.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_31.TextScaled = true
    l_TextButton_31.TextSize = 14
    l_TextButton_31.TextWrapped = true
    l_TextButton_32.Name = "BackpackTarget_Button"
    l_TextButton_32.Parent = l_ScrollingFrame_3
    l_TextButton_32.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_32.BackgroundTransparency = 0.5
    l_TextButton_32.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_32.BorderSizePixel = 0
    l_TextButton_32.Position = UDim2.new(0, 210, 0, 300)
    l_TextButton_32.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_32.Font = Enum.Font.Oswald
    l_TextButton_32.Text = "\216\173\217\130\217\138\216\168\216\169 \216\184\217\135\216\177"
    l_TextButton_32.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_32.TextScaled = true
    l_TextButton_32.TextSize = 14
    l_TextButton_32.TextWrapped = true
    l_TextButton_33.Name = "JerkOnTarget_Button"
    l_TextButton_33.Parent = l_ScrollingFrame_3
    l_TextButton_33.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_33.BackgroundTransparency = 0.5
    l_TextButton_33.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_33.BorderSizePixel = 0
    l_TextButton_33.Position = UDim2.new(0, 25, 0, 250)
    l_TextButton_33.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_33.Font = Enum.Font.Oswald
    l_TextButton_33.Text = "\216\179\217\136\217\135\216\167 \216\185\217\132\217\138\217\135"
    l_TextButton_33.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_33.TextScaled = true
    l_TextButton_33.TextSize = 14
    l_TextButton_33.TextWrapped = true
    l_ScrollingFrame_4.Name = "Moving_Section"
    l_ScrollingFrame_4.Parent = l_ImageLabel_0
    l_ScrollingFrame_4.Active = true
    l_ScrollingFrame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_4.BackgroundTransparency = 1
    l_ScrollingFrame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_4.BorderSizePixel = 0
    l_ScrollingFrame_4.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_4.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_4.Visible = false
    l_ScrollingFrame_4.CanvasSize = UDim2.new(0, 0, 2, 0)
    l_ScrollingFrame_4.ScrollBarThickness = 5
    l_ScrollingFrame_5.Name = "Dancing_Section"
    l_ScrollingFrame_5.Parent = l_ImageLabel_0
    l_ScrollingFrame_5.Active = true
    l_ScrollingFrame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_5.BackgroundTransparency = 1
    l_ScrollingFrame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_5.BorderSizePixel = 0
    l_ScrollingFrame_5.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_5.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_5.Visible = false
    l_ScrollingFrame_5.CanvasSize = UDim2.new(0, 0, 1.6, 0)
    l_ScrollingFrame_5.ScrollBarThickness = 5
    l_ScrollingFrame_6.Name = "Animations_Section"
    l_ScrollingFrame_6.Parent = l_ImageLabel_0
    l_ScrollingFrame_6.Active = true
    l_ScrollingFrame_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_6.BackgroundTransparency = 1
    l_ScrollingFrame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_6.BorderSizePixel = 0
    l_ScrollingFrame_6.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_6.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_6.Visible = false
    l_ScrollingFrame_6.CanvasSize = UDim2.new(0, 0, 0, 0)
    l_ScrollingFrame_6.ScrollBarThickness = 5
    l_TextLabel_2.Name = "Alert_Label"
    l_TextLabel_2.Parent = l_ScrollingFrame_6
    l_TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_TextLabel_2.BackgroundTransparency = 1
    l_TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextLabel_2.BorderSizePixel = 0
    l_TextLabel_2.Position = UDim2.new(0, 43, 0, 12)
    l_TextLabel_2.Size = UDim2.new(0, 300, 0, 100)
    l_TextLabel_2.Font = Enum.Font.SourceSans
    l_TextLabel_2.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextLabel_2.TextSize = 42
    l_TextLabel_2.Text = "\217\138\216\177\216\172\217\137 \216\167\216\174\216\170\217\138\216\167\216\177 \217\134\217\136\216\185 \216\167\217\132\216\167\217\134\217\133\217\138\216\180\217\134 \n>_<"
    l_TextLabel_2.TextWrapped = true
    l_TextLabel_2.TextXAlignment = Enum.TextXAlignment.Center
    l_TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top
    l_TextButton_34.Name = "VampireAnim_Button"
    l_TextButton_34.Parent = l_ScrollingFrame_4
    l_TextButton_34.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_34.BackgroundTransparency = 0.5
    l_TextButton_34.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_34.BorderSizePixel = 0
    l_TextButton_34.Position = UDim2.new(0, 25, 0, 25)
    l_TextButton_34.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_34.Font = Enum.Font.Oswald
    l_TextButton_34.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\129\217\133\216\168\216\167\217\138\216\177"
    l_TextButton_34.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_34.TextScaled = true
    l_TextButton_34.TextSize = 14
    l_TextButton_34.TextWrapped = true
    l_TextButton_35.Name = "DefaultAnim_Button"
    l_TextButton_35.Parent = l_ScrollingFrame_4
    l_TextButton_35.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_35.BackgroundTransparency = 0.5
    l_TextButton_35.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_35.BorderSizePixel = 0
    l_TextButton_35.Position = UDim2.new(0, 210, 0, 25)
    l_TextButton_35.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_35.Font = Enum.Font.Oswald
    l_TextButton_35.Text = "\217\133\216\180\217\138\216\169 \216\183\216\168\217\138\216\185\217\138\216\169"
    l_TextButton_35.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_35.TextScaled = true
    l_TextButton_35.TextSize = 14
    l_TextButton_35.TextWrapped = true
    l_TextButton_36.Name = "HeroAnim_Button"
    l_TextButton_36.Parent = l_ScrollingFrame_4
    l_TextButton_36.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_36.BackgroundTransparency = 0.5
    l_TextButton_36.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_36.BorderSizePixel = 0
    l_TextButton_36.Position = UDim2.new(0, 25, 0, 575)
    l_TextButton_36.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_36.Font = Enum.Font.Oswald
    l_TextButton_36.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\168\216\183\217\132"
    l_TextButton_36.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_36.TextScaled = true
    l_TextButton_36.TextSize = 14
    l_TextButton_36.TextWrapped = true
    l_TextButton_37.Name = "ZombieClassicAnim_Button"
    l_TextButton_37.Parent = l_ScrollingFrame_4
    l_TextButton_37.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_37.BackgroundTransparency = 0.5
    l_TextButton_37.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_37.BorderSizePixel = 0
    l_TextButton_37.Position = UDim2.new(0, 25, 0, 75)
    l_TextButton_37.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_37.Font = Enum.Font.Oswald
    l_TextButton_37.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\178\217\136\217\133\216\168\217\138 \217\131\217\132\216\167\216\179\217\138\217\131"
    l_TextButton_37.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_37.TextScaled = true
    l_TextButton_37.TextSize = 14
    l_TextButton_37.TextWrapped = true
    l_TextButton_38.Name = "MageAnim_Button"
    l_TextButton_38.Parent = l_ScrollingFrame_4
    l_TextButton_38.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_38.BackgroundTransparency = 0.5
    l_TextButton_38.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_38.BorderSizePixel = 0
    l_TextButton_38.Position = UDim2.new(0, 210, 0, 75)
    l_TextButton_38.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_38.Font = Enum.Font.Oswald
    l_TextButton_38.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\179\216\167\216\173\216\177 "
    l_TextButton_38.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_38.TextScaled = true
    l_TextButton_38.TextSize = 14
    l_TextButton_38.TextWrapped = true
    l_TextButton_39.Name = "GhostAnim_Button"
    l_TextButton_39.Parent = l_ScrollingFrame_4
    l_TextButton_39.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_39.BackgroundTransparency = 0.5
    l_TextButton_39.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_39.BorderSizePixel = 0
    l_TextButton_39.Position = UDim2.new(0, 25, 0, 125)
    l_TextButton_39.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_39.Font = Enum.Font.Oswald
    l_TextButton_39.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\180\216\168\216\173"
    l_TextButton_39.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_39.TextScaled = true
    l_TextButton_39.TextSize = 14
    l_TextButton_39.TextWrapped = true
    l_TextButton_40.Name = "ElderAnim_Button"
    l_TextButton_40.Parent = l_ScrollingFrame_4
    l_TextButton_40.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_40.BackgroundTransparency = 0.5
    l_TextButton_40.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_40.BorderSizePixel = 0
    l_TextButton_40.Position = UDim2.new(0, 210, 0, 125)
    l_TextButton_40.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_40.Font = Enum.Font.Oswald
    l_TextButton_40.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\133\216\179\217\134\217\138\217\134 "
    l_TextButton_40.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_40.TextScaled = true
    l_TextButton_40.TextSize = 14
    l_TextButton_40.TextWrapped = true
    l_TextButton_41.Name = "LevitationAnim_Button"
    l_TextButton_41.Parent = l_ScrollingFrame_4
    l_TextButton_41.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_41.BackgroundTransparency = 0.5
    l_TextButton_41.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_41.BorderSizePixel = 0
    l_TextButton_41.Position = UDim2.new(0, 25, 0, 175)
    l_TextButton_41.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_41.Font = Enum.Font.Oswald
    l_TextButton_41.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\170\217\131\216\168\216\177 "
    l_TextButton_41.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_41.TextScaled = true
    l_TextButton_41.TextSize = 14
    l_TextButton_41.TextWrapped = true
    l_TextButton_42.Name = "AstronautAnim_Button"
    l_TextButton_42.Parent = l_ScrollingFrame_4
    l_TextButton_42.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_42.BackgroundTransparency = 0.5
    l_TextButton_42.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_42.BorderSizePixel = 0
    l_TextButton_42.Position = UDim2.new(0, 210, 0, 175)
    l_TextButton_42.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_42.Font = Enum.Font.Oswald
    l_TextButton_42.Text = "\217\133\216\180\217\138\216\169 \216\177\216\167\216\166\216\175 \216\167\217\132\217\129\216\182\216\167\216\161"
    l_TextButton_42.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_42.TextScaled = true
    l_TextButton_42.TextSize = 14
    l_TextButton_42.TextWrapped = true
    l_TextButton_43.Name = "NinjaAnim_Button"
    l_TextButton_43.Parent = l_ScrollingFrame_4
    l_TextButton_43.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_43.BackgroundTransparency = 0.5
    l_TextButton_43.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_43.BorderSizePixel = 0
    l_TextButton_43.Position = UDim2.new(0, 25, 0, 225)
    l_TextButton_43.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_43.Font = Enum.Font.Oswald
    l_TextButton_43.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\134\217\138\217\134\216\172\216\167"
    l_TextButton_43.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_43.TextScaled = true
    l_TextButton_43.TextSize = 14
    l_TextButton_43.TextWrapped = true
    l_TextButton_44.Name = "WerewolfAnim_Button"
    l_TextButton_44.Parent = l_ScrollingFrame_4
    l_TextButton_44.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_44.BackgroundTransparency = 0.5
    l_TextButton_44.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_44.BorderSizePixel = 0
    l_TextButton_44.Position = UDim2.new(0, 210, 0, 225)
    l_TextButton_44.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_44.Font = Enum.Font.Oswald
    l_TextButton_44.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\176\216\166\216\168 "
    l_TextButton_44.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_44.TextScaled = true
    l_TextButton_44.TextSize = 14
    l_TextButton_44.TextWrapped = true
    l_TextButton_45.Name = "CartoonAnim_Button"
    l_TextButton_45.Parent = l_ScrollingFrame_4
    l_TextButton_45.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_45.BackgroundTransparency = 0.5
    l_TextButton_45.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_45.BorderSizePixel = 0
    l_TextButton_45.Position = UDim2.new(0, 25, 0, 275)
    l_TextButton_45.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_45.Font = Enum.Font.Oswald
    l_TextButton_45.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\131\216\167\216\177\216\170\217\136\217\134 "
    l_TextButton_45.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_45.TextScaled = true
    l_TextButton_45.TextSize = 14
    l_TextButton_45.TextWrapped = true
    l_TextButton_46.Name = "PirateAnim_Button"
    l_TextButton_46.Parent = l_ScrollingFrame_4
    l_TextButton_46.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_46.BackgroundTransparency = 0.5
    l_TextButton_46.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_46.BorderSizePixel = 0
    l_TextButton_46.Position = UDim2.new(0, 210, 0, 275)
    l_TextButton_46.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_46.Font = Enum.Font.Oswald
    l_TextButton_46.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\130\216\177\216\181\216\167\217\134"
    l_TextButton_46.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_46.TextScaled = true
    l_TextButton_46.TextSize = 14
    l_TextButton_46.TextWrapped = true
    l_TextButton_47.Name = "SneakyAnim_Button"
    l_TextButton_47.Parent = l_ScrollingFrame_4
    l_TextButton_47.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_47.BackgroundTransparency = 0.5
    l_TextButton_47.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_47.BorderSizePixel = 0
    l_TextButton_47.Position = UDim2.new(0, 25, 0, 325)
    l_TextButton_47.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_47.Font = Enum.Font.Oswald
    l_TextButton_47.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\133\216\170\216\179\216\170\216\177 "
    l_TextButton_47.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_47.TextScaled = true
    l_TextButton_47.TextSize = 14
    l_TextButton_47.TextWrapped = true
    l_TextButton_48.Name = "ToyAnim_Button"
    l_TextButton_48.Parent = l_ScrollingFrame_4
    l_TextButton_48.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_48.BackgroundTransparency = 0.5
    l_TextButton_48.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_48.BorderSizePixel = 0
    l_TextButton_48.Position = UDim2.new(0, 210, 0, 325)
    l_TextButton_48.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_48.Font = Enum.Font.Oswald
    l_TextButton_48.Text = "\217\133\216\180\217\138\216\169 \217\132\216\185\216\168\216\169 "
    l_TextButton_48.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_48.TextScaled = true
    l_TextButton_48.TextSize = 14
    l_TextButton_48.TextWrapped = true
    l_TextButton_49.Name = "KnightAnim_Button"
    l_TextButton_49.Parent = l_ScrollingFrame_4
    l_TextButton_49.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_49.BackgroundTransparency = 0.5
    l_TextButton_49.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_49.BorderSizePixel = 0
    l_TextButton_49.Position = UDim2.new(0, 25, 0, 375)
    l_TextButton_49.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_49.Font = Enum.Font.Oswald
    l_TextButton_49.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\129\216\167\216\177\216\179 "
    l_TextButton_49.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_49.TextScaled = true
    l_TextButton_49.TextSize = 14
    l_TextButton_49.TextWrapped = true
    l_TextButton_56.Name = "ConfidentAnim_Button"
    l_TextButton_56.Parent = l_ScrollingFrame_4
    l_TextButton_56.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_56.BackgroundTransparency = 0.5
    l_TextButton_56.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_56.BorderSizePixel = 0
    l_TextButton_56.Position = UDim2.new(0, 210, 0, 375)
    l_TextButton_56.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_56.Font = Enum.Font.Oswald
    l_TextButton_56.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\136\216\167\216\171\217\130 "
    l_TextButton_56.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_56.TextScaled = true
    l_TextButton_56.TextSize = 14
    l_TextButton_56.TextWrapped = true
    l_TextButton_57.Name = "PopstarAnim_Button"
    l_TextButton_57.Parent = l_ScrollingFrame_4
    l_TextButton_57.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_57.BackgroundTransparency = 0.5
    l_TextButton_57.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_57.BorderSizePixel = 0
    l_TextButton_57.Position = UDim2.new(0, 25, 0, 425)
    l_TextButton_57.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_57.Font = Enum.Font.Oswald
    l_TextButton_57.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\134\216\172\217\133"
    l_TextButton_57.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_57.TextScaled = true
    l_TextButton_57.TextSize = 14
    l_TextButton_57.TextWrapped = true
    l_TextButton_58.Name = "PrincessAnim_Button"
    l_TextButton_58.Parent = l_ScrollingFrame_4
    l_TextButton_58.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_58.BackgroundTransparency = 0.5
    l_TextButton_58.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_58.BorderSizePixel = 0
    l_TextButton_58.Position = UDim2.new(0, 210, 0, 425)
    l_TextButton_58.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_58.Font = Enum.Font.Oswald
    l_TextButton_58.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\167\217\133\217\138\216\177"
    l_TextButton_58.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_58.TextScaled = true
    l_TextButton_58.TextSize = 14
    l_TextButton_58.TextWrapped = true
    l_TextButton_59.Name = "CowboyAnim_Button"
    l_TextButton_59.Parent = l_ScrollingFrame_4
    l_TextButton_59.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_59.BackgroundTransparency = 0.5
    l_TextButton_59.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_59.BorderSizePixel = 0
    l_TextButton_59.Position = UDim2.new(0, 25, 0, 475)
    l_TextButton_59.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_59.Font = Enum.Font.Oswald
    l_TextButton_59.Text = "\217\133\216\180\217\138\216\169 \216\177\216\167\216\185\217\138 \216\167\217\132\216\168\217\130\216\177"
    l_TextButton_59.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_59.TextScaled = true
    l_TextButton_59.TextSize = 14
    l_TextButton_59.TextWrapped = true
    l_TextButton_60.Name = "PatrolAnim_Button"
    l_TextButton_60.Parent = l_ScrollingFrame_4
    l_TextButton_60.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_60.BackgroundTransparency = 0.5
    l_TextButton_60.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_60.BorderSizePixel = 0
    l_TextButton_60.Position = UDim2.new(0, 210, 0, 475)
    l_TextButton_60.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_60.Font = Enum.Font.Oswald
    l_TextButton_60.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\180\216\177\216\183\217\138 "
    l_TextButton_60.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_60.TextScaled = true
    l_TextButton_60.TextSize = 14
    l_TextButton_60.TextWrapped = true
    l_TextButton_61.Name = "ZombieFEAnim_Button"
    l_TextButton_61.Parent = l_ScrollingFrame_4
    l_TextButton_61.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_61.BackgroundTransparency = 0.5
    l_TextButton_61.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_61.BorderSizePixel = 0
    l_TextButton_61.Position = UDim2.new(0, 25, 0, 525)
    l_TextButton_61.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_61.Font = Enum.Font.Oswald
    l_TextButton_61.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\178\217\136\217\133\216\168\217\138"
    l_TextButton_61.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_61.TextScaled = true
    l_TextButton_61.TextSize = 14
    l_TextButton_61.TextWrapped = true
    l_TextButton_51.Name = "StylishAnim_Button"
    l_TextButton_51.Parent = l_ScrollingFrame_4
    l_TextButton_51.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_51.BackgroundTransparency = 0.5
    l_TextButton_51.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_51.BorderSizePixel = 0
    l_TextButton_51.Position = UDim2.new(0, 210, 0, 575)
    l_TextButton_51.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_51.Font = Enum.Font.Oswald
    l_TextButton_51.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\133\217\136\216\175\217\132 "
    l_TextButton_51.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_51.TextScaled = true
    l_TextButton_51.TextSize = 14
    l_TextButton_51.TextWrapped = true
    l_TextButton_53.Name = "RobotAnim_Button"
    l_TextButton_53.Parent = l_ScrollingFrame_4
    l_TextButton_53.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_53.BackgroundTransparency = 0.5
    l_TextButton_53.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_53.BorderSizePixel = 0
    l_TextButton_53.Position = UDim2.new(0, 210, 0, 625)
    l_TextButton_53.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_53.Font = Enum.Font.Oswald
    l_TextButton_53.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\216\177\217\136\216\168\217\136\216\170 "
    l_TextButton_53.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_53.TextScaled = true
    l_TextButton_53.TextSize = 14
    l_TextButton_53.TextWrapped = true
    l_TextButton_52.Name = "BubblyAnim_Button"
    l_TextButton_52.Parent = l_ScrollingFrame_4
    l_TextButton_52.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_52.BackgroundTransparency = 0.5
    l_TextButton_52.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_52.BorderSizePixel = 0
    l_TextButton_52.Position = UDim2.new(0, 25, 0, 625)
    l_TextButton_52.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_52.Font = Enum.Font.Oswald
    l_TextButton_52.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\129\216\177\216\173\216\167\217\134 "
    l_TextButton_52.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_52.TextScaled = true
    l_TextButton_52.TextSize = 14
    l_TextButton_52.TextWrapped = true
    l_TextButton_50.Name = "StylizedAnim_Button"
    l_TextButton_50.Parent = l_ScrollingFrame_4
    l_TextButton_50.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_50.BackgroundTransparency = 0.5
    l_TextButton_50.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_50.BorderSizePixel = 0
    l_TextButton_50.Position = UDim2.new(0, 210, 0, 525)
    l_TextButton_50.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_50.Font = Enum.Font.Oswald
    l_TextButton_50.Text = "\217\133\216\180\217\138\216\169 \216\167\217\132\217\133\217\136\216\182\216\169 "
    l_TextButton_50.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_50.TextScaled = true
    l_TextButton_50.TextSize = 14
    l_TextButton_50.TextWrapped = true
    getgenv().ArmcutAnimationR6.Name = "ArmcutAnimationR6"
    getgenv().ArmcutAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().ArmcutAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().ArmcutAnimationR6.BackgroundTransparency = 0.5
    getgenv().ArmcutAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().ArmcutAnimationR6.BorderSizePixel = 0
    getgenv().ArmcutAnimationR6.Position = UDim2.new(0, 210, 0, 25)
    getgenv().ArmcutAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().ArmcutAnimationR6.Font = Enum.Font.Oswald
    getgenv().ArmcutAnimationR6.Text = "\217\130\216\183\216\185 \217\138\216\175 (R6)"
    getgenv().ArmcutAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().ArmcutAnimationR6.TextScaled = true
    getgenv().ArmcutAnimationR6.TextSize = 14
    getgenv().ArmcutAnimationR6.TextWrapped = true
    getgenv().BoxesAnimationR6.Name = "BoxesAnimationR6"
    getgenv().BoxesAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().BoxesAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().BoxesAnimationR6.BackgroundTransparency = 0.5
    getgenv().BoxesAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().BoxesAnimationR6.BorderSizePixel = 0
    getgenv().BoxesAnimationR6.Position = UDim2.new(0, 210, 0, 375)
    getgenv().BoxesAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().BoxesAnimationR6.Font = Enum.Font.Oswald
    getgenv().BoxesAnimationR6.Text = "\216\168\217\136\217\131\216\179\216\167\216\170 (R6)"
    getgenv().BoxesAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().BoxesAnimationR6.TextScaled = true
    getgenv().BoxesAnimationR6.TextSize = 14
    getgenv().BoxesAnimationR6.TextWrapped = true
    getgenv().FaintAnimationR6.Name = "FaintAnimationR6"
    getgenv().FaintAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().FaintAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().FaintAnimationR6.BackgroundTransparency = 0.5
    getgenv().FaintAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().FaintAnimationR6.BorderSizePixel = 0
    getgenv().FaintAnimationR6.Position = UDim2.new(0, 210, 0, 75)
    getgenv().FaintAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().FaintAnimationR6.Font = Enum.Font.Oswald
    getgenv().FaintAnimationR6.Text = "\217\134\217\136\217\133 (R6)"
    getgenv().FaintAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().FaintAnimationR6.TextScaled = true
    getgenv().FaintAnimationR6.TextSize = 14
    getgenv().FaintAnimationR6.TextWrapped = true
    getgenv().HugAnimationR6.Name = "HugAnimationR6"
    getgenv().HugAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().HugAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().HugAnimationR6.BackgroundTransparency = 0.5
    getgenv().HugAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().HugAnimationR6.BorderSizePixel = 0
    getgenv().HugAnimationR6.Position = UDim2.new(0, 210, 0, 125)
    getgenv().HugAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().HugAnimationR6.Font = Enum.Font.Oswald
    getgenv().HugAnimationR6.Text = "\216\173\216\182\217\134 (R6)"
    getgenv().HugAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().HugAnimationR6.TextScaled = true
    getgenv().HugAnimationR6.TextSize = 14
    getgenv().HugAnimationR6.TextWrapped = true
    getgenv().BangAnimationR6.Name = "BangAnimationR6"
    getgenv().BangAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().BangAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().BangAnimationR6.BackgroundTransparency = 0.5
    getgenv().BangAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().BangAnimationR6.BorderSizePixel = 0
    getgenv().BangAnimationR6.Position = UDim2.new(0, 210, 0, 175)
    getgenv().BangAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().BangAnimationR6.Font = Enum.Font.Oswald
    getgenv().BangAnimationR6.Text = "\216\168\216\167\217\134\217\130 (R6)"
    getgenv().BangAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().BangAnimationR6.TextScaled = true
    getgenv().BangAnimationR6.TextSize = 14
    getgenv().BangAnimationR6.TextWrapped = true
    getgenv().IllusionAnimationR6.Name = "IllusionAnimationR6"
    getgenv().IllusionAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().IllusionAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().IllusionAnimationR6.BackgroundTransparency = 0.5
    getgenv().IllusionAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().IllusionAnimationR6.BorderSizePixel = 0
    getgenv().IllusionAnimationR6.Position = UDim2.new(0, 210, 0, 225)
    getgenv().IllusionAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().IllusionAnimationR6.Font = Enum.Font.Oswald
    getgenv().IllusionAnimationR6.Text = "\217\136\217\133\217\138\216\182 (R6)"
    getgenv().IllusionAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().IllusionAnimationR6.TextScaled = true
    getgenv().IllusionAnimationR6.TextSize = 14
    getgenv().IllusionAnimationR6.TextWrapped = true
    getgenv().InsaneAnimationR6.Name = "InsaneAnimationR6"
    getgenv().InsaneAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().InsaneAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().InsaneAnimationR6.BackgroundTransparency = 0.5
    getgenv().InsaneAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().InsaneAnimationR6.BorderSizePixel = 0
    getgenv().InsaneAnimationR6.Position = UDim2.new(0, 210, 0, 325)
    getgenv().InsaneAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().InsaneAnimationR6.Font = Enum.Font.Oswald
    getgenv().InsaneAnimationR6.Text = "\217\133\216\172\217\134\217\136\217\134 (R6)"
    getgenv().InsaneAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().InsaneAnimationR6.TextScaled = true
    getgenv().InsaneAnimationR6.TextSize = 14
    getgenv().InsaneAnimationR6.TextWrapped = true
    getgenv().BackpackHeadAnimationR6.Name = "BackpackHeadAnimationR6"
    getgenv().BackpackHeadAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().BackpackHeadAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().BackpackHeadAnimationR6.BackgroundTransparency = 0.5
    getgenv().BackpackHeadAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().BackpackHeadAnimationR6.BorderSizePixel = 0
    getgenv().BackpackHeadAnimationR6.Position = UDim2.new(0, 210, 0, 275)
    getgenv().BackpackHeadAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().BackpackHeadAnimationR6.Font = Enum.Font.Oswald
    getgenv().BackpackHeadAnimationR6.Text = "\216\177\216\167\216\179 \216\180\217\134\216\183\216\169 (R6)"
    getgenv().BackpackHeadAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().BackpackHeadAnimationR6.TextScaled = true
    getgenv().BackpackHeadAnimationR6.TextSize = 14
    getgenv().BackpackHeadAnimationR6.TextWrapped = true
    getgenv().FloatingHeadAnimationR6.Name = "FloatingHeadAnimationR6"
    getgenv().FloatingHeadAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().FloatingHeadAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().FloatingHeadAnimationR6.BackgroundTransparency = 0.5
    getgenv().FloatingHeadAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().FloatingHeadAnimationR6.BorderSizePixel = 0
    getgenv().FloatingHeadAnimationR6.Position = UDim2.new(0, 210, 0, 425)
    getgenv().FloatingHeadAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().FloatingHeadAnimationR6.Font = Enum.Font.Oswald
    getgenv().FloatingHeadAnimationR6.Text = "\216\177\216\167\216\179 \216\183\216\167\217\138\216\177 (R6)"
    getgenv().FloatingHeadAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().FloatingHeadAnimationR6.TextScaled = true
    getgenv().FloatingHeadAnimationR6.TextSize = 14
    getgenv().FloatingHeadAnimationR6.TextWrapped = true
    getgenv().JerkingAnimationR6.Name = "JerkingAnimationR6"
    getgenv().JerkingAnimationR6.Parent = l_ScrollingFrame_5
    getgenv().JerkingAnimationR6.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().JerkingAnimationR6.BackgroundTransparency = 0.5
    getgenv().JerkingAnimationR6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().JerkingAnimationR6.BorderSizePixel = 0
    getgenv().JerkingAnimationR6.Position = UDim2.new(0, 210, 0, 475)
    getgenv().JerkingAnimationR6.Size = UDim2.new(0, 150, 0, 30)
    getgenv().JerkingAnimationR6.Font = Enum.Font.Oswald
    getgenv().JerkingAnimationR6.Text = "\216\170\216\172\217\132\217\138\216\174 (R6)"
    getgenv().JerkingAnimationR6.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().JerkingAnimationR6.TextScaled = true
    getgenv().JerkingAnimationR6.TextSize = 14
    getgenv().JerkingAnimationR6.TextWrapped = true
    getgenv().SaluteAnimationR15.Name = "SaluteAnimationR15"
    getgenv().SaluteAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().SaluteAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().SaluteAnimationR15.BackgroundTransparency = 0.5
    getgenv().SaluteAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().SaluteAnimationR15.BorderSizePixel = 0
    getgenv().SaluteAnimationR15.Position = UDim2.new(0, 25, 0, 25)
    getgenv().SaluteAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().SaluteAnimationR15.Font = Enum.Font.Oswald
    getgenv().SaluteAnimationR15.Text = "\216\170\216\173\217\138\216\169 (R15)"
    getgenv().SaluteAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().SaluteAnimationR15.TextScaled = true
    getgenv().SaluteAnimationR15.TextSize = 14
    getgenv().SaluteAnimationR15.TextWrapped = true
    getgenv().DoggyAnimationR15.Name = "DoggyAnimationR15"
    getgenv().DoggyAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().DoggyAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().DoggyAnimationR15.BackgroundTransparency = 0.5
    getgenv().DoggyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().DoggyAnimationR15.BorderSizePixel = 0
    getgenv().DoggyAnimationR15.Position = UDim2.new(0, 25, 0, 75)
    getgenv().DoggyAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().DoggyAnimationR15.Font = Enum.Font.Oswald
    getgenv().DoggyAnimationR15.Text = "\217\131\217\132\216\168 (R15)"
    getgenv().DoggyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().DoggyAnimationR15.TextScaled = true
    getgenv().DoggyAnimationR15.TextSize = 14
    getgenv().DoggyAnimationR15.TextWrapped = true
    getgenv().Sb3awyAnimationR15.Name = "Sb3awyAnimationR15"
    getgenv().Sb3awyAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().Sb3awyAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().Sb3awyAnimationR15.BackgroundTransparency = 0.5
    getgenv().Sb3awyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().Sb3awyAnimationR15.BorderSizePixel = 0
    getgenv().Sb3awyAnimationR15.Position = UDim2.new(0, 25, 0, 325)
    getgenv().Sb3awyAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().Sb3awyAnimationR15.Font = Enum.Font.Oswald
    getgenv().Sb3awyAnimationR15.Text = "\216\179\216\168\216\185\216\167\217\136\217\138 (R15)"
    getgenv().Sb3awyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().Sb3awyAnimationR15.TextScaled = true
    getgenv().Sb3awyAnimationR15.TextSize = 14
    getgenv().Sb3awyAnimationR15.TextWrapped = true
    getgenv().ZombieWalkAnimationR15.Name = "ZombieWalkAnimationR15"
    getgenv().ZombieWalkAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().ZombieWalkAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().ZombieWalkAnimationR15.BackgroundTransparency = 0.5
    getgenv().ZombieWalkAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().ZombieWalkAnimationR15.BorderSizePixel = 0
    getgenv().ZombieWalkAnimationR15.Position = UDim2.new(0, 25, 0, 425)
    getgenv().ZombieWalkAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().ZombieWalkAnimationR15.Font = Enum.Font.Oswald
    getgenv().ZombieWalkAnimationR15.Text = "\216\178\217\136\217\133\216\168\217\138 (R15)"
    getgenv().ZombieWalkAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().ZombieWalkAnimationR15.TextScaled = true
    getgenv().ZombieWalkAnimationR15.TextSize = 14
    getgenv().ZombieWalkAnimationR15.TextWrapped = true
    getgenv().FlingArmsAnimationR15.Name = "FlingArmsAnimationR15"
    getgenv().FlingArmsAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().FlingArmsAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().FlingArmsAnimationR15.BackgroundTransparency = 0.5
    getgenv().FlingArmsAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().FlingArmsAnimationR15.BorderSizePixel = 0
    getgenv().FlingArmsAnimationR15.Position = UDim2.new(0, 25, 0, 475)
    getgenv().FlingArmsAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().FlingArmsAnimationR15.Font = Enum.Font.Oswald
    getgenv().FlingArmsAnimationR15.Text = "\217\132\216\183\217\133 (R15)"
    getgenv().FlingArmsAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().FlingArmsAnimationR15.TextScaled = true
    getgenv().FlingArmsAnimationR15.TextSize = 14
    getgenv().FlingArmsAnimationR15.TextWrapped = true
    getgenv().AhmAhmAnimationR15.Name = "AhmAhmAnimationR15"
    getgenv().AhmAhmAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().AhmAhmAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().AhmAhmAnimationR15.BackgroundTransparency = 0.5
    getgenv().AhmAhmAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().AhmAhmAnimationR15.BorderSizePixel = 0
    getgenv().AhmAhmAnimationR15.Position = UDim2.new(0, 25, 0, 525)
    getgenv().AhmAhmAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().AhmAhmAnimationR15.Font = Enum.Font.Oswald
    getgenv().AhmAhmAnimationR15.Text = "\216\167\216\173\217\133 (R15)"
    getgenv().AhmAhmAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().AhmAhmAnimationR15.TextScaled = true
    getgenv().AhmAhmAnimationR15.TextSize = 14
    getgenv().AhmAhmAnimationR15.TextWrapped = true
    getgenv().DolphinAnimationR15.Name = "DolphinAnimationR15"
    getgenv().DolphinAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().DolphinAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().DolphinAnimationR15.BackgroundTransparency = 0.5
    getgenv().DolphinAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().DolphinAnimationR15.BorderSizePixel = 0
    getgenv().DolphinAnimationR15.Position = UDim2.new(0, 25, 0, 375)
    getgenv().DolphinAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().DolphinAnimationR15.Font = Enum.Font.Oswald
    getgenv().DolphinAnimationR15.Text = "\216\175\217\136\217\132\217\129\217\138\217\134 (R15)"
    getgenv().DolphinAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().DolphinAnimationR15.TextScaled = true
    getgenv().DolphinAnimationR15.TextSize = 14
    getgenv().DolphinAnimationR15.TextWrapped = true
    getgenv().SleepyAnimationR15.Name = "SleepyAnimationR15"
    getgenv().SleepyAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().SleepyAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().SleepyAnimationR15.BackgroundTransparency = 0.5
    getgenv().SleepyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().SleepyAnimationR15.BorderSizePixel = 0
    getgenv().SleepyAnimationR15.Position = UDim2.new(0, 25, 0, 125)
    getgenv().SleepyAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().SleepyAnimationR15.Font = Enum.Font.Oswald
    getgenv().SleepyAnimationR15.Text = "\217\134\216\167\216\166\217\133 (R15)"
    getgenv().SleepyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().SleepyAnimationR15.TextScaled = true
    getgenv().SleepyAnimationR15.TextSize = 14
    getgenv().SleepyAnimationR15.TextWrapped = true
    getgenv().HugAnimationR15.Name = "HugAnimationR15"
    getgenv().HugAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().HugAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().HugAnimationR15.BackgroundTransparency = 0.5
    getgenv().HugAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().HugAnimationR15.BorderSizePixel = 0
    getgenv().HugAnimationR15.Position = UDim2.new(0, 25, 0, 175)
    getgenv().HugAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().HugAnimationR15.Font = Enum.Font.Oswald
    getgenv().HugAnimationR15.Text = "\216\173\216\182\217\134 (R15)"
    getgenv().HugAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().HugAnimationR15.TextScaled = true
    getgenv().HugAnimationR15.TextSize = 14
    getgenv().HugAnimationR15.TextWrapped = true
    getgenv().CrazyAnimationR15.Name = "CrazyAnimationR15"
    getgenv().CrazyAnimationR15.Parent = l_ScrollingFrame_5
    getgenv().CrazyAnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().CrazyAnimationR15.BackgroundTransparency = 0.5
    getgenv().CrazyAnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().CrazyAnimationR15.BorderSizePixel = 0
    getgenv().CrazyAnimationR15.Position = UDim2.new(0, 25, 0, 225)
    getgenv().CrazyAnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().CrazyAnimationR15.Font = Enum.Font.Oswald
    getgenv().CrazyAnimationR15.Text = "\217\133\216\174\216\168\217\132 (R15)"
    getgenv().CrazyAnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().CrazyAnimationR15.TextScaled = true
    getgenv().CrazyAnimationR15.TextSize = 14
    getgenv().CrazyAnimationR15.TextWrapped = true
    getgenv().B3b3AnimationR15.Name = "B3b3AnimationR15"
    getgenv().B3b3AnimationR15.Parent = l_ScrollingFrame_5
    getgenv().B3b3AnimationR15.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    getgenv().B3b3AnimationR15.BackgroundTransparency = 0.5
    getgenv().B3b3AnimationR15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().B3b3AnimationR15.BorderSizePixel = 0
    getgenv().B3b3AnimationR15.Position = UDim2.new(0, 25, 0, 275)
    getgenv().B3b3AnimationR15.Size = UDim2.new(0, 150, 0, 30)
    getgenv().B3b3AnimationR15.Font = Enum.Font.Oswald
    getgenv().B3b3AnimationR15.Text = "\216\168\216\185\216\168\216\185 (R15)"
    getgenv().B3b3AnimationR15.TextColor3 = Color3.fromRGB(0, 0, 0)
    getgenv().B3b3AnimationR15.TextScaled = true
    getgenv().B3b3AnimationR15.TextSize = 14
    getgenv().B3b3AnimationR15.TextWrapped = true
    l_TextButton_54.Name = "Chose_Animation_Button1"
    l_TextButton_54.Parent = l_ScrollingFrame_6
    l_TextButton_54.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_54.BackgroundTransparency = 0.5
    l_TextButton_54.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_54.BorderSizePixel = 0
    l_TextButton_54.Position = UDim2.new(0, 25, 0, 100)
    l_TextButton_54.Size = UDim2.new(0, 150, 0, 60)
    l_TextButton_54.Font = Enum.Font.Oswald
    l_TextButton_54.Text = "\216\167\217\134\217\133\217\138\216\180\217\134 \216\173\216\177\217\131\216\167\216\170\n" .. utf8.char(128378, 127995)
    l_TextButton_54.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_54.TextScaled = true
    l_TextButton_54.TextSize = 14
    l_TextButton_54.TextWrapped = true
    l_TextButton_55.Name = "Chose_Animation_Button2"
    l_TextButton_55.Parent = l_ScrollingFrame_6
    l_TextButton_55.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_55.BackgroundTransparency = 0.5
    l_TextButton_55.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_55.BorderSizePixel = 0
    l_TextButton_55.Position = UDim2.new(0, 210, 0, 100)
    l_TextButton_55.Size = UDim2.new(0, 150, 0, 60)
    l_TextButton_55.Font = Enum.Font.Oswald
    l_TextButton_55.Text = "\216\167\217\134\217\133\217\138\216\180\217\134 \217\133\217\138\216\180\216\167\216\170\n" .. utf8.char(128694, 127995) .. utf8.char(8205) .. utf8.char(9794, 65039)
    l_TextButton_55.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_55.TextScaled = true
    l_TextButton_55.TextSize = 14
    l_TextButton_55.TextWrapped = true
    l_ScrollingFrame_7.Name = "Misc_Section"
    l_ScrollingFrame_7.Parent = l_ImageLabel_0
    l_ScrollingFrame_7.Active = true
    l_ScrollingFrame_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_7.BackgroundTransparency = 1
    l_ScrollingFrame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_7.BorderSizePixel = 0
    l_ScrollingFrame_7.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_7.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_7.Visible = false
    l_ScrollingFrame_7.CanvasSize = UDim2.new(0, 0, 1.05, 0)
    l_ScrollingFrame_7.ScrollBarThickness = 5
    l_TextButton_62.Name = "AntiFling_Button"
    l_TextButton_62.Parent = l_ScrollingFrame_7
    l_TextButton_62.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_62.BackgroundTransparency = 0.5
    l_TextButton_62.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_62.BorderSizePixel = 0
    l_TextButton_62.Position = UDim2.new(0, 25, 0, 25)
    l_TextButton_62.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_62.Font = Enum.Font.Oswald
    l_TextButton_62.Text = "\217\133\216\182\216\167\216\175 \217\129\217\132\217\134\217\130"
    l_TextButton_62.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_62.TextScaled = true
    l_TextButton_62.TextSize = 14
    l_TextButton_62.TextWrapped = true
    l_TextButton_64.Name = "AntiAFK_Button"
    l_TextButton_64.Parent = l_ScrollingFrame_7
    l_TextButton_64.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_64.BackgroundTransparency = 0.5
    l_TextButton_64.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_64.BorderSizePixel = 0
    l_TextButton_64.Position = UDim2.new(0, 25, 0, 75)
    l_TextButton_64.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_64.Font = Enum.Font.Oswald
    l_TextButton_64.Text = "\217\133\216\182\216\167\216\175 \216\167\217\129\217\131"
    l_TextButton_64.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_64.TextScaled = true
    l_TextButton_64.TextSize = 14
    l_TextButton_64.TextWrapped = true
    l_TextButton_63.Name = "AntiChatSpy_Button"
    l_TextButton_63.Parent = l_ScrollingFrame_7
    l_TextButton_63.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_63.BackgroundTransparency = 0.5
    l_TextButton_63.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_63.BorderSizePixel = 0
    l_TextButton_63.Position = UDim2.new(0, 210, 0, 25)
    l_TextButton_63.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_63.Font = Enum.Font.Oswald
    l_TextButton_63.Text = "\217\133\216\182\216\167\216\175 \216\167\216\186\216\170\216\181\216\167\216\168"
    l_TextButton_63.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_63.TextScaled = true
    l_TextButton_63.TextSize = 14
    l_TextButton_63.TextWrapped = true
    l_TextButton_65.Name = "Shaders_Button"
    l_TextButton_65.Parent = l_ScrollingFrame_7
    l_TextButton_65.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_65.BackgroundTransparency = 0.5
    l_TextButton_65.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_65.BorderSizePixel = 0
    l_TextButton_65.Position = UDim2.new(0, 210, 0, 75)
    l_TextButton_65.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_65.Font = Enum.Font.Oswald
    l_TextButton_65.Text = "\216\180\216\167\216\175\216\177 "
    l_TextButton_65.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_65.TextScaled = true
    l_TextButton_65.TextSize = 14
    l_TextButton_65.TextWrapped = true
    l_TextButton_66.Name = "Day_Button"
    l_TextButton_66.Parent = l_ScrollingFrame_7
    l_TextButton_66.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_66.BackgroundTransparency = 0.5
    l_TextButton_66.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_66.BorderSizePixel = 0
    l_TextButton_66.Position = UDim2.new(0, 25, 0, 125)
    l_TextButton_66.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_66.Font = Enum.Font.Oswald
    l_TextButton_66.Text = "\216\181\216\168\216\167\216\173"
    l_TextButton_66.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_66.TextScaled = true
    l_TextButton_66.TextSize = 14
    l_TextButton_66.TextWrapped = true
    l_TextButton_67.Name = "Night_Button"
    l_TextButton_67.Parent = l_ScrollingFrame_7
    l_TextButton_67.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_67.BackgroundTransparency = 0.5
    l_TextButton_67.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_67.BorderSizePixel = 0
    l_TextButton_67.Position = UDim2.new(0, 210, 0, 125)
    l_TextButton_67.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_67.Font = Enum.Font.Oswald
    l_TextButton_67.Text = "\217\132\217\138\217\132"
    l_TextButton_67.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_67.TextScaled = true
    l_TextButton_67.TextSize = 14
    l_TextButton_67.TextWrapped = true
    l_TextButton_68.Name = "Rejoin_Button"
    l_TextButton_68.Parent = l_ScrollingFrame_7
    l_TextButton_68.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_68.BackgroundTransparency = 0.5
    l_TextButton_68.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_68.BorderSizePixel = 0
    l_TextButton_68.Position = UDim2.new(0, 25, 0, 225)
    l_TextButton_68.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_68.Font = Enum.Font.Oswald
    l_TextButton_68.Text = "\216\165\216\185\216\167\216\175\216\169 \216\167\217\132\216\167\217\134\216\182\217\133\216\167\217\133"
    l_TextButton_68.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_68.TextScaled = true
    l_TextButton_68.TextSize = 14
    l_TextButton_68.TextWrapped = true
    l_TextButton_69.Name = "InfYield_Button"
    l_TextButton_69.Parent = l_ScrollingFrame_7
    l_TextButton_69.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_69.BackgroundTransparency = 0.5
    l_TextButton_69.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_69.BorderSizePixel = 0
    l_TextButton_69.Position = UDim2.new(0, 25, 0, 175)
    l_TextButton_69.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_69.Font = Enum.Font.Oswald
    l_TextButton_69.Text = "\216\167\216\175\217\133\217\134 IY"
    l_TextButton_69.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_69.TextScaled = true
    l_TextButton_69.TextSize = 14
    l_TextButton_69.TextWrapped = true
    l_TextButton_72.Name = "FreeEmotes_Button"
    l_TextButton_72.Parent = l_ScrollingFrame_7
    l_TextButton_72.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_72.BackgroundTransparency = 0.5
    l_TextButton_72.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_72.BorderSizePixel = 0
    l_TextButton_72.Position = UDim2.new(0, 210, 0, 175)
    l_TextButton_72.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_72.Font = Enum.Font.Oswald
    l_TextButton_72.Text = "\216\177\217\130\216\181\216\167\216\170 \217\133\216\172\216\167\217\134\217\138\216\169"
    l_TextButton_72.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_72.TextScaled = true
    l_TextButton_72.TextSize = 14
    l_TextButton_72.TextWrapped = true
    l_TextButton_70.Name = "Serverhop_Button"
    l_TextButton_70.Parent = l_ScrollingFrame_7
    l_TextButton_70.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_70.BackgroundTransparency = 0.5
    l_TextButton_70.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_70.BorderSizePixel = 0
    l_TextButton_70.Position = UDim2.new(0, 210, 0, 225)
    l_TextButton_70.Size = UDim2.new(0, 150, 0, 30)
    l_TextButton_70.Font = Enum.Font.Oswald
    l_TextButton_70.Text = "\216\170\216\186\217\138\217\138\216\177 \216\167\217\132\216\179\217\138\216\177\217\129\216\177"
    l_TextButton_70.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_70.TextScaled = true
    l_TextButton_70.TextSize = 14
    l_TextButton_70.TextWrapped = true
    l_TextButton_71.Name = "Ad_Button"
    l_TextButton_71.Parent = l_ScrollingFrame_7
    l_TextButton_71.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_71.BackgroundTransparency = 0.5
    l_TextButton_71.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_71.BorderSizePixel = 0
    l_TextButton_71.Position = UDim2.new(0, 25, 0, 263)
    l_TextButton_71.Size = UDim2.new(0, 335, 0, 30)
    l_TextButton_71.Font = Enum.Font.Oswald
    l_TextButton_71.Text = "\216\179\217\131\216\177\216\168\216\170\216\167\216\170 \216\167\216\174\216\177\217\137"
    l_TextButton_71.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_71.TextScaled = true
    l_TextButton_71.TextSize = 14
    l_TextButton_71.TextWrapped = true
    l_TextBox_6.Name = "ChatBox_Input"
    l_TextBox_6.Parent = l_ScrollingFrame_7
    l_TextBox_6.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    l_TextBox_6.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_6.Position = UDim2.new(0, 25, 0, 298)
    l_TextBox_6.Size = UDim2.new(0, 335, 0, 60)
    l_TextBox_6.Font = Enum.Font.Oswald
    l_TextBox_6.PlaceholderText = "\216\170\216\180\217\129\217\138\216\177 \216\167\217\132\217\131\217\132\216\167\217\133 [\217\133\216\167\216\185\217\132\217\138\217\135\216\167 \216\168\216\167\217\134\216\175 \216\185\217\132\217\137 \216\182\217\133\216\167\217\134\216\170\217\138] .                                                                            "
    l_TextBox_6.Text = ""
    l_TextBox_6.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextBox_6.TextSize = 14
    l_TextBox_6.TextWrapped = true
    l_TextBox_6.TextXAlignment = Enum.TextXAlignment.Left
    l_TextBox_6.TextYAlignment = Enum.TextYAlignment.Top
    l_ScrollingFrame_8.Name = "Credits_Section"
    l_ScrollingFrame_8.Parent = l_ImageLabel_0
    l_ScrollingFrame_8.Active = true
    l_ScrollingFrame_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ScrollingFrame_8.BackgroundTransparency = 1
    l_ScrollingFrame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ScrollingFrame_8.BorderSizePixel = 0
    l_ScrollingFrame_8.Position = UDim2.new(0, 105, 0, 30)
    l_ScrollingFrame_8.Size = UDim2.new(0, 395, 0, 320)
    l_ScrollingFrame_8.Visible = false
    l_ScrollingFrame_8.CanvasSize = UDim2.new(0, 0, 0.8, 0)
    l_ScrollingFrame_8.ScrollBarThickness = 5
    l_TextLabel_5.Name = "Credits_Label"
    l_TextLabel_5.Parent = l_ScrollingFrame_8
    l_TextLabel_5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    l_TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextLabel_5.BorderSizePixel = 0
    l_TextLabel_5.Position = UDim2.new(0, 25, 0, 150)
    l_TextLabel_5.Size = UDim2.new(0, 350, 0, 150)
    l_TextLabel_5.Font = Enum.Font.SourceSans
    l_TextLabel_5.Text = "Made By : @i.vr7, @7sone \nDiscord: discord.gg/vr7\nLast Update: 2025/10/23\nVersion: " .. "v" .. arg
    l_TextLabel_5.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextLabel_5.TextSize = 24
    l_TextLabel_5.TextWrapped = true
    l_TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
    l_TextLabel_5.TextYAlignment = Enum.TextYAlignment.Top
    l_TextButton_73.Name = "WhoWeAre_Button"
    l_TextButton_73.Parent = l_ScrollingFrame_8
    l_TextButton_73.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_TextButton_73.BackgroundTransparency = 0.5
    l_TextButton_73.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_73.BorderSizePixel = 0
    l_TextButton_73.Position = UDim2.new(0, 40, 0, 255)
    l_TextButton_73.Size = UDim2.new(0, 300, 0, 30)
    l_TextButton_73.Font = Enum.Font.Oswald
    l_TextButton_73.Text = "\217\133\217\134 \217\134\216\173\217\134\216\159"
    l_TextButton_73.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_73.TextScaled = true
    l_TextButton_73.TextSize = 14
    l_TextButton_73.TextWrapped = true
    l_ImageLabel_3.Name = "TrollFace"
    l_ImageLabel_3.Parent = l_ImageLabel_0
    l_ImageLabel_3.AnchorPoint = Vector2.new(0.5, 0.44)
    l_ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ImageLabel_3.BackgroundTransparency = 1
    l_ImageLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ImageLabel_3.BorderSizePixel = 0
    l_ImageLabel_3.Rotation = -25
    l_ImageLabel_3.ScaleType = Enum.ScaleType.Fit
    l_ImageLabel_3.Size = UDim2.new(0, 121, 0, 102)
    l_ImageLabel_3.Image = "rbxassetid://8776783827"
    l_ImageLabel_3.ImageColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_ImageLabel_4.Name = "Server Image"
    l_ImageLabel_4.Parent = l_ScrollingFrame_8
    l_ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_ImageLabel_4.BackgroundTransparency = 1
    l_ImageLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ImageLabel_4.BorderSizePixel = 0
    l_ImageLabel_4.Size = UDim2.new(0, 350, 0, 130)
    l_ImageLabel_4.Position = UDim2.new(0, 25, 0, 10)
    l_ImageLabel_4.Image = "rbxassetid://136772242182146"
    l_ImageLabel_4.ImageColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    v306 = l_UIStroke_1:Clone()
    v306.Color = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    v306.Parent = l_ImageLabel_4
    l_Folder_0.Name = "Assets"
    l_Folder_0.Parent = getgenv().VR7
    l_ImageButton_1.Name = "Ticket_Asset"
    l_ImageButton_1.Parent = l_Folder_0
    l_ImageButton_1.AnchorPoint = Vector2.new(0, 0.5)
    l_ImageButton_1.BackgroundTransparency = 1
    l_ImageButton_1.BorderSizePixel = 0
    l_ImageButton_1.LayoutOrder = 5
    l_ImageButton_1.Position = UDim2.new(1, 5, 0.5, 0)
    l_ImageButton_1.Size = UDim2.new(0, 25, 0, 25)
    l_ImageButton_1.ZIndex = 2
    l_ImageButton_1.Image = "rbxassetid://3926305904"
    l_ImageButton_1.ImageColor3 = Color3.fromRGB(255, 0, 0)
    l_ImageButton_1.ImageRectOffset = Vector2.new(424, 4)
    l_ImageButton_1.ImageRectSize = Vector2.new(36, 36)
    l_ImageButton_2.Name = "Click_Asset"
    l_ImageButton_2.Parent = l_Folder_0
    l_ImageButton_2.AnchorPoint = Vector2.new(0, 0.5)
    l_ImageButton_2.BackgroundTransparency = 1
    l_ImageButton_2.BorderSizePixel = 0
    l_ImageButton_2.Position = UDim2.new(1, 5, 0.5, 0)
    l_ImageButton_2.Size = UDim2.new(0, 25, 0, 25)
    l_ImageButton_2.ZIndex = 2
    l_ImageButton_2.Image = "rbxassetid://3926305904"
    l_ImageButton_2.ImageColor3 = Color3.fromRGB(100, 100, 100)
    l_ImageButton_2.ImageRectOffset = Vector2.new(204, 964)
    l_ImageButton_2.ImageRectSize = Vector2.new(36, 36)
    l_BodyAngularVelocity_0.AngularVelocity = Vector3.new(0, 0, 0)
    l_BodyAngularVelocity_0.MaxTorque = Vector3.new(50000, 50000, 50000)
    l_BodyAngularVelocity_0.P = 1250
    l_BodyAngularVelocity_0.Name = "BreakVelocity"
    l_BodyAngularVelocity_0.Parent = l_Folder_0
    l_ImageButton_3.Name = "Fly_Pad"
    l_ImageButton_3.Parent = l_Folder_0
    l_ImageButton_3.BackgroundTransparency = 1
    l_ImageButton_3.Position = UDim2.new(0.1, 0, 0.6, 0)
    l_ImageButton_3.Size = UDim2.new(0, 100, 0, 100)
    l_ImageButton_3.ZIndex = 2
    l_ImageButton_3.Image = "rbxassetid://6764432293"
    l_ImageButton_3.ImageRectOffset = Vector2.new(713, 315)
    l_ImageButton_3.ImageRectSize = Vector2.new(75, 75)
    l_ImageButton_3.Visible = false
    l_UIGradient_0.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 30)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(l_r_0, l_g_0, l_b_0))
    })
    l_UIGradient_0.Rotation = 45
    l_UIGradient_0.Parent = l_ImageButton_3
    l_TextButton_74.Name = "FlyAButton"
    l_TextButton_74.Parent = l_ImageButton_3
    l_TextButton_74.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_TextButton_74.BackgroundTransparency = 1
    l_TextButton_74.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_74.BorderSizePixel = 0
    l_TextButton_74.Position = UDim2.new(0, 0, 0, 30)
    l_TextButton_74.Size = UDim2.new(0, 30, 0, 40)
    l_TextButton_74.Font = Enum.Font.Oswald
    l_TextButton_74.Text = ""
    l_TextButton_74.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_74.TextSize = 25
    l_TextButton_74.TextWrapped = true
    l_TextButton_75.Name = "FlyDButton"
    l_TextButton_75.Parent = l_ImageButton_3
    l_TextButton_75.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_TextButton_75.BackgroundTransparency = 1
    l_TextButton_75.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_75.BorderSizePixel = 0
    l_TextButton_75.Position = UDim2.new(0, 70, 0, 30)
    l_TextButton_75.Size = UDim2.new(0, 30, 0, 40)
    l_TextButton_75.Font = Enum.Font.Oswald
    l_TextButton_75.Text = ""
    l_TextButton_75.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_75.TextSize = 25
    l_TextButton_75.TextWrapped = true
    l_TextButton_76.Name = "FlyWButton"
    l_TextButton_76.Parent = l_ImageButton_3
    l_TextButton_76.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_TextButton_76.BackgroundTransparency = 1
    l_TextButton_76.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_76.BorderSizePixel = 0
    l_TextButton_76.Position = UDim2.new(0, 30, 0, 0)
    l_TextButton_76.Size = UDim2.new(0, 40, 0, 30)
    l_TextButton_76.Font = Enum.Font.Oswald
    l_TextButton_76.Text = ""
    l_TextButton_76.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_76.TextSize = 25
    l_TextButton_76.TextWrapped = true
    l_TextButton_77.Name = "FlySButton"
    l_TextButton_77.Parent = l_ImageButton_3
    l_TextButton_77.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    l_TextButton_77.BackgroundTransparency = 1
    l_TextButton_77.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_77.BorderSizePixel = 0
    l_TextButton_77.Position = UDim2.new(0, 30, 0, 70)
    l_TextButton_77.Size = UDim2.new(0, 40, 0, 30)
    l_TextButton_77.Font = Enum.Font.Oswald
    l_TextButton_77.Text = ""
    l_TextButton_77.TextColor3 = Color3.fromRGB(0, 0, 0)
    l_TextButton_77.TextSize = 25
    l_TextButton_77.TextWrapped = true
    l_ImageButton_4.Name = "OpenClose"
    l_ImageButton_4.Parent = getgenv().VR7
    l_ImageButton_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    l_ImageButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    l_ImageButton_4.BorderSizePixel = 0
    l_ImageButton_4.Position = UDim2.new(0, 0, 0.5, 0)
    l_ImageButton_4.Size = UDim2.new(0, 30, 0, 30)
    l_ImageButton_4.ScaleType = Enum.ScaleType.Fit
    l_ImageButton_4.Image = "rbxassetid://8776783827"
    l_ImageButton_4.ImageColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
    l_UICorner_0.CornerRadius = UDim.new(1, 0)
    l_UICorner_0.Parent = l_ImageButton_4
    function CreateRainbowTextLabel(v309, v310, v311, v312)
        local v313 = Instance.new("TextLabel", v309)
        v313.Text = v310
        v313.Size = UDim2.new(0, 60, 0, 30)
        v313.Position = v311
        v313.TextColor3 = Color3.fromRGB(85, 255, 127)
        v313.TextScaled = true
        v313.Font = Enum.Font.SourceSans
        v313.TextSize = 20
        v313.TextTransparency = 0
        v313.BackgroundTransparency = 1
        v313.TextStrokeTransparency = 0.8
        v313.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        v313.Rotation = v312
        return v313
    end
    function CreateButtonWithText(v314, v315, v316, v317, v318, v319)
        local v320 = Instance.new("TextButton", v314)
        v320.Name = v315
        v320.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
        v320.BackgroundTransparency = 0.5
        v320.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v320.BorderSizePixel = 0
        v320.Position = v317
        v320.Size = UDim2.new(0, 150, 0, 30)
        v320.Font = Enum.Font.Oswald
        v320.Text = v316
        v320.TextColor3 = Color3.fromRGB(0, 0, 0)
        v320.TextScaled = true
        v320.TextSize = 14
        v320.TextWrapped = true
        if v315 ~= "VehicleFling_Button" and v315 ~= "Ball_Fling" and v315 ~= "Spam_Skins" and v315 ~= "Spamming_Commands" then
            CreateClicker(v320)
        else
            CreateToggle(v320)
        end
        return {
            t1 = CreateRainbowTextLabel(v314, v318, UDim2.new(0, v317.X.Offset - 15, 0, v317.Y.Offset + 15), v319),
            t2 = v320
        }
    end
    if game.PlaceId == 14201103742 or game.PlaceId == 12123568130 or game.PlaceId == 18209796679 or game.PlaceId == 17723040340 or game.PlaceId == 88950799188393 then
        pcall(function()
            local l_Workspace_0 = game:GetService("Workspace")
            local l_RunService_1 = game:GetService("RunService")
            local l_LocalPlayer_3 = game.Players.LocalPlayer
            local l_HumanoidRootPart_2 = (l_LocalPlayer_3.Character or l_LocalPlayer_3.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            local v325 = Instance.new("Folder", l_Workspace_0)
            local v326 = Instance.new("Part", v325)
            local v327 = Instance.new("Attachment", v326)
            v326.Anchored = true
            v326.CanCollide = false
            v326.Transparency = 1
            if not getgenv().Network then
                getgenv().Network = {BaseParts = {}, Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)}
                Network.RetainPart = function(v328)
                    if typeof(v328) == "Instance" and v328:IsA("BasePart") and v328:IsDescendantOf(l_Workspace_0) and not v328:IsDescendantOf(game.Players.LocalPlayer.Character) then
                        table.insert(Network.BaseParts, v328)
                        v328.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
                        v328.CanCollide = false
                    end
                end
                ;(function()
                    l_LocalPlayer_3.ReplicationFocus = l_Workspace_0
                    l_RunService_1.Heartbeat:Connect(function()
                        pcall(function()
                            sethiddenproperty(l_LocalPlayer_3, "SimulationRadius", math.huge)
                            for _, v330 in pairs(Network.BaseParts) do
                                if v330:IsDescendantOf(l_Workspace_0) then
                                    v330.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 50
                                end
                            end
                        end)
                    end)
                end)()
            end
            function Flinger(v331)
                if getgenv().loopfling and v331:IsA("BasePart") and not v331.Anchored and not v331.Parent:FindFirstChild("Humanoid") and not v331.Parent:FindFirstChild("Head") and v331.Name ~= "Handle" then
                    local l_CFrame_2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v331.Position)
                    wait(0.7)
                    for _, v334 in next, v331:GetChildren() do
                        if v334:IsA("BodyAngularVelocity") or v334:IsA("BodyForce") or v334:IsA("BodyGyro") or v334:IsA("BodyPosition") or v334:IsA("BodyThrust") or v334:IsA("BodyVelocity") or v334:IsA("RocketPropulsion") then
                            v334:Destroy()
                        end
                    end
                    if v331:FindFirstChild("Attachment") then
                        v331:FindFirstChild("Attachment"):Destroy()
                    end
                    if v331:FindFirstChild("AlignPosition") then
                        v331:FindFirstChild("AlignPosition"):Destroy()
                    end
                    if v331:FindFirstChild("Torque") then
                        v331:FindFirstChild("Torque"):Destroy()
                    end
                    v331.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
                    v331.CanCollide = false
                    v331.CanTouch = false
                    local v335 = Instance.new("Torque", v331)
                    v335.Torque = Vector3.new(100000, 100000, 100000)
                    local v336 = Instance.new("AlignPosition", v331)
                    local v337 = Instance.new("Attachment", v331)
                    v335.Attachment0 = v337
                    v336.MaxForce = 1.0E17
                    v336.MaxVelocity = math.huge
                    v336.Responsiveness = 200
                    v336.Attachment0 = v337
                    v336.Attachment1 = v327
                    spawn(function()
                        repeat
                            task.wait()
                            if getgenv().loopfling then
                                pcall(function()
                                    if game.Players.LocalPlayer.Character.Humanoid.Health ~= 0 then
                                        getgenv().look = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -1, 0)
                                    end
                                end)
                            end
                        until getgenv().ejnfja
                    end)
                    spawn(function()
                        v331.CFrame = l_HumanoidRootPart_2.CFrame
                        local v338 = 0
                        if not getgenv().working then
                            while true do
                                getgenv().working = true
                                task.wait()
                                pcall(function()
                                    v338 = v338 + math.rad(60)
                                    local v339 = CFrame.new(math.sin(v338) * 3, 0, math.cos(v338) * 3)
                                    v327.WorldCFrame = getgenv().look * v339
                                    v331.CFrame = getgenv().look * v339
                                    v331.Velocity = getgenv().look.LookVector * 10000
                                end)
                            end
                        end
                    end)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_CFrame_2
                end
            end
        end)
    end
    function LoadChatAlert()
        local l_FirstChild_2 = game:GetService("TextChatService"):FindFirstChild("RBXGeneral", true)
        local l_TextButton_78 = Instance.new("TextButton")
        l_TextButton_78.Name = "ChatAlert_Button"
        l_TextButton_78.Parent = l_ScrollingFrame_0
        l_TextButton_78.BackgroundColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
        l_TextButton_78.BackgroundTransparency = 0.5
        l_TextButton_78.BorderColor3 = Color3.fromRGB(0, 0, 0)
        l_TextButton_78.BorderSizePixel = 0
        l_TextButton_78.Position = UDim2.new(0, 25, 0, 175)
        l_TextButton_78.Size = UDim2.new(0, 150, 0, 30)
        l_TextButton_78.Font = Enum.Font.Oswald
        if not l_FirstChild_2 then
            l_TextButton_78.Text = "\216\170\217\134\216\168\217\138\217\135 \216\167\217\132\216\175\216\177\216\175\216\180\216\169 "
        else
            l_TextButton_78.Text = "\216\170\216\172\216\179\216\179 \216\167\217\132\216\177\216\179\216\167\216\166\217\132"
        end
        l_TextButton_78.TextColor3 = Color3.fromRGB(0, 0, 0)
        l_TextButton_78.TextScaled = true
        l_TextButton_78.TextSize = 14
        l_TextButton_78.TextWrapped = true
        CreateClicker(l_TextButton_78)
        l_TextButton_78.MouseButton1Click:Connect(function()
            if l_FirstChild_2 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Chat%20Spy"))()
            else
                Send("hello                                                                                                              You must wait before sending another message.")
            end
        end)
    end
    SendNotify("System VR7", "Script developed by V R 7 TEAM - Discord in your clipboard", 10)
    if game.PlaceId == 17723040340 then
        SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 10)
        getgenv().RainbowTjm32 = CreateButtonWithText(l_ScrollingFrame_0, "VehicleFling_Button", "\217\129\217\132\217\134\217\130 \216\175\216\177\216\167\216\172\216\169", UDim2.new(0, 210, 0, 225), "\216\170\216\172\217\133\216\185 \216\167\217\132\216\185\216\177\216\168", 0)
        getgenv().RainbowTjm35 = CreateButtonWithText(l_ScrollingFrame_0, "Ball_Fling", "\217\129\217\132\217\134\217\130 \217\131\217\136\216\177\216\169", UDim2.new(0, 25, 0, 225), "\216\170\216\172\217\133\216\185 \216\167\217\132\216\185\216\177\216\168", 0)
        getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
            ChangeToggleColor(getgenv().RainbowTjm32.t2)
            if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\167\216\176 \216\167\217\132\216\167\217\133\216\177 \217\138\216\183\217\138\216\177 \216\167\217\138 \216\180\216\174\216\181 \217\138\216\181\216\175\217\133 \216\168\216\175\216\177\216\167\216\172\216\170\217\131 \217\136\216\167\217\134\216\170 \216\170\216\179\217\136\217\130\217\135\216\167", 10)
                SendNotify("\216\170\216\173\216\176\217\138\216\177", "\217\132\216\167\216\170\216\177\217\131\216\168 \216\179\217\138\216\167\216\177\216\169 \217\136\216\167\217\134\216\170 \217\133\216\180\216\186\217\132 \217\135\216\176\216\167 \216\167\217\132\216\167\217\133\216\177", 10)
                local v342 = nil
                local v343 = nil
                local v344 = nil
                local v345 = 0.1
                while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                    task.wait()
                    game:GetService("RunService").Heartbeat:Wait()
                    v342 = game.Players.LocalPlayer.Character
                    v343 = v342 and v342:FindFirstChild("HumanoidRootPart")
                    if v343 then
                        v344 = v343.Velocity
                        v343.Velocity = v344 * 1000 + Vector3.new(0, 1000, 0)
                        game:GetService("RunService").RenderStepped:Wait()
                        v343.Velocity = v344
                        game:GetService("RunService").Stepped:Wait()
                        v343.Velocity = v344 + Vector3.new(0, v345, 0)
                        v345 = -v345
                    end
                    for _, v347 in ipairs(game.Players:GetPlayers()) do
                        if v347 ~= game.Players.LocalPlayer then
                            for _, v349 in ipairs(v347:GetChildren()) do
                                if v349:IsA("BasePart") then
                                    v349.CanCollide = false
                                end
                            end
                        end
                    end
                end
            end
        end)
        getgenv().RainbowTjm35.t2.MouseButton1Click:Connect(function()
            ChangeToggleColor(getgenv().RainbowTjm35.t2)
            if getgenv().RainbowTjm35.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                getgenv().loopfling = false
            else
                getgenv().loopfling = true
                if not getgenv().working then
                    if workspace["Football plan"].Football:FindFirstChild("Ball") then
                        SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\216\167\216\176\216\167 \216\167\216\174\216\170\217\129\216\170 \216\167\217\132\217\131\217\136\216\177\216\169 \216\179\217\136\217\129 \216\170\216\172\216\175\217\135\216\167 \217\129\217\138 \216\167\217\132\217\133\217\132\216\185\216\168", 5)
                        Flinger(workspace["Football plan"].Football.Ball)
                    else
                        SendNotify("\216\174\216\183\216\167", "\216\185\216\176\216\177\216\167 \217\132\216\167\217\138\217\136\216\172\216\175 \217\131\217\136\216\177\216\169 \217\129\217\138 \216\167\217\132\216\179\217\138\216\177\217\129\216\177 \217\138\216\177\216\172\217\137 \216\170\216\186\217\138\217\138\216\177 \216\167\217\132\216\179\217\138\216\177\217\129\216\177", 5)
                    end
                end
            end
        end)
        LoadChatAlert()
    elseif game.PlaceId ~= 11379739543 then
        if game.PlaceId == 17668572730 then
            getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\170\216\185\217\132\217\138\217\130 \216\167\217\132\217\133\216\167\216\168", UDim2.new(0, 25, 0, 225), "\216\185\216\177\216\167\217\130 \217\135\217\136\216\168", 0)
            SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 10)
            getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                ChangeToggleColor(getgenv().RainbowTjm3.t2)
                if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        for _ = 1, 20 do
                            task.wait()
                            if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(255, 0, 0) then
                                game:GetService("ReplicatedStorage"):WaitForChild("CustomChatEvent"):FireServer(string.rep("VR7 ", math.floor(49997.25)) .. string.sub("VR7 ", 1, 1))
                            else
                                break
                            end
                        end
                        task.wait(2.5)
                    end
                end
            end)
            LoadChatAlert()
        elseif game.PlaceId == 6165420832 then
            SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 10)
            getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\217\133\216\182\216\167\216\175 \216\177\216\167\217\130\216\175\217\136\217\132", UDim2.new(0, 25, 0, 225), "\217\133\216\167\216\168 \216\177\216\167\217\130\216\175\217\136\217\132", 0)
            getgenv().RainbowTjm31 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\170\217\129\216\172\217\138\216\177 \216\167\217\132\216\186\216\167\217\133", UDim2.new(0, 210, 0, 225), "\217\133\216\167\216\168 \216\177\216\167\217\130\216\175\217\136\217\132", 0)
            getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                ChangeToggleColor(getgenv().RainbowTjm3.t2)
                if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        task.wait()
                        pcall(function()
                            if game.Players.LocalPlayer.isRagdoll.Value then
                                game.Players.LocalPlayer.isRagdoll.Value = false
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                                game.Players.LocalPlayer.Character.Animate.Enabled = true
                            end
                            if game.Players.LocalPlayer.Character.Main.RagdollMe.Enabled then
                                game.Players.LocalPlayer.Character.Main.RagdollMe.Enabled = false
                            end
                        end)
                    end
                    pcall(function()
                        game.Players.LocalPlayer.Character.Main.RagdollMe.Enabled = true
                    end)
                end
            end)
            getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
                ChangeToggleColor(getgenv().RainbowTjm31.t2)
                if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        task.wait()
                        pcall(function()
                            if game.Players.LocalPlayer.isRagdoll.Value then
                                game.Players.LocalPlayer.isRagdoll.Value = false
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                                game.Players.LocalPlayer.Character.Animate.Enabled = true
                            end
                        end)
                        for _, v352 in ipairs(workspace.MinefieldV2.Landmines.Mines:GetChildren()) do
                            wait()
                            do
                                local l_v352_0 = v352
                                pcall(function()
                                    if l_v352_0:IsA("Model") then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_v352_0.WorldPivot
                                    end
                                end)
                            end
                        end
                    end
                end
            end)
            LoadChatAlert()
        elseif game.CreatorId == 9642354 then
            SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 10)
            getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\217\133\216\182\216\167\216\175 \216\177\216\167\217\130\216\175\217\136\217\132", UDim2.new(0, 25, 0, 225), "\217\133\216\167\216\168 \216\177\216\167\217\130\216\175\217\136\217\132", 0)
            getgenv().RainbowTjm31 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\170\217\129\216\172\217\138\216\177 \216\167\217\132\216\186\216\167\217\133", UDim2.new(0, 210, 0, 225), "\217\133\216\167\216\168 \216\177\216\167\217\130\216\175\217\136\217\132", 0)
            getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                ChangeToggleColor(getgenv().RainbowTjm3.t2)
                if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    SendNotify("System VR7", "\216\170\216\167\217\131\216\175 \216\167\217\134\217\131 \217\136\216\167\217\130\217\129 \217\130\216\168\217\132 \217\132\216\167\216\170\217\129\216\185\217\132\217\135", 5)
                    while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        task.wait()
                        pcall(function()
                            if game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled then
                                game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = false
                            end
                        end)
                    end
                    pcall(function()
                        game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = true
                    end)
                end
            end)
            getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
                ChangeToggleColor(getgenv().RainbowTjm31.t2)
                if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    SendNotify("System VR7", "\216\170\216\167\217\131\216\175 \216\167\217\134\217\131 \217\136\216\167\217\130\217\129 \217\130\216\168\217\132 \217\132\216\167\216\170\217\129\216\185\217\132\217\135", 5)
                    while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        task.wait()
                        pcall(function()
                            if game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled then
                                game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = false
                            end
                        end)
                        for _, v355 in ipairs(workspace.Minefield.Mines:GetChildren()) do
                            wait()
                            do
                                local l_v355_0 = v355
                                pcall(function()
                                    if l_v355_0:IsA("Model") then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_v355_0.WorldPivot
                                    end
                                end)
                            end
                        end
                    end
                    pcall(function()
                        game.Players.LocalPlayer.Character["Local Ragdoll"].Enabled = true
                    end)
                end
            end)
            LoadChatAlert()
        elseif game.PlaceId ~= 14201103742 then
            if game.CreatorId == 14940374 and string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "Rob") then
                SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\179\216\168\216\167\217\133 \216\179\217\131\217\134\216\167\216\170", UDim2.new(0, 25, 0, 225), "\216\180\216\167\217\132\217\138\216\169 \216\177\217\136\216\168", 0)
                getgenv().RainbowTjm31 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\179\216\168\216\167\217\133 \216\167\216\179\217\133\216\167\216\161", UDim2.new(0, 210, 0, 225), "\216\180\216\167\217\132\217\138\216\169 \216\177\217\136\216\168", 0)
                getgenv().RainbowTjm33 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\177\217\133\217\138 \216\167\217\132\217\134\216\167\216\179", UDim2.new(0, 210, 0, 275), "\216\170\216\173\216\170\216\167\216\172 \217\131\217\132\216\168\216\180\216\169", 0)
                getgenv().RainbowTjm34 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\179\216\173\216\168 \216\167\217\132\217\134\216\167\216\179", UDim2.new(0, 25, 0, 275), "\216\170\216\173\216\170\216\167\216\172 \217\131\217\132\216\168\216\180\216\169", 0)
                getgenv().RainbowTjm35 = CreateButtonWithText(l_ScrollingFrame_3, "Bring_People", "\216\179\216\173\216\168", UDim2.new(0, 25, 0, 450), "\216\180\216\167\217\132\217\138\216\169 \216\177\217\136\216\168", 0)
                getgenv().RainbowTjm41 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\170\216\174\216\177\217\138\216\168 \216\167\217\132\216\180\216\167\216\170", UDim2.new(0, 210, 0, 375), "\216\180\216\167\217\132\217\138\216\169 \216\177\217\136\216\168", 0)
                getgenv().RainbowTjm36 = CreateButtonWithText(l_ScrollingFrame_3, "Freeze_People", "\216\170\216\172\217\133\217\138\216\175", UDim2.new(0, 210, 0, 450), "\216\180\216\167\217\132\217\138\216\169 \216\177\217\136\216\168", 0)
                getgenv().RainbowTjm37 = CreateButtonWithText(l_ScrollingFrame_0, "Change_Skins", "\216\170\216\186\217\138\217\138\216\177 \216\179\217\131\217\134\216\167\216\170 \216\167\217\132\217\130\216\177\217\138\216\168\217\138\217\134", UDim2.new(0, 25, 0, 375), "\216\170\216\173\216\170\216\167\216\172 \216\167\216\175\217\133\217\134", 0)
                getgenv().RainbowTjm38 = CreateButtonWithText(l_ScrollingFrame_0, "Change_Size", "\216\170\217\131\216\168\217\138\216\177 \216\167\217\132\217\130\216\177\217\138\216\168\217\138\217\134", UDim2.new(0, 25, 0, 325), "\216\170\216\173\216\170\216\167\216\172 \216\167\216\175\217\133\217\134", 0)
                getgenv().RainbowTjm40 = CreateButtonWithText(l_ScrollingFrame_0, "Sound_Skin", "\216\179\217\131\217\134 \217\138\216\183\217\132\216\185 \216\181\217\136\216\170", UDim2.new(0, 210, 0, 325), "\216\180\216\167\217\132\217\138\216\169 \216\177\217\136\216\168", 0)
                l_ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 1.5, 0)
                l_ScrollingFrame_0.CanvasSize = UDim2.new(0, 0, 1.2, 0)
                getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                    ChangeToggleColor(getgenv().RainbowTjm3.t2)
                    if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                        getgenv().loopSkins = true
                        local v357 = {
                            3698980491,
                            2482733262,
                            4869908886,
                            4829727233,
                            3924330309,
                            4963378099,
                            5749595748,
                            2486880286,
                            5121802170,
                            5571034904,
                            2534925226,
                            1908093843,
                            1695074412,
                            1001234444,
                            2738295433,
                            5007493214,
                            3536612888,
                            1924926487,
                            5496525496,
                            2734003720,
                            535060401,
                            3438246078,
                            1503840840,
                            1758848324,
                            2494484367,
                            1650713618,
                            2038507143,
                            1908533564,
                            4981871124,
                            3073976304,
                            5867473710,
                            1916876322,
                            2460301218,
                            475746173,
                            3639544277,
                            3395753168,
                            3808354214,
                            2318056116,
                            7209132441,
                            35755428,
                            66756597,
                            2679721697,
                            2050045875,
                            2519670708,
                            4235194382,
                            3370593985,
                            3620080414,
                            2326191112,
                            4956722605,
                            1909916296,
                            3314864649,
                            2769746902,
                            3704061128,
                            3420661127,
                            4699448973,
                            4367063405,
                            2758912697,
                            2466468896,
                            4734115317,
                            2958617249,
                            4834192573,
                            5801021621,
                            5626658182,
                            4132839307,
                            3218124495,
                            4913090478,
                            2452744987,
                            2717570627,
                            2479596912,
                            4434189877,
                            5411206081,
                            3336172524,
                            3335431880,
                            2972884772,
                            2771050226,
                            3104193443,
                            5232644719,
                            4523866249,
                            2619852340,
                            3620729767,
                            4803684054,
                            5788731598,
                            5357265092,
                            2492437352,
                            3017468200,
                            4306262070,
                            5868233200,
                            4651664513,
                            2955607544,
                            1737946288,
                            4451747675,
                            3776677463,
                            4502110305,
                            5592637934,
                            4591920267,
                            5535903380,
                            2266109788,
                            4464471813,
                            2600387006,
                            2293539872,
                            5479968451,
                            3779259507,
                            4020790582,
                            3382742043,
                            1991672777,
                            5490972740,
                            4367063405,
                            2269923272,
                            5713102512,
                            2439951362,
                            5750361112,
                            1961352360,
                            2546737188,
                            1965234677,
                            6232896470,
                            5556309052,
                            1945827451,
                            2266109788,
                            2220018722,
                            2457573632,
                            3250313747,
                            4102506593,
                            4800228003,
                            5065586685,
                            3219301469,
                            5750361112,
                            4758186111,
                            5761622248,
                            6156494691,
                            4126309364,
                            1548625484,
                            2550030807,
                            5434878393,
                            5301581025,
                            3104193443,
                            5704844718,
                            3620729767,
                            1857997074,
                            2519711707,
                            5720381635,
                            2204027528,
                            3276420293,
                            3643204820,
                            3247414642,
                            2209338035,
                            3620729767,
                            5092277391,
                            3747668036,
                            4338261710,
                            5769829905,
                            2512573032,
                            4522837151,
                            2428159367,
                            5623922812,
                            5516227749,
                            4061510807,
                            4016126804,
                            2619852340,
                            5828073482,
                            5623922812,
                            4625752819
                        }
                        while getgenv().loopSkins and task.wait() do
                            local v358 = 0
                            for _, v360 in ipairs(v357) do
                                if getgenv().loopSkins then
                                    task.wait(0.2)
                                    v358 = v358 + 1
                                    if v358 >= 25 then
                                        game.ReplicatedStorage.PrivateCommands.Char:FireServer(1681347188)
                                        v358 = 0
                                        wait(2.5)
                                        if not getgenv().loopSkins then
                                            break
                                        end
                                    end
                                    game.ReplicatedStorage.PrivateCommands.Char:FireServer(v360)
                                else
                                    break
                                end
                            end
                        end
                    else
                        getgenv().loopSkins = false
                    end
                end)
                getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
                    if v40 then
                        ChangeToggleColor(getgenv().RainbowTjm31.t2)
                        local v361 = {
                            "\216\167\217\132\217\138 \217\130\216\175\216\167\217\133\217\138 \217\136\216\181\216\174",
                            "\216\167\217\134\216\167 \216\185\217\133\217\131",
                            "\216\170\216\167\216\172 \216\177\216\167\216\179\217\131",
                            "\216\168\217\134\216\185\216\167\217\132\217\138 \216\180\216\167\217\132\217\138\216\169 \216\177\217\136\216\168",
                            "\217\133\217\131\216\167\217\129\216\173\216\169 \216\167\217\132\216\177\217\136\217\132",
                            "\216\182\216\167\216\186\216\183\217\135\217\133\237\160\189\237\180\165",
                            "\216\170\216\174\216\177\217\138\216\168 \216\185\217\132\217\137 \216\167\217\132\216\177\217\136\217\132",
                            "\216\168\217\134\216\185\216\167\217\132\217\138 \216\181\216\167\216\173\216\168 \216\167\217\132\217\133\216\167\216\168 \217\136\217\133\216\180\216\177\217\129\217\138\217\134\217\135",
                            "\216\167\217\129\216\182\217\132 \217\135\216\167\217\131 \216\167\217\138\217\129\217\136\217\134 \216\167\216\174\216\170\216\181\216\167\216\177\217\135 \216\175\216\179\217\131\217\136\216\177\216\175 vr7",
                            "\216\177\216\172\217\132\217\138 \217\129\217\138\217\131",
                            "\217\138\217\132\216\167 \216\167\217\134\216\168\216\173",
                            "\216\174\217\132\217\138\217\131 \217\133\216\182\216\186\217\136\216\183 \217\133\217\134\217\138",
                            "\216\175\216\178 \216\167\217\133\217\135\216\167 \216\168\216\179",
                            "\216\167\217\132\217\138 \217\130\216\175\216\167\217\133\217\138 \217\131\217\132\216\168",
                            "\216\168\217\134\216\185\216\167\217\132\217\138 \217\131\217\132 \216\167\217\132\217\138 \216\182\216\167\216\186\216\183\217\135\217\133 \226\156\140\239\184\143",
                            "VR7 \216\185\217\133\217\131",
                            "\216\167\217\134\216\167 \217\129\216\173\217\132 \216\167\217\132\217\133\216\167\216\168",
                            "\217\133\217\134\216\168\216\185 \216\167\217\132\217\133\216\177\216\172\217\132\217\135 \217\135\217\134\216\167"
                        }
                        local l_ChangeName_0 = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.ChangeName
                        local l_Input_0 = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Input
                        while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and task.wait(5) do
                            local v364 = v361[math.random(1, #v361)]
                            local v365 = math.random(1, #game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Colors:GetChildren())
                            l_Input_0.Text = v364
                            for v366, v367 in ipairs(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Colors:GetChildren()) do
                                if v366 == v365 and v367:IsA("Frame") then
                                    firesignal(v367.hit_box.MouseButton1Click)
                                    break
                                end
                            end
                            firesignal(l_ChangeName_0.MouseButton1Click)
                            if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible then
                                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible = false
                            end
                        end
                    else
                        SendNotify("System VR7", "\217\132\217\132\216\167\216\179\217\129 \216\167\217\132\217\135\216\167\217\131 \216\167\217\132\217\138 \216\170\216\179\216\170\216\174\216\175\217\133\216\169 \217\132\216\167\217\138\216\175\216\185\217\133 \217\135\217\132 \217\133\217\138\216\178\216\169", 5)
                    end
                end)
                getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
                    if not GetCuff() then
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Title = "System VR7",
                            Text = "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169",
                            Duration = 5
                        })
                        return 
                    else
                        ChangeToggleColor(getgenv().RainbowTjm33.t2)
                        if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                            getgenv().Cuff = {Bring = false, Throw = false}
                        else
                            if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                                getgenv().Cuff = {Bring = false, Throw = false}
                                wait(1)
                            end
                            getgenv().Cuff = {Bring = true, Throw = true}
                            Cuffbring()
                        end
                        return 
                    end
                end)
                getgenv().RainbowTjm34.t2.MouseButton1Click:Connect(function()
                    if GetCuff() then
                        ChangeToggleColor(getgenv().RainbowTjm34.t2)
                        if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                            getgenv().Cuff = {Bring = false, Throw = false}
                        else
                            if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                                getgenv().Cuff = {Bring = false, Throw = false}
                                wait(1)
                            end
                            getgenv().Cuff = {Bring = true, Throw = false}
                            Cuffbring()
                        end
                        return 
                    else
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Title = "System VR7",
                            Text = "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169",
                            Duration = 5
                        })
                        return 
                    end
                end)
                getgenv().RainbowTjm35.t2.MouseButton1Click:Connect(function()
                    pcall(function()
                        local v368 = nil
                        if v31 ~= v368 then
                            local v369 = GetCuff()
                            if v369 then
                                if not l_Players_0[v31].Character.UpperTorso.Anchored then
                                    if v369 and v369.Parent == game.Players.LocalPlayer.Backpack then
                                        v369.Parent = game.Players.LocalPlayer.Character
                                    end
                                    wait()
                                    v369.RemoteEvent:FireServer(l_Players_0[v31].Character.HumanoidRootPart, "Cuff")
                                    wait(0.2)
                                    v369.RemoteEvent:FireServer(l_Players_0[v31].Character.HumanoidRootPart, "Cuff")
                                else
                                    SendNotify("System VR7", "\216\167\217\132\216\167\216\185\216\168 \217\133\216\170\216\172\217\133\216\175 \216\167\217\136 \217\133\217\131\217\132\216\168\216\180 \216\168\217\132 \216\167\216\179\216\167\216\179", 5)
                                    return 
                                end
                            else
                                SendNotify("System VR7", "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169", 5)
                                return 
                            end
                        end
                    end)
                end)
                getgenv().RainbowTjm41.t2.MouseButton1Click:Connect(function()
                    ChangeToggleColor(getgenv().RainbowTjm41.t2)
                    if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                        while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                            if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
                                if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
                                    local v370 = 0
                                    repeat
                                        task.wait(0.3)
                                        v370 = v370 + 1
                                        Send("\217\135\216\167\217\138\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r.")
                                    until v370 >= 8
                                end
                                task.wait(0.5)
                            end
                        end
                    end
                end)
                getgenv().RainbowTjm36.t2.MouseButton1Click:Connect(function()
                    pcall(function()
                        local v371 = nil
                        if v31 ~= v371 then
                            local v372 = GetCuff()
                            if v372 then
                                if not l_Players_0[v31].Character.UpperTorso.Anchored then
                                    if v372 and v372.Parent == game.Players.LocalPlayer.Backpack then
                                        v372.Parent = game.Players.LocalPlayer.Character
                                    end
                                    v372.RemoteEvent:FireServer(l_Players_0[v31].Character.HumanoidRootPart, "Cuff")
                                    wait(0.01)
                                    game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(Prefix .. "Char me 40")
                                    game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(Prefix .. "unchar")
                                else
                                    SendNotify("System VR7", "\216\167\217\132\216\167\216\185\216\168 \217\133\216\170\216\172\217\133\216\175 \216\167\217\136 \217\133\217\131\217\132\216\168\216\180 \216\168\217\132 \216\167\216\179\216\167\216\179", 5)
                                    return 
                                end
                            else
                                SendNotify("System VR7", "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169", 5)
                                return 
                            end
                        end
                    end)
                end)
                getgenv().RainbowTjm37.t2.MouseButton1Click:Connect(function()
                    pcall(function()
                        local v373 = GetNearPlayers(game.Players.LocalPlayer, 15)
                        for _, v375 in pairs(v373) do
                            task.wait()
                            local l_Text_1 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
                            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_1 .. "Char " .. v375.Name .. " Trifunelo1003")
                        end
                    end)
                end)
                getgenv().RainbowTjm38.t2.MouseButton1Click:Connect(function()
                    pcall(function()
                        local v377 = GetNearPlayers(game.Players.LocalPlayer, 15)
                        for _, v379 in pairs(v377) do
                            task.wait()
                            local l_Text_2 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
                            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_2 .. "Size " .. v379.Name .. " 3")
                        end
                    end)
                end)
                getgenv().RainbowTjm40.t2.MouseButton1Click:Connect(function()
                    pcall(function()
                        local l_Text_3 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
                        game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_3 .. "Char me Trifunelo1003")
                    end)
                end)
                LoadChatAlert()
            elseif game.PlaceId == 12123568130 then
                SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Ball_Fling", "\217\129\217\132\217\134\217\130 \217\131\217\136\216\177\216\169", UDim2.new(0, 25, 0, 225), "\216\167\216\175\217\133\217\134 \216\167\217\136\217\132\216\167\216\175 \217\136\216\168\217\134\216\167\216\170", 0)
                getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                    ChangeToggleColor(getgenv().RainbowTjm3.t2)
                    if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                        getgenv().loopfling = false
                    else
                        getgenv().loopfling = true
                        if not getgenv().working then
                            if not workspace:FindFirstChild("Ball", true) then
                                SendNotify("\216\174\216\183\216\167", "\216\185\216\176\216\177\216\167 \217\132\216\167\217\138\217\136\216\172\216\175 \217\131\217\136\216\177\216\169 \217\129\217\138 \216\167\217\132\216\179\217\138\216\177\217\129\216\177 \217\138\216\177\216\172\217\137 \216\170\216\186\217\138\217\138\216\177 \216\167\217\132\216\179\217\138\216\177\217\129\216\177", 5)
                            else
                                SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\216\167\216\176\216\167 \216\167\216\174\216\170\217\129\216\170 \216\167\217\132\217\131\217\136\216\177\216\169 \216\179\217\136\217\129 \216\170\216\172\216\175\217\135\216\167 \217\129\217\138 \216\167\217\132\217\133\217\132\216\185\216\168", 5)
                                Flinger(workspace:FindFirstChild("Ball", true))
                            end
                        end
                    end
                end)
                LoadChatAlert()
            elseif game.PlaceId == 88950799188393 then
                SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Ball_Fling", "\217\129\217\132\217\134\217\130 \217\131\217\136\216\177\216\169", UDim2.new(0, 25, 0, 225), "\216\167\216\175\217\133\217\134 \216\167\217\136\217\132\216\167\216\175 \217\136\216\168\217\134\216\167\216\170", 0)
                getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                    ChangeToggleColor(getgenv().RainbowTjm3.t2)
                    if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                        getgenv().loopfling = false
                    else
                        getgenv().loopfling = true
                        if not getgenv().working then
                            if not workspace:FindFirstChild("Ball", true) then
                                SendNotify("\216\174\216\183\216\167", "\216\185\216\176\216\177\216\167 \217\132\216\167\217\138\217\136\216\172\216\175 \217\131\217\136\216\177\216\169 \217\129\217\138 \216\167\217\132\216\179\217\138\216\177\217\129\216\177 \217\138\216\177\216\172\217\137 \216\170\216\186\217\138\217\138\216\177 \216\167\217\132\216\179\217\138\216\177\217\129\216\177", 5)
                            else
                                SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\216\167\216\176\216\167 \216\167\216\174\216\170\217\129\216\170 \216\167\217\132\217\131\217\136\216\177\216\169 \216\179\217\136\217\129 \216\170\216\172\216\175\217\135\216\167 \217\129\217\138 \216\167\217\132\217\133\217\132\216\185\216\168", 5)
                                Flinger(workspace["Mini Football stadium"].Ball)
                            end
                        end
                    end
                end)
                LoadChatAlert()
            elseif game.PlaceId ~= 4924922222 then
                if game.PlaceId ~= 11984550654 then
                    if game.PlaceId == 335760407 then
                        SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                        getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "StreetSoccer", "\216\179\217\131\216\177\216\168\216\170 \217\131\217\136\216\177\216\169", UDim2.new(0, 25, 0, 225), "TPS:Street Soccer", 0)
                        getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Tps%3A%20Street%20Soccer"))()
                            VR7:Destroy()
                        end)
                        LoadChatAlert()
                    elseif game.CreatorId == 4001902 and string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "Mohammad") then
                        SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                        getgenv().RainbowTjm31 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\167\216\179\217\133\216\167\216\161 \216\185\216\180\217\136\216\167\216\166\217\138\216\169", UDim2.new(0, 210, 0, 225), "\216\180\216\167\217\132\217\138\216\169 \217\133\216\173\217\133\216\175", 0)
                        getgenv().RainbowTjm33 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\177\217\133\217\138 \216\167\217\132\217\134\216\167\216\179", UDim2.new(0, 25, 0, 225), "\216\180\216\167\217\132\217\138\216\169 \217\133\216\173\217\133\216\175", 0)
                        getgenv().RainbowTjm34 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\179\216\173\216\168 \216\167\217\132\217\134\216\167\216\179", UDim2.new(0, 25, 0, 275), "\216\180\216\167\217\132\217\138\216\169 \217\133\216\173\217\133\216\175", 0)
                        getgenv().RainbowTjm35 = CreateButtonWithText(l_ScrollingFrame_3, "Bring_People", "\216\179\216\173\216\168", UDim2.new(0, 25, 0, 450), "\216\180\216\167\217\132\217\138\216\169 \217\133\216\173\217\133\216\175", 0)
                        getgenv().RainbowTjm36 = CreateButtonWithText(l_ScrollingFrame_3, "Freeze_People", "\216\170\216\172\217\133\217\138\216\175", UDim2.new(0, 210, 0, 450), "\216\180\216\167\217\132\217\138\216\169 \217\133\216\173\217\133\216\175", 0)
                        getgenv().RainbowTjm37 = CreateButtonWithText(l_ScrollingFrame_0, "Change_Skins", "\216\170\216\186\217\138\217\138\216\177 \216\179\217\131\217\134\216\167\216\170 \216\167\217\132\217\130\216\177\217\138\216\168\217\138\217\134", UDim2.new(0, 25, 0, 375), "\216\170\216\173\216\170\216\167\216\172 \216\167\216\175\217\133\217\134", 0)
                        getgenv().RainbowTjm41 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\170\216\174\216\177\217\138\216\168 \216\167\217\132\216\180\216\167\216\170", UDim2.new(0, 210, 0, 375), "\216\180\216\167\217\132\217\138\216\169 \217\133\216\173\217\133\216\175", 0)
                        getgenv().RainbowTjm38 = CreateButtonWithText(l_ScrollingFrame_0, "Change_Size", "\216\170\217\131\216\168\217\138\216\177 \216\167\217\132\217\130\216\177\217\138\216\168\217\138\217\134", UDim2.new(0, 25, 0, 325), "\216\170\216\173\216\170\216\167\216\172 \216\167\216\175\217\133\217\134", 0)
                        getgenv().RainbowTjm39 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\217\133\216\182\216\167\216\175 \217\131\217\132\216\168\216\180\216\169", UDim2.new(0, 210, 0, 275), "\216\180\216\167\217\132\217\138\217\135 \217\133\216\173\217\133\216\175", 0)
                        getgenv().RainbowTjm40 = CreateButtonWithText(l_ScrollingFrame_0, "Sound_Skin", "\216\179\217\131\217\134 \217\138\216\183\217\132\216\185 \216\181\217\136\216\170", UDim2.new(0, 210, 0, 325), "\216\180\216\167\217\132\217\138\217\135 \217\133\216\173\217\133\216\175", 0)
                        l_ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 1.5, 0)
                        l_ScrollingFrame_0.CanvasSize = UDim2.new(0, 0, 1.2, 0)
                        getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
                            if not v40 then
                                SendNotify("System VR7", "\217\132\217\132\216\167\216\179\217\129 \216\167\217\132\217\135\216\167\217\131 \216\167\217\132\217\138 \216\170\216\179\216\170\216\174\216\175\217\133\216\169 \217\132\216\167\217\138\216\175\216\185\217\133 \217\135\217\132 \217\133\217\138\216\178\216\169", 5)
                            else
                                ChangeToggleColor(getgenv().RainbowTjm31.t2)
                                local v382 = {
                                    "\216\167\217\132\217\138 \217\130\216\175\216\167\217\133\217\138 \217\136\216\181\216\174",
                                    "\216\167\217\135\217\138\217\134\217\131",
                                    "\217\134\217\130\216\178 \216\168\216\179",
                                    "\216\167\217\134\216\167 \216\185\217\133\217\131",
                                    "\217\134\217\138\216\167\217\131\217\131\217\133",
                                    "\216\170\216\167\216\172 \216\177\216\167\216\179\217\131",
                                    "\216\168\217\134\216\185\216\167\217\132\217\138 \216\180\216\167\217\132\217\138\216\169 \217\133\216\173\217\133\216\175",
                                    "\217\133\217\131\216\167\217\129\216\173\216\169 \216\167\217\132\216\177\217\136\217\132",
                                    "\216\182\216\167\216\186\216\183\217\135\217\133\237\160\189\237\180\165",
                                    "\216\170\216\174\216\177\217\138\216\168 \216\185\217\132\217\137 \216\167\217\132\216\177\217\136\217\132",
                                    "\216\168\217\134\216\185\216\167\217\132\217\138 \216\181\216\167\216\173\216\168 \216\167\217\132\217\133\216\167\216\168 \217\136\217\133\216\180\216\177\217\129\217\138\217\134\217\135",
                                    "\216\177\216\172\217\132\217\138 \217\129\217\138\217\131",
                                    "\217\138\217\132\216\167 \216\167\217\134\216\168\216\173",
                                    "\216\174\217\132\217\138\217\131 \217\133\216\182\216\186\217\136\216\183 \217\133\217\134\217\138",
                                    "\216\175\216\178 \216\167\217\133\217\135\216\167 \216\168\216\179",
                                    "\216\167\217\132\217\138 \217\130\216\175\216\167\217\133\217\138 \217\131\217\132\216\168",
                                    "\216\168\217\134\216\185\216\167\217\132\217\138 \217\131\217\132 \216\167\217\132\217\138 \216\182\216\167\216\186\216\183\217\135\217\133 \226\156\140\239\184\143",
                                    "\216\167\217\134\216\167 \217\129\216\173\217\132 \216\167\217\132\217\133\216\167\216\168",
                                    "\217\133\217\134\216\168\216\185 \216\167\217\132\217\133\216\177\216\172\217\132\217\135 \217\135\217\134\216\167"
                                }
                                local l_ChangeName_1 = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.ChangeName
                                local l_Input_1 = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Input
                                if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                                    getgenv().ChangeName = false
                                else
                                    getgenv().ChangeName = true
                                    while getgenv().ChangeName do
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible = false
                                        l_Input_1.Text = v382[math.random(1, #v382)]
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Colors.bluelight.hit_box:FindFirstChild("UIStroke") then
                                            firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Title.Colors.bluelight.hit_box.MouseButton1Click)
                                        end
                                        firesignal(l_ChangeName_1.MouseButton1Click)
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible = false
                                        task.wait(10)
                                        game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.HiddenCommands.Visible = false
                                    end
                                    SendNotify("System VR7", "\217\133\217\132\216\167\216\173\216\184\216\169 \216\167\216\176\216\167 \216\167\217\132\216\167\216\179\217\133 \217\133\216\185\217\132\217\130 \217\135\216\167\216\176 \217\130\217\132\216\170\216\180 \217\133\217\134 \216\167\217\132\217\133\216\167\216\168", 5)
                                end
                            end
                        end)
                        getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
                            if GetCuff() then
                                ChangeToggleColor(getgenv().RainbowTjm33.t2)
                                if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                    if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                        getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                                        getgenv().Cuff = {Bring = false, Throw = false}
                                        wait(1)
                                    end
                                    getgenv().Cuff = {Bring = true, Throw = true}
                                    Cuffbring()
                                else
                                    getgenv().Cuff = {Bring = false, Throw = false}
                                end
                                return 
                            else
                                game:GetService("StarterGui"):SetCore("SendNotification", {
                                    Title = "System VR7",
                                    Text = "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169",
                                    Duration = 5
                                })
                                return 
                            end
                        end)
                        getgenv().RainbowTjm34.t2.MouseButton1Click:Connect(function()
                            if not GetCuff() then
                                game:GetService("StarterGui"):SetCore("SendNotification", {
                                    Title = "System VR7",
                                    Text = "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169",
                                    Duration = 5
                                })
                                return 
                            else
                                ChangeToggleColor(getgenv().RainbowTjm34.t2)
                                if getgenv().RainbowTjm34.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                                    getgenv().Cuff = {Bring = false, Throw = false}
                                else
                                    if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                        getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                                        getgenv().Cuff = {Bring = false, Throw = false}
                                        wait(1)
                                    end
                                    getgenv().Cuff = {Bring = true, Throw = false}
                                    Cuffbring()
                                end
                                return 
                            end
                        end)
                        getgenv().RainbowTjm35.t2.MouseButton1Click:Connect(function()
                            pcall(function()
                                local v385 = nil
                                if v31 ~= v385 then
                                    local v386 = GetCuff()
                                    if not v386 then
                                        SendNotify("System VR7", "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169", 5)
                                        return 
                                    elseif not l_Players_0[v31].Character.UpperTorso.Anchored then
                                        if v386 and v386.Parent == game.Players.LocalPlayer.Backpack then
                                            v386.Parent = game.Players.LocalPlayer.Character
                                        end
                                        wait()
                                        v386.RemoteEvent:FireServer(l_Players_0[v31].Character.HumanoidRootPart, "Cuff")
                                        wait(0.2)
                                        v386.RemoteEvent:FireServer(l_Players_0[v31].Character.HumanoidRootPart, "Cuff")
                                    else
                                        SendNotify("System VR7", "\216\167\217\132\216\167\216\185\216\168 \217\133\216\170\216\172\217\133\216\175 \216\167\217\136 \217\133\217\131\217\132\216\168\216\180 \216\168\217\132 \216\167\216\179\216\167\216\179", 5)
                                        return 
                                    end
                                end
                            end)
                        end)
                        getgenv().RainbowTjm36.t2.MouseButton1Click:Connect(function()
                            pcall(function()
                                local v387 = nil
                                if v31 ~= v387 then
                                    local v388 = GetCuff()
                                    if not v388 then
                                        SendNotify("System VR7", "\217\132\216\167\216\178\217\133 \217\138\217\131\217\136\217\134 \217\133\216\185\217\131 \217\131\217\132\216\168\216\180\216\169", 5)
                                        return 
                                    elseif l_Players_0[v31].Character.UpperTorso.Anchored then
                                        SendNotify("System VR7", "\216\167\217\132\216\167\216\185\216\168 \217\133\216\170\216\172\217\133\216\175 \216\167\217\136 \217\133\217\131\217\132\216\168\216\180 \216\168\217\132 \216\167\216\179\216\167\216\179", 5)
                                        return 
                                    else
                                        if v388 and v388.Parent == game.Players.LocalPlayer.Backpack then
                                            v388.Parent = game.Players.LocalPlayer.Character
                                        end
                                        v388.RemoteEvent:FireServer(l_Players_0[v31].Character.HumanoidRootPart, "Cuff")
                                        wait(0.01)
                                        game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(Prefix .. "Char me 40")
                                        game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(Prefix .. "unchar")
                                    end
                                end
                            end)
                        end)
                        getgenv().RainbowTjm37.t2.MouseButton1Click:Connect(function()
                            pcall(function()
                                local v389 = GetNearPlayers(game.Players.LocalPlayer, 15)
                                for _, v391 in pairs(v389) do
                                    task.wait()
                                    local l_Text_4 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
                                    game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_4 .. "Char " .. v391.Name .. " Trifunelo1003")
                                end
                            end)
                        end)
                        getgenv().RainbowTjm41.t2.MouseButton1Click:Connect(function()
                            ChangeToggleColor(getgenv().RainbowTjm41.t2)
                            if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                                    if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
                                        if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
                                            local v393 = 0
                                            repeat
                                                task.wait(0.3)
                                                v393 = v393 + 1
                                                Send("\217\135\216\167\217\138\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r.")
                                            until v393 >= 8
                                        end
                                        task.wait(0.5)
                                    end
                                end
                            end
                        end)
                        getgenv().RainbowTjm40.t2.MouseButton1Click:Connect(function()
                            pcall(function()
                                local l_Text_5 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
                                game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_5 .. "Char me Trifunelo1003")
                            end)
                        end)
                        getgenv().RainbowTjm38.t2.MouseButton1Click:Connect(function()
                            pcall(function()
                                local v395 = GetNearPlayers(game.Players.LocalPlayer, 15)
                                for _, v397 in pairs(v395) do
                                    task.wait()
                                    local l_Text_6 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
                                    game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_6 .. "Size " .. v397.Name .. " 3")
                                end
                            end)
                        end)
                        getgenv().RainbowTjm39.t2.MouseButton1Click:Connect(function()
                            ChangeToggleColor(getgenv().RainbowTjm39.t2)
                            if getgenv().RainbowTjm39.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                                wait(0.1)
                                game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                            else
                                while getgenv().RainbowTjm39.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                                    wait()
                                    pcall(function()
                                        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = true
                                    end)
                                end
                            end
                        end)
                        LoadChatAlert()
                    elseif game.PlaceId == 16796468251 then
                        SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                        getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "God Mode", UDim2.new(0, 25, 0, 225), "\216\167\217\131\216\167\216\175\217\133\217\138\216\169 \216\175\216\177\216\167\216\172\217\136\217\134", 0)
                        spawn(function()
                            while true do
                                wait(GetPing() + 0.1)
                                pcall(function()
                                    if game.Players.LocalPlayer.Character:FindFirstChild("Client") then
                                        wait(2)
                                        game.Players.LocalPlayer.Character:FindFirstChild("Client"):Destroy()
                                    end
                                end)
                            end
                        end)
                        getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                            ChangeToggleColor(getgenv().RainbowTjm3.t2)
                            if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                                getgenv().God = false
                            else
                                getgenv().God = true
                                while getgenv().God do
                                    task.wait()
                                    pcall(function()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("ForceField", true) then
                                            local l_CFrame_3 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TeamChange"):FireServer(tostring(game.Players.LocalPlayer.Team))
                                            repeat
                                                task.wait()
                                                if game.Players.LocalPlayer.Character:FindFirstChild("ForceField", true) then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_CFrame_3
                                                end
                                            until game.Players.LocalPlayer.Character:FindFirstChild("ForceField", true)
                                        end
                                    end)
                                end
                            end
                        end)
                        LoadChatAlert()
                    elseif game.CreatorId ~= 35755428 or not string.find(game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, "\217\135\216\167\216\170") then
                        LoadChatAlert()
                    else
                        SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                        getgenv().RainbowTjm41 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\170\216\174\216\177\217\138\216\168 \216\167\217\132\216\180\216\167\216\170", UDim2.new(0, 25, 0, 225), "\217\135\216\167\216\170 \217\136\217\135\216\167\216\170", 0)
                        getgenv().RainbowTjm32 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\217\129\217\132\217\134\217\130 \216\179\217\138\216\167\216\177\216\169", UDim2.new(0, 210, 0, 225), "\217\135\216\167\216\170 \217\136\217\135\216\167\216\170", 0)
                        getgenv().RainbowTjm41.t2.MouseButton1Click:Connect(function()
                            ChangeToggleColor(getgenv().RainbowTjm41.t2)
                            if getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                while getgenv().RainbowTjm41.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                                    if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
                                        local v400 = 0
                                        repeat
                                            task.wait(0.3)
                                            v400 = v400 + 1
                                            Send("######################################################################################################################################################################################")
                                        until v400 >= 8
                                    end
                                    task.wait(1)
                                end
                            end
                        end)
                        getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
                            if game.Players.LocalPlayer.Character.Humanoid.SeatPart.Name == "DriveSeat" then
                                for _, v402 in ipairs(game.workspace:GetChildren()) do
                                    if v402.Name ~= "FreeCars" and v402.Name ~= "Money" and v402.Name ~= "skins" then
                                        for _, v404 in ipairs(v402:GetDescendants()) do
                                            if v404:IsA("BasePart") then
                                                v404.CanTouch = false
                                            end
                                        end
                                    end
                                end
                                ChangeToggleColor(getgenv().RainbowTjm32.t2)
                                if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                                    SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\167\216\176 \216\167\217\132\216\167\217\133\216\177 \217\138\216\183\217\138\216\177 \216\167\217\138 \216\180\216\174\216\181 \217\138\216\181\216\175\217\133 \216\168\216\179\217\138\216\167\216\177\216\170\217\131 \217\136\216\167\217\134\216\170 \216\170\216\179\217\136\217\130\217\135\216\167", 10)
                                    SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\216\167\216\176\216\167 \217\136\216\167\216\173\216\175 \216\181\216\185\216\175 \217\133\216\185\217\131 \217\136\217\134\216\178\217\132 \216\168\217\138\216\183\217\138\216\177", 10)
                                    local v405 = nil
                                    local v406 = nil
                                    local v407 = nil
                                    local v408 = 0.1
                                    while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                                        task.wait()
                                        game:GetService("RunService").Heartbeat:Wait()
                                        v405 = game.Players.LocalPlayer.Character
                                        v406 = v405 and v405:FindFirstChild("HumanoidRootPart")
                                        if v406 then
                                            v407 = v406.Velocity
                                            v406.Velocity = v407 * 1000 + Vector3.new(0, 1000, 0)
                                            game:GetService("RunService").RenderStepped:Wait()
                                            v406.Velocity = v407
                                            game:GetService("RunService").Stepped:Wait()
                                            v406.Velocity = v407 + Vector3.new(0, v408, 0)
                                            v408 = -v408
                                        end
                                        for _, v410 in ipairs(game.Players:GetPlayers()) do
                                            if v410 ~= game.Players.LocalPlayer then
                                                for _, v412 in ipairs(v410:GetChildren()) do
                                                    if v412:IsA("BasePart") then
                                                        v412.CanCollide = false
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                return 
                            else
                                for _, v414 in ipairs(game.workspace:GetChildren()) do
                                    if v414.Name ~= "FreeCars" and v414.Name ~= "Money" and v414.Name ~= "skins" then
                                        for _, v416 in ipairs(v414:GetDescendants()) do
                                            if v416:IsA("BasePart") then
                                                v416.CanTouch = true
                                            end
                                        end
                                    end
                                end
                                getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                                return 
                            end
                        end)
                        LoadChatAlert()
                    end
                else
                    getgenv().RainbowTjm31 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\179\216\173\216\168 \217\131\217\134\217\136\216\178 \217\130\216\177\217\138\216\168\217\135", UDim2.new(0, 25, 0, 225), "\217\133\216\167\216\168 \216\167\217\132\217\131\216\180\216\170\217\135", 0)
                    getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
                        ChangeToggleColor(getgenv().RainbowTjm31.t2)
                        if getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                            while getgenv().RainbowTjm31.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and wait(0.2) do
                                for _, v418 in ipairs(workspace.K_Z:GetChildren()) do
                                    if v418.Transparency == 0 and v418:FindFirstChild("ClickDetector") then
                                        fireclickdetector(v418.ClickDetector)
                                    end
                                end
                            end
                        end
                    end)
                    LoadChatAlert()
                end
            else
                SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 5)
                getgenv().RainbowTjm31 = CreateButtonWithText(l_ScrollingFrame_3, "Bring_People", "\216\179\216\173\216\168", UDim2.new(0, 210, 0, 400), "\217\133\216\167\216\168 \216\167\217\132\216\168\217\138\217\136\216\170", 0)
                getgenv().RainbowTjm32 = CreateButtonWithText(l_ScrollingFrame_3, "Bring_People", "\217\130\216\170\217\132", UDim2.new(0, 25, 0, 450), "\217\133\216\167\216\168 \216\167\217\132\216\168\217\138\217\136\216\170", 0)
                getgenv().RainbowTjm33 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\216\179\216\168\216\167\217\133 \216\167\216\179\217\133\216\167\216\161", UDim2.new(0, 25, 0, 225), "\217\133\216\167\216\168 \216\167\217\132\216\168\217\138\217\136\216\170", 0)
                l_ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 1.5, 0)
                getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
                    local v419 = nil
                    if v31 ~= v419 then
                        BrookBring(v31, true)
                    end
                end)
                getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
                    local v420 = nil
                    if v31 ~= v420 then
                        BrookBring(v31, false)
                    end
                end)
                getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
                    ChangeToggleColor(getgenv().RainbowTjm33.t2)
                    local v421 = {
                        "\216\167\216\180\217\130\217\131",
                        "\216\167\217\132\217\138 \217\130\216\175\216\167\217\133\217\138 \217\136\216\181\216\174",
                        "\216\167\217\135\217\138\217\134\217\131",
                        "\217\134\217\130\216\178 \216\168\216\179",
                        "\216\167\217\134\216\167 \216\185\217\133\217\131",
                        "\216\167\216\177\217\131\216\168\217\131",
                        "\217\134\217\138\216\167\217\131\217\131\217\133",
                        "\216\170\216\167\216\172 \216\177\216\167\216\179\217\131",
                        "\216\168\217\134\216\185\216\167\217\132\217\138 \216\167\216\168\217\136\217\131",
                        "\217\133\217\131\216\167\217\129\216\173\216\169 \216\167\217\132\216\177\217\136\217\132",
                        "\216\182\216\167\216\186\216\183\217\135\217\133\237\160\189\237\180\165",
                        "\216\170\216\174\216\177\217\138\216\168 \216\185\217\132\217\137 \216\167\217\132\216\177\217\136\217\132",
                        "\216\168\217\134\216\185\216\167\217\132\217\138 \216\181\216\167\216\173\216\168 \216\167\217\132\217\133\216\167\216\168 \217\136\217\133\216\180\216\177\217\129\217\138\217\134\217\135",
                        "\216\177\216\172\217\132\217\138 \217\129\217\138\217\131",
                        "\217\138\217\132\216\167 \216\167\217\134\216\168\216\173",
                        "\216\174\217\132\217\138\217\131 \217\133\216\182\216\186\217\136\216\183 \217\133\217\134\217\138",
                        "\216\175\216\178 \216\167\217\133\217\135\216\167 \216\168\216\179",
                        "\216\167\217\132\217\138 \217\130\216\175\216\167\217\133\217\138 \217\131\217\132\216\168",
                        "\216\168\217\134\216\185\216\167\217\132\217\138 \217\131\217\132 \216\167\217\132\217\138 \216\182\216\167\216\186\216\183\217\135\217\133 \226\156\140\239\184\143",
                        "\216\167\217\134\216\167 \217\129\216\173\217\132 \216\167\217\132\217\133\216\167\216\168",
                        "\217\133\217\134\216\168\216\185 \216\167\217\132\217\133\216\177\216\172\217\132\217\135 \217\135\217\134\216\167"
                    }
                    if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                        local v422 = 0
                        while getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) and task.wait(0.3) do
                            local v423 = v421[math.random(1, #v421)]
                            game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer("RolePlayName", v423)
                            v422 = v422 + 1
                            if v422 >= 5 then
                                v422 = 0
                                game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer("PickingRPNameColor", Color3.new(math.random(0, 1), math.random(0, 1), math.random(0, 1)))
                            end
                        end
                    end
                end)
                LoadChatAlert()
            end
        else
            SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 10)
            getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_0, "Ball_Fling", "\217\129\217\132\217\134\217\130 \217\131\217\136\216\177\216\169", UDim2.new(0, 25, 0, 225), "\217\133\216\167\216\168 \216\167\217\132\217\133\216\175\216\177\216\179\216\169", 0)
            getgenv().RainbowTjm31 = CreateButtonWithText(l_ScrollingFrame_0, "Teleport_To_Parkour", "\216\168\216\167\216\177\217\131\217\136\216\177", UDim2.new(0, 210, 0, 275), "\217\133\216\167\216\168 \216\167\217\132\217\133\216\175\216\177\216\179\216\169", 0)
            getgenv().RainbowTjm32 = CreateButtonWithText(l_ScrollingFrame_0, "VehicleFling_Button", "\217\129\217\132\217\134\217\130 \216\175\216\177\216\167\216\172\216\169", UDim2.new(0, 210, 0, 225), "\217\133\216\167\216\168 \216\167\217\132\217\133\216\175\216\177\216\179\216\169", 0)
            getgenv().RainbowTjm33 = CreateButtonWithText(l_ScrollingFrame_0, "Teleport_To_Secret", "\217\133\217\131\216\167\217\134 \216\179\216\177\217\138", UDim2.new(0, 25, 0, 275), "\217\133\216\167\216\168 \216\167\217\132\217\133\216\175\216\177\216\179\216\169", 0)
            getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
                ChangeToggleColor(getgenv().RainbowTjm3.t2)
                if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                    getgenv().loopfling = false
                else
                    getgenv().loopfling = true
                    if not getgenv().working then
                        if not workspace.Football:FindFirstChild("Football") then
                            SendNotify("\216\174\216\183\216\167", "\216\185\216\176\216\177\216\167 \217\132\216\167\217\138\217\136\216\172\216\175 \217\131\217\136\216\177\216\169 \217\129\217\138 \216\167\217\132\216\179\217\138\216\177\217\129\216\177 \217\138\216\177\216\172\217\137 \216\170\216\186\217\138\217\138\216\177 \216\167\217\132\216\179\217\138\216\177\217\129\216\177", 5)
                        else
                            SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\216\167\216\176\216\167 \216\167\216\174\216\170\217\129\216\170 \216\167\217\132\217\131\217\136\216\177\216\169 \216\179\217\136\217\129 \216\170\216\172\216\175\217\135\216\167 \217\129\217\138 \216\167\217\132\217\133\217\132\216\185\216\168", 5)
                            Flinger(workspace.Football.Football)
                        end
                    end
                end
            end)
            getgenv().RainbowTjm32.t2.MouseButton1Click:Connect(function()
                ChangeToggleColor(getgenv().RainbowTjm32.t2)
                if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\167\216\176 \216\167\217\132\216\167\217\133\216\177 \217\138\216\183\217\138\216\177 \216\167\217\138 \216\180\216\174\216\181 \217\138\216\181\216\175\217\133 \216\168\216\175\216\177\216\167\216\172\216\170\217\131 \217\136\216\167\217\134\216\170 \216\170\216\179\217\136\217\130\217\135\216\167", 10)
                    local v424 = nil
                    local v425 = nil
                    local v426 = nil
                    local v427 = 0.1
                    while getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        task.wait()
                        game:GetService("RunService").Heartbeat:Wait()
                        v424 = game.Players.LocalPlayer.Character
                        v425 = v424 and v424:FindFirstChild("HumanoidRootPart")
                        if v425 then
                            v426 = v425.Velocity
                            v425.Velocity = v426 * 1000 + Vector3.new(0, 1000, 0)
                            game:GetService("RunService").RenderStepped:Wait()
                            v425.Velocity = v426
                            game:GetService("RunService").Stepped:Wait()
                            v425.Velocity = v426 + Vector3.new(0, v427, 0)
                            v427 = -v427
                        end
                        for _, v429 in ipairs(game.Players:GetPlayers()) do
                            if v429 ~= game.Players.LocalPlayer then
                                for _, v431 in ipairs(v429:GetChildren()) do
                                    if v431:IsA("BasePart") then
                                        v431.CanCollide = false
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
                TeleportTO(162, -89, 396, "pos", nil)
            end)
            getgenv().RainbowTjm31.t2.MouseButton1Click:Connect(function()
                TeleportTO(69, -358, -2326, "pos", nil)
            end)
            LoadChatAlert()
        end
    else
        SendNotify("\217\133\217\132\216\167\216\173\216\184\216\169", "\217\135\216\176\216\167 \216\167\217\132\217\133\216\167\216\168 \217\133\216\175\216\185\217\136\217\133 \217\133\217\134 \216\167\217\132\216\179\217\131\216\177\216\168\216\170 \216\170\217\136\216\172\216\175 \217\133\217\138\216\178\216\167\216\170 \216\174\216\167\216\181\217\135 \216\168\217\132\217\133\216\167\216\168", 10)
        getgenv().RainbowTjm3 = CreateButtonWithText(l_ScrollingFrame_3, "Spam_Skins", "\216\167\216\185\216\183\216\167\216\161 \216\167\217\132\217\130\217\134\216\168\217\132\216\169", UDim2.new(0, 210, 0, 400), "\217\133\216\167\216\168 \216\167\217\132\217\130\217\134\216\168\217\132\216\169", 0)
        getgenv().RainbowTjm35 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\217\133\216\182\216\167\216\175 \216\167\217\132\216\183\217\138\216\173\216\169", UDim2.new(0, 25, 0, 225), "\217\133\216\167\216\168 \216\167\217\132\217\130\217\134\216\168\217\132\216\169", 0)
        getgenv().RainbowTjm33 = CreateButtonWithText(l_ScrollingFrame_3, "Spam_Skins", "\216\167\217\132\216\170\216\177\217\131\217\138\216\178 \216\185\217\132\217\138\217\135", UDim2.new(0, 25, 0, 450), "\217\133\216\167\216\168 \216\167\217\132\217\130\217\134\216\168\217\132\216\169", 0)
        getgenv().RainbowTjm36 = CreateButtonWithText(l_ScrollingFrame_0, "Spam_Skins", "\217\133\216\182\216\167\216\175 \217\130\217\134\216\168\217\132\216\169", UDim2.new(0, 210, 0, 225), "\217\133\216\167\216\168 \216\167\217\132\217\130\217\134\216\168\217\132\216\169", 0)
        l_ScrollingFrame_3.CanvasSize = UDim2.new(0, 0, 1.5, 0)
        getgenv().RainbowTjm3.t2.MouseButton1Click:Connect(function()
            local v432 = nil
            if v31 ~= v432 then
                ChangeToggleColor(getgenv().RainbowTjm3.t2)
                if getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    SendNotify("System VR7", "\216\167\217\132\216\182\216\173\217\138\216\169 \217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 \217\133\216\185\217\131 \216\168\217\132\217\130\217\138\217\133 \n \216\174\217\132\217\131 \217\130\216\177\217\138\216\168 \217\133\217\134 \216\167\217\132\216\182\216\173\217\138\216\169 \216\173\216\170\216\167 \217\138\216\182\216\168\216\183 \216\167\217\131\216\171\216\177", 5)
                    while getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        task.wait()
                        pcall(function()
                            local v433 = GetBomb(game.Players.LocalPlayer)
                            if v433 then
                                local l_v433_FirstChild_0 = v433:FindFirstChild("TimeLeft", true)
                                if tonumber(l_v433_FirstChild_0.Text) <= 2 then
                                    wait(0.3)
                                    local l_CFrame_4 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                    repeat
                                        task.wait()
                                        pcall(function()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(l_Players_0[v31].Character.Torso.Position)
                                        end)
                                    until not GetBomb(game.Players.LocalPlayer)
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l_CFrame_4
                                end
                            end
                        end)
                    end
                end
            end
        end)
        getgenv().RainbowTjm36.t2.MouseButton1Click:Connect(function()
            ChangeToggleColor(getgenv().RainbowTjm36.t2)
            if getgenv().RainbowTjm36.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                SendNotify("V R 7", "\216\167\217\132\216\167\217\133\216\177 \217\135\216\167\216\176 \217\133\216\167\216\185\217\132\217\138\217\135 \216\168\216\167\217\134\216\175 \216\167\217\132\216\167 \216\167\216\176\216\167 \216\170\217\133 \216\170\216\181\217\136\217\138\216\177\217\131 \217\138\216\185\216\170\216\168\216\177 \216\167\217\131\216\171\216\177 \216\167\217\133\216\177 \217\138\216\179\216\167\216\185\216\175\217\131 \217\136\217\133\216\167\216\185\217\132\217\138\217\135 \216\168\216\167\217\134\216\175", 5)
                SendNotify("V R 7", "\216\167\217\132\217\133\216\182\216\167\216\175 \217\138\216\180\216\170\216\186\217\132 \216\168\216\185\216\175 \217\133\216\167\216\170\217\129\216\185\217\132\217\135 \217\136\216\170\217\133\217\136\216\170 \216\177\216\167\216\173 \217\138\216\181\217\138\216\177 \216\167\217\132\216\185\216\175\217\136 \217\133\216\167\217\138\217\130\216\175\216\177 \217\138\216\185\216\183\217\138\217\131 \217\130\217\134\216\168\217\132\216\169", 7)
                SendNotify("V R 7", "\216\167\216\176\216\167 \216\181\216\167\216\177\216\170 \216\185\217\134\216\175\217\131 \217\130\217\134\216\168\217\132\216\169 \217\136\216\185\216\183\217\138\216\170\217\135\216\167 \217\132\217\132\216\185\216\175\217\136 \216\177\216\167\216\173 \217\138\217\130\216\175\216\177 \216\167\217\132\216\185\216\175\217\136 \217\138\216\177\216\172\216\185\217\135\216\167 \217\132\217\131", 9)
                while getgenv().RainbowTjm36.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                    pcall(function()
                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Bomb") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bomb") and game:GetService("ReplicatedStorage").Remotes.CharacterReplicator:FindFirstChild("UpdteCFrame") then
                            game:GetService("ReplicatedStorage").Remotes.CharacterReplicator.UpdteCFrame.Name = "UpdateCFrame"
                        elseif game.Players.LocalPlayer.Character and not game.Players.LocalPlayer.Character:FindFirstChild("Bomb") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Bomb") and game:GetService("ReplicatedStorage").Remotes.CharacterReplicator:FindFirstChild("UpdateCFrame") then
                            task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CharacterReplicator.UpdateCFrame.Name = "UpdteCFrame"
                            wait()
                        end
                    end)
                    task.wait()
                end
                wait(0.001)
                if game:GetService("ReplicatedStorage").Remotes.CharacterReplicator:FindFirstChild("UpdteCFrame") then
                    game:GetService("ReplicatedStorage").Remotes.CharacterReplicator.UpdteCFrame.Name = "UpdateCFrame"
                end
            end
        end)
        getgenv().RainbowTjm33.t2.MouseButton1Click:Connect(function()
            local v436 = nil
            if v31 ~= v436 then
                ChangeToggleColor(getgenv().RainbowTjm33.t2)
                if getgenv().RainbowTjm32.t2.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
                    if getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                        while getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                            task.wait()
                            pcall(function()
                                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(game.Players.LocalPlayer.Character.PrimaryPart.Position, Vector3.new(l_Players_0[v31].Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.PrimaryPart.Position.Y, l_Players_0[v31].Character.HumanoidRootPart.Position.Z)))
                            end)
                        end
                    end
                else
                    SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\216\183\217\129\216\167\216\161 \217\133\216\182\216\167\216\175 \216\167\217\132\217\130\217\134\216\167\216\168\217\132 \216\167\217\136\217\132\216\167", 3)
                    getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                end
            end
        end)
        getgenv().RainbowTjm35.t2.MouseButton1Click:Connect(function()
            ChangeToggleColor(getgenv().RainbowTjm35.t2)
            if getgenv().RainbowTjm35.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                local v437 = Instance.new("Part", workspace)
                v437.Name = "AntiFall-Part"
                v437.Color = Color3.fromRGB(218, 133, 65)
                v437.Size = Vector3.new(61, 1, 62)
                v437.Anchored = true
                v437.CanCollide = true
                v437.Position = Vector3.new(42.99999237060547, 0.55, -30)
                v437.Material = Enum.Material.Wood
            else
                pcall(function()
                    game.workspace:FindFirstChild("AntiFall-Part"):Destroy()
                end)
            end
        end)
        LoadChatAlert()
    end
    if GetRank() and GetRank() ~= "Not Enabled" then
        getgenv().AdminSpamming = CreateButtonWithText(l_ScrollingFrame_3, "Spamming_Commands", "\217\134\216\179\216\174 \216\167\217\136\216\167\217\133\216\177", UDim2.new(0, 210, 0, 400), "\216\170\216\173\216\170\216\167\216\172 \216\167\216\175\217\133\217\134", 0)
        getgenv().Cmdbar_Button = Instance.new("TextButton")
        getgenv().Cmdbar_Button.Name = "Cmdbar_Button"
        getgenv().Cmdbar_Button.Parent = l_ScrollingFrame_0
        getgenv().Cmdbar_Button.BackgroundTransparency = 0.3
        getgenv().Cmdbar_Button.BackgroundColor3 = Color3.fromRGB(l_r2_0, l_g2_0, l_b2_0)
        getgenv().Cmdbar_Button.BorderColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
        getgenv().Cmdbar_Button.BorderSizePixel = 1
        getgenv().Cmdbar_Button.Position = UDim2.new(0, 25, 0, 24)
        getgenv().Cmdbar_Button.Size = UDim2.new(0, 30, 0, 30)
        getgenv().Cmdbar_Button.Font = Enum.Font.Oswald
        getgenv().Cmdbar_Button.Text = utf8.char(709)
        getgenv().Cmdbar_Button.TextColor3 = Color3.fromRGB(0, 0, 0)
        getgenv().Cmdbar_Button.TextScaled = true
        getgenv().Cmdbar_Button.TextSize = 14
        getgenv().Cmdbar_Button.TextWrapped = true
        getgenv().AdminSpamming.t2.MouseButton1Click:Connect(function()
            local v438 = nil
            if v31 ~= v438 then
                ChangeToggleColor(getgenv().getgenv().AdminSpamming.t2)
                if getgenv().AdminSpamming.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                    while getgenv().AdminSpamming.t2.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                        pcall(function()
                            local l_Text_7 = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("HDAdminInterface").MainFrame.Pages.Settings.Custom["AE1 Prefix"].SettingValue.TextBox.Text
                            local l_FirstChild_3 = l_Players_0[v31].Character:FindFirstChild("HDAdminTitle", true)
                            if l_FirstChild_3 and l_FirstChild_3.TextLabel.Text ~= "\217\129\216\173\216\168\217\135" then
                                game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_7 .. "titlepk " .. l_Players_0[v31].Name .. " \217\129\216\173\216\168\217\135")
                            elseif not l_FirstChild_3 then
                                game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_7 .. "titlepk " .. l_Players_0[v31].Name .. " \217\129\216\173\216\168\217\135")
                            end
                            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_7 .. "size " .. l_Players_0[v31].Name .. " 3")
                            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_7 .. "height " .. l_Players_0[v31].Name .. " 0")
                            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_7 .. "emote " .. l_Players_0[v31].Name)
                            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_7 .. "color " .. l_Players_0[v31].Name .. " p")
                            game:GetService("ReplicatedStorage"):WaitForChild("HDAdminHDClient"):WaitForChild("Signals"):WaitForChild("RequestCommandSilent"):InvokeServer(l_Text_7 .. "shine " .. l_Players_0[v31].Name)
                        end)
                        wait(5)
                    end
                end
            end
        end)
        getgenv().Cmdbar_Button.MouseButton1Click:Connect(function()
            if game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.CmdBar.Visible then
                game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.CmdBar.Visible = false
                getgenv().Cmdbar_Button.Text = utf8.char(709)
            else
                game:GetService("Players").LocalPlayer.PlayerGui.HDAdminInterface.CmdBar.Visible = true
                getgenv().Cmdbar_Button.Text = utf8.char(708)
            end
        end)
    end
    CreateToggle(l_TextButton_11)
    CreateClicker(l_TextButton_7)
    CreateClicker(l_TextButton_8)
    CreateToggle(l_TextButton_22)
    CreateClicker(l_TextButton_12)
    CreateClicker(l_TextButton_13)
    CreateClicker(l_TextButton_14)
    CreateClicker(l_TextButton_15)
    CreateClicker(l_TextButton_18)
    CreateClicker(l_TextButton_20)
    CreateClicker(l_TextButton_21)
    CreateToggle(l_TextButton_16)
    CreateToggle(l_TextButton_19)
    CreateToggle(l_TextButton_17)
    CreateToggle(l_TextButton_24)
    CreateToggle(l_TextButton_23)
    CreateToggle(l_TextButton_25)
    CreateToggle(l_TextButton_26)
    CreateToggle(l_TextButton_27)
    CreateToggle(l_TextButton_30)
    CreateToggle(l_TextButton_31)
    CreateToggle(l_TextButton_33)
    CreateToggle(l_TextButton_32)
    CreateToggle(l_TextButton_28)
    CreateClicker(l_TextButton_29)
    CreateClicker(l_TextButton_34)
    CreateClicker(l_TextButton_36)
    CreateClicker(l_TextButton_35)
    CreateClicker(l_TextButton_37)
    CreateClicker(l_TextButton_38)
    CreateClicker(l_TextButton_39)
    CreateClicker(l_TextButton_40)
    CreateClicker(l_TextButton_41)
    CreateClicker(l_TextButton_42)
    CreateClicker(l_TextButton_43)
    CreateClicker(l_TextButton_44)
    CreateClicker(l_TextButton_45)
    CreateClicker(l_TextButton_46)
    CreateClicker(l_TextButton_47)
    CreateClicker(l_TextButton_48)
    CreateClicker(l_TextButton_49)
    CreateClicker(l_TextButton_50)
    CreateClicker(l_TextButton_51)
    CreateClicker(l_TextButton_53)
    CreateClicker(l_TextButton_52)
    CreateClicker(l_TextButton_56)
    CreateClicker(l_TextButton_57)
    CreateClicker(l_TextButton_58)
    CreateClicker(l_TextButton_59)
    CreateClicker(l_TextButton_60)
    CreateClicker(l_TextButton_61)
    CreateClicker(getgenv().SaluteAnimationR15)
    CreateClicker(getgenv().ArmcutAnimationR6)
    CreateClicker(getgenv().BoxesAnimationR6)
    CreateClicker(getgenv().FaintAnimationR6)
    CreateClicker(getgenv().DoggyAnimationR15)
    CreateClicker(getgenv().HugAnimationR15)
    CreateClicker(getgenv().DolphinAnimationR15)
    CreateClicker(getgenv().Sb3awyAnimationR15)
    CreateClicker(getgenv().ZombieWalkAnimationR15)
    CreateClicker(getgenv().FlingArmsAnimationR15)
    CreateClicker(getgenv().AhmAhmAnimationR15)
    CreateClicker(getgenv().SleepyAnimationR15)
    CreateClicker(getgenv().CrazyAnimationR15)
    CreateClicker(getgenv().B3b3AnimationR15)
    CreateClicker(getgenv().HugAnimationR6)
    CreateClicker(getgenv().BangAnimationR6)
    CreateClicker(getgenv().InsaneAnimationR6)
    CreateClicker(getgenv().BackpackHeadAnimationR6)
    CreateClicker(getgenv().FloatingHeadAnimationR6)
    CreateClicker(getgenv().JerkingAnimationR6)
    CreateClicker(getgenv().IllusionAnimationR6)
    CreateToggle(l_TextButton_62)
    CreateToggle(l_TextButton_63)
    CreateToggle(l_TextButton_64)
    CreateToggle(l_TextButton_65)
    CreateClicker(l_TextButton_66)
    CreateClicker(l_TextButton_67)
    CreateClicker(l_TextButton_68)
    CreateClicker(l_TextButton_73)
    CreateClicker(l_TextButton_72)
    CreateClicker(l_TextButton_69)
    CreateClicker(l_TextButton_70)
    CreateClicker(l_TextButton_71)
    task.wait(0.5)
    function ChangeSection(v441)
        SectionClickedName = string.split(v441.Name, "_")[1]
        for _, v443 in pairs(l_Frame_0:GetChildren()) do
            if v443.Name == v441.Name then
                v443.Transparency = 0
            else
                v443.Transparency = 0.5
            end
        end
        for _, v445 in pairs(l_ImageLabel_0:GetChildren()) do
            if v445:IsA("ScrollingFrame") then
                SectionForName = string.split(v445.Name, "_")[1]
                if string.find(SectionClickedName, SectionForName) then
                    v445.Visible = true
                else
                    v445.Visible = false
                end
            end
        end
    end
    function UpdateTarget(v446)
        pcall(function()
            if v446.UserId == 951402104 then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "VR7 Team",
                    Text = "\216\167\216\172\216\177\216\167\216\161 \216\174\216\167\216\183\216\166 \217\132\216\167\217\134 \216\177\216\167\216\185\217\138\n  \216\167\217\132\216\173\216\179\216\167\216\168 \216\170\216\173\216\170 \216\173\217\133\216\167\217\138\216\169 \216\173\216\179\217\136\217\134\217\138",
                    Duration = 5,
                    Icon = "rbxassetid://6710742632"
                })
                local v447 = Instance.new("Sound", game.Workspace)
                v447.SoundId = "rbxassetid://17692186249"
                v447.Volume = 10
                do
                    local l_v447_0 = v447
                    l_v447_0.Ended:Connect(function()
                        l_v447_0:Destroy()
                    end)
                    l_v447_0:Play()
                    v446 = nil
                end
            elseif table.find(loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Hehehe"))(), tostring(v446.UserId)) or table.find(loadstring(game:HttpGet("https://raw.githubusercontent.com/VR7ss/OMK/refs/heads/main/Usernames"))(), tostring(v446.UserId)) then
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "VR7 Team",
                    Text = "\217\132\216\167\217\138\217\133\217\131\217\134\217\131 \216\167\216\174\216\170\217\138\216\167\216\177 \217\135\216\176\216\167 \216\167\217\132\216\167\216\185\216\168\n \217\132\216\167\217\134\217\135 \217\133\216\173\217\133\217\138 \217\133\217\134 \216\181\216\167\216\173\216\168 \216\167\217\132\216\179\217\131\216\177\216\168\216\170",
                    Duration = 5,
                    Icon = "rbxassetid://136772242182146"
                })
                local v449 = Instance.new("Sound", game.Workspace)
                v449.SoundId = "rbxassetid://1862047553"
                v449.Volume = 10
                do
                    local l_v449_0 = v449
                    l_v449_0.Ended:Connect(function()
                        l_v449_0:Destroy()
                    end)
                    l_v449_0:Play()
                    v446 = nil
                end
            end
        end)
        if v446 ~= "pcall" then
            v31 = v446.Name
            l_TextBox_5.Text = v446.Name
            l_TextLabel_4.Text = "UserID: " .. v446.UserId .. "\nDisplay: " .. v446.DisplayName .. "\nJoined: " .. os.date("%d-%m-%Y", os.time() - v446.AccountAge * 24 * 3600) .. " [\216\179\217\134\216\169/\216\180\217\135\216\177/\217\138\217\136\217\133]"
            l_ImageLabel_2.Image = l_Players_0:GetUserThumbnailAsync(v446.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
            l_TextButton_28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            if TalkRepeater then
                TalkRepeater:Disconnect()
            end
            l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
        else
            l_TextBox_5.Text = "@target..."
            l_TextLabel_4.Text = "UserID: \nDisplay: \nJoined: "
            l_ImageLabel_2.Image = "rbxassetid://10818605405"
            v31 = nil
            if l_TextButton_25.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                l_TextButton_11.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            end
            l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_23.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_28.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            if TalkRepeater then
                TalkRepeater:Disconnect()
            end
            pcall(function()
                getgenv().AdminSpamming.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            end)
            pcall(function()
                if game.PlaceId == 11379739543 then
                    getgenv().RainbowTjm3.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    getgenv().RainbowTjm33.t2.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                end
            end)
        end
    end
    ChangeSection(l_TextButton_0)
    l_TextButton_0.MouseButton1Click:Connect(function()
        ChangeSection(l_TextButton_0)
    end)
    l_TextButton_1.MouseButton1Click:Connect(function()
        ChangeSection(l_TextButton_1)
    end)
    l_TextButton_2.MouseButton1Click:Connect(function()
        ChangeSection(l_TextButton_2)
    end)
    l_TextButton_3.MouseButton1Click:Connect(function()
        ChangeSection(l_TextButton_3)
    end)
    l_TextButton_4.MouseButton1Click:Connect(function()
        ChangeSection(l_TextButton_4)
    end)
    l_TextButton_5.MouseButton1Click:Connect(function()
        ChangeSection(l_TextButton_5)
    end)
    l_TextButton_6.MouseButton1Click:Connect(function()
        ChangeSection(l_TextButton_6)
    end)
    l_TextButton_11.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_11)
        if l_TextButton_11.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
            repeat
                wait(0.15)
                Send(v39)
            until l_TextButton_11.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
        end
    end)
    l_TextButton_7.MouseButton1Click:Connect(function()
        if game:GetService("TextChatService").ChatVersion ~= Enum.ChatVersion.TextChatService then
            SendNotify("System VR7", "\217\135\216\167\216\176 \216\167\217\132\217\134\217\136\216\185 \217\133\217\134 \216\167\217\132\216\180\216\167\216\170 \216\186\217\138\216\177 \217\133\216\175\216\185\217\136\217\133 \216\168\216\179\216\168\216\168 \217\136\216\172\217\136\216\175 \216\173\217\133\216\167\217\138\217\135", 5)
        else
            local v451 = 0
            repeat
                task.wait()
                v451 = v451 + 1
                Send("\217\135\216\167\217\138\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r.")
            until v451 >= 3
            SendNotify("System VR7", "\216\167\217\134\216\170\216\168\217\135 \216\167\216\176\216\167 \216\170\216\179\217\136\217\138 \216\179\216\168\216\167\217\133 \217\131\216\171\217\138\216\177 \216\167\216\173\216\170\217\133\216\167\217\132 \217\138\216\172\217\138\217\131 \216\170\216\173\216\176\217\138\216\177", 5)
        end
    end)
    l_TextButton_8.MouseButton1Click:Connect(function()
        local v452 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Bwhw827g29wh/Scripts/refs/heads/main/FetchAndExecute.lua"))()
        local l_LocalPlayer_4 = game.Players.LocalPlayer
        local v454 = l_LocalPlayer_4.Character or l_LocalPlayer_4.CharacterAdded:Wait()
        if v454 then
            local l_Humanoid_2 = v454:FindFirstChildOfClass("Humanoid")
            if not l_Humanoid_2 or l_Humanoid_2.RigType ~= Enum.HumanoidRigType.R15 then
                v452:fetchAndExecute("https://pastefy.app/wa3v2Vgm/raw")
            else
                v452:fetchAndExecute("https://pastefy.app/YZoglOyJ/raw")
            end
        end
    end)
    l_TextBox_0.FocusLost:Connect(function()
        command = l_TextBox_0.Text
        Execute(command)
        l_TextBox_0.Text = ""
    end)
    l_TextBox_1.FocusLost:Connect(function()
        v39 = l_TextBox_1.Text
    end)
    l_TextButton_12.MouseButton1Click:Connect(function()
        if game.PlaceId == 11379739543 then
            if not getgenv().Tpwalking then
                if not getgenv().Tpwalking then
                    getgenv().Tpwalking = true
                    SendNotify("System VR7", "\216\167\216\182\216\186\216\183 \217\133\216\177\216\169 \216\171\216\167\217\134\217\138\216\169 \217\132\216\167\216\177\216\172\216\167\216\185 \216\167\217\132\216\179\216\177\216\185\216\169 \216\167\217\132\216\183\216\168\217\138\216\185\217\138\216\169", 5)
                end
            else
                getgenv().Tpwalking = false
                SendNotify("System VR7", "\216\167\216\182\216\186\216\183 \217\133\216\177\216\169 \216\171\216\167\217\134\217\138\216\169 \217\132\217\132\216\170\216\179\216\177\217\138\216\185", 5)
            end
            local v456 = l_TextBox_2.Text:gsub("%D", "")
            if v456 == "" then
                v456 = 1
            elseif tonumber(v456) > 10 then
                v456 = 10
            end
            do
                local l_v456_0 = v456
                while getgenv().Tpwalking do
                    task.wait()
                    pcall(function()
                        local v458 = game:GetService("RunService").Heartbeat:Wait()
                        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude <= 0 then
                            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * v458 * 10)
                        else
                            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * l_v456_0 * v458 * 10)
                        end
                    end)
                end
            end
        else
            pcall(function()
                local v459 = l_TextBox_2.Text:gsub("%D", "")
                if v459 == "" then
                    v459 = 16
                end
                l_LocalPlayer_1.Character.Humanoid.WalkSpeed = tonumber(v459)
                SendNotify("System VR7", "\216\170\217\133 \216\170\216\173\216\175\217\138\216\171 \216\167\217\132\216\179\216\177\216\185\216\169", 5)
            end)
        end
    end)
    l_TextButton_14.MouseButton1Click:Connect(function()
        pcall(function()
            local v460 = l_TextBox_3.Text:gsub("%D", "")
            if v460 == "" then
                v460 = 50
            end
            l_LocalPlayer_1.Character.Humanoid.JumpPower = tonumber(v460)
            SendNotify("System VR7", "\216\170\217\133 \216\170\216\173\216\175\217\138\216\171 \217\130\217\136\216\169 \216\167\217\132\217\130\217\129\216\178", 5)
        end)
    end)
    l_TextButton_21.MouseButton1Click:Connect(function()
        pcall(function()
            local v461 = l_TextBox_4.Text:gsub("%D", "")
            if v461 == "" then
                v461 = 50
            end
            v32 = tonumber(v461)
            SendNotify("System VR7", "\216\170\217\133 \216\170\216\173\216\175\217\138\216\171 \216\179\216\177\216\185\216\169 \216\167\217\132\216\183\217\138\216\177\216\167\217\134", 5)
        end)
    end)
    local v462 = nil
    local v463 = nil
    local v464 = nil
    local v465 = nil
    l_TextButton_17.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_17)
        if l_TextButton_17.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
            pcall(function()
                if v465 and v463 and v462 and v463:FindFirstChild("HumanoidRootPart") and v462:FindFirstChild("HumanoidRootPart") and v462.Humanoid.Health > 0 and v463.Humanoid.Health then
                    Invisible()
                end
            end)
        else
            if not getgenv().EnabledBefore then
                getgenv().EnabledBefore = true
                local l_LocalPlayer_5 = game:GetService("Players").LocalPlayer
                v463 = l_LocalPlayer_5.Character or l_LocalPlayer_5.CharacterAdded:Wait()
                v464 = false
                v463.Archivable = true
                v462 = v463:Clone()
                local v467 = Instance.new("Part", workspace)
                v467.Anchored = true
                v467.Size = Vector3.new(200, 1, 200)
                v467.CFrame = CFrame.new(0, -500, 0)
                v467.CanCollide = true
                v467.Transparency = 1
                v462.Parent = workspace
                v462.HumanoidRootPart.CFrame = v467.CFrame * CFrame.new(0, 5, 0)
                for _, v469 in pairs(v463:GetChildren()) do
                    if v469:IsA("LocalScript") then
                        local v470 = v469:Clone()
                        v470.Disabled = true
                        v470.Parent = v462
                    end
                end
                for _, v472 in pairs(v462:GetDescendants()) do
                    if not v472:IsA("BasePart") or v472.Name ~= "HumanoidRootPart" then
                        if v472:IsA("BasePart") then
                            v472.Transparency = 0.5
                        end
                    else
                        v472.Transparency = 1
                    end
                end
                v465 = true
                do
                    local l_l_LocalPlayer_5_0, l_v467_0 = l_LocalPlayer_5, v467
                    local function v480()
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                        if v462 and v462.Parent then
                            v462:Destroy()
                        end
                        if l_v467_0 and l_v467_0.Parent then
                            l_v467_0:Destroy()
                        end
                        v463.Archivable = true
                        v462 = v463:Clone()
                        l_v467_0 = Instance.new("Part", workspace)
                        l_v467_0.Anchored = true
                        l_v467_0.Size = Vector3.new(200, 1, 200)
                        l_v467_0.CFrame = CFrame.new(0, -500, 0)
                        l_v467_0.CanCollide = true
                        l_v467_0.Transparency = 1
                        v462.Parent = workspace
                        v462.HumanoidRootPart.CFrame = l_v467_0.CFrame * CFrame.new(0, 5, 0)
                        for _, v476 in pairs(v462:GetChildren()) do
                            if v476:IsA("LocalScript") then
                                local v477 = v476:Clone()
                                v477.Disabled = true
                                v477.Parent = v462
                            end
                        end
                        for _, v479 in pairs(v462:GetDescendants()) do
                            if v479:IsA("BasePart") then
                                if v479.Name == "HumanoidRootPart" then
                                    v479.Transparency = 1
                                else
                                    v479.Transparency = 0.5
                                end
                            end
                        end
                        if v462:FindFirstChild("Humanoid") then
                            v462.Humanoid.Died:Connect(function()
                                if v463 and v463:FindFirstChild("Humanoid") then
                                    v463.Humanoid.Health = 0
                                end
                            end)
                        end
                        PseudoAnchor = v462:FindFirstChild("HumanoidRootPart")
                    end
                    function CharacterDied()
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                        v465 = false
                        l_l_LocalPlayer_5_0.CharacterAdded:Wait()
                        v463 = l_l_LocalPlayer_5_0.Character or l_l_LocalPlayer_5_0.CharacterAdded:Wait()
                        v465 = true
                        v464 = false
                        workspace.CurrentCamera.CameraSubject = v463:WaitForChild("Humanoid")
                        v463:WaitForChild("Humanoid").Died:Connect(function()
                            CharacterDied()
                            l_TextButton_17.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                        end)
                        v480()
                    end
                    v463.Humanoid.Died:Connect(function()
                        v462:Destroy()
                    end)
                    v462.Humanoid.Died:Connect(function()
                        v463.Humanoid.Health = 0
                    end)
                    l_l_LocalPlayer_5_0.CharacterAppearanceLoaded:Connect(CharacterDied)
                    local v481 = nil
                    game:GetService("RunService").RenderStepped:Connect(function()
                        local v482 = nil
                        if v481 ~= v482 then
                            v481.CFrame = l_v467_0.CFrame * CFrame.new(0, 5, 0)
                        end
                    end)
                    v481 = v462.HumanoidRootPart
                    function Invisible()
                        if not v464 then
                            local l_CFrame_5 = workspace.Camera.CFrame
                            local l_CFrame_6 = v463.HumanoidRootPart.CFrame
                            v463.HumanoidRootPart.CFrame = l_v467_0.CFrame * CFrame.new(0, 5, 0)
                            task.wait(0.1)
                            v462.HumanoidRootPart.CFrame = l_CFrame_6
                            v463.Humanoid:UnequipTools()
                            l_l_LocalPlayer_5_0.Character = v462
                            workspace.CurrentCamera.CameraSubject = v462.Humanoid
                            v481 = v463.HumanoidRootPart
                            for _, v486 in pairs(v462:GetChildren()) do
                                if v486:IsA("LocalScript") then
                                    v486.Disabled = false
                                end
                            end
                            task.wait()
                            workspace.Camera.CFrame = l_CFrame_5
                            v464 = true
                            l_TextButton_17.Ticket_Asset.ImageColor3 = Color3.fromRGB(0, 255, 0)
                        else
                            local l_CFrame_7 = workspace.Camera.CFrame
                            local l_CFrame_8 = v462.HumanoidRootPart.CFrame
                            v462.HumanoidRootPart.CFrame = v463.HumanoidRootPart.CFrame
                            v463.HumanoidRootPart.CFrame = l_CFrame_8
                            v462.Humanoid:UnequipTools()
                            l_l_LocalPlayer_5_0.Character = v463
                            workspace.CurrentCamera.CameraSubject = v463.Humanoid
                            v481 = v462.HumanoidRootPart
                            for _, v490 in pairs(v462:GetChildren()) do
                                if v490:IsA("LocalScript") then
                                    v490.Disabled = true
                                end
                            end
                            task.wait()
                            workspace.Camera.CFrame = l_CFrame_7
                            v464 = false
                            l_TextButton_17.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                    v480()
                    v463:WaitForChild("Humanoid").Died:Connect(function()
                        CharacterDied()
                    end)
                end
            end
            pcall(function()
                if v465 and v463 and v462 and v463:FindFirstChild("HumanoidRootPart") and v462:FindFirstChild("HumanoidRootPart") and v462.Humanoid.Health > 0 and v463.Humanoid.Health then
                    Invisible()
                end
            end)
            SendNotify("System VR7", "\216\167\216\176\216\167 \217\133\216\170\216\170 \216\180\216\186\217\132 \216\167\217\132\216\167\216\174\216\170\217\129\216\167\216\161 \217\133\217\134 \216\172\216\175\217\138\216\175", 5)
        end
    end)
    l_TextButton_19.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_19)
        if l_TextButton_19.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
            if game.CoreGui:FindFirstChild("ShiftlockGui") then
                game.CoreGui:FindFirstChild("ShiftlockGui").Enabled = false
                game.CoreGui:FindFirstChild("ShiftlockGui").LockButton.BtnIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
                EndForceShiftLock()
            end
        elseif not game.CoreGui:FindFirstChild("ShiftlockGui") then
            local l_ScreenGui_0 = Instance.new("ScreenGui")
            local l_ImageButton_5 = Instance.new("ImageButton")
            local l_ImageLabel_5 = Instance.new("ImageLabel")
            local l_UICorner_1 = Instance.new("UICorner")
            local _ = Instance.new("UICorner")
            l_ScreenGui_0.Name = "ShiftlockGui"
            l_ScreenGui_0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            l_ScreenGui_0.ResetOnSpawn = false
            l_ScreenGui_0.DisplayOrder = 69
            l_ScreenGui_0.Parent = game.CoreGui
            l_ImageButton_5.Name = "LockButton"
            l_ImageButton_5.Parent = l_ScreenGui_0
            l_ImageButton_5.AnchorPoint = Vector2.new(0.5, 0.5)
            l_ImageButton_5.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
            l_ImageButton_5.BackgroundTransparency = 1
            l_ImageButton_5.BorderSizePixel = 0
            l_ImageButton_5.Position = UDim2.new(0.785, 0, 0.865, 0)
            l_ImageButton_5.Size = UDim2.new(0, 65, 0, 65)
            l_ImageButton_5.ZIndex = 3
            l_ImageButton_5.Image = ""
            l_ImageButton_5.AutoButtonColor = true
            l_ImageButton_5.Draggable = true
            l_UICorner_1.Parent = l_ImageButton_5
            l_UICorner_1.CornerRadius = UDim.new(1, 0)
            l_ImageLabel_5.Name = "BtnIcon"
            l_ImageLabel_5.Parent = l_ImageButton_5
            l_ImageLabel_5.BackgroundTransparency = 1
            l_ImageLabel_5.Position = UDim2.new(0.15, 0, 0.15, 0)
            l_ImageLabel_5.Size = UDim2.new(0.7, 0, 0.7, 0)
            l_ImageLabel_5.ZIndex = 3
            l_ImageLabel_5.Image = "rbxasset://textures/ui/mouseLock_off.png"
            l_ImageLabel_5.ImageColor3 = Color3.fromRGB(255, 255, 255)
            l_ImageLabel_5.ScaleType = Enum.ScaleType.Fit
            do
                local l_l_ImageButton_5_0 = l_ImageButton_5
                local function v508()
                    local v497 = Instance.new("LocalScript", l_l_ImageButton_5_0)
                    local _ = game:GetService("UserInputService")
                    local v499 = false
                    local l_Parent_0 = v497.Parent
                    l_Parent_0.MouseButton1Click:Connect(function()
                        v499 = not v499
                        if v499 then
                            l_Parent_0.BtnIcon.ImageColor3 = Color3.fromRGB(0, 170, 255)
                            spawn(function()
                                while v499 do
                                    for _ = 0.3, 0.7, 0.1 do
                                        if v499 then
                                            wait(0.1)
                                        else
                                            break
                                        end
                                    end
                                    for _ = 0.7, 0.3, -0.1 do
                                        if v499 then
                                            wait(0.1)
                                        else
                                            break
                                        end
                                    end
                                end
                            end)
                            ForceShiftLock()
                        else
                            l_Parent_0.BtnIcon.ImageColor3 = Color3.fromRGB(255, 255, 255)
                            EndForceShiftLock()
                        end
                    end)
                    local v503 = nil
                    local l_UserGameSettings_0 = UserSettings():GetService("UserGameSettings")
                    local v505 = nil
                    function ForceShiftLock()
                        local _, l_result_0 = pcall(function()
                            return l_UserGameSettings_0.RotationType
                        end)
                        v503 = l_result_0
                        v505 = game:GetService("RunService").RenderStepped:Connect(function()
                            pcall(function()
                                l_UserGameSettings_0.RotationType = Enum.RotationType.CameraRelative
                            end)
                        end)
                    end
                    function EndForceShiftLock()
                        if v505 then
                            v505:Disconnect()
                            pcall(function()
                                l_UserGameSettings_0.RotationType = v503 or Enum.RotationType.MovementRelative
                            end)
                        end
                    end
                end
                coroutine.wrap(v508)()
                SendNotify("System VR7", "\217\138\217\133\217\131\217\134\217\131 \216\179\216\173\216\168 \216\167\217\132\216\178\216\177 \217\132\216\167\217\138 \217\133\217\131\216\167\217\134 \216\170\216\177\217\138\216\175\217\135", 3)
            end
        else
            game.CoreGui:FindFirstChild("ShiftlockGui").Enabled = true
            return 
        end
    end)
    l_TextButton_18.MouseButton1Click:Connect(function()
        local l_Position_1 = GetRoot(l_LocalPlayer_1).Position
        l_LocalPlayer_1.Character:BreakJoints()
        pcall(function()
            l_LocalPlayer_1.Character.Humanoid.Health = 0
        end)
        l_LocalPlayer_1.CharacterAdded:wait()
        task.wait(GetPing() + 0.1)
        TeleportTO(l_Position_1.X, l_Position_1.Y, l_Position_1.Z, "pos", "safe")
    end)
    l_TextButton_20.MouseButton1Click:Connect(function()
        pcall(function()
            if not game.Players.LocalPlayer.Character:FindFirstChild("Click Tp") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Click Tp") then
                local _ = game.Players.LocalPlayer:GetMouse()
                local l_Tool_0 = Instance.new("Tool")
                l_Tool_0.RequiresHandle = false
                l_Tool_0.Name = "Click Tp"
                l_Tool_0.Activated:connect(function()
                    local l_Mouse_1 = l_Players_0.LocalPlayer:GetMouse()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(l_Mouse_1.Hit.X, l_Mouse_1.Hit.Y + 3, l_Mouse_1.Hit.Z, select(4, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:components()))
                    TeleportTO(pos.X, pos.Y, pos.Z, "pos", nil)
                end)
                l_Tool_0.Parent = game.Players.LocalPlayer.Backpack
            end
        end)
    end)
    getgenv().Checksub_Button.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/sub%20checker"))()
        local v513 = Instance.new("Sound", game.Workspace)
        v513.SoundId = "rbxassetid://3398620867"
        v513.Volume = 10
        v513.Ended:Connect(function()
            v513:Destroy()
        end)
        v513:Play()
    end)
    getgenv().HelpHd_Button.MouseButton1Click:Connect(function()
        SendNotify("System VR7", "\216\174\216\167\217\134\216\169 \216\167\217\132\216\167\217\136\216\167\217\133\216\177 \216\170\216\179\216\170\216\174\216\175\217\133 \217\132\217\131\216\170\216\167\216\168\216\169 \216\167\217\136\216\167\217\133\216\177 \216\167\216\175\217\133\217\134 \216\168\216\175\217\136\217\134 \216\167\216\173\216\175 \217\138\216\180\217\136\217\129\217\131", 5)
        local v514 = Instance.new("Sound", game.Workspace)
        v514.SoundId = "rbxassetid://3398620867"
        v514.Volume = 10
        v514.Ended:Connect(function()
            v514:Destroy()
        end)
        v514:Play()
    end)
    l_TextButton_16.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_16)
        if l_TextButton_16.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
            local v515 = {}
            for _, v517 in ipairs(GetRoot(l_LocalPlayer_1).Parent:GetChildren()) do
                if v517:IsA("BasePart") then
                    table.insert(v515, v517)
                end
            end
            do
                local l_v515_0 = v515
                repeat
                    wait(0.1)
                    pcall(function()
                        for _, v520 in ipairs(l_v515_0) do
                            if l_LocalPlayer_1.Character[v520.Name].CanCollide then
                                task.wait()
                                l_LocalPlayer_1.Character[v520.Name].CanCollide = false
                            end
                        end
                    end)
                until l_TextButton_16.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                for _, v522 in ipairs(l_v515_0) do
                    if not l_LocalPlayer_1.Character[v522.Name].CanCollide then
                        task.wait(0.01)
                        l_LocalPlayer_1.Character[v522.Name].CanCollide = true
                    end
                end
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
            end
        end
    end)
    l_TextButton_15.MouseButton1Click:Connect(function()
        v33 = GetRoot(l_LocalPlayer_1).Position
        SendNotify("System VR7", "\216\170\217\133 \216\173\217\129\216\184 \216\167\217\132\216\180\217\138\217\131 \216\168\217\136\217\138\217\134\216\170", 5)
    end)
    l_TextButton_13.MouseButton1Click:Connect(function()
        local v523 = nil
        v33 = v523
        SendNotify("System VR7", "\216\170\217\133 \216\173\216\176\217\129 \216\167\217\132\216\180\217\138\217\131 \216\168\217\136\217\138\217\134\216\170", 5)
    end)
    local v524 = true
    local _ = true
    local v526 = {f = 0, b = 0, l = 0, r = 0}
    local v527 = {f = 0, b = 0, l = 0, r = 0}
    local v528 = nil
    local v529 = nil
    l_TextButton_22.MouseButton1Click:Connect(function()
        if game.PlaceId == 11379739543 then
            SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
            l_TextButton_22.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            return 
        else
            ChangeToggleColor(l_TextButton_22)
            if l_TextButton_22.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                v524 = true
                if game:GetService("UserInputService").TouchEnabled then
                    l_ImageButton_3.Visible = true
                end
                local v530 = l_LocalPlayer_1.Character:FindFirstChild("UpperTorso") or l_LocalPlayer_1.Character:FindFirstChild("Torso")
                local v531 = 0
                do
                    local l_v530_0, l_v531_0 = v530, v531
                    local function v536()
                        local v534 = Instance.new("BodyGyro", l_v530_0)
                        v534.P = 90000
                        v534.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
                        v534.cframe = l_v530_0.CFrame
                        local v535 = Instance.new("BodyVelocity", l_v530_0)
                        v535.velocity = Vector3.new(0, 0.1, 0)
                        v535.maxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                        PlayAnim(10714347256, 4, 0)
                        repeat
                            task.wait()
                            l_LocalPlayer_1.Character.Humanoid.PlatformStand = true
                            if v526.l + v526.r == 0 and v526.f + v526.b == 0 then
                                if v526.l + v526.r == 0 and v526.f + v526.b == 0 and l_v531_0 ~= 0 then
                                    l_v531_0 = l_v531_0 - v32 * 0.1
                                    if l_v531_0 < 0 then
                                        l_v531_0 = 0
                                    end
                                end
                            else
                                l_v531_0 = l_v531_0 + v32 * 0.1
                                if v32 < l_v531_0 then
                                    l_v531_0 = v32
                                end
                            end
                            if v526.l + v526.r == 0 and v526.f + v526.b == 0 then
                                if v526.l + v526.r ~= 0 or v526.f + v526.b ~= 0 or l_v531_0 == 0 then
                                    v535.velocity = Vector3.new(0, 0.1, 0)
                                else
                                    v535.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v527.f + v527.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v527.l + v527.r, (v527.f + v527.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * l_v531_0
                                end
                            else
                                v535.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (v526.f + v526.b) + (game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(v526.l + v526.r, (v526.f + v526.b) * 0.2, 0).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * l_v531_0
                                v527 = {f = v526.f, b = v526.b, l = v526.l, r = v526.r}
                            end
                            v534.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((v526.f + v526.b) * 50 * l_v531_0 / v32), 0, 0)
                        until not v524
                        v526 = {f = 0, b = 0, l = 0, r = 0}
                        v527 = {f = 0, b = 0, l = 0, r = 0}
                        l_v531_0 = 0
                        v534:Destroy()
                        v535:Destroy()
                        l_LocalPlayer_1.Character.Humanoid.PlatformStand = false
                    end
                    v528 = l_l_LocalPlayer_1_Mouse_0.KeyDown:connect(function(v537)
                        if v537:lower() == "w" then
                            v526.f = 1
                            if l_LocalPlayer_1.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
                                PlayAnim(282574440, 4.65, 0)
                            else
                                PlayAnim(10714177846, 4.65, 0)
                            end
                        elseif v537:lower() == "s" then
                            v526.b = -1
                            PlayAnim(10147823318, 4.11, 0)
                        elseif v537:lower() ~= "a" then
                            if v537:lower() == "d" then
                                v526.r = 1
                                PlayAnim(10147823318, 4.81, 0)
                            end
                        else
                            v526.l = -1
                            PlayAnim(10147823318, 3.55, 0)
                        end
                    end)
                    v529 = l_l_LocalPlayer_1_Mouse_0.KeyUp:connect(function(v538)
                        if v538:lower() ~= "w" then
                            if v538:lower() == "s" then
                                v526.b = 0
                                PlayAnim(10714347256, 4, 0)
                            elseif v538:lower() == "a" then
                                v526.l = 0
                                PlayAnim(10714347256, 4, 0)
                            elseif v538:lower() == "d" then
                                v526.r = 0
                                PlayAnim(10714347256, 4, 0)
                            end
                        else
                            v526.f = 0
                            PlayAnim(10714347256, 4, 0)
                        end
                    end)
                    v536()
                end
            else
                v524 = false
                l_ImageButton_3.Visible = false
                v528:Disconnect()
                v529:Disconnect()
                StopAnim()
            end
            return 
        end
    end)
    l_TextButton_74.MouseButton1Down:Connect(function()
        keypress("0x41")
    end)
    l_TextButton_74.MouseButton1Up:Connect(function()
        keyrelease("0x41")
    end)
    l_TextButton_77.MouseButton1Down:Connect(function()
        keypress("0x53")
    end)
    l_TextButton_77.MouseButton1Up:Connect(function()
        keyrelease("0x53")
    end)
    l_TextButton_75.MouseButton1Down:Connect(function()
        keypress("0x44")
    end)
    l_TextButton_75.MouseButton1Up:Connect(function()
        keyrelease("0x44")
    end)
    l_TextButton_76.MouseButton1Down:Connect(function()
        keypress("0x57")
    end)
    l_TextButton_76.MouseButton1Up:Connect(function()
        keyrelease("0x57")
    end)
    l_ImageButton_0.MouseButton1Click:Connect(function()
        for _, v540 in ipairs(l_LocalPlayer_1.Backpack:GetChildren()) do
            if v540.Name == "ClickTarget" then
                v540:Destroy()
            end
        end
        for _, v542 in ipairs(l_LocalPlayer_1.Character:GetChildren()) do
            if v542.Name == "ClickTarget" then
                v542:Destroy()
            end
        end
        local l_Tool_1 = Instance.new("Tool")
        l_Tool_1.Name = "ClickTarget"
        l_Tool_1.RequiresHandle = false
        l_Tool_1.TextureId = "rbxassetid://13769558274"
        l_Tool_1.ToolTip = "\216\167\216\174\216\170\216\167\216\177 \216\180\216\174\216\181"
        local function v547()
            local _ = GetRoot(l_LocalPlayer_1)
            local l_Target_0 = l_l_LocalPlayer_1_Mouse_0.Target
            local v546 = nil
            if l_Target_0 and l_Target_0.Parent then
                if l_Target_0.Parent:IsA("Model") then
                    v546 = game.Players:GetPlayerFromCharacter(l_Target_0.Parent)
                elseif l_Target_0.Parent:IsA("Accessory") then
                    v546 = game.Players:GetPlayerFromCharacter(l_Target_0.Parent.Parent)
                end
                if v546 then
                    UpdateTarget(v546)
                end
            end
        end
        l_Tool_1.Activated:Connect(function()
            v547()
        end)
        l_Tool_1.Parent = l_LocalPlayer_1.Backpack
    end)
    l_TextButton_25.MouseButton1Click:Connect(function()
        local v548 = nil
        if v31 ~= v548 then
            ChangeToggleColor(l_TextButton_25)
            l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            if l_TextButton_25.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                if game.PlaceId ~= 11379739543 then
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "System VR7",
                        Text = "\216\167\216\176\216\167 \217\133\216\167\216\183\216\167\216\177 \216\167\217\132\216\167\216\185\216\168 \217\133\216\185\217\134\216\167\217\135\216\167 \216\167\217\132\217\133\216\167\216\168 \217\129\217\138\217\135 \216\173\217\133\216\167\217\138\216\169",
                        Duration = 3
                    })
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid and game.Players.LocalPlayer.Character.Humanoid.RootPart then
                        if game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity.Magnitude < 50 then
                            getgenv().OldPos = game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame
                        end
                        if l_Players_0[v31].Character.Head then
                            workspace.CurrentCamera.CameraSubject = l_Players_0[v31].Character.Head
                        elseif l_Players_0[v31].Character:FindFirstChildOfClass("Accessory"):FindFirstChild("Handle") then
                            workspace.CurrentCamera.CameraSubject = l_Players_0[v31].Character:FindFirstChildOfClass("Accessory"):FindFirstChild("Handle")
                        else
                            workspace.CurrentCamera.CameraSubject = l_Players_0[v31].Character.Humanoid
                        end
                        if not l_Players_0[v31].Character:FindFirstChildWhichIsA("BasePart") then
                            return 
                        else
                            local function v552(v549, v550, v551)
                                game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = CFrame.new(v549.Position) * v550 * v551
                                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CFrame.new(v549.Position) * v550 * v551)
                                game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(90000000, 900000000, 90000000)
                                game.Players.LocalPlayer.Character.Humanoid.RootPart.RotVelocity = Vector3.new(900000000, 900000000, 900000000)
                            end
                            do
                                local l_v552_0 = v552
                                local function v559()
                                    local v554 = 0
                                    getgenv().FPDH = workspace.FallenPartsDestroyHeight
                                    workspace.FallenPartsDestroyHeight = 0 / 0
                                    repeat
                                        task.wait()
                                        pcall(function()
                                            if game.Players.LocalPlayer.Character.Humanoid.RootPart and l_Players_0[v31].Character.Humanoid then
                                                if l_Players_0[v31].Character.Humanoid.RootPart.Velocity.Magnitude < 50 then
                                                    v554 = v554 + 100
                                                    for _, v556 in ipairs({
                                                        Vector3.new(0, 1.5, 0),
                                                        Vector3.new(0, -1.5, 0),
                                                        Vector3.new(2.25, 1.5, -2.25),
                                                        Vector3.new(-2.25, -1.5, 2.25),
                                                        Vector3.new(0, 1.5, 0),
                                                        Vector3.new(0, -1.5, 0)
                                                    }) do
                                                        l_v552_0(l_Players_0[v31].Character.Humanoid.RootPart, CFrame.new(v556) + l_Players_0[v31].Character.Humanoid.MoveDirection * (l_Players_0[v31].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(v554), 0, 0))
                                                        task.wait()
                                                    end
                                                else
                                                    for _, v558 in ipairs({
                                                        {Vector3.new(0, 1.5, l_Players_0[v31].Character.Humanoid.WalkSpeed), math.rad(90)},
                                                        {Vector3.new(0, -1.5, -l_Players_0[v31].Character.Humanoid.WalkSpeed), 0},
                                                        {Vector3.new(0, 1.5, l_Players_0[v31].Character.Humanoid.WalkSpeed), math.rad(90)},
                                                        {
                                                            Vector3.new(0, 1.5, l_Players_0[v31].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25),
                                                            math.rad(90)
                                                        },
                                                        {Vector3.new(0, -1.5, -l_Players_0[v31].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25), 0},
                                                        {
                                                            Vector3.new(0, 1.5, l_Players_0[v31].Character.Humanoid.RootPart.Velocity.Magnitude / 1.25),
                                                            math.rad(90)
                                                        },
                                                        {Vector3.new(0, -1.5, 0), math.rad(90)},
                                                        {Vector3.new(0, -1.5, 0), 0},
                                                        {Vector3.new(0, -1.5, 0), math.rad(-90)},
                                                        {Vector3.new(0, -1.5, 0), 0}
                                                    }) do
                                                        l_v552_0(l_Players_0[v31].Character.Humanoid.RootPart, CFrame.new(v558[1]), CFrame.Angles(v558[2], 0, 0))
                                                        task.wait()
                                                    end
                                                end
                                                game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                                if l_Players_0[v31].Character:FindFirstChild("Head") then
                                                    workspace.CurrentCamera.CameraSubject = l_Players_0[v31].Character.Head
                                                end
                                            end
                                        end)
                                    until l_TextButton_25.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0)
                                end
                                local l_BodyVelocity_0 = Instance.new("BodyVelocity")
                                l_BodyVelocity_0.Name = "Flinger"
                                l_BodyVelocity_0.Parent = game.Players.LocalPlayer.Character.Humanoid.RootPart
                                l_BodyVelocity_0.Velocity = Vector3.new(900000000, 900000000, 900000000)
                                l_BodyVelocity_0.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
                                game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
                                v559()
                                l_BodyVelocity_0:Destroy()
                                game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
                                workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
                                repeat
                                    game.Players.LocalPlayer.Character.Humanoid.RootPart.CFrame = getgenv().OldPos * CFrame.new(0, 0.5, 0)
                                    game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, 0.5, 0))
                                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
                                    table.foreach(game.Players.LocalPlayer.Character:GetChildren(), function(_, v562)
                                        if v562:IsA("BasePart") then
                                            local v563 = Vector3.new()
                                            v562.RotVelocity = Vector3.new()
                                            v562.Velocity = v563
                                        end
                                    end)
                                    task.wait()
                                until (game.Players.LocalPlayer.Character.Humanoid.RootPart.Position - getgenv().OldPos.p).Magnitude < 25
                                workspace.FallenPartsDestroyHeight = getgenv().FPDH
                                if game.Players.LocalPlayer.Character.Humanoid.Sit then
                                    wait(1)
                                    game.Players.LocalPlayer.Character.Humanoid.sit = false
                                end
                            end
                        end
                    end
                else
                    SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
                    l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                end
            end
        end
    end)
    l_TextButton_24.MouseButton1Click:Connect(function()
        local v564 = nil
        if v31 ~= v564 then
            ChangeToggleColor(l_TextButton_24)
            if l_TextButton_24.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                if game.PlaceId == 11379739543 then
                    SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
                    l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                else
                    for _, v566 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                        v566:Stop()
                    end
                    l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    local v567 = -2
                    local v568 = 0.1
                    local v569 = -1
                    do
                        local l_v567_0, l_v568_0, l_v569_0 = v567, v568, v569
                        repeat
                            pcall(function()
                                local v573 = l_Players_0[v31].Character:FindFirstChild("Torso") or l_Players_0[v31].Character:FindFirstChild("UpperTorso")
                                if v573.Name == "Torso" then
                                    l_v569_0 = -0.75
                                end
                                l_LocalPlayer_1.Character.Humanoid.Sit = true
                                GetRoot(l_LocalPlayer_1).CFrame = v573.CFrame * CFrame.new(0, l_v569_0, l_v567_0) * CFrame.Angles(math.rad(270), 0, 0)
                                GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                                l_v567_0 = l_v567_0 + l_v568_0
                                if l_v567_0 >= -1 or l_v567_0 <= -2 then
                                    l_v568_0 = -l_v568_0
                                end
                            end)
                            task.wait()
                        until l_TextButton_24.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                        GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit = false
                    end
                end
            end
        end
    end)
    l_TextButton_23.MouseButton1Click:Connect(function()
        local v574 = nil
        if v31 ~= v574 then
            ChangeToggleColor(l_TextButton_23)
            if l_TextButton_23.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                repeat
                    pcall(function()
                        game.Workspace.CurrentCamera.CameraSubject = l_Players_0[v31].Character.Humanoid
                    end)
                    task.wait()
                until l_TextButton_23.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                game.Workspace.CurrentCamera.CameraSubject = l_LocalPlayer_1.Character.Humanoid
            end
        end
    end)
    l_TextButton_26.MouseButton1Click:Connect(function()
        local v575 = nil
        if v31 ~= v575 then
            ChangeToggleColor(l_TextButton_26)
            l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            if l_TextButton_26.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                if game.PlaceId ~= 11379739543 then
                    getgenv().oldcf = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                    SendNotify("System VR7", "\216\167\217\132\216\174\217\138\216\167\216\177 \216\176\216\167 \217\138\216\179\217\133\216\173\217\132\217\131 \216\167\217\134\217\131 \216\170\216\179\217\133\216\185 \216\167\217\132\216\180\216\174\216\181 \217\136\217\135\217\136 \217\138\216\179\217\133\216\185\217\131 \217\132\217\133\216\167 \216\170\216\170\217\131\217\132\217\133 \217\133\216\167\217\138\217\131", 3)
                    repeat
                        task.wait()
                        GetRoot(l_LocalPlayer_1).CFrame = l_Players_0[v31].Character.Head.CFrame * CFrame.new(0, -20, 0) * CFrame.Angles(math.rad(180), 0, 0)
                        game.Workspace.CurrentCamera.CameraSubject = l_Players_0[v31].Character.Humanoid
                    until l_TextButton_26.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                    game.Workspace.CurrentCamera.CameraSubject = GetRoot(l_LocalPlayer_1).Parent.Humanoid
                    TeleportTO(getgenv().oldcf.X, getgenv().oldcf.Y, getgenv().oldcf.Z, "pos", "safe")
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
                else
                    SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
                    l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                end
            end
        end
    end)
    l_TextButton_27.MouseButton1Click:Connect(function()
        local v576 = nil
        if v31 ~= v576 then
            ChangeToggleColor(l_TextButton_27)
            if l_TextButton_27.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                if game.PlaceId == 11379739543 then
                    repeat
                        pcall(function()
                            local l_Character_3 = l_Players_0[v31].Character
                            if l_Character_3 and GetRoot(l_LocalPlayer_1) then
                                local v578 = l_Character_3:FindFirstChild("Torso") or l_Character_3:FindFirstChild("UpperTorso")
                                if v578 then
                                    local v579 = GetRoot(l_LocalPlayer_1)
                                    v579.Velocity = Vector3.new()
                                    local v580 = math.sin(tick() * 20) * 0.6
                                    v579.CFrame = v578.CFrame * CFrame.new(0, 0, 2 + v580)
                                end
                            end
                        end)
                        workspace.FallenPartsDestroyHeight = 0 / 0
                        task.wait()
                    until l_TextButton_27.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                else
                    repeat
                        pcall(function()
                            local v581 = l_Players_0[v31].Character:FindFirstChild("Torso") or l_Players_0[v31].Character:FindFirstChild("UpperTorso")
                            if GetRoot(l_LocalPlayer_1).Parent.Humanoid.RigType.Name ~= "R15" or not GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit then
                                if GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit and not CheckAnim("148840371") then
                                    PlayAnim(148840371, 0, 3.7)
                                end
                            elseif not CheckAnim("5918726674") then
                                PlayAnim(5918726674, 0, 2)
                            end
                            GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit = true
                            GetRoot(l_LocalPlayer_1).CFrame = v581.CFrame * CFrame.new(0, 0, 1)
                            GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                        end)
                        workspace.FallenPartsDestroyHeight = 0 / 0
                        task.wait()
                    until l_TextButton_27.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                end
                workspace.FallenPartsDestroyHeight = -500
                StopAnim()
                GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit = false
            end
        end
    end)
    l_TextButton_30.MouseButton1Click:Connect(function()
        local v582 = nil
        if v31 ~= v582 then
            ChangeToggleColor(l_TextButton_30)
            if l_TextButton_30.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                if game.PlaceId ~= 11379739543 then
                    l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    repeat
                        pcall(function()
                            local l_Head_0 = l_Players_0[v31].Character.Head
                            l_LocalPlayer_1.Character.Humanoid.Sit = true
                            GetRoot(l_LocalPlayer_1).CFrame = l_Head_0.CFrame * CFrame.new(0, 2, 0)
                            GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                        end)
                        task.wait()
                    until l_TextButton_30.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                    GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit = false
                else
                    SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
                    l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                end
            end
        end
    end)
    l_TextButton_31.MouseButton1Click:Connect(function()
        local v584 = nil
        if v31 ~= v584 then
            ChangeToggleColor(l_TextButton_31)
            l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            if l_TextButton_31.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                if game.PlaceId ~= 11379739543 then
                    for _, v586 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                        v586:Stop()
                    end
                    local v587 = -2
                    local v588 = 0.3
                    do
                        local l_v587_0, l_v588_0 = v587, v588
                        repeat
                            task.wait(0.01)
                            pcall(function()
                                GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit = true
                                GetRoot(l_LocalPlayer_1).CFrame = l_Players_0[v31].Character.Head.CFrame * CFrame.new(0, 0.7, l_v587_0) * CFrame.Angles(0, math.rad(180), 0)
                                GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                                l_v587_0 = l_v587_0 + l_v588_0
                                if l_v587_0 >= -1 or l_v587_0 <= -2 then
                                    l_v588_0 = -l_v588_0
                                end
                            end)
                        until l_TextButton_31.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                        GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit = false
                    end
                else
                    SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
                    l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                end
            end
        end
    end)
    l_TextButton_32.MouseButton1Click:Connect(function()
        local v591 = nil
        if v31 ~= v591 then
            ChangeToggleColor(l_TextButton_32)
            l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            if l_TextButton_32.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                if game.PlaceId ~= 11379739543 then
                    repeat
                        pcall(function()
                            local v592 = GetRoot(l_Players_0[v31])
                            l_LocalPlayer_1.Character.Humanoid.Sit = true
                            GetRoot(l_LocalPlayer_1).CFrame = v592.CFrame * CFrame.new(0, 0, 1.2) * CFrame.Angles(0, -3, 0)
                            GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                        end)
                        task.wait()
                    until l_TextButton_32.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                    GetRoot(l_LocalPlayer_1).Parent.Humanoid.Sit = false
                else
                    SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
                    l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                end
            end
        end
    end)
    l_TextButton_33.MouseButton1Click:Connect(function()
        local v593 = nil
        if v31 ~= v593 then
            ChangeToggleColor(l_TextButton_33)
            l_TextButton_24.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_26.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_25.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_27.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_30.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_31.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            l_TextButton_32.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
            if l_TextButton_33.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                if game.PlaceId ~= 11379739543 then
                    spawn(function()
                        workspace.FallenPartsDestroyHeight = 0 / 0
                        while l_TextButton_33.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) do
                            pcall(function()
                                if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                    if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                                        PlayAnim(72042024, 0.675, 1, true)
                                        wait(0.4)
                                    elseif game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                                        PlayAnim(698251653, 0.6, 0.4, true)
                                        task.wait(0.16)
                                    end
                                end
                            end)
                            task.wait()
                        end
                        StopAnim()
                    end)
                    repeat
                        pcall(function()
                            if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                                local v594 = GetRoot(l_Players_0[v31])
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState("GettingUp")
                                if not game.Players.LocalPlayer.Character.Humanoid.Sit then
                                    game.Players.LocalPlayer.Character.Humanoid.Sit = true
                                end
                                GetRoot(l_LocalPlayer_1).CFrame = v594.CFrame * CFrame.new(0, 1, -3) * CFrame.Angles(0, math.pi, 0)
                                GetRoot(l_LocalPlayer_1).Velocity = Vector3.new(0, 0, 0)
                            end
                        end)
                        task.wait()
                    until l_TextButton_33.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
                    workspace.FallenPartsDestroyHeight = -500
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                else
                    SendNotify("V R 7", "\217\135\216\167\216\176 \216\167\217\132\217\133\216\167\216\168 \217\133\216\173\217\133\217\138 \217\133\217\134 \217\135\216\176\217\135 \216\167\217\132\216\167\217\136\216\167\217\133\216\177", 3)
                    l_TextButton_33.Ticket_Asset.ImageColor3 = Color3.fromRGB(255, 0, 0)
                    return 
                end
            end
        end
    end)
    l_TextButton_28.MouseButton1Click:Connect(function()
        local v595 = nil
        if v31 ~= v595 then
            ChangeToggleColor(l_TextButton_28)
            if l_TextButton_28.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
                TalkRepeater = game:GetService("TextChatService").MessageReceived:Connect(function(v596)
                    if v596.TextSource and v596.TextSource.UserId == l_Players_0[v31].UserId then
                        Send(v596.Text)
                    end
                end)
            elseif TalkRepeater then
                TalkRepeater:Disconnect()
            end
        end
    end)
    l_TextButton_29.MouseButton1Click:Connect(function()
        local v597 = nil
        if v31 ~= v597 then
            TeleportTO(0, 0, 0, l_Players_0[v31], nil)
        end
    end)
    l_TextBox_5.FocusLost:Connect(function()
        local l_Text_8 = l_TextBox_5.Text
        local v599 = v112(l_Text_8)
        UpdateTarget(v599)
    end)
    l_TextButton_55.MouseButton1Click:Connect(function()
        l_ScrollingFrame_6.Visible = false
        l_ScrollingFrame_5.Visible = false
        l_ScrollingFrame_4.Visible = true
    end)
    l_TextButton_54.MouseButton1Click:Connect(function()
        l_ScrollingFrame_6.Visible = false
        l_ScrollingFrame_4.Visible = false
        l_ScrollingFrame_5.Visible = true
    end)
    l_TextButton_34.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_0 = l_LocalPlayer_1.Character.Animate
            l_Animate_0.Disabled = true
            StopAnim()
            l_Animate_0.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
            l_Animate_0.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
            l_Animate_0.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
            l_Animate_0.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
            l_Animate_0.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
            l_Animate_0.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
            l_Animate_0.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_0.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_36.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_1 = l_LocalPlayer_1.Character.Animate
            l_Animate_1.Disabled = true
            StopAnim()
            l_Animate_1.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
            l_Animate_1.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
            l_Animate_1.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
            l_Animate_1.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
            l_Animate_1.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
            l_Animate_1.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
            l_Animate_1.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_1.Disabled = false
            return 
        end
    end)
    l_TextButton_35.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_2 = l_LocalPlayer_1.Character.Animate
            l_Animate_2.Disabled = true
            StopAnim()
            l_Animate_2.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=2510196951"
            l_Animate_2.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=2510197257"
            l_Animate_2.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=2510202577"
            l_Animate_2.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=2510198475"
            l_Animate_2.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=2510197830"
            l_Animate_2.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=2510192778"
            l_Animate_2.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=2510195892"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_2.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_37.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_3 = l_LocalPlayer_1.Character.Animate
            l_Animate_3.Disabled = true
            StopAnim()
            l_Animate_3.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
            l_Animate_3.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
            l_Animate_3.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
            l_Animate_3.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
            l_Animate_3.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
            l_Animate_3.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
            l_Animate_3.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_3.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_38.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_4 = l_LocalPlayer_1.Character.Animate
            l_Animate_4.Disabled = true
            StopAnim()
            l_Animate_4.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
            l_Animate_4.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
            l_Animate_4.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
            l_Animate_4.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
            l_Animate_4.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
            l_Animate_4.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
            l_Animate_4.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_4.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_39.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_5 = l_LocalPlayer_1.Character.Animate
            l_Animate_5.Disabled = true
            StopAnim()
            l_Animate_5.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
            l_Animate_5.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
            l_Animate_5.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
            l_Animate_5.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
            l_Animate_5.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
            l_Animate_5.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
            l_Animate_5.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_5.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_40.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_6 = l_LocalPlayer_1.Character.Animate
            l_Animate_6.Disabled = true
            StopAnim()
            l_Animate_6.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
            l_Animate_6.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
            l_Animate_6.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
            l_Animate_6.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
            l_Animate_6.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
            l_Animate_6.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
            l_Animate_6.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_6.Disabled = false
            return 
        end
    end)
    l_TextButton_53.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_7 = l_LocalPlayer_1.Character.Animate
            l_Animate_7.Disabled = true
            StopAnim()
            l_Animate_7.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
            l_Animate_7.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
            l_Animate_7.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
            l_Animate_7.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
            l_Animate_7.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
            l_Animate_7.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
            l_Animate_7.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_7.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_52.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_8 = l_LocalPlayer_1.Character.Animate
            l_Animate_8.Disabled = true
            StopAnim()
            l_Animate_8.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
            l_Animate_8.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
            l_Animate_8.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
            l_Animate_8.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
            l_Animate_8.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
            l_Animate_8.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
            l_Animate_8.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
            l_Animate_8.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_8.Disabled = false
            return 
        end
    end)
    l_TextButton_41.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_9 = l_LocalPlayer_1.Character.Animate
            l_Animate_9.Disabled = true
            StopAnim()
            l_Animate_9.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
            l_Animate_9.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
            l_Animate_9.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
            l_Animate_9.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
            l_Animate_9.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
            l_Animate_9.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
            l_Animate_9.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_9.Disabled = false
            return 
        end
    end)
    l_TextButton_42.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_10 = l_LocalPlayer_1.Character.Animate
            l_Animate_10.Disabled = true
            StopAnim()
            l_Animate_10.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
            l_Animate_10.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
            l_Animate_10.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
            l_Animate_10.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
            l_Animate_10.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
            l_Animate_10.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
            l_Animate_10.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_10.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_43.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_11 = l_LocalPlayer_1.Character.Animate
            l_Animate_11.Disabled = true
            StopAnim()
            l_Animate_11.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
            l_Animate_11.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
            l_Animate_11.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
            l_Animate_11.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
            l_Animate_11.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
            l_Animate_11.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
            l_Animate_11.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_11.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_44.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_12 = l_LocalPlayer_1.Character.Animate
            l_Animate_12.Disabled = true
            StopAnim()
            l_Animate_12.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
            l_Animate_12.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
            l_Animate_12.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
            l_Animate_12.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
            l_Animate_12.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
            l_Animate_12.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
            l_Animate_12.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_12.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_45.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_13 = l_LocalPlayer_1.Character.Animate
            l_Animate_13.Disabled = true
            StopAnim()
            l_Animate_13.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
            l_Animate_13.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
            l_Animate_13.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
            l_Animate_13.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
            l_Animate_13.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
            l_Animate_13.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
            l_Animate_13.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_13.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_46.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_14 = l_LocalPlayer_1.Character.Animate
            l_Animate_14.Disabled = true
            StopAnim()
            l_Animate_14.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
            l_Animate_14.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
            l_Animate_14.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
            l_Animate_14.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
            l_Animate_14.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
            l_Animate_14.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
            l_Animate_14.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_14.Disabled = false
            return 
        end
    end)
    l_TextButton_47.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_15 = l_LocalPlayer_1.Character.Animate
            l_Animate_15.Disabled = true
            StopAnim()
            l_Animate_15.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
            l_Animate_15.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
            l_Animate_15.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
            l_Animate_15.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
            l_Animate_15.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
            l_Animate_15.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
            l_Animate_15.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_15.Disabled = false
            return 
        end
    end)
    l_TextButton_48.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_16 = l_LocalPlayer_1.Character.Animate
            l_Animate_16.Disabled = true
            StopAnim()
            l_Animate_16.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
            l_Animate_16.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
            l_Animate_16.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
            l_Animate_16.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
            l_Animate_16.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
            l_Animate_16.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
            l_Animate_16.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_16.Disabled = false
            return 
        end
    end)
    l_TextButton_49.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_17 = l_LocalPlayer_1.Character.Animate
            l_Animate_17.Disabled = true
            StopAnim()
            l_Animate_17.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
            l_Animate_17.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
            l_Animate_17.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
            l_Animate_17.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
            l_Animate_17.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
            l_Animate_17.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
            l_Animate_17.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_17.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_50.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_18 = l_LocalPlayer_1.Character.Animate
            l_Animate_18.Disabled = true
            StopAnim()
            l_Animate_18.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4708191566"
            l_Animate_18.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4708192150"
            l_Animate_18.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=4708193840"
            l_Animate_18.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=4708192705"
            l_Animate_18.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=4708188025"
            l_Animate_18.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=4708184253"
            l_Animate_18.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=4708186162"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_18.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_51.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_19 = l_LocalPlayer_1.Character.Animate
            l_Animate_19.Disabled = true
            StopAnim()
            l_Animate_19.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
            l_Animate_19.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
            l_Animate_19.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
            l_Animate_19.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
            l_Animate_19.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
            l_Animate_19.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
            l_Animate_19.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_19.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_56.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_20 = l_LocalPlayer_1.Character.Animate
            l_Animate_20.Disabled = true
            StopAnim()
            l_Animate_20.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
            l_Animate_20.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
            l_Animate_20.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
            l_Animate_20.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
            l_Animate_20.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
            l_Animate_20.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
            l_Animate_20.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_20.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_57.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_21 = l_LocalPlayer_1.Character.Animate
            l_Animate_21.Disabled = true
            StopAnim()
            l_Animate_21.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
            l_Animate_21.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
            l_Animate_21.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
            l_Animate_21.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
            l_Animate_21.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
            l_Animate_21.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
            l_Animate_21.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_21.Disabled = false
            return 
        end
    end)
    l_TextButton_58.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_22 = l_LocalPlayer_1.Character.Animate
            l_Animate_22.Disabled = true
            StopAnim()
            l_Animate_22.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
            l_Animate_22.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
            l_Animate_22.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
            l_Animate_22.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
            l_Animate_22.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
            l_Animate_22.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
            l_Animate_22.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_22.Disabled = false
            return 
        end
    end)
    l_TextButton_59.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_23 = l_LocalPlayer_1.Character.Animate
            l_Animate_23.Disabled = true
            StopAnim()
            l_Animate_23.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
            l_Animate_23.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
            l_Animate_23.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
            l_Animate_23.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
            l_Animate_23.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
            l_Animate_23.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
            l_Animate_23.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_23.Disabled = false
            return 
        end
    end)
    l_TextButton_60.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            local l_Animate_24 = l_LocalPlayer_1.Character.Animate
            l_Animate_24.Disabled = true
            StopAnim()
            l_Animate_24.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
            l_Animate_24.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
            l_Animate_24.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
            l_Animate_24.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
            l_Animate_24.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1150944216"
            l_Animate_24.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
            l_Animate_24.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_24.Disabled = false
            return 
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_61.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            local l_Animate_25 = l_LocalPlayer_1.Character.Animate
            l_Animate_25.Disabled = true
            StopAnim()
            l_Animate_25.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
            l_Animate_25.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=3489171152"
            l_Animate_25.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=3489174223"
            l_Animate_25.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=3489173414"
            l_Animate_25.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
            l_Animate_25.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
            l_Animate_25.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
            l_LocalPlayer_1.Character.Humanoid:ChangeState(3)
            l_Animate_25.Disabled = false
            return 
        end
    end)
    getgenv().CrazyAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v626 = nil
            local l_Animation_1 = Instance.new("Animation")
            l_Animation_1.AnimationId = "rbxassetid://10713957138"
            for _, v629 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v629.Animation.AnimationId == l_Animation_1.AnimationId then
                    v629:Stop()
                    getgenv().idkjustcheck = true
                else
                    v629:Stop()
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v626 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_1)
                v626.Priority = Enum.AnimationPriority.Action
                v626.Looped = true
                v626:Play()
                v626:AdjustSpeed(4)
                return 
            end
        end
    end)
    getgenv().B3b3AnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local v630 = nil
            local l_Animation_2 = Instance.new("Animation")
            l_Animation_2.AnimationId = "rbxassetid://13694096724"
            for _, v633 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v633.Animation.AnimationId == l_Animation_2.AnimationId then
                    v633:Stop()
                    getgenv().idkjustcheck = true
                else
                    v633:Stop()
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v630 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_2)
                v630.Priority = Enum.AnimationPriority.Action
                v630.Looped = false
                v630:Play()
                v630.TimePosition = 2
                v630:AdjustSpeed(0)
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    getgenv().Sb3awyAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v634 = nil
            local l_Animation_3 = Instance.new("Animation")
            l_Animation_3.AnimationId = "rbxassetid://10214311282"
            for _, v637 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v637.Animation.AnimationId == l_Animation_3.AnimationId then
                    v637:Stop()
                    getgenv().idkjustcheck = true
                else
                    v637:Stop()
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v634 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_3)
                v634.Priority = Enum.AnimationPriority.Action
                v634.Looped = false
                v634:Play()
                v634.TimePosition = 0.8
                v634:AdjustSpeed(0)
                return 
            end
        end
    end)
    getgenv().ZombieWalkAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local _ = nil
            local l_Animation_4 = Instance.new("Animation")
            l_Animation_4.AnimationId = "rbxassetid://708553116"
            for _, v641 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v641.Animation.AnimationId ~= l_Animation_4.AnimationId then
                    v641:Stop()
                else
                    v641:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_4):Play(0.1, 1, 1)
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    getgenv().AhmAhmAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local v642 = nil
            local l_Animation_5 = Instance.new("Animation")
            l_Animation_5.AnimationId = "rbxassetid://120452122477461"
            for _, v645 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v645.Animation.AnimationId == l_Animation_5.AnimationId then
                    v645:Stop()
                    getgenv().idkjustcheck = true
                else
                    v645:Stop()
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v642 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_5)
                v642.Looped = true
                v642:Play(0.1, 1, 1)
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    getgenv().FlingArmsAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v646 = nil
            local l_Animation_6 = Instance.new("Animation")
            l_Animation_6.AnimationId = "rbxassetid://754656200"
            for _, v649 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v649.Animation.AnimationId ~= l_Animation_6.AnimationId then
                    v649:Stop()
                else
                    v649:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v646 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_6)
                v646.Looped = true
                v646:Play(0.1, 1, 3)
                return 
            end
        end
    end)
    getgenv().DolphinAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local v650 = nil
            local l_Animation_7 = Instance.new("Animation")
            l_Animation_7.AnimationId = "rbxassetid://10714068222"
            for _, v653 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v653.Animation.AnimationId == l_Animation_7.AnimationId then
                    v653:Stop()
                    getgenv().idkjustcheck = true
                else
                    v653:Stop()
                end
            end
            if not getgenv().idkjustcheck then
                v650 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_7)
                v650.Priority = Enum.AnimationPriority.Action
                v650.Looped = true
                v650:Play()
                v650:AdjustSpeed(2)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    getgenv().FaintAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v654 = nil
            local l_Animation_8 = Instance.new("Animation")
            l_Animation_8.AnimationId = "rbxassetid://181526230"
            for _, v657 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v657.Animation.AnimationId ~= l_Animation_8.AnimationId then
                    v657:Stop()
                else
                    v657:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v654 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_8)
                v654.Priority = Enum.AnimationPriority.Action
                v654.Looped = false
                v654:Play()
                v654.TimePosition = 0.1
                v654:AdjustSpeed(0)
                return 
            end
        end
    end)
    getgenv().ArmcutAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            getgenv().idkjustcheck = false
            local v658 = nil
            local l_Animation_9 = Instance.new("Animation")
            l_Animation_9.AnimationId = "rbxassetid://33169583"
            for _, v661 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v661.Animation.AnimationId ~= l_Animation_9.AnimationId then
                    v661:Stop()
                else
                    v661:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v658 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_9)
                v658.Priority = Enum.AnimationPriority.Action
                v658.Looped = false
                v658:Play()
                v658.TimePosition = 0.64
                v658:AdjustSpeed(0)
                SendNotify("System VR7", "\217\135\216\167\216\176 \216\167\217\132\216\167\217\134\217\133\217\138\216\180\217\134 \217\133\217\129\217\138\216\175 \216\168\217\133\216\167\216\168 \216\167\217\132\217\130\217\134\216\167\216\168\217\132", 3)
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        end
    end)
    getgenv().BoxesAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            getgenv().idkjustcheck = false
            local v662 = nil
            local l_Animation_10 = Instance.new("Animation")
            l_Animation_10.AnimationId = "rbxassetid://126753849"
            for _, v665 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v665.Animation.AnimationId ~= l_Animation_10.AnimationId then
                    v665:Stop()
                else
                    v665:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if not getgenv().idkjustcheck then
                v662 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_10)
                v662.Priority = Enum.AnimationPriority.Action
                v662.Looped = true
                v662:Play()
                v662:AdjustSpeed(3)
                SendNotify("System VR7", "\217\135\216\167\216\176 \216\167\217\132\216\167\217\134\217\133\217\138\216\180\217\134 \217\133\217\129\217\138\216\175 \216\168\217\133\216\167\216\168 \216\167\217\132\217\130\217\134\216\167\216\168\217\132", 3)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        end
    end)
    getgenv().SaluteAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local v666 = nil
            local l_Animation_11 = Instance.new("Animation")
            l_Animation_11.AnimationId = "rbxassetid://10714389988"
            for _, v669 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v669.Animation.AnimationId == l_Animation_11.AnimationId then
                    v669:Stop()
                    getgenv().idkjustcheck = true
                else
                    v669:Stop()
                end
            end
            if not getgenv().idkjustcheck then
                v666 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_11)
                v666.Priority = Enum.AnimationPriority.Action
                v666.Looped = false
                v666:Play()
                v666.TimePosition = math.max(v666.Length - 1, 0)
                v666:AdjustSpeed(0)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    getgenv().DoggyAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local v670 = nil
            local l_Animation_12 = Instance.new("Animation")
            l_Animation_12.AnimationId = "rbxassetid://13694096724"
            for _, v673 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v673.Animation.AnimationId ~= l_Animation_12.AnimationId then
                    v673:Stop()
                else
                    v673:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if not getgenv().idkjustcheck then
                v670 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_12)
                v670.Priority = Enum.AnimationPriority.Action
                v670.Looped = false
                v670:Play()
                v670.TimePosition = 3.45
                v670:AdjustSpeed(0)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    getgenv().SleepyAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local v674 = nil
            local l_Animation_13 = Instance.new("Animation")
            l_Animation_13.AnimationId = "rbxassetid://10714360343"
            for _, v677 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v677.Animation.AnimationId == l_Animation_13.AnimationId then
                    v677:Stop()
                    getgenv().idkjustcheck = true
                else
                    v677:Stop()
                end
            end
            if not getgenv().idkjustcheck then
                v674 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_13)
                v674.Priority = Enum.AnimationPriority.Action
                v674.Looped = false
                v674:Play()
                v674.TimePosition = 0.37
                v674:AdjustSpeed(0)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    getgenv().HugAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v678 = nil
            local l_Animation_14 = Instance.new("Animation")
            l_Animation_14.AnimationId = "rbxassetid://185299570"
            for _, v681 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v681.Animation.AnimationId == l_Animation_14.AnimationId then
                    v681:Stop()
                    getgenv().idkjustcheck = true
                else
                    v681:Stop()
                end
            end
            if not getgenv().idkjustcheck then
                v678 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_14)
                v678.Priority = Enum.AnimationPriority.Action
                v678.Looped = false
                v678:Play()
                v678:AdjustSpeed(0)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        end
    end)
    getgenv().BangAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v682 = nil
            local l_Animation_15 = Instance.new("Animation")
            l_Animation_15.AnimationId = "rbxassetid://148840371"
            for _, v685 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v685.Animation.AnimationId ~= l_Animation_15.AnimationId then
                    v685:Stop()
                else
                    v685:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if not getgenv().idkjustcheck then
                v682 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_15)
                v682.Priority = Enum.AnimationPriority.Action
                v682.Looped = true
                v682:Play()
                v682:AdjustSpeed(2.5)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        end
    end)
    getgenv().IllusionAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v686 = nil
            local l_Animation_16 = Instance.new("Animation")
            l_Animation_16.AnimationId = "rbxassetid://215384594"
            for _, v689 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v689.Animation.AnimationId ~= l_Animation_16.AnimationId then
                    v689:Stop()
                else
                    v689:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if not getgenv().idkjustcheck then
                v686 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_16)
                v686.Priority = Enum.AnimationPriority.Action
                v686.Looped = true
                v686:Play()
                v686:AdjustSpeed(7)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        end
    end)
    getgenv().FloatingHeadAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            getgenv().idkjustcheck = false
            local v690 = nil
            local l_Animation_17 = Instance.new("Animation")
            l_Animation_17.AnimationId = "rbxassetid://121572214"
            for _, v693 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v693.Animation.AnimationId ~= l_Animation_17.AnimationId then
                    v693:Stop()
                else
                    v693:Stop()
                    getgenv().idkjustcheck = true
                end
            end
            if not getgenv().idkjustcheck then
                v690 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_17)
                v690.Priority = Enum.AnimationPriority.Action
                v690.Looped = false
                v690:Play()
                v690.TimePosition = 1
                v690:AdjustSpeed(0)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        end
    end)
    getgenv().JerkingAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v694 = nil
            local l_Animation_18 = Instance.new("Animation")
            l_Animation_18.AnimationId = "rbxassetid://204292303"
            local l_Animation_19 = Instance.new("Animation")
            l_Animation_19.AnimationId = "rbxassetid://181526230"
            for _, v698 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v698.Animation.AnimationId == l_Animation_18.AnimationId or v698.Animation.AnimationId == l_Animation_19.AnimationId then
                    v698:Stop()
                    getgenv().idkjustcheck = true
                else
                    v698:Stop()
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                local l_Humanoid_3 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
                v694 = l_Humanoid_3:LoadAnimation(l_Animation_18)
                v694.Priority = Enum.AnimationPriority.Action
                v694.Looped = true
                v694:Play(0.1, 1, 3)
                Track1 = l_Humanoid_3:LoadAnimation(l_Animation_19)
                Track1.Priority = Enum.AnimationPriority.Action
                Track1.Looped = true
                Track1:Play(0.1, 1, 1)
                return 
            end
        end
    end)
    getgenv().BackpackHeadAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v700 = nil
            local l_Animation_20 = Instance.new("Animation")
            l_Animation_20.AnimationId = "rbxassetid://68339848"
            for _, v703 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v703.Animation.AnimationId == l_Animation_20.AnimationId then
                    v703:Stop()
                    getgenv().idkjustcheck = true
                else
                    v703:Stop()
                end
            end
            if not getgenv().idkjustcheck then
                v700 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_20)
                v700.Priority = Enum.AnimationPriority.Action
                v700.Looped = false
                v700:Play()
                v700.TimePosition = 1
                v700:AdjustSpeed(0)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        end
    end)
    getgenv().InsaneAnimationR6.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R6", 7)
            return 
        else
            getgenv().idkjustcheck = false
            local v704 = nil
            local l_Animation_21 = Instance.new("Animation")
            l_Animation_21.AnimationId = "rbxassetid://33796059"
            for _, v707 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v707.Animation.AnimationId == l_Animation_21.AnimationId then
                    v707:Stop()
                    getgenv().idkjustcheck = true
                else
                    v707:Stop()
                end
            end
            if not getgenv().idkjustcheck then
                v704 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_21)
                v704.Priority = Enum.AnimationPriority.Action
                v704.Looped = true
                v704:Play()
                v704:AdjustSpeed(10)
                return 
            else
                getgenv().idkjustcheck = false
                return 
            end
        end
    end)
    getgenv().HugAnimationR15.MouseButton1Click:Connect(function()
        if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            getgenv().idkjustcheck = false
            local v708 = nil
            local l_Animation_22 = Instance.new("Animation")
            l_Animation_22.AnimationId = "rbxassetid://10714377090"
            for _, v711 in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
                if v711.Animation.AnimationId == l_Animation_22.AnimationId then
                    v711:Stop()
                    getgenv().idkjustcheck = true
                else
                    v711:Stop()
                end
            end
            if getgenv().idkjustcheck then
                getgenv().idkjustcheck = false
                return 
            else
                v708 = game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(l_Animation_22)
                v708.Priority = Enum.AnimationPriority.Action
                v708.Looped = false
                v708:Play()
                v708.TimePosition = 0.48
                v708:AdjustSpeed(0)
                return 
            end
        else
            SendNotify("System VR7", "\217\138\216\172\216\168 \216\167\217\134 \216\170\217\131\217\136\217\134 R15", 7)
            return 
        end
    end)
    l_TextButton_62.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_62)
        if l_TextButton_62.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(0, 255, 0) then
            _G.AntiFlingToggled = false
        else
            _G.AntiFlingToggled = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/AntiFling"))()
        end
    end)
    local v712 = false
    l_TextButton_63.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_63)
        if l_TextButton_63.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
            SendNotify("System VR7", "\217\133\217\134 \216\167\217\132\217\133\217\133\217\131\217\134 \216\167\217\132\217\133\216\182\216\167\216\175 \217\133\216\167\217\138\217\131\216\180\217\129 \216\168\216\185\216\182 \216\167\217\134\217\136\216\167\216\185 \216\179\217\131\216\177\216\168\216\170\216\167\216\170 \216\167\217\132\216\167\216\186\216\170\216\181\216\167\216\168", 7)
            repeat
                pcall(function()
                    workspace.FallenPartsDestroyHeight = 0 / 0
                    Character = l_LocalPlayer_1.Character
                    Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid")
                    RootPart = Humanoid and Humanoid.RootPart
                    if v132() and Humanoid and RootPart and not v712 then
                        v712 = true
                        local v713 = RootPart.Velocity.Magnitude < 50 and RootPart.CFrame or l_CurrentCamera_0.Focus
                        local v714 = tick()
                        repeat
                            RootPart.CFrame = CFrame.new(0, -499, 0) * CFrame.Angles(math.rad(90), 0, 0)
                            RootPart.AssemblyLinearVelocity = Vector3.new()
                            task.wait()
                        until tick() > v714 + 1
                        RootPart.AssemblyLinearVelocity = Vector3.new()
                        RootPart.CFrame = v713
                        Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                        v712 = false
                    end
                end)
                task.wait()
            until l_TextButton_63.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0)
            workspace.FallenPartsDestroyHeight = -500
        end
    end)
    local v715 = nil
    l_TextButton_64.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_64)
        if l_TextButton_64.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
            v715 = l_LocalPlayer_1.Idled:Connect(function()
                local l_VirtualUser_0 = game:GetService("VirtualUser")
                l_VirtualUser_0:CaptureController()
                l_VirtualUser_0:ClickButton2(Vector2.new())
            end)
        else
            v715:Disconnect()
        end
    end)
    l_TextButton_65.MouseButton1Click:Connect(function()
        ChangeToggleColor(l_TextButton_65)
        if l_TextButton_65.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
            local l_Sky_0 = Instance.new("Sky")
            local l_BloomEffect_0 = Instance.new("BloomEffect")
            local l_BlurEffect_0 = Instance.new("BlurEffect")
            local l_ColorCorrectionEffect_0 = Instance.new("ColorCorrectionEffect")
            local l_SunRaysEffect_0 = Instance.new("SunRaysEffect")
            l_Lighting_0.Brightness = 2.25
            l_Lighting_0.ExposureCompensation = 0.1
            l_Lighting_0.ClockTime = 17.55
            l_Sky_0.SkyboxBk = "http://www.roblox.com/asset/?id=144933338"
            l_Sky_0.SkyboxDn = "http://www.roblox.com/asset/?id=144931530"
            l_Sky_0.SkyboxFt = "http://www.roblox.com/asset/?id=144933262"
            l_Sky_0.SkyboxLf = "http://www.roblox.com/asset/?id=144933244"
            l_Sky_0.SkyboxRt = "http://www.roblox.com/asset/?id=144933299"
            l_Sky_0.SkyboxUp = "http://www.roblox.com/asset/?id=144931564"
            l_Sky_0.StarCount = 5000
            l_Sky_0.SunAngularSize = 5
            l_Sky_0.Parent = l_Lighting_0
            l_BloomEffect_0.Intensity = 0.3
            l_BloomEffect_0.Size = 10
            l_BloomEffect_0.Threshold = 0.8
            l_BloomEffect_0.Parent = l_Lighting_0
            l_BlurEffect_0.Size = 5
            l_BlurEffect_0.Parent = l_Lighting_0
            l_ColorCorrectionEffect_0.Brightness = 0
            l_ColorCorrectionEffect_0.Contrast = 0.1
            l_ColorCorrectionEffect_0.Saturation = 0.25
            l_ColorCorrectionEffect_0.TintColor = Color3.fromRGB(255, 255, 255)
            l_ColorCorrectionEffect_0.Parent = l_Lighting_0
            l_SunRaysEffect_0.Intensity = 0.1
            l_SunRaysEffect_0.Spread = 0.8
            l_SunRaysEffect_0.Parent = l_Lighting_0
        else
            for _, v723 in pairs(l_Lighting_0:GetChildren()) do
                v723:Destroy()
            end
            l_Lighting_0.Brightness = 2
            l_Lighting_0.ExposureCompensation = 0
        end
    end)
    l_TextButton_66.MouseButton1Click:Connect(function()
        if l_TextButton_65.Ticket_Asset.ImageColor3 ~= Color3.fromRGB(255, 0, 0) then
            SendNotify("System VR7", "\216\177\216\172\216\167\216\161\216\167 \217\130\217\133 \216\168\216\167\216\183\217\129\216\167\216\161 \216\167\217\132\216\180\216\167\216\175\216\177", 5)
        else
            game:GetService("Lighting").ClockTime = 14
        end
    end)
    l_TextButton_67.MouseButton1Click:Connect(function()
        if l_TextButton_65.Ticket_Asset.ImageColor3 == Color3.fromRGB(255, 0, 0) then
            game:GetService("Lighting").ClockTime = 19
        else
            SendNotify("System VR7", "\216\177\216\172\216\167\216\161\216\167 \217\130\217\133 \216\168\216\167\216\183\217\129\216\167\216\161 \216\167\217\132\216\180\216\167\216\175\216\177", 5)
        end
    end)
    l_TextButton_69.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end)
    l_TextButton_72.MouseButton1Click:Connect(function()
        if not v35 then
            v35 = true
            SendNotify("System VR7", "\216\172\216\167\216\177\217\138 \216\170\216\173\217\133\217\138\217\132 \216\167\217\132\216\179\217\131\216\177\216\168\216\170.\nEdited By: Hussien#5033")
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Free%20Dances"))()
        end
    end)
    l_TextButton_68.MouseButton1Click:Connect(function()
        if queue_on_teleport then
            queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/VR7ss/OMK/refs/heads/main/VR7-ON-TOP\"))()")
        end
        game:GetService("TeleportService"):TeleportCancel()
        wait(0.1)
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, l_LocalPlayer_1)
    end)
    l_TextButton_71.MouseButton1Click:Connect(function()
        SendNotify("System VR7", " \217\132\216\167\217\138\217\136\216\172\216\175 \216\167\216\185\217\132\216\167\217\134 \216\173\216\167\217\132\217\138\216\167\n \216\167\216\176\216\167 \216\170\216\168\217\138 \217\134\216\185\217\132\217\134 \217\132\217\131 \216\170\217\129\216\182\217\132 \216\175\216\179\217\131\217\136\216\177\216\175 VR7", 5)
    end)
    l_TextButton_70.MouseButton1Click:Connect(function()
        if queue_on_teleport then
            queue_on_teleport("loadstring(game:HttpGet(\"https://raw.githubusercontent.com/VR7ss/OMK/refs/heads/main/VR7-ON-TOP\"))()")
        end
        local v724 = {MaxStore = 3600, CheckInterval = 1, TeleportInterval = 1}
        local l_HttpService_1 = game:GetService("HttpService")
        local l_TeleportService_0 = game:GetService("TeleportService")
        local l_LocalPlayer_6 = game:GetService("Players").LocalPlayer
        local l_PlaceId_0 = game.PlaceId
        local l_JobId_0 = game.JobId
        local v730 = "ServerHop"
        local v731 = string.format("%s\\%s.json", v730, tostring(l_PlaceId_0))
        local v732 = {Start = tick(), Jobs = {}}
        if not isfolder(v730) then
            makefolder(v730)
        end
        if isfile(v731) then
            local v733 = l_HttpService_1:JSONDecode(readfile(v731))
            if tick() - v733.Start < v724.MaxStore then
                v732 = v733
            end
        end
        if not table.find(v732.Jobs, l_JobId_0) then
            table.insert(v732.Jobs, l_JobId_0)
        end
        writefile(v731, l_HttpService_1:JSONEncode(v732))
        local v734 = {}
        local v735 = ""
        while v735 and #v734 <= 0 and task.wait(v724.CheckInterval / 1000) do
            local v736 = (request or l_HttpService_1.RequestAsync)({
                Url = "https://games.roblox.com/v1/games/" .. l_PlaceId_0 .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true&cursor=" .. v735,
                Method = "GET"
            })
            local l_status_1, l_result_1 = pcall(function()
                return l_HttpService_1:JSONDecode(v736.Body)
            end)
            if not l_status_1 or not l_result_1 or not l_result_1.data then
                break
            else
                for _, v740 in pairs(l_result_1.data) do
                    if typeof(v740) == "table" and v740.id and tonumber(v740.playing) and tonumber(v740.maxPlayers) and v740.playing < v740.maxPlayers and not table.find(v732.Jobs, v740.id) then
                        table.insert(v734, 1, v740.id)
                    end
                end
                v735 = l_result_1.nextPageCursor or nil
            end
        end
        while #v734 > 0 and task.wait(v724.TeleportInterval / 1000) do
            l_TeleportService_0:TeleportToPlaceInstance(l_PlaceId_0, v734[math.random(1, #v734)], l_LocalPlayer_6)
        end
    end)
    l_TextBox_6.FocusLost:Connect(function()
        Send(v76(l_TextBox_6.Text))
        l_TextBox_6.Text = ""
    end)
    game:GetService("Players").PlayerAdded:Connect(function(v741)
        if ChatRepeaterEnabled and v741 ~= game:GetService("Players").LocalPlayer then
            local v743 = v741.Chatted:Connect(function(v742)
                Send(v742)
            end)
            table.insert(v37, v743)
        end
    end)
    l_TextButton_73.MouseButton1Click:Connect(function()
        local l_LocalPlayer_7 = game.Players.LocalPlayer
        local v745 = Instance.new("ScreenGui", l_LocalPlayer_7:WaitForChild("PlayerGui"))
        v745.ResetOnSpawn = false
        v745.IgnoreGuiInset = true
        local v746 = {}
        for _, v748 in pairs(game.CoreGui:GetDescendants()) do
            if v748:IsA("ScreenGui") and v748 ~= v745 and v748.Enabled then
                table.insert(v746, v748)
                v748.Enabled = false
            end
        end
        for _, v750 in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
            if v750:IsA("ScreenGui") and v750 ~= v745 and v750.Enabled then
                table.insert(v746, v750)
                v750.Enabled = false
            end
        end
        local v751 = Instance.new("Frame", v745)
        v751.Size = UDim2.new(1, 0, 1, 0)
        v751.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        v751.BorderSizePixel = 0
        v751.ZIndex = 10
        local v752 = Instance.new("TextLabel", v751)
        v752.Size = UDim2.new(0.8, 0, 0.6, 0)
        v752.Position = UDim2.new(0.1, 0, 0.2, 0)
        v752.Text = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hm5011/hussain/refs/heads/main/Warn%20Message"))()
        v752.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
        v752.TextScaled = true
        v752.BackgroundTransparency = 1
        v752.Font = Enum.Font.SourceSansBold
        v752.TextWrapped = true
        v752.ZIndex = 11
        local v753 = Instance.new("TextLabel", v751)
        v753.Size = UDim2.new(0.2, 0, 0.1, 0)
        v753.Position = UDim2.new(0.05, 0, 0.85, 0)
        v753.TextColor3 = Color3.fromRGB(l_r_0, l_g_0, l_b_0)
        v753.TextScaled = true
        v753.BackgroundTransparency = 1
        v753.Font = Enum.Font.SourceSansBold
        v753.Text = "20"
        v753.ZIndex = 12
        for v754 = 20, 0, -1 do
            v753.Text = tostring(v754)
            wait(1)
        end
        pcall(function()
            v745:Destroy()
            for _, v756 in pairs(v746) do
                v756.Enabled = true
            end
        end)
    end)
    l_Players_0.PlayerRemoving:Connect(function(v757)
        pcall(function()
            if v757.Name == v31 then
                UpdateTarget(nil)
                SendNotify("System VR7", "\216\167\217\132\216\167\216\185\216\168 \216\174\216\177\216\172 \216\167\217\136 \216\183\217\132\216\185 \217\136\216\175\216\174\217\132.", 5)
            end
        end)
    end)
    l_LocalPlayer_1.CharacterAdded:Connect(function(v758)
        task.wait(GetPing() + 0.1)
        v758:WaitForChild("Humanoid")
        if v33 ~= "Humanoid" then
            TeleportTO(v33.X, v33.Y, v33.Z, "pos", "safe")
        end
        if l_TextButton_22.Ticket_Asset.ImageColor3 == Color3.fromRGB(0, 255, 0) then
            ChangeToggleColor(l_TextButton_22)
            v524 = false
            l_ImageButton_3.Visible = false
            v528:Disconnect()
            v529:Disconnect()
            SendNotify("System VR7", "\216\170\217\133 \216\167\217\138\217\130\216\167\217\129 \216\167\217\132\216\183\217\138\216\177\216\167\217\134 \216\168\216\179\216\168\216\168 \216\167\217\134\217\131 \217\130\216\175 \217\133\216\170", 5)
        end
    end)
    l_ImageButton_4.MouseButton1Click:Connect(function()
        l_ImageLabel_0.Visible = not l_ImageLabel_0.Visible
    end)
    game:GetService("UserInputService").InputBegan:Connect(function(v759, v760)
        if v760 then
            return 
        else
            if v759.KeyCode == Enum.KeyCode.B then
                l_ImageLabel_0.Visible = not l_ImageLabel_0.Visible
            end
            return 
        end
    end)
    local v761 = "TweenPosition"
    local l_l_ImageLabel_0_0 = l_ImageLabel_0
    l_ImageLabel_0[v761](l_l_ImageLabel_0_0, UDim2.new(0.5, 0, 0.5, 0))
    pcall(function()
        if not _G.Zarba then
            _G.Zarba = true
            local v943 = (function()
                local v763 = {
                    Default = "000000",
                    Aqua = "1ABC9C",
                    DarkAqua = "11806A",
                    Green = "57F287",
                    DarkGreen = "1F8B4C",
                    Blue = "3498DB",
                    DarkBlue = "206694",
                    Purple = "9B59B6",
                    DarkPurple = "71368A",
                    LuminousVividPink = "E91E63",
                    DarkVividPink = "AD1457",
                    Gold = "F1C40F",
                    DarkGold = "C27C0E",
                    Orange = "E67E22",
                    DarkOrange = "A84300",
                    Red = "ED4245",
                    DarkRed = "992D22",
                    Grey = "95A5A6",
                    DarkGrey = "979C9F",
                    DarkerGrey = "7F8C8D",
                    LightGrey = "BCC0C0",
                    Navy = "34495E",
                    DarkNavy = "2C3E50",
                    Yellow = "FFFF00",
                    White = "FFFFFF",
                    Greyple = "99AAb5",
                    Black = "23272A",
                    DarkButNotBlack = "2C2F33",
                    NotQuiteBlack = "23272A",
                    Blurple = "5865F2",
                    Fuchsia = "EB459E"
                }
        
