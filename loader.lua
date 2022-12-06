repeat
    wait()
until game:IsLoaded()
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
for i, v in pairs(Games) do
    if i == game.PlaceId then
        loadstring(game:HttpGet(v))()
    end
end
