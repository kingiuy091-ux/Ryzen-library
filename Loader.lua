-- RYZEN LIBRARY V6.0 | FIXED ESP & TP
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "RYZEN LIBRARY V6.0 | ANIME EDITION",
   LoadingTitle = "Загрузка аниме-библиотеки...",
   LoadingSubtitle = "by Создатель",
   ConfigurationSaving = { Enabled = true, FolderName = "RyzenLibrary", FileName = "Config" },
   Discord = { Enabled = false },
   KeySystem = false
})

-- ============================================================
-- 1. ВКЛАДКА "О ПРОЕКТЕ" (С Картой)
-- ============================================================
local InfoTab = Window:CreateTab("💖 О ПРОЕКТЕ", 4483345998)

InfoTab:CreateParagraph({
    Title = "RYZEN LIBRARY",
    Content = "Личная библиотека скриптов для MM2. Собрана из открытых источников. Включает ThunderHub, проверенные хабы и эксклюзивные фишки. Создано для удобства и контента."
})

InfoTab:CreateParagraph({
    Title = "ПОДДЕРЖАТЬ ПРОЕКТ",
    Content = "Если хочешь поддержать автора, вот карта: 2202 2088 2678 5819 ❤️ Спасибо!"
})

-- ============================================================
-- 2. ТОП СКРИПТЫ
-- ============================================================
local TopTab = Window:CreateTab("🔥 ТОП", 4483345998)

TopTab:CreateButton({
    Name = "⚡ ThunderHub (Твой чит)",
    Callback = function()
        Rayfield:Notify({Title = "ThunderHub", Content = "Запуск твоего скрипта...", Duration = 3})
    end
})

TopTab:CreateButton({
    Name = "🦊 Foxname Hub (Аимбот, ESP)",
    Callback = function()
        loadstring(game:HttpGet("https://foxname.top/loader"))()
    end
})

TopTab:CreateButton({
    Name = "🚀 SP Hub (Фарм, ТП, Aura)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/as6cd0/SP_Hub/refs/heads/main/Loader"))()
    end
})

TopTab:CreateButton({
    Name = "🧠 Yahrm (ESP, Open Source)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
    end
})

-- ============================================================
-- 3. АВТОФАРМ
-- ============================================================
local FarmTab = Window:CreateTab("💰 АВТОФАРМ", 4483345998)

FarmTab:CreateButton({
    Name = "💎 ManaV2 (Фарм, Fly, Anti-AFK)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Maanaaaa/ManaV2ForRoblox/main/MainScript.lua"))()
    end
})

FarmTab:CreateButton({
    Name = "🌙 Moondiety (Фарм, ESP)",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/m00ndiety/Moondiety/refs/heads/main/Loader'))()
    end
})

FarmTab:CreateButton({
    Name = "🪐 Space Hub (Фарм, Ивент)",
    Callback = function()
        loadstring(game:HttpGet("https://f.space-hub.cc/loader.lua"))()
    end
})

-- ============================================================
-- 4. ESP & ТП (ОБНОВЛЕНО: Рабочие скрипты 2026)
-- ============================================================
local EspTab = Window:CreateTab("👁️ ESP & ТП", 4483345998)

EspTab:CreateButton({
    Name = "⚡ Zenith Pro (ESP, Silent Aim, Gun Grab)",
    Callback = function()
        -- Рабочий лоадер Zenith Pro Hub v2.3
        loadstring(game:HttpGet("https://gist.githubusercontent.com/sorg1231231/ab4e64b41b87184c796d83cac3e179df/raw/ZenithPro.lua"))()
    end
})

EspTab:CreateButton({
    Name = "🔫 Kuni Hub (Auto Kill, TP, ESP)",
    Callback = function()
        -- Keyless хаб с телепортами и ESP
        loadstring(game:HttpGet("https://cdn.sourceb.in/bins/H8U6QGXd0r/0"))()
    end
})

EspTab:CreateButton({
    Name = "🌊 Waguri MM2 (TP, ESP, Fly)",
    Callback = function()
        -- Стабильный мобильный хаб с ролями и телепортом
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Waguriiiii/Murder-mystery-2/refs/heads/main/Waguri.lua"))()
    end
})

-- ============================================================
-- 5. VISUAL (Шейдеры)
-- ============================================================
local VisualTab = Window:CreateTab("🎨 VISUAL", 4483345998)

VisualTab:CreateButton({
    Name = "Sakura (Розовый свет)",
    Callback = function()
        for _, v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("ColorCorrectionEffect") then v:Destroy() end
        end
        local cc = Instance.new("ColorCorrectionEffect")
        cc.TintColor = Color3.fromRGB(255, 182, 193)
        cc.Saturation = 0.3
        cc.Parent = game.Lighting
    end
})

VisualTab:CreateButton({
    Name = "Ad (Красный свет)",
    Callback = function()
        for _, v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("ColorCorrectionEffect") then v:Destroy() end
        end
        local cc = Instance.new("ColorCorrectionEffect")
        cc.TintColor = Color3.fromRGB(255, 0, 0)
        cc.Saturation = 0.6
        cc.Parent = game.Lighting
    end
})

VisualTab:CreateButton({
    Name = "Matrix (Зеленый свет)",
    Callback = function()
        for _, v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("ColorCorrectionEffect") then v:Destroy() end
        end
        local cc = Instance.new("ColorCorrectionEffect")
        cc.TintColor = Color3.fromRGB(0, 255, 0)
        cc.Saturation = 0.4
        cc.Parent = game.Lighting
    end
})

VisualTab:CreateButton({
    Name = "Сброс эффектов",
    Callback = function()
        for _, v in pairs(game.Lighting:GetChildren()) do
            if v:IsA("ColorCorrectionEffect") then v:Destroy() end
        end
    end
})

-- ============================================================
-- 6. АНИМЕ-ТЯН (Эстетика и пасхалки)
-- ============================================================
local AnimeTab = Window:CreateTab("🌸 АНИМЕ-ТЯН", 4483345998)

AnimeTab:CreateParagraph({
    Title = "ТОП ЧИТОВ ДЛЯ АНИМЕ-ТЯНОК",
    Content = "Специально для ценителей эстетики. Здесь собраны визуальные фишки и приколы. Альтушки оценят."
})

AnimeTab:CreateButton({
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

AnimeTab:CreateButton({
    Name = "Эффект 'Аниме-Взрыв' (Спам прыжками)",
    Callback = function()
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Humanoid") then
            for i = 1, 10 do char.Humanoid.Jump = true; task.wait(0.1) end
        end
    end
})

AnimeTab:CreateButton({
    Name = "Показать секретную пасхалку",
    Callback = function()
        Rayfield:Notify({
            Title = "🌸 Аниме-Тян",
            Content = "Спасибо, что пользуешься библиотекой! Бай, Райзен~",
            Duration = 5
        })
    end
})

-- ============================================================
-- 7. RYZEN (Личные функции)
-- ============================================================
local RyzenTab = Window:CreateTab("⚡ RYZEN", 4483345998)

RyzenTab:CreateButton({
    Name = "Звук Бах",
    Callback = function()
        local s = Instance.new("Sound", workspace)
        s.SoundId = "rbxassetid://131961136"
        s.Volume = 10
        s:Play()
        game.Debris:AddItem(s, 3)
    end
})

RyzenTab:CreateButton({
    Name = "ХУЙНЯ КАКАЯ-ТО",
    Callback = function()
        Rayfield:Notify({
            Title = "ХУЙНЯ",
            Content = "Ты нажал на хуйню. Поздравляю, ты официально крутой.",
            Duration = 5
        })
    end
})

-- Пасхалка при закрытии меню
Window:OnClose(function()
    Rayfield:Notify({
        Title = "Бай, Райзен",
        Content = "Увидимся в следующем раунде, Создатель! 🌸",
        Duration = 3
    })
end)

Rayfield:LoadConfiguration()
print("[RYZEN LIBRARY V6.0]: ESP Tab Fixed. Loaded.")
