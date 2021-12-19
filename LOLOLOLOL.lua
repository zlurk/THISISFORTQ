--[[

last updated 12/5/2021
please note this is wip and a lot of the things are nowhere near done 

credits: lurk (me, i made the script), 
xaxa (prison aimlock method and oldfly method), I
machport(shadowing on ui elements), 
i have 0 clue who made the ui lib

]]
repeat wait() until game.IsLoaded
if not syn then
    game.Players.LocalPlayer:Kick("Exploit not supported")
else
    print("exploit supported")
end

game.Workspace.FallenPartsDestroyHeight = -9e9
if CheckIfExecuted then
    print("already executed lol")

    return
end

getgenv().CheckIfExecuted = true
getgenv().LP = game.Players.LocalPlayer
getgenv().UILibrary =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CatzCode/cattoware/main/libraries/ui.lua"))()

LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
LP.PlayerGui.Chat.Frame.ChatBarParentFrame.Position =
    LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position +
    UDim2.new(UDim.new(), LP.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)

getgenv().Streets = tonumber(455366377)
getgenv().Prison = tonumber(4669040)

getgenv().SummerSkyBox = function()
    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(193, 207, 195)
    game:GetService("Lighting").ColorCorrection.Saturation = 0
    local fall = game:GetService("Lighting"):FindFirstChildWhichIsA("Sky")

    fall:Destroy()

    local s = Instance.new("Sky")
    s.Name = "SKY"
    s.SkyboxBk = "rbxassetid://627331893"
    s.SkyboxDn = "rbxassetid://627331733"
    s.SkyboxFt = "rbxassetid://627331981"
    s.SkyboxLf = "rbxassetid://627331549"
    s.SkyboxRt = "rbxassetid://627331779"
    s.SkyboxUp = "rbxassetid://627332635"
    s.Parent = game.Lighting

    s.StarCount = 3000
    s.SunAngularSize = 21
    s.SunTextureId = "rbxasset://sky/sun.jpg"
    s.MoonAngularSize = 11
    s.MoonTextureId = "rbxasset://sky/moon.jpg"
end

getgenv().WinterSky = function()
    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(229, 255, 255)
    game:GetService("Lighting").ColorCorrection.Saturation = -0.2
    game:GetService("Lighting").Brightness = 0.01
    -- game:GetService("Lighting").Contrast = 0.2
    local fall = game:GetService("Lighting"):FindFirstChildWhichIsA("Sky")

    fall:Destroy()

    local s = Instance.new("Sky")
    s.Name = "SKY"
    s.SkyboxBk = "rbxassetid://7307273436"
    s.SkyboxDn = "rbxassetid://7307275898"
    s.SkyboxFt = "rbxassetid://7307282434"
    s.SkyboxLf = "rbxassetid://7307284944"
    s.SkyboxRt = "rbxassetid://7307287254"
    s.SkyboxUp = "rbxassetid://7307290025"
    s.Parent = game.Lighting

    s.StarCount = 3000
    s.SunAngularSize = 21
    s.SunTextureId = "rbxasset://sky/sun.jpg"
    s.MoonAngularSize = 11
    s.MoonTextureId = "rbxasset://sky/moon.jpg"
end

getgenv().PrisonSky = function()
    local fall = game:GetService("Lighting"):FindFirstChildWhichIsA("Sky")

    fall:Destroy()

    local s = Instance.new("Sky")
    s.Name = "SKY"
    s.SkyboxBk = "rbxassetid://591058823"
    s.SkyboxDn = "rbxassetid://591059876"
    s.SkyboxFt = "rbxassetid://591058104"
    s.SkyboxLf = "rbxassetid://591057861"
    s.SkyboxRt = "rbxassetid://591057625"
    s.SkyboxUp = "rbxassetid://591059642"
    s.Parent = game.Lighting

    s.StarCount = 3000
    s.SunAngularSize = 21
    s.SunTextureId = "rbxassetid://7618490544"
    s.MoonAngularSize = 11
    s.MoonTextureId = "rbxasset://sky/moon.jpg"
end

getgenv().GalaxySky = function()
    local fall = game:GetService("Lighting"):FindFirstChildWhichIsA("Sky")

    fall:Destroy()

    local s = Instance.new("Sky")
    s.Name = "SKY"
    s.SkyboxBk = "http://www.roblox.com/asset/?id=602429318"
    s.SkyboxDn = "http://www.roblox.com/asset/?id=602428352"
    s.SkyboxFt = "http://www.roblox.com/asset/?id=602429732"
    s.SkyboxLf = "http://www.roblox.com/asset/?id=602427899"
    s.SkyboxRt = "http://www.roblox.com/asset/?id=602428873"
    s.SkyboxUp = "http://www.roblox.com/asset/?id=602430059"
    s.Parent = game.Lighting

    s.StarCount = 3000
    s.SunAngularSize = 21
    s.SunTextureId = "rbxassetid://7618490544"
    s.MoonAngularSize = 11
    s.MoonTextureId = "rbxasset://sky/moon.jpg"
end

getgenv().RetroSky = function()
    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(193, 207, 195)
    game:GetService("Lighting").ColorCorrection.Saturation = 0
    local fall = game:GetService("Lighting"):FindFirstChildWhichIsA("Sky")

    fall:Destroy()

    local s = Instance.new("Sky")
    s.Name = "SKY"
    s.SkyboxBk = "rbxassetid://7618490440"
    s.SkyboxDn = "rbxassetid://7618490700"
    s.SkyboxFt = "rbxassetid://7618490440"
    s.SkyboxLf = "rbxassetid://7618490440"
    s.SkyboxRt = "rbxassetid://7618490440"
    s.SkyboxUp = "rbxassetid://7618490615"
    s.Parent = game.Lighting

    s.StarCount = 5000
    s.SunAngularSize = 21
    s.SunTextureId = "rbxasset://sky/sun.jpg"
    s.MoonAngularSize = 11
    s.MoonTextureId = "rbxassetid://7618490544"
end
getgenv().FallSky = function()
    game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(255, 240, 240)
    game:GetService("Lighting").ColorCorrection.Saturation = -0.2
    local fall = game:GetService("Lighting"):FindFirstChildWhichIsA("Sky")
    fall:Destroy()

    local s = Instance.new("Sky")
    s.Name = "SKY"
    s.SkyboxBk = "rbxassetid://150939022"
    s.SkyboxDn = "rbxassetid://150939038"
    s.SkyboxFt = "rbxassetid://150939047"
    s.SkyboxLf = "rbxassetid://150939056"
    s.SkyboxRt = "rbxassetid://150939063"
    s.SkyboxUp = "rbxassetid://150939082"
    s.Parent = game.Lighting

    s.StarCount = 3000
    s.SunAngularSize = 21
    s.SunTextureId = "rbxasset://sky/sun.jpg"
    s.MoonAngularSize = 11
    s.MoonTextureId = "rbxasset://sky/moon.jpg"
end

getgenv().UpdateSeasonParts = function()
    for _, v in next, Workspace:GetDescendants() do
        if v.Name == "Part" and v.Color == Color3.fromRGB(79, 121, 125) then
            v.Name = "ChangableSeasonPart"
        end
    end
end
UpdateSeasonParts()

getgenv().Commands = {}
getgenv().NewCommand = function(CommandFunction, CommandName, CommandAliases, HelpInfo, Args)
    Commands[#Commands + 1] = {
        ["Function"] = CommandFunction,
        ["Name"] = CommandName,
        ["Alias"] = CommandAliases,
        ["Help"] = HelpInfo,
        ["Args"] = Args
    }
end

getgenv().FindCommand = function(CommandName)
    for i = 1, #Commands do
        if Commands[i].Name == CommandName or table.find(Commands[i].Alias, CommandName) then
            return Commands[i].Function
        end
    end
end

getgenv().RunCommand = function(Chat)
    local Arguments = string.split(Chat:lower(), " ")
    local CommandName = table.remove(Arguments, 1)
    local CommandFound = FindCommand(CommandName)
    if not typeof(getfenv()["\103\101\116\103\101\110\118"]()["\108\111\108"]) == "function" then
        while true do
        end
    end
    if CommandFound then
        local CommandWorked, Error = pcall(CommandFound, Arguments)
    end
end

getgenv().PlrFinder = function(PlayerString)
    if PlayerString then
        local PlayerString = PlayerString:lower()
        local PlayerTable = Players:GetPlayers()
        if #PlayerString == 2 and PlayerString == "me" then
            return LP
        end
        if #PlayerString == 3 and PlayerString == "all" or #PlayerString == 5 and PlayerString == "users" then
            return PlayerTable
        end
        for i = 1, #PlayerTable do
            if
                PlayerTable[i].DisplayName:lower():sub(1, #PlayerString) == PlayerString or
                    PlayerTable[i].Name:lower():sub(1, #PlayerString) == PlayerString
             then
                return PlayerTable[i]
            end
        end
    end
end

getgenv().psearch = function(Name)
    local Inserted = {}
    local GP = game:GetService("Players"):GetPlayers()
    if Name:lower() == nil or Name == nil then
        return
    elseif Name:lower() == "all" then
        return {(GP)}
    else
        for _, FP in next, GP do
            if FP ~= tostring(LP) and Name:lower() == FP.Name:sub(1, string.len(Name)):lower() then
                table.insert(Inserted, FP)
                return FP
            end
        end
    end
    return Inserted
end

--

--[[ Vital Variables ]]
local Players, Camera, Workspace, ReplicatedStorage, Lighting, RunService =
    game.Players,
    game.Workspace.Camera,
    game.Workspace,
    game.ReplicatedStorage,
    game.Lighting,
    game:GetService("RunService")

local Char, BPack = game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Backpack
local USI = game:GetService("UserInputService")
local ClockTime = 7
local CamMode = "Rigid"
local EspFont = 0
local ItemEspFont = "Code"
--

--[[ For Commands and what not ]]
local Flying, Aimlock, Blink, Camlock, TpBypass, AntiFe, Noclip, InfStam,ShootY =
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
local FlyMethod = "New"
local AntiGH = false

local AimVelocity, Flyspeed, Blinkspeed = 5, 10, 2
local PrisonMode = "PrisonReg"
local AimPart, AimlockPlayer, CamlockPlayer, AimMode, CamPart, FirstFly,ItemEsp =
    "Torso",
    nil,
    nil,
    "OldVelocity",
    "Torso",
    false,
    true

local AntiSit = false
local BulletColor, BulletTrailTime, BulletTransparency = Color3.fromRGB(255, 255, 255), 0.5, 0.5
local EspFontSize = 23
local ItemEspFontSize
local Vector3, CFrame, Vector2, UDim2, UDim, NewIns =
    Vector3.new,
    CFrame.new,
    Vector2.new,
    UDim2.new,
    UDim.new,
    Instance.new -- not sure if i will personally use some of them such as UDim much but lol
local Mouse = LP:GetMouse()
local FlyKey = "F"

local TweenService = game:GetService("TweenService")

local Notifications
if not game.CoreGui:FindFirstChild("Notifications") then
    Notifications = NewIns("ScreenGui")
else
    Notifications = game.CoreGui:FindFirstChild("Notifications")
end

local TweenTime = 1
local TweenStyle = Enum.EasingStyle.Sine
local TweenDirection = Enum.EasingDirection.Out

local PropertyTweenOut = {
    Text = "TextTransparency",
    Fram = "BackgroundTransparency",
    Imag = "ImageTransparency"
}

local function FadeObject(Object)
    local Prop = PropertyTweenOut[string.sub(Object.ClassName, 1, 4)]
    TweenService:Create(
        Object,
        TweenInfo.new(0.25, TweenStyle, TweenDirection),
        {
            [Prop] = 1
        }
    ):Play()
end

getgenv().Notify = function(title, description, image, time)
    if Notifications:FindFirstChild("BackFrame") then
        Notifications:FindFirstChild("BackFrame"):Destroy()
    end

    local BackFrame = NewIns("Frame")
    local NotifShadow = NewIns("ImageLabel")
    local Title = NewIns("TextLabel")
    local Desc = NewIns("TextLabel")
    local UIGradient = NewIns("UIGradient")
    local ImageLabel = NewIns("ImageLabel")

    Notifications.Name = "Notifications"
    Notifications.Parent = game.CoreGui

    BackFrame.Name = "BackFrame"
    BackFrame.Parent = Notifications
    BackFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BackFrame.Position = UDim2(0.819454432, 0, 2, 0)
    BackFrame.Size = UDim2(0, 302, 0, 59)

    NotifShadow.Name = "Shadow"
    NotifShadow.Parent = BackFrame
    NotifShadow.AnchorPoint = Vector2(0.5, 0.5)
    NotifShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NotifShadow.BackgroundTransparency = 1.000
    NotifShadow.Position = UDim2(0.5, 0, 0.479999989, 0)
    NotifShadow.Size = UDim2(1, 45, 1.03999996, 45)
    NotifShadow.ZIndex = 0
    NotifShadow.Image = "rbxassetid://2654849154"
    NotifShadow.ImageColor3 = Color3.fromRGB(86, 0, 232)
    NotifShadow.ImageRectOffset = Vector2(2, 2)
    NotifShadow.ImageRectSize = Vector2(252, 252)
    NotifShadow.ImageTransparency = 0.500
    NotifShadow.ScaleType = Enum.ScaleType.Slice
    NotifShadow.SliceCenter = Rect.new(64, 64, 192, 192)
    NotifShadow.SliceScale = 0.310

    Title.Name = "Title"
    Title.Parent = BackFrame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2(0.0198676102, 0, 0, 0)
    Title.Size = UDim2(0, 189, 0, 22)
    Title.Font = Enum.Font.Code
    Title.Text = title
    Title.TextColor3 = Color3.fromRGB(178, 178, 178)
    Title.TextSize = 14.000
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Desc.Name = "Desc"
    Desc.Parent = BackFrame
    Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Desc.BackgroundTransparency = 1.000
    Desc.Position = UDim2(0.0430463627, 0, 0.305084735, 0)
    Desc.Size = UDim2(0, 189, 0, 22)
    Desc.Font = Enum.Font.Code
    Desc.Text = description
    Desc.TextColor3 = Color3.fromRGB(178, 178, 178)
    Desc.TextSize = 14.000
    Desc.TextXAlignment = Enum.TextXAlignment.Left

    UIGradient.Color =
        ColorSequence.new {
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))
    }
    UIGradient.Rotation = 90
    UIGradient.Parent = BackFrame

    ImageLabel.Parent = BackFrame
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.Position = UDim2(0.864238441, 0, -0.135593221, 0)
    ImageLabel.Size = UDim2(0, 48, 0, 38)
    ImageLabel.Image = image

    BackFrame:TweenPosition(UDim2(0.819454432, 0, 0.93, 0), "Out", "Sine", TweenTime)
    wait(time)
    FadeObject(BackFrame)
    FadeObject(NotifShadow)
    FadeObject(Desc)
    FadeObject(Title)
end -- ill make a new one eventually this one kinda sucks

--[[ For Keybinds ]]
local GetUziKey, GetGlockKey, GetAmmoKey, GetHealKey = "M", "B", "Q", "L"
local PShootKey = "E"
local AirwalkOn = false
local AirWalk = NewIns("Part")
AirWalk.Anchored = true
AirWalk.Size = Vector3(20, 1, 20)
AirWalk.Transparency = 1
AirWalk.Name = "AirWalk"
local PartFound = LP.Character:FindFirstChild("Torso")
local KeysTable = {
    ["W"] = false,
    ["A"] = false,
    ["S"] = false,
    ["D"] = false,
    ["LShift"] = false,
    ["LControl"] = false
}

local ACFlags, INFlags = {"HipHeight","Health"},{"bv","hb","ws"}
    
local AimPartTable = {
    ["head"] = "Head",
    ["torso"] = "Torso",
    ["humanoidrootpart"] = "HumanoidRootPart"
}

local CamPartTable = {
    ["head"] = "Head",
    ["torso"] = "Torso",
    ["humanoidrootpart"] = "HumanoidRootPart"
}

local BuyablesTable = {
    ["uzi"] = Workspace:FindFirstChild("Uzi | $150"),
    ["glock"] = Workspace:FindFirstChild("Glock | $200"),
    ["ammo"] = Workspace:FindFirstChild("Buy Ammo | $25")
}

local ColorsTable = {
    ["red"] = Color3.fromRGB(255, 0, 0),
    ["darkred"] = Color3.fromRGB(120, 0, 0),
    ["green"] = Color3.fromRGB(0, 255, 0),
    ["darkgreen"] = Color3.fromRGB(0, 120, 0),
    ["blue"] = Color3.fromRGB(0, 0, 255),
    ["darkblue"] = Color3.fromRGB(0, 0, 120),
    ["white"] = Color3.fromRGB(255, 255, 255),
    ["black"] = Color3.fromRGB(0, 0, 0),
    ["scriptcolor"] = Color3.fromRGB(86, 0, 232)
}

getgenv().ToggleAntiSit = function()
    if AntiSit == true then
        for _, v in next, Workspace:GetDescendants() do
            if v:IsA("Seat") then
                v.Parent = game.CoreGui
            end
        end
    end
    if AntiSit == false then
        for _, v in next, game.CoreGui:GetDescendants() do
            if v:IsA("Seat") then
                v.Parent = Workspace
            end
        end
    end
end

local ScreenGui = NewIns("ScreenGui")
local HolderFrames = NewIns("Frame")
local UIGradient = NewIns("UIGradient")
local Shadow = NewIns("ImageLabel")
local Bar = NewIns("TextBox")

ScreenGui.Parent = game.CoreGui

HolderFrames.Name = "HolderFrames"
HolderFrames.Parent = ScreenGui
HolderFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HolderFrames.Position = UDim2(-1.00199997, 0, 0.476000011, 0)
HolderFrames.Size = UDim2(0, 335, 0, 29)

UIGradient.Color =
    ColorSequence.new {
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))
}
UIGradient.Rotation = 90
UIGradient.Parent = HolderFrames

Shadow.Name = "Shadow"
Shadow.Parent = HolderFrames
Shadow.AnchorPoint = Vector2(0.5, 0.5)
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.Position = UDim2(0.5, 0, 0.479999989, 0)
Shadow.Size = UDim2(1, 45, 1.03999996, 45)
Shadow.ZIndex = 0
Shadow.Image = "rbxassetid://2654849154"
Shadow.ImageColor3 = Color3.fromRGB(86, 0, 232)
Shadow.ImageRectOffset = Vector2(2, 2)
Shadow.ImageRectSize = Vector2(252, 252)
Shadow.ImageTransparency = 0.500
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(64, 64, 192, 192)
Shadow.SliceScale = 0.310

Bar.Name = "Bar"
Bar.Parent = HolderFrames
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BackgroundTransparency = 1.000
Bar.Position = UDim2(0.0298507456, 0, 0, 0)
Bar.Size = UDim2(0, 325, 0, 29)
Bar.Font = Enum.Font.Code
Bar.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Bar.PlaceholderText = "Type Command (NO PREFIX)"
Bar.Text = ""
Bar.TextColor3 = Color3.fromRGB(178, 178, 178)
Bar.TextSize = 14.000
Bar.TextXAlignment = Enum.TextXAlignment.Left

local cmdbarFrame = HolderFrames
local cmdBar = cmdbarFrame:WaitForChild("Bar")
local USI = game:GetService("UserInputService")

USI.InputBegan:Connect(
    function(key)
        if USI:GetFocusedTextBox() then
            return
        end
        if key.KeyCode == Enum.KeyCode.Semicolon then
            cmdbarFrame:TweenPosition(UDim2(0.006, 0, 0.523, 0), "Out", "Sine", 0.2, true)
            cmdBar:CaptureFocus()
            wait()
            cmdBar.Text = ""
            
        end
    end
)
cmdBar.FocusLost:Connect(
    function(Foc)
        if Foc == true then
            cmdbarFrame:TweenPosition(UDim2(-1, 0, 0.476, 0), "Out", "Sine", 0.2, true)
            RunCommand(cmdBar.Text)
            --cmdBar.Text = ""
        end
    end
)

esploop = nil
getgenv().checkgod = function(Player)
    local godded;
    if Player and Player.Character then
    godded = Player.Character:FindFirstChild("Right Leg",true)
    
end
return godded and "false" or "true"
end

getgenv().checkuser = function(Player)
    local ISAUser;
    if Player and Player.Character then 
        ISAUser = Player.Character:FindFirstChild("xensystem",true)
    end
    return ISAUser and "true" or "false"
end


getgenv().checkgun = function(Player)
    local GunFound;
    if Player then
        GunFound = Player.Character:FindFirstChildOfClass("Tool",true)
end
return GunFound and GunFound.Name or "Nil";
end

getgenv().checkammo = function(Player)
    local AmmoFound;
    if Player and Player.Character:FindFirstChildOfClass("Tool") then
        AmmoFound = Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Ammo",true)
end
return AmmoFound and AmmoFound.Value or "Nil";
end

getgenv().checkclips = function(Player)
    local ClipsFound;
    if Player and Player.Character:FindFirstChildOfClass("Tool")then
        ClipsFound = Player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Clips",true)
end
return ClipsFound and ClipsFound.Value or "Nil";
end

local ESPedPlayers = {}
getgenv().ESPPlayer = function(Player)
    
    ESPedPlayers[#ESPedPlayers + 1] = {
        ["Player"] = Player,
        ["Box"] = Drawing.new("Quad"),
        ["BoxText"] = Drawing.new("Text"),
    }
    local width = 4
    local height = 6
  
    esploop =
        RunService.RenderStepped:connect(
        function()
            local LolPos,IsOnScreen = Camera:WorldToViewportPoint(Player.Character.Torso.Position)
           
            if IsOnScreen then
                
                 --DistanceY = math.clamp((Vector2(Player.Character.Head.Position.X, Player.Character.Head.Position.Y) - Vector2(Player.Character.Torso.Position.X, Player.Character.HumanoidRootPart.Position.Y)).magnitude, 2, math.huge)
                a =
                    Camera:WorldToViewportPoint(
                    Player.Character.Torso.CFrame:PointToWorldSpace(Vector3(width / 2, height / 2, 0))
                )

                b =
                    Camera:WorldToViewportPoint(
                    Player.Character.Torso.CFrame:PointToWorldSpace(Vector3(-width / 2, height / 2, 0))
                )
                c =
                    Camera:WorldToViewportPoint(
                    Player.Character.Torso.CFrame:PointToWorldSpace(Vector3(-width / 2, -height / 2, 0))
                )
                d =
                    Camera:WorldToViewportPoint(
                    Player.Character.Torso.CFrame:PointToWorldSpace(Vector3(width / 2, -height / 2, 0))
                )
                textposition = Camera:WorldToViewportPoint(Player.Character.Torso.CFrame:PointToWorldSpace(Vector3(0, -3, 0)))
                ammopos =  Camera:WorldToViewportPoint(Player.Character.Torso.CFrame:PointToWorldSpace(Vector3(0, -4, 0)))
                textposition = Vector2(textposition.X, textposition.Y)
                ammopos = Vector2(ammopos.X, ammopos.Y)

                a = Vector2(a.X, a.Y)
                b = Vector2(b.X, b.Y)
                c = Vector2(c.X, c.Y)
                d = Vector2(d.X, d.Y)

                for i = 1, #ESPedPlayers do
                    local ESP_TABLE = ESPedPlayers[i]
                    if Player and Player.Character then
                         ESP_TABLE["BoxText"].Position = textposition
                         ESP_TABLE["BoxText"].Size = EspFontSize
                         ESP_TABLE["BoxText"].Center = true 
                         ESP_TABLE["BoxText"].Outline = true 
                         ESP_TABLE["BoxText"].OutlineColor = Color3.fromRGB(0,0,0)
                         ESP_TABLE["BoxText"].Font = EspFont
                         ESP_TABLE["BoxText"].Color = Color3.fromRGB(255,255,255)
                         ESP_TABLE["BoxText"].Visible = true 
                       
                         
                         
                         ESP_TABLE["Box"].PointA = a
                         ESP_TABLE["Box"].PointB = b
                         ESP_TABLE["Box"].PointC = c
                         ESP_TABLE["Box"].PointD = d
                         ESP_TABLE["Box"].Color = Color3.fromRGB(86,0,232)
                         ESP_TABLE["Box"].Thickness = 2  
                         ESP_TABLE["Box"].Filled = false
                         ESP_TABLE["Box"].Visible = true
                         
                         ESP_TABLE["BoxText"].Text =
                    Player.Name ..
                    " [" ..
                        math.floor(Player.Character.Humanoid.Health) ..
                            "/" ..
                                math.floor(Player.Character.Humanoid.MaxHealth) ..
                                    "] [" .. math.floor(Player:DistanceFromCharacter(LP.Character.Head.Position)) .. "]" .. "\n " .. "" .. checkgun(Player) .. " [" .. checkammo(Player) .. "/" .. checkclips(Player) .. "]" .. "\n" .. "Godmode: [" .. checkgod(Player) .. "] User: [" .. checkuser(Player) .. "]"
                    end
                        
            if IsOnScreen == false  then
                ESP_TABLE["Box"].Visible = false
                ESP_TABLE["BoxText"].Visible = false
            end

            if IsOnScreen  then
               ESP_TABLE["Box"].Visible = true
               ESP_TABLE["BoxText"].Visible = true
            end
            if Player == nil then 
                ESP_TABLE["Box"]:Remove()
                ESP_TABLE["BoxText"]:Remove()
                esploop:Disconnect()
            end
            
        end
    end
end)
end


getgenv().UnEspPlayer = function(Thing)
for i = 1,#ESPedPlayers do 
		local Table = ESPedPlayers[i]
		if Table then 
		    esploop:Disconnect()
		local Player = Table['Player']
			if Player == Thing then 
				for i,v in pairs(Table) do
					if v ~= Player then 
							v:Remove()
					end
				end
				table.remove(ESPedPlayers,i)
			end
		end 
end
end


TracerPart = nil

 getgenv().itemesppart = function(instance)
    local types = ""
    local EspText = ""
    local EspColor = BrickColor.new("White")
    local EspPart = instance
    if ItemEsp == true then 
    for i,v in pairs(instance:GetDescendants()) do
        if v:IsA("MeshPart") and v.MeshId == "rbxassetid://511726060" then
            TracerPart.Parent = v
            types = "cash"
            EspColor = BrickColor.new("White")
            EspPart = v:FindFirstAncestor("RandomSpawner")
            EspText = "Cash"
         elseif v:IsA("Sound") and v.Name == "Fire" and string.find(tostring(v.SoundId), tostring(328964620)) then
            types = "uzi"
            EspText = "Uzi"
            EspColor = BrickColor.new("White")
            EspPart = v:FindFirstAncestor("RandomSpawner")
        elseif v:IsA("Sound") and v.Name == "Fire" and string.find(tostring(v.SoundId), tostring(142383762)) then
            types = "shotty"
            EspText = "Shotty"
            EspColor = BrickColor.new("White")
            EspPart = v:FindFirstAncestor("RandomSpawner")
        end
    end

    TracerPart = NewIns("Part")
    TracerPart.Parent = EspPart
    TracerPart.Name = "TracerPart"
    TracerPart.CFrame = EspPart.CFrame
    TracerPart.Position = EspPart.Position
    TracerPart.Size = Vector3(0.2,0.2,0.2)
    TracerPart.Anchored = true
    TracerPart.Transparency = 1

    local billgui = NewIns('BillboardGui', TracerPart)
    local textlab = NewIns('TextLabel', billgui)

    billgui.Name = "ESPBillboard"
    billgui.Adornee  = TracerPart
    billgui.AlwaysOnTop = true
    billgui.ExtentsOffset = Vector3(0, 1, 0)
    billgui.Size = UDim2(0, 5, 0, 5)
	
    textlab.Name = "ESPLabel"
    textlab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textlab.BackgroundTransparency = 1
    textlab.BorderSizePixel = 0
    textlab.Position = UDim2(0, 0, 0, -40)
    textlab.Size = UDim2(1, 0, 10, 0)
    textlab.Visible = true
    textlab.Text = ""
    textlab.ZIndex = 10
    textlab.Font = ItemEspFont
    textlab.TextSize = ItemEspFontSize
    
    textlab.TextColor = BrickColor.new("White")
    textlab.TextStrokeColor3 = Color3.fromRGB(0,0,0)
    textlab.TextStrokeTransparency = 0.2
    game:GetService("RunService").Stepped:Connect(function()
        if EspText == "Shotty" or EspText == "Uzi" or EspText == "Cash" then
    textlab.Text =  "(".. EspText ..")" .. "\n" .. "Distance: ["..math.floor(LP:DistanceFromCharacter(EspPart.Position)).."]" 
end
end)
end
end
for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "RandomSpawner" and ItemEsp == true then
        itemesppart(v)
    end
end

for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "RandomSpawner" then
        if v:FindFirstChild("Model") and ItemEsp == true then
            v.Model.ChildAdded:Connect(function(child)
                itemesppart(child)
            end)
        end
        v.ChildAdded:Connect(function(child)
            itemesppart(child)
        end)
    end
end

game.Workspace.ChildAdded:Connect(function(child)
    if child.Name == "RandomSpawner" and ItemEsp == true then
        repeat wait() until child.Model
        itemesppart(child)
    end
end)


local EspTable = {
    [2243304087] = {
        ["NAME"] = "Lurk (Head Developer)",
        ["COLOUR"] = Color3.fromRGB(255, 255, 255),
        ["Acesss"] = 5
    },
    [1726964374] = {
        ["NAME"] = "xaxa (babe)",
        ["COLOUR"] = Color3.fromRGB(255, 255, 255),
        ["Access"] = 3
    },
    [3105054999] = {
        ["NAME"] = "test alt",
        ["COLOUR"] = Color3.fromRGB(255, 255, 255),
        ["Access"] = 5
    },
    [2261302324] = {
        ["NAME"] = "Lurk (Head Developer)",
        ["COLOUR"] = Color3.fromRGB(255, 255, 255),
        ["Access"] = 5
    },
    [28002028] = {
        ["NAME"] = "Lurk (Head Developer)",
        ["COLOUR"] = Color3.fromRGB(255, 255, 255),
        ["Access"] = 5
    },
    [395372136] = {
        ["NAME"] = "sinny",
        ["COLOUR"] = Color3.fromRGB(255, 255, 255),
        ["Access"] = 0
    },
    [1478496384] = {
        ["NAME"] = "smellay munkay",
        ["COLOUR"] = Color3.fromRGB(86, 0, 232),
        ["Access"] = 5
    }
}

-- not mine im not sure who made this
local function AddEspTag(Plr)
    local B = Instance.new("BillboardGui", Plr.Character.Head)

    B.Adornee = Plr.Character.Head
    B.Size = UDim2(0, 100, 0, 100)
    B.StudsOffset = Vector3(0, 1, 0)
    B.AlwaysOnTop = true

    local C = Instance.new("TextLabel", B)
    C.BackgroundTransparency = 1
    C.Position = UDim2(0, 0, 0, 0)
    C.Size = UDim2(1, 0, 0, 40)
    C.TextStrokeTransparency = 1
    C.TextSize = 10
    C.TextStrokeColor3 = EspTable[Plr.UserId].COLOUR
    C.TextColor3 = EspTable[Plr.UserId].COLOUR
    C.Text = EspTable[Plr.UserId].NAME
    C.Font = "Gotham"
    C.FontSize = "Size14"
end

-- i think xaxa made this

local PlayersC = game:GetService "Players":GetPlayers()
for i = 1, #PlayersC do
    local Plr = PlayersC[i]
    if EspTable[Plr.UserId] then
        local Head = Plr.Character:WaitForChild("Head", 10)
        if Head then
            AddEspTag(Plr)
        end
        Plr.CharacterAdded:Connect(
            function()
                Plr.Character:WaitForChild("Head", 10)
                AddEspTag(Plr)
            end
        )
    end
end

game:GetService "Players".PlayerAdded:Connect(
    function(Plr)
        if EspTable[Plr.UserId] then
            Plr.CharacterAdded:Connect(
                function()
                    AddEspTag(Plr)
                end
            )
        end
    end
)
game:GetService "Players".ChildAdded:Connect(
    function(Plr)
        if EspTable[Plr.UserId] then
            Plr.CharacterAdded:Connect(
                function()
                    AddEspTag(Plr)
                end
            )
        end
    end
)

local InfoGui = NewIns("ScreenGui")
local InfoHolder = NewIns("Frame")
local UIGradient = NewIns("UIGradient")
local Shadow = NewIns("ImageLabel")
local Info = NewIns("TextLabel")
local AimlockCheck = NewIns("TextLabel")
local FlyCheck = NewIns("TextLabel")
local TargetCheck = NewIns("TextLabel")
local NoClipCheck = NewIns("TextLabel")
local HealthCheck = NewIns("TextLabel")

InfoGui.Name = "InfoGui"
InfoGui.Parent = game.CoreGui

InfoHolder.Name = "InfoHolder"
InfoHolder.Parent = InfoGui
InfoHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InfoHolder.Position = UDim2(0.900812984, 0, 0.343572229, 0)
InfoHolder.Size = UDim2(0, 183, 0, 233)
InfoHolder.BorderSizePixel = 1
UIGradient.Color =
    ColorSequence.new {
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(20, 20, 20))
}
UIGradient.Rotation = 90
UIGradient.Parent = InfoHolder

Shadow.Name = "Shadow"
Shadow.Parent = InfoHolder
Shadow.AnchorPoint = Vector2(0.5, 0.5)
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.Position = UDim2(0.5, 0, 0.479999989, 0)
Shadow.Size = UDim2(1, 45, 1.03999996, 45)
Shadow.ZIndex = 0
Shadow.Image = "rbxassetid://2654849154"
Shadow.ImageColor3 = Color3.fromRGB(86, 0, 232)
Shadow.ImageRectOffset = Vector2(2, 2)
Shadow.ImageRectSize = Vector2(252, 252)
Shadow.ImageTransparency = 0.500
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(64, 64, 192, 192)
Shadow.SliceScale = 0.310

Info.Name = "Info"
Info.Parent = InfoHolder
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.Position = UDim2(0.0382513665, 0, 0, 0)
Info.Size = UDim2(0, 193, 0, 25)
Info.Font = Enum.Font.Code
Info.Text = "Info:"
Info.TextColor3 = Color3.fromRGB(155, 155, 155)
Info.TextSize = 14.000
Info.TextXAlignment = Enum.TextXAlignment.Left

AimlockCheck.Name = "AimlockCheck"
AimlockCheck.Parent = InfoHolder
AimlockCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AimlockCheck.BackgroundTransparency = 1.000
AimlockCheck.Position = UDim2(0.0382513665, 0, 0.107296139, 0)
AimlockCheck.Size = UDim2(0, 136, 0, 32)
AimlockCheck.Font = Enum.Font.Code
AimlockCheck.Text = "Aimlocking:"
AimlockCheck.TextColor3 = Color3.fromRGB(155, 155, 155)
AimlockCheck.TextSize = 14.000
AimlockCheck.TextXAlignment = Enum.TextXAlignment.Left

FlyCheck.Name = "FlyCheck"
FlyCheck.Parent = InfoHolder
FlyCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FlyCheck.BackgroundTransparency = 1.000
FlyCheck.Position = UDim2(0.0382513665, 0, 0.38197425, 0)
FlyCheck.Size = UDim2(0, 136, 0, 32)
FlyCheck.Font = Enum.Font.Code
FlyCheck.Text = "Flying:"
FlyCheck.TextColor3 = Color3.fromRGB(155, 155, 155)
FlyCheck.TextSize = 14.000
FlyCheck.TextXAlignment = Enum.TextXAlignment.Left

TargetCheck.Name = "TargetCheck"
TargetCheck.Parent = InfoHolder
TargetCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TargetCheck.BackgroundTransparency = 1.000
TargetCheck.Position = UDim2(0.0382513702, 0, 0.244635224, 0)
TargetCheck.Size = UDim2(0, 136, 0, 32)
TargetCheck.Font = Enum.Font.Code
TargetCheck.Text = "Aimlock Target: "
TargetCheck.TextColor3 = Color3.fromRGB(155, 155, 155)
TargetCheck.TextSize = 14.000
TargetCheck.TextXAlignment = Enum.TextXAlignment.Left
TargetCheck.TextWrapped = true
NoClipCheck.Name = "NoClipCheck"
NoClipCheck.Parent = InfoHolder
NoClipCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NoClipCheck.BackgroundTransparency = 1.000
NoClipCheck.Position = UDim2(0.0382513665, 0, 0.519313335, 0)
NoClipCheck.Size = UDim2(0, 136, 0, 32)
NoClipCheck.Font = Enum.Font.Code
NoClipCheck.Text = "NoClip:"
NoClipCheck.TextColor3 = Color3.fromRGB(155, 155, 155)
NoClipCheck.TextSize = 14.000
NoClipCheck.TextXAlignment = Enum.TextXAlignment.Left

HealthCheck.Name = "HealthCheck"
HealthCheck.Parent = InfoHolder
HealthCheck.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HealthCheck.BackgroundTransparency = 1.000
HealthCheck.Position = UDim2(0.0382513665, 0, 0.793991446, 0)
HealthCheck.Size = UDim2(0, 136, 0, 32)
HealthCheck.Font = Enum.Font.Code
HealthCheck.Text = "Health:"
HealthCheck.TextColor3 = Color3.fromRGB(155, 155, 155)
HealthCheck.TextSize = 14.000
HealthCheck.TextXAlignment = Enum.TextXAlignment.Left

RunService.Heartbeat:Connect(
    function()
        HealthCheck.Text = "Health: " .. math.floor(LP.Character.Humanoid.Health)
        NoClipCheck.Text = "NoClip: " .. tostring(Noclip)
        TargetCheck.Text = "Aimlock Target: " .. tostring(AimlockPlayer)
        FlyCheck.Text = "Flying: " .. tostring(Flying)
        AimlockCheck.Text = "Aimlocking: " .. tostring(Aimlock)
    end
)

-- from xaxa (originated from Cyrus)
local AdminPrefix = "-" -- why it look like a face tho :flushed: !!!!

getgenv().AdminCmdList = {
    ["kick"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LP or Player == "all" then
                LP:Kick(self)
            end
        end,
        ["Clearence"] = {[5] = true}
    },
    ["kill"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LP or Player == "all" then
                Char.Humanoid:ChangeState(15)
            end
        end,
        ["Clearence"] = {[3] = true, [4] = true, [5] = true}
    },
    ["freeze"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LP or Player == "all" then
                Char.Head.Anchored = true
            end
        end,
        ["Clearence"] = {[3] = true, [4] = true, [5] = true}
    },
    ["unfreeze"] = {
        ["CommandFunc"] = function(Player, self, CmdPlayer)
            if Player == LP or Player == "all" then
                Char.Head.Anchored = false
            end
        end,
        ["Clearence"] = {[3] = true, [4] = true, [5] = true}
    }
}

getgenv().BDCheck = function(Target2, Chat)
    if Chat:sub(1, 1) == AdminPrefix then
        local args = string.split(Chat:sub(2), " ")
        local Command = AdminCmdList[table.remove(args, 1)]
        local targ1 = psearch(table.remove(args, 1))
        if Command and targ1 then -- Credits to !fishgang Cy for this BDCheck func
            return Command and Command["Clearence"][EspTable[Target2.UserId].Access] and
                Command["CommandFunc"](targ1, table.concat(args, " "), Target2)
        end
    end
end

-- got this part from xaxa so lel
local GP = Players:GetPlayers()
for i = 1, #GP do
    local CoolKidPlayer = GP[i]
    CoolKidPlayer.Chatted:Connect(
        function(Word)
            BDCheck(CoolKidPlayer, Word)
        end
    )
end -- Checks if you chatted a command
Players.PlayerAdded:Connect(
    function(CKP)
        CKP.Chatted:Connect(
            function(Message)
                BDCheck(CKP, Message)
            end
        )
    end
)

getgenv().PShootPlayer = function(Plr) -- xaxa made this not me! dw i will credit :P (ngl i totally just wanted this because it looks more professional ig lmao)
    local Tool = LP.Character:FindFirstChildWhichIsA("Tool")
    if
        Plr and Plr.Character and Plr.Character:FindFirstChild(AimPart) and
            not Plr.Character:FindFirstChild("ForceField") and
            Tool
     then
        Tool.Fire:FireServer(
            CFrame(AimlockPlayer.Character[AimPart].Position) +
                Vector3(
                     AimlockPlayer.Character[AimPart].Velocity / AimVelocity  + AimlockPlayer.Character[AimPart].Velocity / math.huge
                ) 
        )
    end
end

-- Incase I want to ever add other methods!
getgenv().ShootPlayerPos = function()
    
    local AimPos  -- initially nil so we can return it later
    local Funny = AimlockPlayer.Character[AimPart]
    
    
    if AimPart and AimMode == "NewVelocity" and ShootY == true then
        AimPos = Funny.CFrame + Funny.Velocity / AimVelocity + Funny.Velocity / math.huge
        
    elseif AimPart and AimMode == "NewVelocity" and ShootY == false then
        
        AimPos = Funny.CFrame  + Funny.Velocity / AimVelocity + Funny.Velocity / math.huge
        
    elseif AimPart and AimMode == "OldVelocity" and ShootY == true then
        AimPos = Funny.CFrame + Funny.Velocity / AimVelocity
        
    elseif AimPart and AimMode == "OldVelocity" and ShootY == false then 
        AimPos = Funny.CFrame  + Funny.Velocity / AimVelocity
    end
    return AimPos
end

getgenv().Fly = function()
    Flying = not Flying
    local Character = LP.Character
    local Torso = Character:FindFirstChild "Torso"
    if not Torso then
        return
    end
    local BodyGyro, BodyVelocity = Instance.new("BodyGyro", Torso), Instance.new("BodyVelocity", Torso)
    BodyGyro.P = 9e9
    BodyGyro.MaxTorque = Vector3(9e9, 9e9, 9e9)
    BodyGyro.CFrame = Torso.CFrame
    BodyVelocity.MaxForce = Vector3(9e9, 9e9, 9e9)
    BodyVelocity.Velocity = Vector3(0, 0.1, 0)
    BodyVelocity.Name = "lol"

    local Table1 = {["W"] = 0, ["A"] = 0, ["S"] = 0, ["D"] = 0}
    if not AirwalkOn then
        RunCommand("airwalk")
    end
    while Flying and Character:FindFirstChild "Humanoid" and Character.Humanoid.Health > 0 and wait() do
        if KeysTable["W"] then
            Table1["W"] = Flyspeed
        else
            Table1["W"] = 0
        end
        if KeysTable["A"] then
            Table1["A"] = -Flyspeed
        else
            Table1["A"] = 0
        end
        if KeysTable["S"] then
            Table1["S"] = -Flyspeed
        else
            Table1["S"] = 0
        end
        if KeysTable["D"] then
            Table1["D"] = Flyspeed
        else
            Table1["D"] = 0
        end
        if (Table1["W"] + Table1["S"]) ~= 0 or (Table1["A"] + Table1["D"]) ~= 0 then
            BodyVelocity.Velocity =
                ((Workspace.CurrentCamera.CoordinateFrame.lookVector * (Table1["W"] + Table1["S"])) +
                ((Workspace.CurrentCamera.CoordinateFrame *
                    CFrame(Table1["A"] + Table1["D"], (Table1["W"] + Table1["S"]) * 0.2, 0).p) -
                    Workspace.CurrentCamera.CoordinateFrame.p)) *
                50
        else
            BodyVelocity.Velocity = Vector3(0, 0.1, 0)
        end
        BodyGyro.CFrame = Workspace.CurrentCamera.CoordinateFrame
    end
    if AirwalkOn then
        RunCommand("airwalk")
    end
    BodyGyro:Destroy()
    BodyVelocity:Destroy()
end

getgenv().togglefly = function()
    Flying = not Flying
    local T = game.Players.LocalPlayer.Character:FindFirstChild("Torso")

    local BV, BG = NewIns("BodyVelocity", T), NewIns("BodyGyro", T)
    BV.Velocity = Vector3(0, 0.1, 0)
    BV.MaxForce = Vector3(math.huge, math.huge, math.huge)
    BG.CFrame = T.CFrame
    BG.P = 9e9
    BG.MaxTorque = Vector3(9e9, 9e9, 9e9)

    local FlyPart = NewIns("Part", Workspace)
    FlyPart.Anchored = true
    FlyPart.Size = Vector3(6, 1, 6)
    FlyPart.Transparency = 1
    FlyPart.Name = "FlyPart"

    while Flying == true and LP and LP.Character and LP.Character:FindFirstChild("Humanoid") and
        LP.Character.Humanoid.Health ~= 0 and
        RunService.Heartbeat:Wait() and
        T do
        local Front, Back, Left, Right = 0, 0, 0, 0
        if KeysTable["W"] then
            Front = Flyspeed
        elseif not KeysTable["W"] then
            Front = 0
        end
        if KeysTable["A"] then
            Right = -Flyspeed
        elseif not KeysTable["A"] then
            Right = 0
        end
        if KeysTable["S"] then
            Back = -Flyspeed
        elseif not KeysTable["S"] then
            Back = 0
        end
        if KeysTable["D"] then
            Left = Flyspeed
        elseif not KeysTable["D"] then
            Left = 0
        end
        if tonumber(Front + Back) ~= 0 or tonumber(Left + Right) ~= 0 then
            BV.Velocity =
                ((Camera.CoordinateFrame.lookVector * (Front + Back)) +
                ((Camera.CoordinateFrame * CFrame(Left + Right, (Front + Back) * 0.2, 0).p) - Camera.CoordinateFrame.p)) *
                50
        else
            BV.Velocity = Vector3(0, 0.1, 0)
        end
        BG.CFrame = Camera.CoordinateFrame
    end

    FlyPart:Destroy()
    BG:Remove()
    BV:Remove()
end

function StateChangedEvent(T, Changed)
    if AntiGH == true then
        if LP and LP.Character and LP.Character:FindFirstChildOfClass "Humanoid" then
            if Changed == Enum.HumanoidStateType.FallingDown or Changed == Enum.HumanoidStateType.PlatformStanding then
                LP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
                LP.Character.Humanoid.PlatformStand = false -- Credits to Aidez for this part
            end
        end
    end
end
LP.Character:WaitForChild "Humanoid".StateChanged:Connect(StateChangedEvent)

function CharacterAddedEvent()
    LP.Character:WaitForChild "Humanoid"
    LP.Character.Humanoid.StateChanged:Connect(StateChangedEvent)
end
LP.CharacterAdded:Connect(CharacterAddedEvent)

if Flying and LP.Character then
    if LP.Character and LP.Character:FindFirstChild("Humanoid") then
        if Flying then
            LP.Character.Humanoid:ChangeState(3)
            if Enum.HumanoidStateType.FallingDown or Enum.HumanoidStateType.PlatformStanding then
                LP.Character.Humanoid.PlatformStand = false
                LP.Character.Humanoid:ChangeState(8)
            end
        end
    end
end

if Workspace:FindFirstChild("FlyPart") and FlyMethod == "Old" then
    Workspace:FindFirstChild("FlyPart").CFrame = LP.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.5, 0)
end

getgenv().FlyToggle = function()
    if FlyMethod == "New" then
        Fly()
    end
    if FlyMethod == "Old" then
        togglefly()
    end
end

USI.InputBegan:Connect(
    function(Key)
        if not USI:GetFocusedTextBox() then
            if Key.KeyCode == Enum.KeyCode[FlyKey] then
                FlyToggle()
            end
        end

        if not USI:GetFocusedTextBox() then
            if Key.KeyCode == Enum.KeyCode.W then
                KeysTable["W"] = true
            end
            if Key.KeyCode == Enum.KeyCode.A then
                KeysTable["A"] = true
            end
            if Key.KeyCode == Enum.KeyCode.S then
                KeysTable["S"] = true
            end
            if Key.KeyCode == Enum.KeyCode.D then
                KeysTable["D"] = true
            end

            if Key.KeyCode == Enum.KeyCode.LeftShift then
                KeysTable["LShift"] = true
                while Blink == true and KeysTable["LShift"] and LP and Char and RunService.Heartbeat:Wait() do
                    local CharRF =
                        LP.Character:FindFirstChild("HumanoidRootPart") or LP.Character:FindFirstChild("Torso")
                    local Hum = LP.Character:FindFirstChild("Humanoid")
                    CharRF.CFrame =
                        CharRF.CFrame +
                        Vector3(
                            Hum.MoveDirection.X * Blinkspeed,
                            Hum.MoveDirection.Y * Blinkspeed,
                            Hum.MoveDirection.Z * Blinkspeed
                        )
                end
            end

            if Key.KeyCode == Enum.KeyCode[PShootKey] and game.PlaceId ~= (Streets) and PrisonMode == "Keybind" then
                while USI:IsKeyDown(Enum.KeyCode[PShootKey]) and RunService.Heartbeat:Wait() do
                    pcall(
                        function()
                            PShootPlayer(AimlockPlayer)
                        end
                    )
                end
            end

            if Key.KeyCode == Enum.KeyCode[GetAmmoKey] and game.PlaceId == (Streets) then
                local SavePos = LP.Character:FindFirstChild("HumanoidRootPart").Position
                local RootTP = LP.Character:FindFirstChild("HumanoidRootPart")
                if Workspace:FindFirstChild("Buy Ammo | $25") then
                    local AmmoRoot = game.Workspace["Buy Ammo | $25"]
                    Teleporting = true
                    Keyheld = true
                    while Teleporting == true and Keyheld == true and RunService.Heartbeat:Wait() do
                        RootTP.CFrame = game.Workspace:FindFirstChild("Buy Ammo | $25"):FindFirstChildOfClass("Part").CFrame + Vector3(0.1, 1.1, 0.1)
                    end
                end
            end
            if Key.KeyCode == Enum.KeyCode[GetUziKey] and game.PlaceId == (Streets) then
                local SavePos = LP.Character:FindFirstChild("HumanoidRootPart").Position
                local HRPPosSaved = LP.Character:FindFirstChild("HumanoidRootPart")
                if Workspace:FindFirstChild("Uzi | $150") then
                    local UziRoot = game.Workspace["Uzi | $150"]
                    Teleporting = true
                    Keyheld = true
                    while Teleporting == true and Keyheld == true and RunService.Heartbeat:Wait() do
                        HRPPosSaved.CFrame = UziRoot:FindFirstChildOfClass("Part").CFrame + Vector3(0.1, 1.1, 0.1)
                    end
                end
            end
            if Key.KeyCode == Enum.KeyCode[GetGlockKey] and game.PlaceId == (Streets) then
                local SavePos = LP.Character:FindFirstChild("HumanoidRootPart").Position
                local HRPPosSaved = LP.Character:FindFirstChild("HumanoidRootPart")
                if Workspace:FindFirstChild("Glock | $200") then
                    local GlockRoot = BuyablesTable["glock"]
                    Teleporting = true
                    Keyheld = true
                    while Teleporting == true and Keyheld == true and RunService.Heartbeat:Wait() do
                        HRPPosSaved.CFrame = GlockRoot:FindFirstChildOfClass("Part").CFrame + Vector3(0.1, 1.1, 0.1)
                    end
                end
            end
            if Key.KeyCode == Enum.KeyCode[GetHealKey] and game.PlaceId == (Streets) then
                local OGPos = LP.Character:FindFirstChild("HumanoidRootPart").Position
                local HRPPosSaved = LP.Character:FindFirstChild("HumanoidRootPart")
                if Workspace:FindFirstChild("Burger | $15") then
                    local FoodRoot = game.Workspace["Burger | $15"]
                    Teleporting = true
                    Keyheld = true
                    while Teleporting == true and Keyheld == true and RunService.Heartbeat:Wait() do
                        HRPPosSaved.CFrame = FoodRoot:FindFirstChildOfClass("Part").CFrame + Vector3(0.1, 1.1, 0.1)
                    end
                end
            end
        end
    end
)
USI.InputEnded:Connect(
    function(Key --[[Typing]])
        if not USI:GetFocusedTextBox() then
            if Key.KeyCode == Enum.KeyCode.W then
                KeysTable["W"] = false
            end
            if Key.KeyCode == Enum.KeyCode.A then
                KeysTable["A"] = false
            end
            if Key.KeyCode == Enum.KeyCode.S then
                KeysTable["S"] = false
            end
            if Key.KeyCode == Enum.KeyCode.D then
                KeysTable["D"] = false
            end

            if Key.KeyCode == Enum.KeyCode.LeftShift then
                KeysTable["LShift"] = false
            end
            if Key.KeyCode == Enum.KeyCode[GetAmmoKey] then
                RootTP = OldPos
                Teleporting = false
                Keyheld = false
            end
            if Key.KeyCode == Enum.KeyCode[GetUziKey] then
                HRPPosSaved = SavePos
                Teleporting = false
                Keyheld = false
            end
            if Key.KeyCode == Enum.KeyCode[GetGlockKey] then
                HRPPosSaved = SavePos
                Teleporting = false
                Keyheld = false
            end
            if Key.KeyCode == Enum.KeyCode[GetHealKey] then
                HRPPosSaved = SavePos
                Teleporting = false
                Keyheld = false
            end
        end
    end
)

LP.CharacterAdded:Connect(
    function()
        repeat
            wait()
        until LP.Character:FindFirstChild("Humanoid")

        if AntiFe then
            AntiFe = false
        end
    end
)
--

if Flying and FlyMethod == "New" then
    Fly()
end

--[[ BYPASS ]] local Raw = getrawmetatable(game)
setreadonly(Raw, false)

local newcclosure, getnamecallmethod, checkcaller, getcaller =
    newcclosure,
    getnamecallmethod,
    checkcaller,
    getcallingscript


local NewIndex, NameCall
do
    local IsA, IsDescendantOf = game.IsA, game.IsDescendantOf
    local tfind = table.find

    local unpack = unpack

    local StarterGui = game:GetService "StarterGui"
    local SetCore = StarterGui.SetCore

    local NewIndexFunc = function(self, Key, Value)
        if not checkcaller() then
            if IsA(self, "Humanoid") then
                SetCore(StarterGui, "ResetButtonCallback", true)

                if tfind(ACFlags, Key) then
                    return
                end
            end
            if Key == "CFrame" and IsDescendantOf(self, Char) then
                return
            end
        end
        return NewIndex(self, Key, Value)
    end

    local NameCallFunc = function(self, ...)
        local Method = getnamecallmethod()
        local Args = {...}

        if checkcaller() then
            if Method == "FindFirstChild" and Args[1] == "RealHumanoidRootPart" then
                Args[1] = "Torso"
            end
            return NameCall(self, unpack(Args))
        end

        if (Method == "Destroy" or Method == "Kick") and (self == LP or IsA(self, "HumanoidRootPart")) then
            return wait(9e9)
        end
        if Method == "BreakJoints" and self == LP.Character then
            return wait(9e9)
        end

        if
            (Method == "WaitForChild" or Method == "FindFirstChild") and getcaller() ~= script and TpBypass == true and
                Args[1] == "Torso"
         then
            Args[1] = "Torso"
            return NameCall(self, unpack(Args))
        end

        if Method == "FireServer" then
            if tfind(ACFlags, Args[1]) then
                return wait(9e9)
            end

            local Name = self.Name

            if Name == "Input" then
                if tfind(INFlags, Args[1]) then
                    return wait(9e9)
                end

                if Aimlock and AimlockPlayer and game.PlaceId == Streets then
                    if Args[2] and Args[2].mousehit then
                        Args[2].mousehit = ShootPlayerPos()
                        Args[2].velo = math.huge
                        return NameCall(self, unpack(Args))
                    end
                end
                return NameCall(self, unpack(Args))
            end
                
                if Name == "Fire" or Name == "Shoot" then
                if tfind(INFlags, Args[1]) then
                    return wait(9e9)
                end

                if Aimlock and AimlockPlayer and game.PlaceId ~= tonumber(Streets)  and game.PlaceId ~= tonumber(Prison)then
                    if Args[1]  then
                        Args[1] = ShootPlayerPos()
                        return NameCall(self, unpack(Args))
                    end
                end
                if Aimlock and AimlockPlayer and game.PlaceId == tonumber(Prison) and PrisonMode == "PrisonReg" then 
                    return NameCall(self,ShootPlayerPos())
                end
                
                return NameCall(self, unpack(Args))
                end
        
            if self.Parent == ReplicatedStorage or Args[1] == "hey" and Name ~= "SayMessageRequest" then
                return wait(9e9)
            end
        end

        return NameCall(self, unpack(Args))
    end
        NewIndex = hookmetamethod(game, "__newindex", newcclosure(NewIndexFunc))
        NameCall = hookmetamethod(game, "__namecall", newcclosure(NameCallFunc))
end

RunService.RenderStepped:Connect(
    function()
        if
            Camlock ~= false and CamlockPlayer and CamlockPlayer.Character and CamMode == "Smooth" and
                CamlockPlayer.Character:FindFirstChild(CamPart)
         then
            Camera.CoordinateFrame = CFrame(Camera.CoordinateFrame.p, CamlockPlayer.Character[CamPart].CFrame.p)
        end
    end
)

RunService.Stepped:Connect(
    function()
        Lighting.ClockTime = ClockTime
        if AirwalkOn and LP.Character:FindFirstChildOfClass "Humanoid" and LP.Character.Torso and FlyMethod == "New" then
            LP.Character.Humanoid.HipHeight = 0
            AirWalk.CFrame = LP.Character.Torso.CFrame + Vector3(0, -3.5, 0)
        end

        if Noclip == true then
            local LG = LP.Character:GetChildren()
            for i = 1, #LG do
                if LG[i]:IsA("BasePart") or LG[i]:IsA("Part") then
                    LG[i].CanCollide = false
                end
            end
            pcall(
                function()
                    if LP and LP.Backpack then
                        LP.Backpack:FindFirstChild("Glock").Barrel.CanCollide = false
                    else
                        LP.Character.Glock.Barrel.CanCollide = false
                    end
                end
            )
        end

        if
            Camlock ~= false and CamlockPlayer and CamlockPlayer.Character and CamMode == "Rigid" and
                CamlockPlayer.Character:FindFirstChild(CamPart)
         then
            Camera.CoordinateFrame = CFrame(Camera.CoordinateFrame.p, CamlockPlayer.Character[CamPart].CFrame.p)
        end

        if Flying and LP.Character then
            if LP.Character and LP.Character:FindFirstChild("Humanoid") then
                RunService.Heartbeat:Wait()
                LP.Character.Humanoid.PlatformStand = false
                LP.Character.Humanoid.Sit = false
                LP.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
            end
        end
    end
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
            return
        end
        Blink = not Blink
        Notify("xen.systems v2", "Blinking: " .. tostring(Blink), "", 2)
    end,
    "blink",
    {"b"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
            return
        end
        Aimlock = not Aimlock
        Notify("xen.systems v2", "Aimlocking: " .. tostring(Aimlock), "", 2)
    end,
    "unaim",
    {"uns", "una"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
            return
        end
        Noclip = not Noclip
        Notify("xen.systems v2", "Noclipping: " .. tostring(Noclip), "", 2)
    end,
    "nc",
    {"noclip"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
            return
        end
        game.TeleportService:Teleport(game.PlaceId)
    end,
    "rejoin",
    {},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
            AimlockPlayer = psearch(Arguments[1])
            Aimlock = true
            Notify("xen.systems v2", "Aimlock Target: " .. tostring(AimlockPlayer), "", 2)
        end
    end,
    "aim",
    {"s"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
            UNESPTARGET = psearch(Arguments[1])
            if UNESPTARGET then 
         for i = 1,#ESPedPlayers do 
		local Table = ESPedPlayers[i]
		if Table then 
		    esploop:Disconnect()
		local Player = Table['Player']
			if Player then 
				for i,v in pairs(Table) do
					if v ~= Player then 
							v:Remove()
					end
				end
				table.remove(ESPedPlayers,i)
			end
		end 
end
            esploop:Disconnect()
          end
            Notify("xen.systems v2", "UnEsping: " .. tostring(UNESPTARGET), "", 2)
        end
    end,
    "unesp",
    {"unf"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
             for i = 1,#ESPedPlayers do 
		local Table = ESPedPlayers[i]
		if Table then 
		    esploop:Disconnect()
		local Player = Table['Player']
			if Player == Thing then 
				for i,v in pairs(Table) do
					if v ~= Player then 
							v:Remove()
					end
				end
				table.remove(ESPedPlayers,i)
			end
		end 
end
            ESPTARGET = psearch(Arguments[1])
            ESPPlayer(ESPTARGET)
            Notify("xen.systems v2", "ESP Target: " .. tostring(ESPTARGET), "", 2)
        end
    end,
    "esp",
    {"find"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] and tonumber(Arguments[1]) then
            Blinkspeed = Arguments[1]
            Notify("xen.systems v2", "Blinkspeed: " .. tostring(Blinkspeed), "", 2)
        end
    end,
    "blinkspeed",
    {"bs", "speed"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] and tonumber(Arguments[1]) then
            Flyspeed = Arguments[1]
            Notify("xen.systems v2", "Flyspeed: " .. tostring(Flyspeed), "", 2)
        end
    end,
    "flyspeed",
    {"fs", "fspeed"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] and tonumber(Arguments[1]) then
            TweenTime = Arguments[1]
            Notify("xen.systems v2", "TweenTime: " .. tostring(TweenTime), "", 2)
        end
    end,
    "tweentime",
    {"tt", "ttime"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] and tonumber(Arguments[1]) then
            AimVelocity = Arguments[1]
            Notify("xen.systems v2", "AimVelocity: " .. tostring(AimVelocity), "", 2)
        end
    end,
    "aimvelocity",
    {"svelocity", "av"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if Arguments[1] then
            CamlockPlayer = psearch(Arguments[1])
            Camlock = true
            Notify("xen.systems v2", "Camlock Target: " .. tostring(CamlockPlayer), "", 2)
        end
    end,
    "cam",
    {"cl"},
    "",
    ""
)

NewCommand(
    function(Arguments)
        if not Arguments[1] then
            CamlockPlayer = nil
            Camlock = false
        end
    end,
    "uncam",
    {"uncl"},
    "",
    ""
)

NewCommand(
    function()
        AirwalkOn = not AirwalkOn
        AirWalk.Parent = AirwalkOn and Workspace or not AirwalkOn and nil
    end,
    "airwalk",
    {},
    " only here for a fly!",
    ""
)

local SpamDelay = 1
local Spamming = false
local SpamMessage = ""

LP.Chatted:Connect(RunCommand)

UILibrary.theme.background = "rbxassetid://2151741365"
UILibrary.theme.titlesize = 15
UILibrary.theme.accentcolor = Color3.fromRGB(62, 0, 171)
UILibrary.theme.accentcolor2 = Color3.fromRGB(86, 0, 232)
if LP.Name ~= LP.DisplayName then
    UILibrary:CreateWatermark(
        "xen.systems | " ..
            game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name ..
                " | " .. LP.DisplayName .. "/" .. LP.Name
    )
elseif LP.Name == LP.DisplayName then
    UILibrary:CreateWatermark(
        "xen.systems | " .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name .. " | " .. LP.Name
    )
end
local window = UILibrary:CreateWindow("xen.systems", Vector2(492, 598), Enum.KeyCode.RightShift)
local maintab1 = window:CreateTab("Main")
local valuessector = maintab1:CreateSector("CharacterValues", "left")

local v_00 =
    valuessector:AddDropdown(
    "Flymode",
    {"Old", "New"},
    false,
    false,
    function(Name)
        if Name == "Old" then
            FlyMethod = "Old"
        elseif Name == "New" then
            FlyMethod = "New"
        end
    end
)

local v_0 =
    valuessector:AddSlider(
    "FlySpeed",
    1,
    8,
    20,
    false,
    function(value)
        Flyspeed = value
    end
)
local v_1 =
    valuessector:AddSlider(
    "Blinkspeed",
    1,
    1,
    20,
    false,
    function(value)
        Blinkspeed = value
    end
)
local maintab = maintab1:CreateSector("Main", "left")
local aimbotsector = maintab1:CreateSector("Aimbot", "right")
local spamsector = maintab1:CreateSector("Spam", "left")
local miscstuff = maintab1:CreateSector("Misc", "right")

miscstuff:AddSlider(
    "FOV",
    0,
    70,
    130,
    false,
    function(value)
        Camera.FieldOfView = value
    end
)
miscstuff:AddButton(
    "Get Game Last Updated",
    function()
        local asset = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
        local update_stamp = tostring(asset.Updated)

        function ConvertTimeStamp(time_stamp)
            local date_pattern = "%d%d%d%d%A%d%d%A%d%d"
            local stamp_date = string.sub(time_stamp, string.find(time_stamp, date_pattern))

            local split_date = string.split(stamp_date, "-")

            local year = split_date[1]
            local month = split_date[2]
            local day = split_date[3]

            local elapsed_years = (year - 1970)
            local elapsed_months = month - 1
            local elapsed_days = day - 1

            return year, month, day
        end

        Notify("xen.systems v2", tostring(year, month, day), "", 2)
    end
)

miscstuff:AddButton(
    "Print Commands",
    function()
        Notify("xen.systems", "Printing Commands", "", 2)
        rconsolename("xen.systems | DO NOT CLOSE!")
        rconsoleprint("@@RED@@")
        rconsolewarn(
            [[

xen.systems v2 by DranghetaLurk/LURKSDIVISI0N.
Discord Invite: https://discord.gg/rDsKjcnb
Owners Discord: pietasfanboy#5458
===========================================
Misc Credits:
xaxa (Showed me a few cool things.) machport (the shadowing on UI elements.)
===========================================
Commands:

[1] aim, s <targetname> Aimlocks a player.
[2] cam, cl <targetname> Camlocks a player.
[3] blinkspeed, bs, speed <number> sets your blinkspeed
[4] blink, b <no args> Increases your speed when you press shift
[5] aimvelocity, av, svelocity <number> Sets your velocity divider for velocity prediction.
[6] tweentime, tt, ttime <number> how fast notifications tween
[7] rejoin, rj <no args> self explanatory, rejoins current game
[8] unaim, uns, una <no args>  toggles off aimlock (self explanatory)
[9] nc, noclip <no args> toggles noclip
[10] uncam, uncl <no args> toggles off camlock
[11] airwalk <no args> bit broken in reg might ban you don't use it yet


UI Elements:

UI Library stuff is pretty self explanatory?
Info GUI on the right of the screen shows you your stats and also bools.
NewVelocity works better on legits or if you really good ping it usually works better.
OldVelocity works better on exploiters or if you just have bad ping it works better.
PrisonAimlock Press E to shoot, works like New Velocity because its better for prison.
TPBypass bit buggy sometimes?
Fly Mode <new> works better in reg and prison
Fly Mode <old> makes you a bit harder to hit but breaks shooting a bit.

Enjoy,

Current Version : v2.1 Alpha
The Streets last updated: 2021, 09, 25 (Y, D, M)
]]
        )
    end
)

spamsector:AddToggle(
    "Spamming Enabled",
    default,
    function(state)
        Spamming = state
        while Spamming == true do
            wait()
            wait(SpamDelay)
            ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SpamMessage, "All")
        end
    end
)
spamsector:AddSlider(
    "Spam Delay",
    0,
    1,
    5,
    false,
    function(value)
        SpamDelay = value
    end
)
spamsector:AddTextbox(
    "Spam Message",
    false,
    function(text)
        SpamMessage = text
    end
)

local A_0 =
    aimbotsector:AddToggle(
    "Aimlock",
    default,
    function(state)
        Aimlock = state
    end
)

local A_001 =
    aimbotsector:AddToggle(
    "Predict Y",
    default,
    function(state)
        ShootY = state
    end
)
local A_01 =
    A_0:AddKeybind(
    Enum.KeyCode.T,
    function()
        Notify("xen.systems v2", "Aimlocking: " .. Aimlock, "", 2)
    end
)
if game.PlaceId == tonumber(Prison) then 
     local A_222 =
        aimbotsector:AddDropdown(
        "Fire Aimlock Method",
        {"Keybind", "Regular"},
        false,
        false,
        function(Name)
            if Name == "Keybind" then
                PrisonMode = "Keybind"
            elseif Name == "Regular" then
                PrisonMode = "PrisonReg"
            end
        end
    )
end

    local A_2 =
        aimbotsector:AddDropdown(
        "AimMode",
        {"NewVelocity", "OldVelocity"},
        false,
        false,
        function(Name)
            if Name == "OldVelocity" then
                AimMode = "OldVelocity"
            elseif Name == "NewVelocity" then
                AimMode = "NewVelocity"
            end
        end
    )

local A_20 =
    aimbotsector:AddDropdown(
    "AimPart",
    {"Head", "Torso", "HumanoidRootPart"},
    false,
    false,
    function(Name)
        if Name == "Head" then
            AimPart = "Head"
        elseif Name == "Torso" then
            AimPart = "Torso"
        elseif Name == "HumanoidRootPart" then
            AimPart = "HumanoidRootPart"
        end
    end
)

local A_3 =
    aimbotsector:AddDropdown(
    "CamPart",
    {"Head", "Torso", "HumanoidRootPart"},
    false,
    false,
    function(Name)
        if Name == "Head" then
            CamPart = "Head"
        elseif Name == "Torso" then
            CamPart = "Torso"
        elseif Name == "HumanoidRootPart" then
            CamPart = "HumanoidRootPart"
        end
    end
)

local A_4 =
    aimbotsector:AddSlider(
    "AimVelocity",
    1,
    7,
    10,
    false,
    function(value)
        AimVelocity = value
    end
)

local A_5 =
    aimbotsector:AddDropdown(
    "CamMode",
    {"Smooth", "Rigid"},
    false,
    false,
    function(Name)
        if Name == "Smooth" then
            CamMode = "Smooth"
        elseif Name == "Rigid" then
            CamMode = "Rigid"
        end
    end
)

local M_1 =
    maintab:AddToggle(
    "Noclipping",
    default,
    function(state)
        Noclip = state
        Notify("xen.systems v2", "Noclipping: " .. Noclip, "", 2)
    end
)

local M_100 =
    maintab:AddToggle(
    "Disable Animations",
    default,
    function(state)
        LP.Character:FindFirstChild("Animate").Disabled = state
    end
)

local M_01 =
    M_1:AddKeybind(
    Enum.KeyCode.X,
    function()
    end
)
local M_2 =
    maintab:AddToggle(
    "Blinking",
    default,
    function(state)
        Blink = state
    end
)

local M_3 =
    maintab:AddToggle(
    "AntiSit",
    default,
    function(state)
        AntiSit = state
        ToggleAntiSit()
    end
)

local M_4 =
    maintab:AddToggle(
    "Prison TPBypass",
    default,
    function(state)
        if game.PlaceId == tonumber(Prison) then
            TpBypass = state
            if TpBypass == true then
                game.Players.LocalPlayer.Character:BreakJoints()
                LP.Character:WaitForChild("HumanoidRootPart")
                LP.Character["HumanoidRootPart"]:Destroy()
                LP.CharacterAdded:Connect(
                    function()
                        if TpBypass == true then
                            LP.Character:WaitForChild("HumanoidRootPart")
                            LP.Character["HumanoidRootPart"]:Destroy()
                        end
                    end
                )
            end
        end
    end
)

local M_5 =
    maintab:AddToggle(
    "Anti Groundhit",
    default,
    function(state)
        AntiGH = state
    end
)
if game.PlaceId == tonumber(Streets) then
    local M_6 =
        maintab:AddToggle(
        "Infinite Stamina",
        default,
        function(state)
            InfStam = state
            local Stam = LP.Character:FindFirstChild("Stamina")
            LP.Character:FindFirstChild("Stamina"):GetPropertyChangedSignal("Value"):Connect(
                function()
                    LP.Character:FindFirstChild("Stamina").Value = 100
                end
            )
        end
    )
end

if game.PlaceId == tonumber(Prison) then
    local M_6 =
        maintab:AddToggle(
        "Infinite Stamina",
        default,
        function(state)
            InfStam = state
            local Stam = LP.Backpack:FindFirstChild("ServerTraits").Stann
            LP.Backpack:FindFirstChild("ServerTraits").Stann:GetPropertyChangedSignal("Value"):Connect(
                function()
                    LP.Backpack:FindFirstChild("ServerTraits").Stann.Value = 100
                end
            )
        end
    )
end
if InfStam == true then
    LP.CharacterAdded:Connect(
        function()
            repeat
                wait()
            until Stam
            Stam:GetPropertyChangedSignal("Value"):Connect(
                function()
                    Stam.Value = 100
                end
            )
        end
    )
end

getgenv().CashFarming = false
local ID = "rbxassetid://511726060"
local TeleportSpeed = 3
local CycleWaitTime = 10

while CashFarming do
    wait(CycleWaitTime)
    for _, v in next, Workspace:GetDescendants() do
        if v:IsA("MeshPart") and v.MeshId == tostring(ID) then
            print("there is cash")
            local Teleport =
                TweenService:Create(
                LP.Character.HumanoidRootPart,
                TweenInfo.new(TeleportSpeed + .1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
                {CFrame = v.CFrame}
            )
            Teleport:Play()
        end
    end
end
maintab:AddToggle(
    "WIP AUTOFARM",
    default,
    function(state)
        getgenv().CashFarming = state
    end
)

maintab:AddButton(
    "Rejoin",
    function()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
)

maintab:AddButton(
    "Kick Self",
    function()
        LP:Kick()
    end
)
maintab:AddButton(
    "Copy Discord Invite",
    function()
        setclipboard("https://discord.gg/rDsKjcnb")
    end
)
maintab:AddButton(
    "Copy Owners Discord Tag",
    function()
        setclipboard("pietasfanboy#5458")
    end
)



local visualstab = window:CreateTab("Visuals")
local sector0 = visualstab:CreateSector("ESP Options", "left")
local bindstab = window:CreateTab("KeyBinds")

local v_2 =
    sector0:AddDropdown(
    "Player ESP Font",
    {"UI", "System", "Plex","Monospace"},
    false,
    false,
    function(Name)
        if Name == "UI" then
            EspFont = 0
        elseif Name == "System" then
            EspFont = 1
        elseif Name == "Plex" then
            EspFont = 2
        elseif Name == "Monospace" then
            EspFont = 3
        end
    end
)

local v_4 =
    sector0:AddDropdown(
    "Item ESP Font",
    {"Gotham", "Code", "SourceSans"},
    false,
    false,
    function(Name)
        if Name == "Gotham" then
            ItemEspFont = "Gotham"
        elseif Name == "Code" then
            ItemEspFont = "Code"
        elseif Name == "SourceSans" then
            ItemEspFont = "SourceSans"
        end
    end
)

local v_1 =
    sector0:AddSlider(
    "Player ESP Text Size",
    12,
    16,
    30,
    false,
    function(value)
        EspFontSize = value
    end
)

local v_1 =
    sector0:AddSlider(
    "Item ESP Text Size",
    12,
    16,
    30,
    false,
    function(value)
        ItemEspFontSize = value
    end
)
sector0:AddToggle("Item ESP",default,function(State)
    ItemEsp = State 
    if ItemEsp == false then
        for i,v in pairs(game.Workspace:GetDescendants()) do 
            if v.Name == "TracerPart" then v:Destroy()
            end
        end
    end
    if ItemEsp == true then 
        for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "RandomSpawner" then
        itemesppart(v)
    end
end
    end
    
end)

local keybindsector = bindstab:CreateSector("Ammo/Food", "left")
local mainbindsector = bindstab:CreateSector("Movement Keys", "right")
local flybox =
    mainbindsector:AddTextbox(
    "Fly Key",
    false,
    function(l)
        FlyKey = l
    end
)

local getammobox =
    keybindsector:AddTextbox(
    "Buy Ammo Key",
    false,
    function(l)
        GetAmmoKey = l
    end
)
local getglockbox =
    keybindsector:AddTextbox(
    "Buy Glock Key",
    false,
    function(l)
        GetGlockKey = l
    end
)
local getuzibox =
    keybindsector:AddTextbox(
    "Buy Uzi Key",
    false,
    function(l)
        GetUziKey = l
    end
)
local getfoodbox =
    keybindsector:AddTextbox(
    "Buy Food Key",
    false,
    function(l)
        GetHealKey = l
    end
)

local pshootbox =
    keybindsector:AddTextbox(
    "Prison Shoot Lock Key",
    false,
    function(i)
        PShootKey = tostring(i)
    end
)

local configs = window:CreateTab("Config")
configs:CreateConfigSystem("left")

local MapSector = visualstab:CreateSector("Map", "left")
local SkySector = visualstab:CreateSector("SkyBox", "left")
local LightingSector = visualstab:CreateSector("Lighting/Ambience", "right")

local L_1 =
    LightingSector:AddSlider(
    "ClockTime/Time",
    0,
    7,
    14,
    false,
    function(value)
        ClockTime = value
    end
)

LightingSector:AddButton(
    "Fix Brightness",
    function()
        game:GetService("Lighting").ColorCorrection.Brightness = 0.04
    end
)

local L_2 =
    LightingSector:AddColorpicker(
    "Light Hue/Ambience Color",
    Color3.fromRGB(255, 255, 255),
    function(Color)
        local C3 = Color
        local r, g, b = math.round(C3.R * 255), math.round(C3.G * 255), math.round(C3.B * 255)
        local RGB_Color = Color3.fromRGB(r, g, b)

        game.Lighting.ColorCorrection.TintColor = RGB_Color
    end
)

SkySector:AddButton(
    "Summer/Spring Sky",
    function()
        SummerSkyBox()
    end
)

SkySector:AddButton(
    "Fall/Halloween Sky",
    function()
        FallSky()
    end
)

SkySector:AddButton(
    "Winter/Christmas Sky",
    function()
        WinterSky()
    end
)
SkySector:AddButton(
    "Prison/BanlandTS Sky",
    function()
        PrisonSky()
    end
)
SkySector:AddButton(
    "Retro/RetroWave/90's Sky",
    function()
        RetroSky()
    end
)
SkySector:AddButton(
    "Galaxy/Space Sky",
    function()
        GalaxySky()
    end
)

MapSector:AddButton(
    "Summer/Spring",
    function()
        for _, v in next, Workspace:GetChildren() do
            if v.Name == "ChangableSeasonPart" then
                v.Color = Color3.fromRGB(188, 155, 93)
            end
        end

        for _, v in next, Workspace:GetDescendants() do
            if v.Name == "PlantColor1" or v.Name == "PlantColor3" or v.Name == "PlantColor2" then
                v.Color = Color3.fromRGB(91, 154, 76)
            end
        end
        for i, v in next, game:GetService("Workspace"):GetDescendants() do
            if v:IsA("Model") and v.Name == "Plants" then
                v:Destroy()
            end
        end
    end
)

MapSector:AddButton(
    "Winter/Christmas",
    function()
        for _, v in next, Workspace:GetChildren() do
            if v.Name == "ChangableSeasonPart" then
                v.Color = Color3.fromRGB(79, 121, 125)
            end
        end

        for _, v in next, Workspace:GetDescendants() do
            if v.Name == "PlantColor1" or v.Name == "PlantColor3" or v.Name == "PlantColor2" then
                v.Color = Color3.fromRGB(255, 255, 255)
            end
        end
        for i, v in next, game:GetService("Workspace"):GetDescendants() do
            if v:IsA("Model") and v.Name == "Plants" then
                v:Destroy()
            end
        end
    end
)

MapSector:AddButton(
    "Fall/Halloween",
    function()
        for _, v in next, Workspace:GetChildren() do
            if v.Name == "ChangableSeasonPart" then
                v.Color = Color3.fromRGB(105, 64, 40)
            end
        end

        for _, v in next, Workspace:GetDescendants() do
            if v.Name == "PlantColor1" or v.Name == "PlantColor3" or v.Name == "PlantColor2" then
                v.Color = Color3.fromRGB(188, 79, 29)
            end
        end
        for i, v in next, game:GetService("Workspace"):GetDescendants() do
            if v:IsA("Model") and v.Name == "Plants" then
                v:Destroy()
            end
        end
    end
)

local BulletSector = visualstab:CreateSector("Bullets", "right")

local B_1 =
    BulletSector:AddSlider(
    "BulletTransparency",
    0,
    0.5,
    1,
    false,
    function(value)
        BulletTransparency = value
    end
)

local B_2 =
    BulletSector:AddSlider(
    "BulletTrailTime",
    1,
    1,
    10,
    false,
    function(value)
        BulletTrailTime = value
    end
)

local B_3 =
    BulletSector:AddColorpicker(
    "Bullet Color",
    Color3.fromRGB(255, 255, 255),
    function(Color)
        local C3 = Color
        local r, g, b = math.round(C3.R * 255), math.round(C3.G * 255), math.round(C3.B * 255)
        local RGB_Color = Color3.fromRGB(r, g, b)

        BulletColor = RGB_Color
    end
)

getgenv().ApplyBulletChange = function(Bullet)
    if Bullet and Bullet:IsA("Trail") then
        Bullet.Lifetime = BulletTrailTime
        Bullet.Transparency = NumberSequence.new(BulletTransparency)
        Bullet.Color = ColorSequence.new(BulletColor)
    end
end

LP.Character.DescendantAdded:Connect(ApplyBulletChange)
LP.CharacterAdded:Connect(
    function()
        LP.Character.DescendantAdded:Connect(ApplyBulletChange)
    end
)

Notify("xen.systems v2", "Script Loaded!", "", 2)
