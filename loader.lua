repeat
    wait()
until game:IsLoaded()
game.StarterGui:SetCore("SendNotification", {
    Title = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    Text = "Loading the script",
    Duration = 10
})

local A = loadstring(game:HttpGet("https://raw.githubusercontent.com/ayment/Roblox-Scripts/main/gamelist.lua"))()
getgenv().Get =
    setmetatable(
    {},
    {
        __index = function(A, B)
            return game:GetService(B)
        end
    }
)

local queue_on_teleport =
   fluxus and fluxus.queue_on_teleport or queue_on_teleport or
    syn and
        syn.queue_on_teleport [[
       repeat wait() until game:IsLoaded() wait(5) print("ServerHoped or rejoined")
       loadstring(game:HttpGet('https://raw.githubusercontent.com/ayment/Roblox-Scripts/main/load.lua'))()]]

for i, v in pairs(Games) do
    if i == game.PlaceId then
        loadstring(game:HttpGet(v))()
    end
end
