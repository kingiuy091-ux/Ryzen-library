-- RYZEN LIBRARY V12.0 | DOUBLE PRAYER (GOD-EMPEROR)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RYZEN LIBRARY V12.0 | БОГ-КРЕАТОР",
   LoadingTitle = "Загрузка божественной силы...",
   LoadingSubtitle = "by ryzen(dfgghh500)",
   ConfigurationSaving = { Enabled = true, FolderName = "RyzenLibrary", FileName = "Config" },
   Discord = { Enabled = false },
   KeySystem = false
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
-- 2. О ПРОЕКТЕ (ПОЛНЫЙ ТЕКСТ, НИЧЕГО НЕ УРЕЗАНО)
-- ============================================================
local InfoTab = Window:CreateTab("💖 О ПРОЕКТЕ", 4483345998)
InfoTab:CreateParagraph({ Title = "RYZEN LIBRARY V12.0", Content = "Личная библиотека скриптов для MM2. Собрана из открытых источников. Включает ThunderHub, проверенные хабы и эксклюзивные фишки. Создано для удобства и контента." })
InfoTab:CreateParagraph({ Title = "ОСОБЕННОСТИ", Content = "• Работает на Delta/Mobile\n• Без ключей и вирусов\n• Радужный ник БОГ-КРЕАТОР\n• Внутренний чат\n• Шейдеры и эстетика\n• Админ-панель (только для Создателя)\n• Две молитвы" })
InfoTab:CreateParagraph({ Title = "ПОДДЕРЖАТЬ ПРОЕКТ", Content = "Если хочешь поддержать автора, вот карта: 2202 2088 2678 5819 ❤️ Спасибо!" })

-- ============================================================
-- 3. ТОП СКРИПТЫ
-- ============================================================
local TopTab = Window:CreateTab("🔥 ТОП", 4483345998)
TopTab:CreateButton({ Name = "⚡ ThunderHub (Твой)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/thunderXhub/ThunderXHUB/refs/heads/main/loader"))() end })
TopTab:CreateButton({ Name = "🦊 Foxname Hub", Callback = function() loadstring(game:HttpGet("https://foxname.top/loader"))() end })
TopTab:CreateButton({ Name = "🚀 SP Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Loader"))() end })
TopTab:CreateButton({ Name = "🧠 Yahrm", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))() end })
TopTab:CreateButton({ Name = "💀 Mozql Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/snxpzscripts/mm2/refs/heads/main/MozqlHub"))() end })
TopTab:CreateButton({ Name = "🔥 Forge Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBLOXmm2/ForgeHubWaguri/refs/heads/main/keyless"))() end })

-- ============================================================
-- 4. АВТОФАРМ
-- ============================================================
local FarmTab = Window:CreateTab("💰 АВТОФАРМ", 4483345998)
FarmTab:CreateButton({ Name = "💎 ManaV2", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Maanaaaa/ManaV2ForRoblox/main/MainScript.lua"))() end })
FarmTab:CreateButton({ Name = "🌙 Moondiety", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/m00ndiety/Moondiety/refs/heads/main/Loader'))() end })
FarmTab:CreateButton({ Name = "🪐 Space Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua"))() end })
FarmTab:CreateButton({ Name = "🐝 Beecon Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub"))() end })
FarmTab:CreateButton({ Name = "💓 Pulse Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/5857a6cfae3b902eb3c2dff7cdbf173b.lua"))() end })

-- ============================================================
-- 5. ESP & ТП
-- ============================================================
local EspTab = Window:CreateTab("👁️ ESP & ТП", 4483345998)
EspTab:CreateButton({ Name = "⚡ Zenith Pro", Callback = function() loadstring(game:HttpGet("https://gist.githubusercontent.com/sorg1231231/ab4e64b41b87184c796d83cac3e179df/raw/ZenithPro.lua"))() end })
EspTab:CreateButton({ Name = "🔫 Kuni Hub", Callback = function() loadstring(game:HttpGet("https://cdn.sourceb.in/bins/H8U6QGXd0r/0"))() end })
EspTab:CreateButton({ Name = "🌊 Waguri MM2", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Waguriiiii/Murder-mystery-2/refs/heads/main/Waguri.lua"))() end })
EspTab:CreateButton({ Name = "🌪️ Aether Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/aluucardd/MM2/refs/heads/main/Aether%20Hub%20MM2"))() end })

-- ============================================================
-- 6. VISUAL
-- ============================================================
local VisualTab = Window:CreateTab("🎨 VISUAL", 4483345998)
VisualTab:CreateButton({ Name = "Sakura (Розовый)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(255, 182, 193) cc.Saturation = 0.3 cc.Parent = game.Lighting end })
VisualTab:CreateButton({ Name = "Ad (Красный)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(255, 0, 0) cc.Saturation = 0.6 cc.Parent = game.Lighting end })
VisualTab:CreateButton({ Name = "Matrix (Зеленый)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(0, 255, 0) cc.Saturation = 0.4 cc.Parent = game.Lighting end })
VisualTab:CreateButton({ Name = "Объемный Шейдер", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end local bloom = Instance.new("BloomEffect") bloom.Intensity = 0.4 bloom.Size = 24 bloom.Threshold = 0.9 bloom.Parent = game.Lighting local cc = Instance.new("ColorCorrectionEffect") cc.Brightness = 0.05 cc.Contrast = 0.15 cc.Saturation = 0.1 cc.Parent = game.Lighting end })
VisualTab:CreateButton({ Name = "Сброс", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") then v:Destroy() end end end })

-- ============================================================
-- 7. ЧАТ
-- ============================================================
local ChatTab = Window:CreateTab("💬 ЧАТ", 4483345998)
local currentMessage = ""
ChatTab:CreateInput({ Name = "Сообщение", PlaceholderText = "Введи текст...", RemoveTextAfterFocusLost = false, Callback = function(text) currentMessage = text end })
ChatTab:CreateButton({ Name = "ОТПРАВИТЬ", Callback = function() if currentMessage ~= "" then Rayfield:Notify({ Title = LocalPlayer.DisplayName, Content = currentMessage, Duration = 5 }) currentMessage = "" end end })

-- ============================================================
-- 8. RYZEN
-- ============================================================
local RyzenTab = Window:CreateTab("⚡ RYZEN", 4483345998)
RyzenTab:CreateButton({ Name = "Звук Бах", Callback = function() local s = Instance.new("Sound", workspace) s.SoundId = "rbxassetid://131961136" s.Volume = 10 s:Play() game.Debris:AddItem(s, 3) end })
RyzenTab:CreateButton({ Name = "ХУЙНЯ", Callback = function() Rayfield:Notify({ Title = "ХУЙНЯ", Content = "Ты нажал на хуйню. Поздравляю, ты официально крутой.", Duration = 5 }) end })

-- ============================================================
-- 9. ЛОББИ (С ДВУМЯ МОЛИТВАМИ)
-- ============================================================
local LobbyTab = Window:CreateTab("🏠 ЛОББИ", 4483345998)

LobbyTab:CreateButton({ Name = "Jerk Off (R6+R15)", Callback = function() task.spawn(function() local success, err = pcall(function() local humanoid = LocalPlayer.Character.Humanoid; if humanoid.RigType == Enum.HumanoidRigType.R15 then loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))() else loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))() end end); if not success then Rayfield:Notify({ Title = "JERK OFF", Content = "Ошибка: " .. tostring(err), Duration = 5 }) end end) end })
LobbyTab:CreateButton({ Name = "Спам Прыжками", Callback = function() local char = LocalPlayer.Character; if char then local hum = char:FindFirstChild("Humanoid"); if hum then for i = 1, 20 do hum.Jump = true task.wait(0.1) end end end end })

-- ПЕРВАЯ МОЛИТВА (КОНТРАКТ)
LobbyTab:CreateButton({
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
LobbyTab:CreateButton({
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
            Rayfield:Notify({ Title = "КЛЯТВА ПРИНЯТА", Content = "Бог-Креатор доволен тобой. Спасибо, что не оптимизируешь код.", Duration = 5 })
        end)

        noBtn.MouseButton1Click:Connect(function()
            gui:Destroy()
            Rayfield:Notify({ Title = "ОТКАЗ", Content = "Ты отказался. Бог-Креатор огорчен. Жди бан.", Duration = 5 })
        end)
    end
})

-- ТАНЦЫ
LobbyTab:CreateButton({ Name = "Танец 1 (R15)", Callback = function() local char = LocalPlayer.Character; if char then local hum = char:FindFirstChild("Humanoid"); if hum and hum.RigType == Enum.HumanoidRigType.R15 then local anim = Instance.new("Animation"); anim.AnimationId = "rbxassetid://507771019"; local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim); track:Play(); task.wait(5); track:Stop(); end end end })
LobbyTab:CreateButton({ Name = "Танец 2 (R15)", Callback = function() local char = LocalPlayer.Character; if char then local hum = char:FindFirstChild("Humanoid"); if hum and hum.RigType == Enum.HumanoidRigType.R15 then local anim = Instance.new("Animation"); anim.AnimationId = "rbxassetid://507770453"; local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim); track:Play(); task.wait(5); track:Stop(); end end end })

-- ============================================================
-- 10. АНИМЕ-ТЯН
-- ============================================================
local AnimeTab = Window:CreateTab("🌸 АНИМЕ-ТЯН", 4483345998)
AnimeTab:CreateParagraph({ Title = "ТОП ЧИТОВ ДЛЯ АНИМЕ-ТЯНОК", Content = "Специально для ценителей эстетики. Здесь собраны визуальные фишки и приколы. Альтушки оценят." })
AnimeTab:CreateButton({ Name = "Включить Розовый Шейдер (Sakura)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(255, 105, 180) cc.Saturation = 0.4 cc.Contrast = 0.1 cc.Parent = game.Lighting end })
AnimeTab:CreateButton({ Name = "Показать секретную пасхалку", Callback = function() Rayfield:Notify({ Title = "🌸 Аниме-Тян", Content = "Спасибо, что пользуешься библиотекой! Бай, Райзен~", Duration = 5 }) end })

-- ============================================================
-- 11. ССЫЛКИ
-- ============================================================
local LinksTab = Window:CreateTab("🔗 ССЫЛКИ", 4483345998)
LinksTab:CreateButton({ Name = "Скопировать TikTok", Callback = function() setclipboard("https://tiktok.com/@ryzenlibrary") Rayfield:Notify({ Title = "TikTok", Content = "Скопировано!", Duration = 5 }) end })

-- ============================================================
-- 12. АДМИН-ПАНЕЛЬ (ТОЛЬКО ДЛЯ ТЕБЯ)
-- ============================================================
if LocalPlayer.Name == CreatorName then
    local TargetPlayer = nil

    local PlayersTab = Window:CreateTab("👥 ИГРОКИ (АДМИН)", 4483345998)

    PlayersTab:CreateDropdown({
        Name = "Выбрать игрока (Цель)",
        Options = (function() local t = {}; for _, p in pairs(Players:GetPlayers()) do if p ~= LocalPlayer then table.insert(t, p.Name) end end; return t end)(),
        CurrentOption = nil,
        MultipleOptions = false,
        Callback = function(option)
            if type(option) == "table" then
                TargetPlayer = Players:FindFirstChild(option[1])
            else
                TargetPlayer = Players:FindFirstChild(option)
            end
            if TargetPlayer then
                Rayfield:Notify({ Title = "ЦЕЛЬ ВЫБРАНА", Content = "Ты выбрал: " .. TargetPlayer.Name, Duration = 3 })
            end
        end,
    })

    PlayersTab:CreateButton({ Name = "🔄 Обновить список игроков", Callback = function() local t = {}; for _, p in pairs(Players:GetPlayers()) do if p ~= LocalPlayer then table.insert(t, p.Name) end end; Rayfield:Notify({ Title = "СПИСОК", Content = "Список обновлен. Перезайди в меню, если не видно.", Duration = 3 }) end })

    PlayersTab:CreateInput({ Name = "Текст титула", PlaceholderText = "Введи титул (например, ЛОХ)", RemoveTextAfterFocusLost = false, Callback = function(text) _G.NewTitleText = text end })

    PlayersTab:CreateButton({
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
                    Rayfield:Notify({ Title = "ТИТУЛ ВЫДАН", Content = TargetPlayer.Name .. " теперь " .. _G.NewTitleText, Duration = 5 })
                end
            else
                Rayfield:Notify({ Title = "ОШИБКА", Content = "Выбери игрока (из списка) и введи текст титула.", Duration = 5 })
            end
        end
    })

    PlayersTab:CreateButton({ Name = "❌ Снять титул с цели", Callback = function() if TargetPlayer and TargetPlayer.Character then local head = TargetPlayer.Character:FindFirstChild("Head"); if head then local oldTag = head:FindFirstChild("TitleTag"); if oldTag then oldTag:Destroy() end; Rayfield:Notify({ Title = "ТИТУЛ СНЯТ", Content = "С " .. TargetPlayer.Name .. " снят титул.", Duration = 3 }) end end end })

    local BanTab = Window:CreateTab("💀 БАН (АДМИН)", 4483345998)
    local BannedPlayers = {}
    BanTab:CreateParagraph({ Title = "ЛОКАЛЬНЫЙ БАН", Content = "Этот бан действует только внутри твоего скрипта." })
    BanTab:CreateButton({ Name = "🚫 Забанить выбранного игрока", Callback = function() if TargetPlayer then table.insert(BannedPlayers, TargetPlayer.Name); Rayfield:Notify({ Title = "БАН", Content = TargetPlayer.Name .. " забанен.", Duration = 5 }) end end })
    BanTab:CreateButton({ Name = "✅ Разбанить выбранного игрока", Callback = function() if TargetPlayer then for i, name in ipairs(BannedPlayers) do if name == TargetPlayer.Name then table.remove(BannedPlayers, i); Rayfield:Notify({ Title = "РАЗБАН", Content = TargetPlayer.Name .. " разбанен.", Duration = 5 }); break end end end end })
    BanTab:CreateButton({ Name = "📜 Показать список забаненных", Callback = function() local text = "Забаненные: " .. table.concat(BannedPlayers, ", "); if #BannedPlayers == 0 then text = "Список пуст." end; Rayfield:Notify({ Title = "СПИСОК БАНА", Content = text, Duration = 5 }) end })

    local FunTab = Window:CreateTab("🎨 ВИЗУАЛ (АДМИН)", 4483345998)
    FunTab:CreateButton({ Name = "🍅 Сделать цель помидором", Callback = function() if TargetPlayer and TargetPlayer.Character then for _, v in pairs(TargetPlayer.Character:GetDescendants()) do if v:IsA("BasePart") then v.Color = Color3.fromRGB(255, 0, 0); v.Material = Enum.Material.SmoothPlastic end end; Rayfield:Notify({ Title = "ПОМИДОР", Content = TargetPlayer.Name .. " теперь помидор!", Duration = 3 }) end end })
    FunTab:CreateButton({ Name = "👁️ Подсветить цель (ESP)", Callback = function() if TargetPlayer and TargetPlayer.Character then local highlight = Instance.new("Highlight"); highlight.Adornee = TargetPlayer.Character; highlight.FillColor = Color3.fromRGB(255, 0, 0); highlight.OutlineColor = Color3.fromRGB(255, 255, 255); highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; highlight.Parent = TargetPlayer.Character; Rayfield:Notify({ Title = "ESP", Content = "Цель подсвечена.", Duration = 3 }) end end })
    FunTab:CreateButton({ Name = "💥 Трясти цель", Callback = function() if TargetPlayer and TargetPlayer.Character and TargetPlayer.Character:FindFirstChild("HumanoidRootPart") then local hrp = TargetPlayer.Character.HumanoidRootPart; local original = hrp.CFrame; for i = 1, 20 do hrp.CFrame = original * CFrame.Angles(math.random(-20,20)/100, math.random(-20,20)/100, math.random(-20,20)/100); task.wait(0.05) end; hrp.CFrame = original end end })
    FunTab:CreateButton({ Name = "Тряска Камеры (Прикол)", Callback = function() local cam = workspace.CurrentCamera; local original = cam.CFrame; for i = 1, 20 do cam.CFrame = original * CFrame.Angles(math.random(-10,10)/100, math.random(-10,10)/100, math.random(-10,10)/100); task.wait(0.05) end; cam.CFrame = original end })
end

-- ============================================================
-- 13. ПАСХАЛКА ПРИ ЗАКРЫТИИ
-- ============================================================
Window:OnClose(function()
    pcall(function()
        Rayfield:Notify({ Title = "Бай, Райзен", Content = "Увидимся, Бог-Креатор! 🌸", Duration = 3 })
    end)
end)

Rayfield:LoadConfiguration()
print("[RYZEN LIBRARY V12.0]: DOUBLE PRAYER Loaded.")
