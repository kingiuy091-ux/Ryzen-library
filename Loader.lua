-- RYZEN LIBRARY V10.0 | FRESH SCRIPTS
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RYZEN LIBRARY V10.0",
   LoadingTitle = "Загрузка...",
   LoadingSubtitle = "by ryzen(dfgghh500)",
   ConfigurationSaving = { Enabled = true, FolderName = "RyzenLibrary", FileName = "Config" },
   Discord = { Enabled = false },
   KeySystem = false
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CreatorName = "dfgghh500"

-- ============================================================
-- 1. СИСТЕМА КРЕАТОРА
-- ============================================================
local function setupCreatorTag()
    if LocalPlayer.Name == CreatorName and LocalPlayer.Character then
        local head = LocalPlayer.Character:FindFirstChild("Head")
        if head and not head:FindFirstChild("CreatorTag") then
            local billboard = Instance.new("BillboardGui")
            billboard.Name = "CreatorTag"
            billboard.Adornee = head
            billboard.Size = UDim2.new(0, 200, 0, 50)
            billboard.StudsOffset = Vector3.new(0, 3, 0)
            billboard.AlwaysOnTop = true
            billboard.Parent = head

            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(1, 0, 1, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.Text = "👑 CREATOR 👑"
            textLabel.Font = Enum.Font.GothamBold
            textLabel.TextSize = 20
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
local InfoTab = Window:CreateTab("💖 О ПРОЕКТЕ", 4483345998)
InfoTab:CreateParagraph({ Title = "RYZEN LIBRARY V10.0", Content = "Личная библиотека скриптов для MM2. Собрана из открытых источников. Включает ThunderHub, проверенные хабы и эксклюзивные фишки. Создано для удобства и контента." })
InfoTab:CreateParagraph({ Title = "ОСОБЕННОСТИ", Content = "• Работает на Delta/Mobile\n• Без ключей и вирусов\n• Радужный ник CREATOR\n• Внутренний чат\n• Шейдеры и эстетика" })
InfoTab:CreateParagraph({ Title = "ПОДДЕРЖАТЬ ПРОЕКТ", Content = "Если хочешь поддержать автора, вот карта: 2202 2088 2678 5819 ❤️ Спасибо!" })

-- ============================================================
-- 3. ТОП СКРИПТЫ (ОБНОВЛЕНО)
-- ============================================================
local TopTab = Window:CreateTab("🔥 ТОП", 4483345998)
TopTab:CreateButton({ Name = "⚡ ThunderHub (Твой)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/thunderXhub/ThunderXHUB/refs/heads/main/loader"))() end })
TopTab:CreateButton({ Name = "🦊 Foxname Hub", Callback = function() loadstring(game:HttpGet("https://foxname.top/loader"))() end })
TopTab:CreateButton({ Name = "🚀 SP Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Loader"))() end })
TopTab:CreateButton({ Name = "🧠 Yahrm", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))() end })
TopTab:CreateButton({ Name = "💀 Mozql Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/snxpzscripts/mm2/refs/heads/main/MozqlHub"))() end })
TopTab:CreateButton({ Name = "🔥 Forge Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBLOXmm2/ForgeHubWaguri/refs/heads/main/keyless"))() end })
TopTab:CreateButton({ Name = "👑 Yarhm Hub OP", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBLOXmm2/Yarhmhub.xyz-keyless/refs/heads/main/GUI"))() end })

-- ============================================================
-- 4. АВТОФАРМ (ОБНОВЛЕНО)
-- ============================================================
local FarmTab = Window:CreateTab("💰 АВТОФАРМ", 4483345998)
FarmTab:CreateButton({ Name = "💎 ManaV2", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Maanaaaa/ManaV2ForRoblox/main/MainScript.lua"))() end })
FarmTab:CreateButton({ Name = "🌙 Moondiety", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/m00ndiety/Moondiety/refs/heads/main/Loader'))() end })
FarmTab:CreateButton({ Name = "🪐 Space Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/SpaceHub/refs/heads/main/loader.lua"))() end })
FarmTab:CreateButton({ Name = "🐝 Beecon Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeconHub/main/BeeconHub"))() end })
FarmTab:CreateButton({ Name = "💓 Pulse Hub", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/5857a6cfae3b902eb3c2dff7cdbf173b.lua"))() end })

-- ============================================================
-- 5. ESP & ТП (ОБНОВЛЕНО)
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
-- 9. ЛОББИ
-- ============================================================
local LobbyTab = Window:CreateTab("🏠 ЛОББИ", 4483345998)

LobbyTab:CreateButton({
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
            if not success then Rayfield:Notify({ Title = "JERK OFF", Content = "Ошибка: " .. tostring(err), Duration = 5 }) end
        end)
    end
})

LobbyTab:CreateButton({ Name = "ТП в Лобби (Закрыто)", Callback = function() Rayfield:Notify({ Title = "ЛОББИ", Content = "На доработке.", Duration = 5 }) end })
LobbyTab:CreateButton({ Name = "Спам Прыжками", Callback = function() local char = LocalPlayer.Character; if char then local hum = char:FindFirstChild("Humanoid"); if hum then for i = 1, 20 do hum.Jump = true task.wait(0.1) end end end end })

-- МЕГА-МОЛИТВА
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

-- ТАНЦЫ
LobbyTab:CreateButton({ Name = "Танец 1 (R15)", Callback = function() local char = LocalPlayer.Character; if char then local hum = char:FindFirstChild("Humanoid"); if hum and hum.RigType == Enum.HumanoidRigType.R15 then local anim = Instance.new("Animation"); anim.AnimationId = "rbxassetid://507771019"; local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim); track:Play(); task.wait(5); track:Stop(); end end end })
LobbyTab:CreateButton({ Name = "Танец 2 (R15)", Callback = function() local char = LocalPlayer.Character; if char then local hum = char:FindFirstChild("Humanoid"); if hum and hum.RigType == Enum.HumanoidRigType.R15 then local anim = Instance.new("Animation"); anim.AnimationId = "rbxassetid://507770453"; local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim); track:Play(); task.wait(5); track:Stop(); end end end })
LobbyTab:CreateButton({ Name = "Танец 3 (R15)", Callback = function() local char = LocalPlayer.Character; if char then local hum = char:FindFirstChild("Humanoid"); if hum and hum.RigType == Enum.HumanoidRigType.R15 then local anim = Instance.new("Animation"); anim.AnimationId = "rbxassetid://507770818"; local track = hum:FindFirstChildOfClass("Animator"):LoadAnimation(anim); track:Play(); task.wait(5); track:Stop(); end end end })

-- ============================================================
-- 10. РАЗВЛЕЧЕНИЯ
-- ============================================================
local FunTab = Window:CreateTab("🎉 РАЗВЛЕЧЕНИЯ", 4483345998)
FunTab:CreateButton({ Name = "Прыжок в Космос", Callback = function() local char = LocalPlayer.Character; if char and char:FindFirstChild("HumanoidRootPart") then char.HumanoidRootPart.Velocity = Vector3.new(0, 500, 0); Rayfield:Notify({ Title = "КОСМОС", Content = "Ты летишь!", Duration = 3 }); end end })
FunTab:CreateButton({ Name = "Сделать тебя ебучим помидором", Callback = function() local char = LocalPlayer.Character; if char then for _, v in pairs(char:GetDescendants()) do if v:IsA("BasePart") then v.Color = Color3.fromRGB(255, 0, 0); v.Material = Enum.Material.SmoothPlastic end end Rayfield:Notify({ Title = "ПОМИДОР", Content = "Ты ебучий помидор!", Duration = 3 }) end end })
FunTab:CreateButton({ Name = "Тряска Камеры (Прикол)", Callback = function() local cam = workspace.CurrentCamera; local original = cam.CFrame; for i = 1, 20 do cam.CFrame = original * CFrame.Angles(math.random(-10,10)/100, math.random(-10,10)/100, math.random(-10,10)/100); task.wait(0.05) end; cam.CFrame = original end })

-- ============================================================
-- 11. АНИМЕ-ТЯН
-- ============================================================
local AnimeTab = Window:CreateTab("🌸 АНИМЕ-ТЯН", 4483345998)
AnimeTab:CreateParagraph({ Title = "ТОП ЧИТОВ ДЛЯ АНИМЕ-ТЯНОК", Content = "Специально для ценителей эстетики. Здесь собраны визуальные фишки и приколы. Альтушки оценят." })
AnimeTab:CreateButton({ Name = "Включить Розовый Шейдер (Sakura)", Callback = function() for _, v in pairs(game.Lighting:GetChildren()) do if v:IsA("ColorCorrectionEffect") then v:Destroy() end end local cc = Instance.new("ColorCorrectionEffect") cc.TintColor = Color3.fromRGB(255, 105, 180) cc.Saturation = 0.4 cc.Contrast = 0.1 cc.Parent = game.Lighting end })
AnimeTab:CreateButton({ Name = "Эффект 'Аниме-Взрыв' (Спам прыжками)", Callback = function() local char = LocalPlayer.Character; if char and char:FindFirstChild("Humanoid") then for i = 1, 10 do char.Humanoid.Jump = true; task.wait(0.1) end end end })
AnimeTab:CreateButton({ Name = "Показать секретную пасхалку", Callback = function() Rayfield:Notify({ Title = "🌸 Аниме-Тян", Content = "Спасибо, что пользуешься библиотекой! Бай, Райзен~", Duration = 5 }) end })

-- ============================================================
-- 12. ССЫЛКИ
-- ============================================================
local LinksTab = Window:CreateTab("🔗 ССЫЛКИ", 4483345998)
LinksTab:CreateButton({ Name = "Скопировать TikTok", Callback = function() setclipboard("https://tiktok.com/@ryzenlibrary") Rayfield:Notify({ Title = "TikTok", Content = "Скопировано!", Duration = 5 }) end })

-- ============================================================
-- 13. ПАСХАЛКА ПРИ ЗАКРЫТИИ
-- ============================================================
Window:OnClose(function()
    Rayfield:Notify({ Title = "Бай, Райзен", Content = "Увидимся, Создатель! 🌸", Duration = 3 })
end)

Rayfield:LoadConfiguration()
print("[RYZEN LIBRARY V10.0]: FRESH SCRIPTS Loaded.")
