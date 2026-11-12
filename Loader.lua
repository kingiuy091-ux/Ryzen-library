-- RYZEN LIBRARY V13.0 | ORION EDITION (GOD-EMPEROR)
-- Создатель: dfgghh500

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Qanuir/orion-ui/refs/heads/main/source.lua"))()

local Window = OrionLib:MakeWindow({
    Name = "RYZEN LIBRARY V13.0 | БОГ-КРЕАТОР",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "RyzenLibrary"
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CreatorName = "dfgghh500"

-- ============================================================
-- 1. СИСТЕМА БОГ-КРЕАТОРА
-- ============================================================
local function setupCreatorTag()
    if LocalPlayer.Name == CreatorName and LocalPlayer.Character then
        local head = LocalPlayer.Character:FindFirstChild("Head")
        if head and not head:FindFirstChild("CreatorTag") then
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "CreatorTag"
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 250, 0, 60)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = head

            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.Text = "👑 БОГ-КРЕАТОР 👑"
            textLabel.Font = Enum.Font.GothamBold
            textLabel.TextSize = 22
            textLabel.TextStrokeTransparency = 0
            textLabel.TextColor3 = Color3.new(1, 0, 0)
            textLabel.Parent = billboard

            task.spawn(function()
                while billboard.Parent do
                    task.wait(0.1)
                    local hue = (tick() % 1)
                    textLabel.TextColor3 = Color3.fromHSV(hue, 1, 1)
                end
            end)
        end
    end
end
setupCreatorTag()
LocalPlayer.CharacterAdded:Connect(function() task.wait(1) setupCreatorTag() end)

-- ============================================================
-- 2. О ПРОЕКТЕ
-- ============================================================
local InfoTab = Window:MakeTab({
    Name = "💖 О ПРОЕКТЕ",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

InfoTab:AddParagraph("RYZEN LIBRARY V13.0", "Личная библиотека скриптов для MM2. Собрана из открытых источников. Включает проверенные хабы и эксклюзивные фишки. Создано для удобства и контента.")
InfoTab:AddParagraph("ОСОБЕННОСТИ", "• Работает на Delta/Mobile\n• Без ключей и вирусов\n• Радужный ник БОГ-КРЕАТОР\n• Внутренний чат\n• Шейдеры и эстетика\n• Админ-панель (только для Создателя)\n• Две молитвы")
InfoTab:AddParagraph("ПОДДЕРЖАТЬ ПРОЕКТ", "Если хочешь поддержать автора, вот карта: 2202 2088 2678 5819 ❤️ Спасибо!")

-- ============================================================
-- 3. ТОП СКРИПТЫ
-- ============================================================
local TopTab = Window:MakeTab({ Name = "🔥 ТОП", Icon = "rbxassetid://4483345998", PremiumOnly = false })

TopTab:AddButton({ Name = "⚡ ThunderHub (Твой)", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/thunderXhub/ThunderXHUB/refs/heads/main/loader'))() end })
TopTab:AddButton({ Name = "🦊 FoxName Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/xv3gasx/Murder-Mystery-2/refs/heads/main/Release.lua"))() end })
TopTab:AddButton({ Name = "🚀 Vertex Hub", Callback = function() loadstring(game:HttpGet('https://raw.smokingscripts.org/vertex.lua'))() end })
TopTab:AddButton({ Name = "🧠 TravHub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/mm2scripthub/TravHub/refs/heads/main/MurderMystery2'))() end })
TopTab:AddButton({ Name = "💀 Revenge Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Revenge-Hub-Roblox/Scripts/refs/heads/main/mm2.lua", true))() end })
TopTab:AddButton({ Name = "🔥 YHUB (Mobile)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/YHUB-Community/refs/heads/main/Murder-Mystery2"))() end })

-- ============================================================
-- 4. АВТОФАРМ
-- ============================================================
local FarmTab = Window:MakeTab({ Name = "💰 АВТОФАРМ", Icon = "rbxassetid://4483345998", PremiumOnly = false })

FarmTab:AddButton({ Name = "💎 ManaV2", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Maanaaaa/ManaV2ForRoblox/main/MainScript.lua"))() end })
FarmTab:AddButton({ Name = "🌙 Moondiety", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/m00ndiety/Moondiety/refs/heads/main/Loader'))() end })
FarmTab:AddButton({ Name = "🪐 Space Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua"))() end })
FarmTab:AddButton({ Name = "🐝 Beecon Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub"))() end })
FarmTab:AddButton({ Name = "☁️ Azure MM2", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Aura-56/MurderMystery2/refs/heads/main/Autofarm.lua", true))() end })
FarmTab:AddButton({ Name = "💓 Pulse Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/5857a6cfae3b902eb3c2dff7cdbf173b.lua"))() end })

-- ============================================================
-- 5. ESP & ТП
-- ============================================================
local EspTab = Window:MakeTab({ Name = "👁️ ESP & ТП", Icon = "rbxassetid://4483345998", PremiumOnly = false })

EspTab:AddButton({ Name = "⚡ Zenith Pro", Callback = function() loadstring(game:HttpGet("https://gist.githubusercontent.com/sorg1231231/ab4e64b41b87184c796d83cac3e179df/raw/ZenithPro.lua"))() end })
EspTab:AddButton({ Name = "🔫 Kuni Hub", Callback = function() loadstring(game:HttpGet("https://cdn.sourceb.in/bins/H8U6QGXd0r/0"))() end })
EspTab:AddButton({ Name = "🌊 Waguri MM2", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Waguriiiii/Murder-mystery-2/refs/heads/main/Waguri.lua"))() end })
EspTab:AddButton({ Name = "🌪️ Aether Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/aluucardd/MM2/refs/heads/main/Aether%20Hub%20MM2"))() end })
EspTab:AddButton({ Name = "🧠 YARHM (Лёгкий)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", true))() end })

-- ============================================================
-- 6. VISUAL
-- ============================================================
local VisualTab = Window:MakeTab({ Name = "🎨 VISUAL", Icon = "rbxassetid://4483345998", PremiumOnly = false })

VisualTab:AddButton({ Name = "Sakura (Розовый)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(255, 182, 193) cc.Saturation = 0.3 cc.Parent = game.Lighting end })
VisualTab:AddButton({ Name = "Ad (Красный)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(255, 0, 0) cc.Saturation = 0.6 cc.Parent = game.Lighting end })
VisualTab:AddButton({ Name = "Matrix (Зеленый)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(0, 255, 0) cc.Saturation = 0.4 cc.Parent = game.Lighting end })
VisualTab:AddButton({ Name = "Объемный Шейдер", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local bloom = Instance.new("BloomEffect") bloom.Intensity = 0.4 bloom.Size = 24 bloom.Threshold = 0.9 bloom.Parent = game.Lighting local cc = Instance.new("ColorCorrectionEffect") cc.Brightness = 0.05 cc.Contrast = 0.15 cc.Saturation = 0.1 cc.Parent = game.Lighting end })
VisualTab:AddButton({ Name = "Сброс", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end end })

-- ============================================================
-- 7. ЧАТ
-- ============================================================
local ChatTab = Window:MakeTab({ Name = "💬 ЧАТ", Icon = "rbxassetid://4483345998", PremiumOnly = false })
local currentMessage = ""

ChatTab:AddTextbox({
    Name = "Сообщение",
    Default = "",
    TextDisappear = false,
    Callback = function(text) currentMessage = text end
})

ChatTab:AddButton({
    Name = "ОТПРАВИТЬ",
    Callback = function()
        if currentMessage ~= "" then
            OrionLib:MakeNotification({
                Name = LocalPlayer.DisplayName,
                Content = currentMessage,
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            currentMessage = ""
        end
    end
})

-- ============================================================
-- 8. RYZEN
-- ============================================================
local RyzenTab = Window:MakeTab({ Name = "⚡ RYZEN", Icon = "rbxassetid://4483345998", PremiumOnly = false })

RyzenTab:AddButton({
    Name = "Звук Бах",
    Callback = function()
        local s = Instance.new("Sound", workspace)
        s.SoundId = "rbxassetid://131961136"
        s.Volume = 10
        s:Play()
        game.Debris:AddItem(s, 3)
    end
})

RyzenTab:AddButton({
    Name = "ХУЙНЯ",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "ХУЙНЯ",
            Content = "Ты нажал на хуйню. Поздравляю, ты официально крутой.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- ============================================================
-- 9. ЛОББИ (С ДВУМЯ МОЛИТВАМИ)
-- ============================================================
local LobbyTab = Window:MakeTab({ Name = "🏠 ЛОББИ", Icon = "rbxassetid://4483345998", PremiumOnly = false })

LobbyTab:AddButton({
    Name = "Jerk Off (R6+R15)",
    Callback = function()
        task.spawn(function()
            local success, err = pcall(function()
                local humanoid = LocalPlayer.Character.Humanoid
                if humanoid.RigType == Enum.HumanoidRigType.R15 then
                    loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
                else
                    loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
                end
            end)
            if not success then
                OrionLib:MakeNotification({
                    Name = "JERK OFF",
                    Content = "Ошибка: " .. tostring(err),
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end)
    end
})

LobbyTab:AddButton({
    Name = "Спам Прыжками",
    Callback = function()
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum then
                for i = 1, 20 do
                    hum.Jump = true
                    task.wait(0.1)
                end
            end
        end
    end
})

-- ПЕРВАЯ МОЛИТВА (КОНТРАКТ)
LobbyTab:AddButton({
    Name = "🙏 КОНТРАКТ С РАЙЗЕНОМ (Выбор)",
    Callback = function()
        local gui = Instance.new("ScreenGui")
        gui.Name = "ContractGui"
        gui.ResetOnSpawn = false
        gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        frame.BackgroundTransparency = 0.1
        frame.Parent = gui

        local text = Instance.new("TextLabel")
        text.Size = UDim2.new(0.8, 0, 0.5, 0)
        text.Position = UDim2.new(0.1, 0, 0.1, 0)
        text.BackgroundTransparency = 1
        text.TextScaled = true
        text.Font = Enum.Font.GothamBold
        text.TextColor3 = Color3.fromRGB(255, 255, 255)
        text.Text = "КОНТРАКТ С РАЙЗЕНОМ\n\n" ..
                     "Я клянусь в верности Великому Райзену и Создателю dfgghh500.\n\n" ..
                     "Подписывая этот контракт, я обязуюсь фармить монеты и убивать мардеров.\n\n" ..
                     "Если я откажусь, меня кикнет из игры нахуй."
        text.Parent = frame

        local yesBtn = Instance.new("TextButton")
        yesBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
        yesBtn.Position = UDim2.new(0.15, 0, 0.7, 0)
        yesBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        yesBtn.Text = "ПОДПИСАТЬ"
        yesBtn.TextColor3 = Color3.new(1, 1, 1)
        yesBtn.Font = Enum.Font.GothamBold
        yesBtn.TextSize = 20
        yesBtn.Parent = frame

        local noBtn = Instance.new("TextButton")
        noBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
        noBtn.Position = UDim2.new(0.55, 0, 0.7, 0)
        noBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
        noBtn.Text = "ОТКАЗАТЬСЯ"
        noBtn.TextColor3 = Color3.new(1, 1, 1)
        noBtn.Font = Enum.Font.GothamBold
        noBtn.TextSize = 20
        noBtn.Parent = frame

        yesBtn.MouseButton1Click:Connect(function()
            gui:Destroy() 
            local forgiveGui = Instance.new("ScreenGui")
            forgiveGui.Name = "ForgiveGui"
            forgiveGui.ResetOnSpawn = false
            forgiveGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

            local forgiveFrame = Instance.new("Frame")
            forgiveFrame.Size = UDim2.new(1, 0, 1, 0)
            forgiveFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            forgiveFrame.BackgroundTransparency = 0.1
            forgiveFrame.Parent = forgiveGui

            local forgiveText = Instance.new("TextLabel")
            forgiveText.Size = UDim2.new(0.9, 0, 0.6, 0)
            forgiveText.Position = UDim2.new(0.05, 0, 0.2, 0)
            forgiveText.BackgroundTransparency = 1
            forgiveText.TextScaled = true
            forgiveText.Font = Enum.Font.GothamBold
            forgiveText.TextColor3 = Color3.fromRGB(255, 215, 0)
            forgiveText.Text = "О, ВЕЛИКИЙ РАЙЗЕН И DFGGHH500 ПРОСТЯТ ТЕБЯ!\n\nТЫ ПОДПИСАЛ КОНТРАКТ."
            forgiveText.Parent = forgiveFrame

            task.wait(10)
            forgiveGui:Destroy()
        end)

        noBtn.MouseButton1Click:Connect(function()
            gui:Destroy()
            LocalPlayer:Kick("Ты отказался от контракта. Райзен не прощает.")
        end)
    end
})

-- ВТОРАЯ МОЛИТВА (КЛЯТВА БОГУ-КРЕАТОРУ)
LobbyTab:AddButton({
    Name = "🙏 КЛЯТВА БОГУ-КРЕАТОРУ (Вторая молитва)",
    Callback = function()
        local gui = Instance.new("ScreenGui")
        gui.Name = "OathGui"
        gui.ResetOnSpawn = false
        gui.Parent = LocalPlayer:WaitForChild("PlayerGui")

        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        frame.BackgroundTransparency = 0.1
        frame.Parent = gui

        local text = Instance.new("TextLabel")
        text.Size = UDim2.new(0.8, 0, 0.5, 0)
        text.Position = UDim2.new(0.1, 0, 0.1, 0)
        text.BackgroundTransparency = 1
        text.TextScaled = true
        text.Font = Enum.Font.GothamBold
        text.TextColor3 = Color3.fromRGB(255, 255, 255)
        text.Text = "КЛЯТВА БОГУ-КРЕАТОРУ\n\n" ..
                     "Я, [Твое Имя], признаю dfgghh500 своим БОГОМ-КРЕАТОРОМ.\n\n" ..
                     "Я обязуюсь не вырезать его код, не оптимизировать скрипты и не урезать описания.\n\n" ..
                     "Если я нарушу эту клятву, пусть мой GitHub заблокируют нахуй."
        text.Parent = frame

        local yesBtn = Instance.new("TextButton")
        yesBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
        yesBtn.Position = UDim2.new(0.15, 0, 0.7, 0)
        yesBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        yesBtn.Text = "КЛЯНУСЬ"
        yesBtn.TextColor3 = Color3.new(1, 1, 1)
        yesBtn.Font = Enum.Font.GothamBold
        yesBtn.TextSize = 20
        yesBtn.Parent = frame

        local noBtn = Instance.new("TextButton")
        noBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
        noBtn.Position = UDim2.new(0.55, 0, 0.7, 0)
        noBtn.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
        noBtn.Text = "НЕТ"
        noBtn.TextColor3 = Color3.new(1, 1, 1)
        noBtn.Font = Enum.Font.GothamBold
        noBtn.TextSize = 20
        noBtn.Parent = frame

        yesBtn.MouseButton1Click:Connect(function()
            gui:Destroy()
            OrionLib:MakeNotification({
                Name = "КЛЯТВА ПРИНЯТА",
                Content = "Бог-Креатор доволен тобой. Спасибо, что не оптимизируешь код.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end)

        noBtn.MouseButton1Click:Connect(function()
            gui:Destroy()
            OrionLib:MakeNotification({
                Name = "ОТКАЗ",
                Content = "Ты отказался. Бог-Креатор огорчен. Жди бан.",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end)
    end
})

-- ТАНЦЫ
LobbyTab:AddButton({
    Name = "Танец 1 (R15)",
    Callback = function()
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum and hum.RigType == Enum.HumanoidRigType.R15 then
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://507771019"
                local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim)
                track:Play()
                task.wait(5)
                track:Stop()
            end
        end
    end
})

LobbyTab:AddButton({
    Name = "Танец 2 (R15)",
    Callback = function()
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChild("Humanoid")
            if hum and hum.RigType == Enum.HumanoidRigType.R15 then
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://507770453"
                local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim)
                track:Play()
                task.wait(5)
                track:Stop()
            end
        end
    end
})

-- ============================================================
-- 10. АНИМЕ-ТЯН
-- ============================================================
local AnimeTab = Window:MakeTab({ Name = "🌸 АНИМЕ-ТЯН", Icon = "rbxassetid://4483345998", PremiumOnly = false })

AnimeTab:AddParagraph("ТОП ЧИТОВ ДЛЯ АНИМЕ-ТЯНОК", "Специально для ценителей эстетики. Здесь собраны визуальные фишки и приколы. Альтушки оценят.")

AnimeTab:AddButton({
    Name = "Включить Розовый Шейдер (Sakura)",
    Callback = function()
        for _, v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("ColorCorrectionEffect") then v:Destroy() end
        end
        local cc = Instance.new("ColorCorrectionEffect")
        cc.TintColor = Color3.fromRGB(255, 105, 180)
        cc.Saturation = 0.4
        cc.Contrast = 0.1
        cc.Parent = game.Lighting
    end
})

AnimeTab:AddButton({
    Name = "Показать секретную пасхалку",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "🌸 Аниме-Тян",
            Content = "Спасибо, что пользуешься библиотекой! Бай, Райзен~",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- ============================================================
-- 11. ССЫЛКИ
-- ============================================================
local LinksTab = Window:MakeTab({ Name = "🔗 ССЫЛКИ", Icon = "rbxassetid://4483345998", PremiumOnly = false })

LinksTab:AddButton({
    Name = "Скопировать TikTok",
    Callback = function()
        setclipboard("https://tiktok.com/@ryzenlibrary")
        OrionLib:MakeNotification({
            Name = "TikTok",
            Content = "Скопировано!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

-- ============================================================
-- 12. АДМИН-ПАНЕЛЬ (ТОЛЬКО ДЛЯ ТЕБЯ)
-- ============================================================
if LocalPlayer.Name == CreatorName then
    local TargetPlayer = nil

    local PlayersTab = Window:MakeTab({ Name = "👥 ИГРОКИ (АДМИН)", Icon = "rbxassetid://4483345998", PremiumOnly = false })

    PlayersTab:AddDropdown({
        Name = "Выбрать игрока (Цель)",
        Options = (function()
            local t = {}
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer then table.insert(t, p.Name) end
            end
            return t
        end)(),
        Default = "",
        Callback = function(option)
            TargetPlayer = Players:FindFirstChild(option)
            if TargetPlayer then
                OrionLib:MakeNotification({
                    Name = "ЦЕЛЬ ВЫБРАНА",
                    Content = "Ты выбрал: " .. TargetPlayer.Name,
                    Image = "rbxassetid://4483345998",
                    Time = 3
                })
            end
        end
    })

    PlayersTab:AddButton({
        Name = "🔄 Обновить список игроков",
        Callback = function()
            local t = {}
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LocalPlayer then table.insert(t, p.Name) end
            end
            OrionLib:MakeNotification({
                Name = "СПИСОК",
                Content = "Список обновлен. Перезайди в меню, если не видно.",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
        end
    })

    PlayersTab:AddTextbox({
        Name = "Текст титула",
        Default = "",
        TextDisappear = false,
        Callback = function(text) _G.NewTitleText = text end
    })

    PlayersTab:AddButton({
        Name = "👑 Выдать титул выбранному игроку",
        Callback = function()
            if TargetPlayer and TargetPlayer.Character and _G.NewTitleText then
                local head = TargetPlayer.Character:FindFirstChild("Head")
                if head then
                    local oldTag = head:FindFirstChild("TitleTag")
                    if oldTag then oldTag:Destroy() end
                    local billboard = Instance.new("BillboardGui")
                    billboard.Name = "TitleTag"
                    billboard.Adornee = head
                    billboard.Size = UDim2.new(0, 200, 0, 50)
                    billboard.StudsOffset = Vector3.new(0, 2.5, 0)
                    billboard.AlwaysOnTop = true
                    billboard.Parent = head
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Size = UDim2.new(1, 0, 1, 0)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Text = _G.NewTitleText
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.TextSize = 18
                    textLabel.TextStrokeTransparency = 0
                    textLabel.TextColor3 = Color3.fromRGB(255, 215, 0)
                    textLabel.Parent = billboard
                    OrionLib:MakeNotification({
                        Name = "ТИТУЛ ВЫДАН",
                        Content = TargetPlayer.Name .. " теперь " .. _G.NewTitleText,
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    })
                end
            else
                OrionLib:MakeNotification({
                    Name = "ОШИБКА",
                    Content = "Выбери игрока (из списка) и введи текст титула.",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end
    })

    PlayersTab:AddButton({
        Name = "❌ Снять титул с цели",
        Callback = function()
            if TargetPlayer and TargetPlayer.Character then
                local head = TargetPlayer.Character:FindFirstChild("Head")
                if head then
                    local oldTag = head:FindFirstChild("TitleTag")
                    if oldTag then oldTag:Destroy() end
                    OrionLib:MakeNotification({
                        Name = "ТИТУЛ СНЯТ",
                        Content = "С " .. TargetPlayer.Name .. " снят титул.",
                        Image = "rbxassetid://4483345998",
                        Time = 3
                    })
                end
            end
        end
    })

    local BanTab = Window:MakeTab({ Name = "💀 БАН (АДМИН)", Icon = "rbxassetid://4483345998", PremiumOnly = false })
    local BannedPlayers = {}

    BanTab:AddParagraph("ЛОКАЛЬНЫЙ БАН", "Этот бан действует только внутри твоего скрипта.")

    BanTab:AddButton({
        Name = "🚫 Забанить выбранного игрока",
        Callback = function()
            if TargetPlayer then
                table.insert(BannedPlayers, TargetPlayer.Name)
                OrionLib:MakeNotification({
                    Name = "БАН",
                    Content = TargetPlayer.Name .. " забанен.",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end
    })

    BanTab:AddButton({
        Name = "✅ Разбанить выбранного игрока",
        Callback = function()
            if TargetPlayer then
                for i, name in ipairs(BannedPlayers) do
                    if name == TargetPlayer.Name then
                        table.remove(BannedPlayers, i)
                        OrionLib:MakeNotification({
                            Name = "РАЗБАН",
                            Content = TargetPlayer.Name .. " разбанен.",
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                        break
                    end
                end
            end
        end
    })

    BanTab:AddButton({
        Name = "📜 Показать список забаненных",
        Callback = function()
            local text = "Забаненные: " .. table.concat(BannedPlayers, ", ")
            if #BannedPlayers == 0 then text = "Список пуст." end
            OrionLib:MakeNotification({
                Name = "СПИСОК БАНА",
                Content = text,
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    })

    local FunTab = Window:MakeTab({ Name = "🎨 ВИЗУАЛ (АДМИН)", Icon = "rbxassetid://4483345998", PremiumOnly = false })

    FunTab:AddButton({
        Name = "🍅 Сделать цель помидором",
        Callback = function()
            if TargetPlayer and TargetPlayer.Character then
                for _, v in pairs(TargetPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.Color = Color3.fromRGB(255, 0, 0)
                        v.Material = Enum.Material.SmoothPlastic
                    end
                end
                OrionLib:MakeNotification({
                    Name = "ПОМИДОР",
                    Content = TargetPlayer.Name .. " теперь помидор!",
                    Image = "rbxassetid://4483345998",
                    Time = 3
                })
            end
        end
    })

    FunTab:AddButton({
        Name = "👁️ Подсветить цель (ESP)",
        Callback = function()
            if TargetPlayer and TargetPlayer.Character then
                local highlight = Instance.new("Highlight")
                highlight.Adornee = TargetPlayer.Character
                highlight.FillColor = Color3.fromRGB(255, 0, 0)
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlight.Parent = TargetPlayer.Character
                OrionLib:MakeNotification({
                    Name = "ESP",
                    Content = "Цель подсвечена.",
                    Image = "rbxassetid://4483345998",
                    Time = 3
                })
            end
        end
    })

    FunTab:AddButton({
        Name = "💥 Трясти цель",
        Callback = function()
            if TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local hrp = TargetPlayer.Character.HumanoidRootPart
                local original = hrp.CFrame
                for i = 1, 20 do
                    hrp.CFrame = original * CFrame.Angles(math.random(-20,20)/100, math.random(-20,20)/100, math.random(-20,20)/100)
                    task.wait(0.05)
                end
                hrp.CFrame = original
            end
        end
    })

    FunTab:AddButton({
        Name = "Тряска Камеры (Прикол)",
        Callback = function()
            local cam = workspace.CurrentCamera
            local original = cam.CFrame
            for i = 1, 20 do
                cam.CFrame = original * CFrame.Angles(math.random(-10,10)/100, math.random(-10,10)/100, math.random(-10,10)/100)
                task.wait(0.05)
            end
            cam.CFrame = original
        end
    })
end

-- ============================================================
-- 13. ПАСХАЛКА ПРИ ЗАКРЫТИИ (Orion делает это сам, но можно добавить)
-- ============================================================
-- OrionLib:Init() ОБЯЗАТЕЛЕН В КОНЦЕ!
OrionLib:Init()

print("[RYZEN LIBRARY V13.0]: ORION EDITION Loaded.")
