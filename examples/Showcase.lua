local ArioUI = loadstring(game:HttpGet("YOUR_RAW_GITHUB_URL/src/ArioUI.lua"))()

local Window = ArioUI:CreateWindow({
    Title = "ArioUI Showcase",
    Subtitle = "Modern • Animated • Mobile Friendly",
    Theme = "Midnight",
    Width = 780,
    Height = 520
})

local Main = Window:AddTab("Dashboard", "⌂")
local Visual = Window:AddTab("Visual", "✦")
local Settings = Window:AddTab("Settings", "⚙")

local controls = Main:AddSection("Controls")
controls:AddButton({
    Name = "Premium Button",
    Description = "Animated button with a NEW tag",
    Tag = "NEW",
    Callback = function()
        Window:Notify({Title="Button", Content="You clicked the premium button!", Duration=3})
    end
})

controls:AddToggle({
    Name = "Enable Feature",
    Default = true,
    Callback = function(value)
        print("Feature:", value)
    end
})

controls:AddSlider({
    Name = "Power",
    Min = 0,
    Max = 100,
    Default = 65,
    Callback = function(value)
        print("Power:", value)
    end
})

controls:AddDropdown({
    Name = "Mode",
    Options = {"Smooth", "Fast", "Ultra", "Custom"},
    Default = "Smooth",
    Callback = function(value)
        print("Mode:", value)
    end
})

controls:AddTextbox({
    Name = "Textbox",
    Placeholder = "Type something...",
    Callback = function(text)
        print("Text:", text)
    end
})

local visual = Visual:AddSection("Visual")
visual:AddLabel("ArioUI includes an animated accent gradient, modern cards, tags and responsive controls.")
visual:AddButton({
    Name = "Show Dialog",
    Description = "Open a modern confirmation dialog",
    Tag = "UI",
    Callback = function()
        Window:CreateDialog({
            Title = "ArioUI Dialog",
            Content = "This is an example modal dialog.",
            ConfirmText = "Nice",
            Callback = function()
                Window:Notify({Title="Done", Content="Dialog closed.", Duration=2})
            end
        })
    end
})

local theme = Settings:AddSection("Themes")
theme:AddDropdown({
    Name = "Theme",
    Options = {"Midnight", "Ocean", "Ember"},
    Default = "Midnight",
    Callback = function(value)
        Window:SetTheme(value)
    end
})

theme:AddButton({
    Name = "Test Notification",
    Description = "Preview the toast system",
    Tag = "TEST",
    Callback = function()
        Window:Notify({
            Title = "Notification",
            Content = "Everything is connected correctly.",
            Duration = 4
        })
    end
})
