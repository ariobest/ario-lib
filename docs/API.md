# ArioUI API

## Window
- `ArioUI:CreateWindow(config)`
- `Window:AddTab(name, icon)`
- `Window:Notify({Title, Content, Duration})`
- `Window:SetTheme(name)`
- `Window:Toggle()`
- `Window:Destroy()`
- `Window:CreateDialog({Title, Content, ConfirmText, Callback})`

## Sections
`Tab:AddSection("Name")`

## Controls
- `Section:AddButton({Name, Description, Tag, Callback})`
- `Section:AddToggle({Name, Default, Callback})`
- `Section:AddSlider({Name, Min, Max, Default, Callback})`
- `Section:AddDropdown({Name, Options, Default, Callback})`
- `Section:AddTextbox({Name, Placeholder, Default, Callback})`
- `Section:AddLabel("text")`

## Themes
Built in:
- Midnight
- Ocean
- Ember

The library is intentionally dependency-free and designed for easy modification.
