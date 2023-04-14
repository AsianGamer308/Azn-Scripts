local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()
local w = Library:Window("Buff Stack by Azn")
local player = game:GetService("Players").LocalPlayer
w:Toggle("this first", function(value)
getgenv().ok = value
while getgenv().ok do task.wait()
for _, item in pairs(player.Character:GetChildren()) do
        if string.find(item.Name, player.Name) then
        item:Destroy()
    end
end
end
end)

w:Toggle("this second", function(value)
getgenv().ff = value
while getgenv().ff do task.wait(.3)
local backpack = player.Backpack
for _, item in pairs(backpack:GetChildren()) do
    if string.find(item.Name, "'s", 1, true) then
game.ReplicatedStorage.Remotes.Server.Initiate_Server:FireServer(item.Name, true)
end
end
end
end)
