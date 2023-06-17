--Lib
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/InfinitiveUI",true))()

--Create Window
local Win = Lib:CreateWindow("LCheat", Tab ,0.65,nil)

--------------------------------ИГРОК--------------------------------

local PlayerT = Win:CreateTab("Player")

--Tab:CreateSlider(name,min,max,default,function)
PlayerT:CreateSlider("WalkSpeed",0,200,25,function(v)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end)

PlayerT:CreateSlider("JumpBoost",0,200,50,function(s)
game.Players.LocalPlayer.Character.Humanoid.JumpBoost = s
	end)

--------------------------------ВЕЩИ---------------------------------

local ToolsT = Win:CreateTab("Tools")


-------------------------------ВИЗУАЛ--------------------------------

local VisualT = Win:CreateTab("Visual")

VisualT:CreateButton("Console",function()
	game:GetService("StarterGui"):SetCore("DevConsoleVisible",true)
	end)

VisualT:CreateButton("Esp",function()
while wait(0.5) do
    for i, childrik in ipairs(workspace:GetDescendants()) do
        if childrik:FindFirstChild("Humanoid") then
            if not childrik:FindFirstChild("EspBox") then
                if childrik ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment",childrik)
                    esp.Adornee = childrik
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(255,48,48)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)


------------------------------НАСТРОЙКИ------------------------------

local SentingT = Win:CreateTab("Sentings")