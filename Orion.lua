local bsmbloxhub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/BasemHub/Bsmhub/main/source.lua')))()
local Window = bsmbloxhub:MakeWindow({Name = "BsmHub v1.0", HidePremium = false, IntroText = "Text", SaveConfig = true, ConfigFolder = "bsmblox"})

local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Section"
})


OrionLib:MakeNotification({
	Name = "Title!",
	Content = "Notification content... what will it say??",
	Image = "rbxassetid://4483345998",
	Time = 5
})


Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
  	end    
})


Tab:AddToggle({
	Name = "This is a toggle!",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

CoolToggle:Set(true)


Tab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})

ColorPicker:Set(Color3.fromRGB(255,255,255))


Tab:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

Slider:Set(2)


Tab:AddLabel("Label")
CoolLabel:Set("Label New!")
Tab:AddParagraph("Paragraph","Paragraph Content")
CoolParagraph:Set("Paragraph New!", "New Paragraph Content!")


Tab:AddTextbox({
	Name = "Textbox",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})


Tab:AddBind({
	Name = "Bind",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
		print("press")
	end    
})

Bind:Set(Enum.KeyCode.E)


Tab:AddDropdown({
	Name = "Dropdown",
	Default = "1",
	Options = {"1", "2"},
	Callback = function(Value)
		print(Value)
	end    
})

Dropdown:Refresh(List<table>,true)
Dropdown:Set("dropdown option")

OrionLib:Init()


Tab1:AddToggle({
    Name = "Toggle",
    Default = true,
    Save = true,
    Flag = "toggle"
})

print(OrionLib.Flags["toggle"].Value)


bsmbloxhub:Destroy()
