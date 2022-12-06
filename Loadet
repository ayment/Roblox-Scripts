repeat
    wait()
until game:IsLoaded()
local A = loadstring(game:HttpGet("https://raw.githubusercontent.com/ayment/test/main/Gamelist"))()
getgenv().Get =
    setmetatable(
    {},
    {
        __index = function(A, B)
            return game:GetService(B)
        end
    }
)
