local GuiName = "Gui"
local TabName = "Tab"

--Library--
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

--Windows--
local Window = Library.CreateLib(GuiName, "RJTheme3")

--Tabs--
local Tab = Window:NewTab(TabName)
