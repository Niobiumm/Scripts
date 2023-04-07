local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local char = game.Players.LocalPlayer.Name


_G.autowin = false
_G.autoreb = false

	local Window = Rayfield:CreateWindow({
        Name = GameName.." | "..identifyexecutor(),
        LoadingTitle = "Welcome to my first script!",
        LoadingSubtitle = "by luh(ZeusBahiano)",
        ConfigurationSaving = {
                Enabled = false,
                FolderName = nil,
                FileName = "epoc"
            },
                Discord = {
                    Enabled = false,
                    Invite = "",
                    RememberJoins = true
                },
            KeySystem = false,
            KeySettings = {
                Title = "",
                Subtitle = "",
                Note = "",
                FileName = "",
                SaveKey = true,
                GrabKeyFromSite = false,
                Key = ""
            }
        })
--wins/rebirths
    local Tab = Window:CreateTab("Farming", 10058434487)
    local Toggle = Tab:CreateToggle({
        Name = "Auto Wins",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
    _G.autowin = Value
        while _G.autowin == true do
            firetouchinterest(game:GetService("Workspace")[char].HumanoidRootPart, game:GetService("Workspace").Wins.Stage8, 0)
                task.wait(1)
            firetouchinterest(game:GetService("Workspace")[char].HumanoidRootPart, game:GetService("Workspace").Wins.Stage8, 1)
        end
    end
})
    local Toggle = Tab:CreateToggle({
        Name = "Auto Rebirth",
        CurrentValue = false,
        Flag = "Toggle1",
        Callback = function(Value)
            repeat task.wait(1) until game.Players.LocalPlayer.leaderstats.Wins.Value > 50000
        _G.autoreb = Value
        while _G.autoreb == true do
            firetouchinterest(game:GetService("Workspace")[char].HumanoidRootPart, game:GetService("Workspace").Model.RebirthTouch, 0)
             task.wait(1)
            firetouchinterest(game:GetService("Workspace")[char].HumanoidRootPart, game:GetService("Workspace").Model.RebirthTouch, 1)
	    end
    end
})
--eggs
local Tab = Window:CreateTab("Eggs", 10058434487)
local Button = Tab:CreateButton({
    Name = "Starter egg",
    Callback = function()
        local args = {
            [1] = "Starter",
            [2] = "Single"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("EggOpened"):InvokeServer(unpack(args))        
    end,
})
