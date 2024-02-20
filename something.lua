if IY_LOADED and not _G.IY_DEBUG == true then
	-- error("Infinite Yield is already running!", 0)
	return
end

pcall(function() getgenv().IY_LOADED = true end)

COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = COREGUI
	notLoaded.Text = 'Infinite Yield is waiting for the game to load'
	game.Loaded:Wait()
	notLoaded:Destroy()
end

currentVersion = '5.9.4'

Players = game:GetService("Players")

Holder = Instance.new("Frame")
Title = Instance.new("TextLabel")
Dark = Instance.new("Frame")
Cmdbar = Instance.new("TextBox")
CMDsF = Instance.new("ScrollingFrame")
cmdListLayout = Instance.new("UIListLayout")
SettingsButton = Instance.new("ImageButton")
ColorsButton = Instance.new("ImageButton")
Settings = Instance.new("Frame")
Prefix = Instance.new("TextLabel")
PrefixBox = Instance.new("TextBox")
Keybinds = Instance.new("TextLabel")
StayOpen = Instance.new("TextLabel")
Button = Instance.new("Frame")
On = Instance.new("TextButton")
Positions = Instance.new("TextLabel")
EventBind = Instance.new("TextLabel")
Plugins = Instance.new("TextLabel")
Example = Instance.new("TextButton")
Notification = Instance.new("Frame")
Title_2 = Instance.new("TextLabel")
Text_2 = Instance.new("TextLabel")
CloseButton = Instance.new("TextButton")
CloseImage = Instance.new("ImageLabel")
PinButton = Instance.new("TextButton")
PinImage = Instance.new("ImageLabel")
Tooltip = Instance.new("Frame")
Title_3 = Instance.new("TextLabel")
Description = Instance.new("TextLabel")
IntroBackground = Instance.new("Frame")
Logo = Instance.new("ImageLabel")
Credits = Instance.new("TextBox")
KeybindsFrame = Instance.new("Frame")
Close = Instance.new("TextButton")
Add = Instance.new("TextButton")
Delete = Instance.new("TextButton")
Holder_2 = Instance.new("ScrollingFrame")
Example_2 = Instance.new("Frame")
Text_3 = Instance.new("TextLabel")
Delete_2 = Instance.new("TextButton")
KeybindEditor = Instance.new("Frame")
background_2 = Instance.new("Frame")
Dark_3 = Instance.new("Frame")
Directions = Instance.new("TextLabel")
BindTo = Instance.new("TextButton")
TriggerLabel = Instance.new("TextLabel")
BindTriggerSelect = Instance.new("TextButton")
Add_2 = Instance.new("TextButton")
Toggles = Instance.new("ScrollingFrame")
ClickTP  = Instance.new("TextLabel")
Select = Instance.new("TextButton")
ClickDelete = Instance.new("TextLabel")
Select_2 = Instance.new("TextButton")
Cmdbar_2 = Instance.new("TextBox")
Cmdbar_3 = Instance.new("TextBox")
CreateToggle = Instance.new("TextLabel")
Button_2 = Instance.new("Frame")
On_2 = Instance.new("TextButton")
shadow_2 = Instance.new("Frame")
PopupText_2 = Instance.new("TextLabel")
Exit_2 = Instance.new("TextButton")
ExitImage_2 = Instance.new("ImageLabel")
PositionsFrame = Instance.new("Frame")
Close_3 = Instance.new("TextButton")
Delete_5 = Instance.new("TextButton")
Part = Instance.new("TextButton")
Holder_4 = Instance.new("ScrollingFrame")
Example_4 = Instance.new("Frame")
Text_5 = Instance.new("TextLabel")
Delete_6 = Instance.new("TextButton")
TP = Instance.new("TextButton")
AliasesFrame = Instance.new("Frame")
Close_2 = Instance.new("TextButton")
Delete_3 = Instance.new("TextButton")
Holder_3 = Instance.new("ScrollingFrame")
Example_3 = Instance.new("Frame")
Text_4 = Instance.new("TextLabel")
Delete_4 = Instance.new("TextButton")
Aliases = Instance.new("TextLabel")
PluginsFrame = Instance.new("Frame")
Close_4 = Instance.new("TextButton")
Add_3 = Instance.new("TextButton")
Holder_5 = Instance.new("ScrollingFrame")
Example_5 = Instance.new("Frame")
Text_6 = Instance.new("TextLabel")
Delete_7 = Instance.new("TextButton")
PluginEditor = Instance.new("Frame")
background_3 = Instance.new("Frame")
Dark_2 = Instance.new("Frame")
Img = Instance.new("ImageButton")
AddPlugin = Instance.new("TextButton")
FileName = Instance.new("TextBox")
About = Instance.new("TextLabel")
Directions_2 = Instance.new("TextLabel")
shadow_3 = Instance.new("Frame")
PopupText_3 = Instance.new("TextLabel")
Exit_3 = Instance.new("TextButton")
ExitImage_3 = Instance.new("ImageLabel")
AliasHint = Instance.new("TextLabel")
PluginsHint = Instance.new("TextLabel")
PositionsHint = Instance.new("TextLabel")
ToPartFrame = Instance.new("Frame")
background_4 = Instance.new("Frame")
ChoosePart = Instance.new("TextButton")
CopyPath = Instance.new("TextButton")
Directions_3 = Instance.new("TextLabel")
Path = Instance.new("TextLabel")
shadow_4 = Instance.new("Frame")
PopupText_5 = Instance.new("TextLabel")
Exit_4 = Instance.new("TextButton")
ExitImage_5 = Instance.new("ImageLabel")
logs = Instance.new("Frame")
shadow = Instance.new("Frame")
Hide = Instance.new("TextButton")
ImageLabel = Instance.new("ImageLabel")
PopupText = Instance.new("TextLabel")
Exit = Instance.new("TextButton")
ImageLabel_2 = Instance.new("ImageLabel")
background = Instance.new("Frame")
chat = Instance.new("Frame")
Clear = Instance.new("TextButton")
SaveChatlogs = Instance.new("TextButton")
Toggle = Instance.new("TextButton")
scroll_2 = Instance.new("ScrollingFrame")
join = Instance.new("Frame")
Toggle_2 = Instance.new("TextButton")
Clear_2 = Instance.new("TextButton")
scroll_3 = Instance.new("ScrollingFrame")
listlayout = Instance.new("UIListLayout",scroll_3)
selectChat = Instance.new("TextButton")
selectJoin = Instance.new("TextButton")

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

PARENT = nil
if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = COREGUI
	PARENT = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = COREGUI.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = COREGUI
	PARENT = Main
end

shade1 = {}
shade2 = {}
shade3 = {}
text1 = {}
text2 = {}
scroll = {}

Holder.Name = randomString()
Holder.Parent = PARENT
Holder.Active = true
Holder.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(1, -250, 1, -220)
Holder.Size = UDim2.new(0, 250, 0, 220)
Holder.ZIndex = 10
table.insert(shade2,Holder)

Title.Name = "Title"
Title.Parent = Holder
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(36,36,37)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 250, 0, 20)
Title.Font = Enum.Font.SourceSans
Title.TextSize = 18
Title.Text = "Infinite Yield FE v" .. currentVersion

do
	local emoji = ({
		["01 01"] = "🎆",
		[(function(Year)
			local A = math.floor(Year/100)
			local B = math.floor((13+8*A)/25)
			local C = (15-B+A-math.floor(A/4))%30
			local D = (4+A-math.floor(A/4))%7
			local E = (19*(Year%19)+C)%30
			local F = (2*(Year%4)+4*(Year%7)+6*E+D)%7
			local G = (22+E+F)
			if E == 29 and F == 6 then
				return "04 19"
			elseif E == 28 and F == 6 then
				return "04 18"
			elseif 31 < G then
				return ("04 %02d"):format(G-31)
			end
			return ("03 %02d"):format(G)
		end)(tonumber(os.date"%Y"))] = "🥚",
		["10 31"] = "🎃",
		["12 25"] = "🎄"
	})[os.date("%m %d")]
	if emoji then
		Title.Text = ("%s %s %s"):format(emoji, Title.Text, emoji)
	end
end

Title.TextColor3 = Color3.new(1, 1, 1)
Title.ZIndex = 10
table.insert(shade1,Title)
table.insert(text1,Title)

Dark.Name = "Dark"
Dark.Parent = Holder
Dark.Active = true
Dark.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Dark.BorderSizePixel = 0
Dark.Position = UDim2.new(0, 0, 0, 45)
Dark.Size = UDim2.new(0, 250, 0, 175)
Dark.ZIndex = 10
table.insert(shade1,Dark)

Cmdbar.Name = "Cmdbar"
Cmdbar.Parent = Holder
Cmdbar.BackgroundTransparency = 1
Cmdbar.BorderSizePixel = 0
Cmdbar.Position = UDim2.new(0, 5, 0, 20)
Cmdbar.Size = UDim2.new(0, 240, 0, 25)
Cmdbar.Font = Enum.Font.SourceSans
Cmdbar.TextSize = 18
Cmdbar.TextXAlignment = Enum.TextXAlignment.Left
Cmdbar.TextColor3 = Color3.new(1, 1, 1)
Cmdbar.Text = ""
Cmdbar.ZIndex = 10
Cmdbar.PlaceholderText = "Command Bar"

CMDsF.Name = "CMDs"
CMDsF.Parent = Holder
CMDsF.BackgroundTransparency = 1
CMDsF.BorderSizePixel = 0
CMDsF.Position = UDim2.new(0, 5, 0, 45)
CMDsF.Size = UDim2.new(0, 245, 0, 175)
CMDsF.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
CMDsF.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.CanvasSize = UDim2.new(0, 0, 0, 0)
CMDsF.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.ScrollBarThickness = 8
CMDsF.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.VerticalScrollBarInset = 'Always'
CMDsF.ZIndex = 10
table.insert(scroll,CMDsF)

cmdListLayout.Parent = CMDsF

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = Holder
SettingsButton.BackgroundTransparency = 1
SettingsButton.Position = UDim2.new(0, 230, 0, 0)
SettingsButton.Size = UDim2.new(0, 20, 0, 20)
SettingsButton.Image = "rbxassetid://1204397029"
SettingsButton.ZIndex = 10

ReferenceButton = Instance.new("ImageButton")
ReferenceButton.Name = "ReferenceButton"
ReferenceButton.Parent = Holder
ReferenceButton.BackgroundTransparency = 1
ReferenceButton.Position = UDim2.new(0, 212, 0, 2)
ReferenceButton.Size = UDim2.new(0, 16, 0, 16)
ReferenceButton.Image = "rbxassetid://3523243755"
ReferenceButton.ZIndex = 10

Settings.Name = "Settings"
Settings.Parent = Holder
Settings.Active = true
Settings.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0, 0, 0, 220)
Settings.Size = UDim2.new(0, 250, 0, 175)
Settings.ZIndex = 10
table.insert(shade1,Settings)

SettingsHolder = Instance.new("ScrollingFrame")
SettingsHolder.Name = "Holder"
SettingsHolder.Parent = Settings
SettingsHolder.BackgroundTransparency = 1
SettingsHolder.BorderSizePixel = 0
SettingsHolder.Size = UDim2.new(1,0,1,0)
SettingsHolder.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
SettingsHolder.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.CanvasSize = UDim2.new(0, 0, 0, 235)
SettingsHolder.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.ScrollBarThickness = 8
SettingsHolder.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.VerticalScrollBarInset = 'Always'
SettingsHolder.ZIndex = 10
table.insert(scroll,SettingsHolder)

Prefix.Name = "Prefix"
Prefix.Parent = SettingsHolder
Prefix.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Prefix.BorderSizePixel = 0
Prefix.BackgroundTransparency = 1
Prefix.Position = UDim2.new(0, 5, 0, 5)
Prefix.Size = UDim2.new(1, -10, 0, 20)
Prefix.Font = Enum.Font.SourceSans
Prefix.TextSize = 14
Prefix.Text = "Prefix"
Prefix.TextColor3 = Color3.new(1, 1, 1)
Prefix.TextXAlignment = Enum.TextXAlignment.Left
Prefix.ZIndex = 10
table.insert(shade2,Prefix)
table.insert(text1,Prefix)

PrefixBox.Name = "PrefixBox"
PrefixBox.Parent = Prefix
PrefixBox.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
PrefixBox.BorderSizePixel = 0
PrefixBox.Position = UDim2.new(1, -20, 0, 0)
PrefixBox.Size = UDim2.new(0, 20, 0, 20)
PrefixBox.Font = Enum.Font.SourceSansBold
PrefixBox.TextSize = 14
PrefixBox.Text = ''
PrefixBox.TextColor3 = Color3.new(0, 0, 0)
PrefixBox.ZIndex = 10
table.insert(shade3,PrefixBox)
table.insert(text2,PrefixBox)

function makeSettingsButton(name,iconID,off)
	local button = Instance.new("TextButton")
	button.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	button.BorderSizePixel = 0
	button.Position = UDim2.new(0,0,0,0)
	button.Size = UDim2.new(1,0,0,25)
	button.Text = ""
	button.ZIndex = 10
	local icon = Instance.new("ImageLabel")
	icon.Name = "Icon"
	icon.Parent = button
	icon.Position = UDim2.new(0,5,0,5)
	icon.Size = UDim2.new(0,16,0,16)
	icon.BackgroundTransparency = 1
	icon.Image = iconID
	icon.ZIndex = 10
	if off then
		icon.ScaleType = Enum.ScaleType.Crop
		icon.ImageRectSize = Vector2.new(16,16)
		icon.ImageRectOffset = Vector2.new(off,0)
	end
	local label = Instance.new("TextLabel")
	label.Name = "ButtonLabel"
	label.Parent = button
	label.BackgroundTransparency = 1
	label.Text = name
	label.Position = UDim2.new(0,28,0,0)
	label.Size = UDim2.new(1,-28,1,0)
	label.Font = Enum.Font.SourceSans
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextSize = 14
	label.ZIndex = 10
	label.TextXAlignment = Enum.TextXAlignment.Left
	table.insert(shade2,button)
	table.insert(text1,label)
	return button
end

ColorsButton = makeSettingsButton("Edit Theme","rbxassetid://4911962991")
ColorsButton.Position = UDim2.new(0,5,0,55)
ColorsButton.Size = UDim2.new(1,-10,0,25)
ColorsButton.Name = "Colors"
ColorsButton.Parent = SettingsHolder

Keybinds = makeSettingsButton("Edit Keybinds","rbxassetid://129697930")
Keybinds.Position = UDim2.new(0, 5, 0, 85)
Keybinds.Size = UDim2.new(1, -10, 0, 25)
Keybinds.Name = "Keybinds"
Keybinds.Parent = SettingsHolder

Aliases = makeSettingsButton("Edit Aliases","rbxassetid://5147488658")
Aliases.Position = UDim2.new(0, 5, 0, 115)
Aliases.Size = UDim2.new(1, -10, 0, 25)
Aliases.Name = "Aliases"
Aliases.Parent = SettingsHolder

StayOpen.Name = "StayOpen"
StayOpen.Parent = SettingsHolder
StayOpen.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
StayOpen.BorderSizePixel = 0
StayOpen.BackgroundTransparency = 1
StayOpen.Position = UDim2.new(0, 5, 0, 30)
StayOpen.Size = UDim2.new(1, -10, 0, 20)
StayOpen.Font = Enum.Font.SourceSans
StayOpen.TextSize = 14
StayOpen.Text = "Keep Menu Open"
StayOpen.TextColor3 = Color3.new(1, 1, 1)
StayOpen.TextXAlignment = Enum.TextXAlignment.Left
StayOpen.ZIndex = 10
table.insert(shade2,StayOpen)
table.insert(text1,StayOpen)

Button.Name = "Button"
Button.Parent = StayOpen
Button.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(1, -20, 0, 0)
Button.Size = UDim2.new(0, 20, 0, 20)
Button.ZIndex = 10
table.insert(shade3,Button)

On.Name = "On"
On.Parent = Button
On.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
On.BackgroundTransparency = 1
On.BorderSizePixel = 0
On.Position = UDim2.new(0, 2, 0, 2)
On.Size = UDim2.new(0, 16, 0, 16)
On.Font = Enum.Font.SourceSans
On.FontSize = Enum.FontSize.Size14
On.Text = ""
On.TextColor3 = Color3.new(0, 0, 0)
On.ZIndex = 10

Positions = makeSettingsButton("Edit/Goto Waypoints","rbxassetid://5147488592")
Positions.Position = UDim2.new(0, 5, 0, 145)
Positions.Size = UDim2.new(1, -10, 0, 25)
Positions.Name = "Waypoints"
Positions.Parent = SettingsHolder

EventBind = makeSettingsButton("Edit Event Binds","rbxassetid://5147695474",759)
EventBind.Position = UDim2.new(0, 5, 0, 205)
EventBind.Size = UDim2.new(1, -10, 0, 25)
EventBind.Name = "EventBinds"
EventBind.Parent = SettingsHolder

Plugins = makeSettingsButton("Manage Plugins","rbxassetid://5147695474",743)
Plugins.Position = UDim2.new(0, 5, 0, 175)
Plugins.Size = UDim2.new(1, -10, 0, 25)
Plugins.Name = "Plugins"
Plugins.Parent = SettingsHolder

Example.Name = "Example"
Example.Parent = Holder
Example.BackgroundTransparency = 1
Example.BorderSizePixel = 0
Example.Size = UDim2.new(0, 190, 0, 20)
Example.Visible = false
Example.Font = Enum.Font.SourceSans
Example.TextSize = 18
Example.Text = "Example"
Example.TextColor3 = Color3.new(1, 1, 1)
Example.TextXAlignment = Enum.TextXAlignment.Left
Example.ZIndex = 10
table.insert(text1,Example)

Notification.Name = randomString()
Notification.Parent = PARENT
Notification.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(1, -500, 1, 20)
Notification.Size = UDim2.new(0, 250, 0, 100)
Notification.ZIndex = 10
table.insert(shade1,Notification)

Title_2.Name = "Title"
Title_2.Parent = Notification
Title_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(0, 250, 0, 20)
Title_2.Font = Enum.Font.SourceSans
Title_2.TextSize = 14
Title_2.Text = "Notification Title"
Title_2.TextColor3 = Color3.new(1, 1, 1)
Title_2.ZIndex = 10
table.insert(shade2,Title_2)
table.insert(text1,Title_2)

Text_2.Name = "Text"
Text_2.Parent = Notification
Text_2.BackgroundTransparency = 1
Text_2.BorderSizePixel = 0
Text_2.Position = UDim2.new(0, 5, 0, 25)
Text_2.Size = UDim2.new(0, 240, 0, 75)
Text_2.Font = Enum.Font.SourceSans
Text_2.TextSize = 16
Text_2.Text = "Notification Text"
Text_2.TextColor3 = Color3.new(1, 1, 1)
Text_2.TextWrapped = true
Text_2.ZIndex = 10
table.insert(text1,Text_2)

CloseButton.Name = "CloseButton"
CloseButton.Parent = Notification
CloseButton.BackgroundTransparency = 1
CloseButton.Position = UDim2.new(1, -20, 0, 0)
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Text = ""
CloseButton.ZIndex = 10

CloseImage.Parent = CloseButton
CloseImage.BackgroundColor3 = Color3.new(1, 1, 1)
CloseImage.BackgroundTransparency = 1
CloseImage.Position = UDim2.new(0, 5, 0, 5)
CloseImage.Size = UDim2.new(0, 10, 0, 10)
CloseImage.Image = "rbxassetid://5054663650"
CloseImage.ZIndex = 10

PinButton.Name = "PinButton"
PinButton.Parent = Notification
PinButton.BackgroundTransparency = 1
PinButton.Size = UDim2.new(0, 20, 0, 20)
PinButton.ZIndex = 10
PinButton.Text = ""

PinImage.Parent = PinButton
PinImage.BackgroundColor3 = Color3.new(1, 1, 1)
PinImage.BackgroundTransparency = 1
PinImage.Position = UDim2.new(0, 3, 0, 3)
PinImage.Size = UDim2.new(0, 14, 0, 14)
PinImage.ZIndex = 10
PinImage.Image = "rbxassetid://6234691350"

Tooltip.Name = randomString()
Tooltip.Parent = PARENT
Tooltip.Active = true
Tooltip.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
Tooltip.BackgroundTransparency = 0.1
Tooltip.BorderSizePixel = 0
Tooltip.Size = UDim2.new(0, 200, 0, 96)
Tooltip.Visible = false
Tooltip.ZIndex = 10
table.insert(shade1,Tooltip)

Title_3.Name = "Title"
Title_3.Parent = Tooltip
Title_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Title_3.BackgroundTransparency = 0.1
Title_3.BorderSizePixel = 0
Title_3.Size = UDim2.new(0, 200, 0, 20)
Title_3.Font = Enum.Font.SourceSans
Title_3.TextSize = 14
Title_3.Text = ""
Title_3.TextColor3 = Color3.new(1, 1, 1)
Title_3.TextTransparency = 0.1
Title_3.ZIndex = 10
table.insert(shade2,Title_3)
table.insert(text1,Title_3)

Description.Name = "Description"
Description.Parent = Tooltip
Description.BackgroundTransparency = 1
Description.BorderSizePixel = 0
Description.Size = UDim2.new(0,180,0,72)
Description.Position = UDim2.new(0,10,0,18)
Description.Font = Enum.Font.SourceSans
Description.TextSize = 16
Description.Text = ""
Description.TextColor3 = Color3.new(1, 1, 1)
Description.TextTransparency = 0.1
Description.TextWrapped = true
Description.ZIndex = 10
table.insert(text1,Description)

IntroBackground.Name = "IntroBackground"
IntroBackground.Parent = Holder
IntroBackground.Active = true
IntroBackground.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
IntroBackground.BorderSizePixel = 0
IntroBackground.Position = UDim2.new(0, 0, 0, 45)
IntroBackground.Size = UDim2.new(0, 250, 0, 175)
IntroBackground.ZIndex = 10

Logo.Name = "Logo"
Logo.Parent = Holder
Logo.BackgroundTransparency = 1
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0, 125, 0, 127)
Logo.Size = UDim2.new(0, 10, 0, 10)
Logo.Image = "rbxassetid://1352543873"
Logo.ImageTransparency = 0
Logo.ZIndex = 10

Credits.Name = "Credits"
Credits.Parent = Holder
Credits.BackgroundTransparency = 1
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0.9, 30)
Credits.Size = UDim2.new(0, 250, 0, 20)
Credits.Font = Enum.Font.SourceSansLight
Credits.FontSize = Enum.FontSize.Size18
Credits.Text = "Edge // Zwolf // Moon // Toon"
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.ZIndex = 10

KeybindsFrame.Name = "KeybindsFrame"
KeybindsFrame.Parent = Settings
KeybindsFrame.Active = true
KeybindsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
KeybindsFrame.BorderSizePixel = 0
KeybindsFrame.Position = UDim2.new(0, 0, 0, 175)
KeybindsFrame.Size = UDim2.new(0, 250, 0, 175)
KeybindsFrame.ZIndex = 10
table.insert(shade1,KeybindsFrame)

Close.Name = "Close"
Close.Parent = KeybindsFrame
Close.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0, 205, 0, 150)
Close.Size = UDim2.new(0, 40, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.TextSize = 14
Close.Text = "Close"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.ZIndex = 10
table.insert(shade2,Close)
table.insert(text1,Close)

Add.Name = "Add"
Add.Parent = KeybindsFrame
Add.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Add.BorderSizePixel = 0
Add.Position = UDim2.new(0, 5, 0, 150)
Add.Size = UDim2.new(0, 40, 0, 20)
Add.Font = Enum.Font.SourceSans
Add.TextSize = 14
Add.Text = "Add"
Add.TextColor3 = Color3.new(1, 1, 1)
Add.ZIndex = 10
table.insert(shade2,Add)
table.insert(text1,Add)

Delete.Name = "Delete"
Delete.Parent = KeybindsFrame
Delete.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Delete.BorderSizePixel = 0
Delete.Position = UDim2.new(0, 50, 0, 150)
Delete.Size = UDim2.new(0, 40, 0, 20)
Delete.Font = Enum.Font.SourceSans
Delete.TextSize = 14
Delete.Text = "Clear"
Delete.TextColor3 = Color3.new(1, 1, 1)
Delete.ZIndex = 10
table.insert(shade2,Delete)
table.insert(text1,Delete)

Holder_2.Name = "Holder"
Holder_2.Parent = KeybindsFrame
Holder_2.BackgroundTransparency = 1
Holder_2.BorderSizePixel = 0
Holder_2.Position = UDim2.new(0, 0, 0, 0)
Holder_2.Size = UDim2.new(0, 250, 0, 145)
Holder_2.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_2.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.ScrollBarThickness = 0
Holder_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.VerticalScrollBarInset = 'Always'
Holder_2.ZIndex = 10

Example_2.Name = "Example"
Example_2.Parent = KeybindsFrame
Example_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_2.BorderSizePixel = 0
Example_2.Size = UDim2.new(0, 10, 0, 20)
Example_2.Visible = false
Example_2.ZIndex = 10
table.insert(shade2,Example_2)

Text_3.Name = "Text"
Text_3.Parent = Example_2
Text_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_3.BorderSizePixel = 0
Text_3.Position = UDim2.new(0, 10, 0, 0)
Text_3.Size = UDim2.new(0, 240, 0, 20)
Text_3.Font = Enum.Font.SourceSans
Text_3.TextSize = 14
Text_3.Text = "nom"
Text_3.TextColor3 = Color3.new(1, 1, 1)
Text_3.TextXAlignment = Enum.TextXAlignment.Left
Text_3.ZIndex = 10
table.insert(shade2,Text_3)
table.insert(text1,Text_3)

Delete_2.Name = "Delete"
Delete_2.Parent = Text_3
Delete_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_2.BorderSizePixel = 0
Delete_2.Position = UDim2.new(0, 200, 0, 0)
Delete_2.Size = UDim2.new(0, 40, 0, 20)
Delete_2.Font = Enum.Font.SourceSans
Delete_2.TextSize = 14
Delete_2.Text = "Delete"
Delete_2.TextColor3 = Color3.new(0, 0, 0)
Delete_2.ZIndex = 10
table.insert(shade3,Delete_2)
table.insert(text2,Delete_2)

KeybindEditor.Name = randomString()
KeybindEditor.Parent = PARENT
KeybindEditor.Active = true
KeybindEditor.BackgroundTransparency = 1
KeybindEditor.Position = UDim2.new(0.5, -180, 0, -500)
KeybindEditor.Size = UDim2.new(0, 360, 0, 20)
KeybindEditor.ZIndex = 10

background_2.Name = "background"
background_2.Parent = KeybindEditor
background_2.Active = true
background_2.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
background_2.BorderSizePixel = 0
background_2.Position = UDim2.new(0, 0, 0, 20)
background_2.Size = UDim2.new(0, 360, 0, 185)
background_2.ZIndex = 10
table.insert(shade1,background_2)

Dark_3.Name = "Dark"
Dark_3.Parent = background_2
Dark_3.Active = true
Dark_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Dark_3.BorderSizePixel = 0
Dark_3.Position = UDim2.new(0, 135, 0, 0)
Dark_3.Size = UDim2.new(0, 2, 0, 185)
Dark_3.ZIndex = 10
table.insert(shade2,Dark_3)

Directions.Name = "Directions"
Directions.Parent = background_2
Directions.BackgroundTransparency = 1
Directions.BorderSizePixel = 0
Directions.Position = UDim2.new(0, 10, 0, 15)
Directions.Size = UDim2.new(0, 115, 0, 90)
Directions.ZIndex = 10
Directions.Font = Enum.Font.SourceSans
Directions.Text = "Click the button below and press a key/mouse button. Then select what you want to bind it to."
Directions.TextColor3 = Color3.fromRGB(255, 255, 255)
Directions.TextSize = 14.000
Directions.TextWrapped = true
Directions.TextYAlignment = Enum.TextYAlignment.Top
table.insert(text1,Directions)

BindTo.Name = "BindTo"
BindTo.Parent = background_2
BindTo.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
BindTo.BorderSizePixel = 0
BindTo.Position = UDim2.new(0, 10, 0, 95)
BindTo.Size = UDim2.new(0, 115, 0, 50)
BindTo.ZIndex = 10
BindTo.Font = Enum.Font.SourceSans
BindTo.Text = "Click to bind"
BindTo.TextColor3 = Color3.fromRGB(255, 255, 255)
BindTo.TextSize = 16.000
table.insert(shade2,BindTo)
table.insert(text1,BindTo)

TriggerLabel.Name = "TriggerLabel"
TriggerLabel.Parent = background_2
TriggerLabel.BackgroundTransparency = 1
TriggerLabel.Position = UDim2.new(0, 10, 0, 155)
TriggerLabel.Size = UDim2.new(0, 45, 0, 20)
TriggerLabel.ZIndex = 10
TriggerLabel.Font = Enum.Font.SourceSans
TriggerLabel.Text = "Trigger:"
TriggerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TriggerLabel.TextSize = 14.000
TriggerLabel.TextXAlignment = Enum.TextXAlignment.Left
table.insert(text1,TriggerLabel)

BindTriggerSelect.Name = "BindTo"
BindTriggerSelect.Parent = background_2
BindTriggerSelect.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
BindTriggerSelect.BorderSizePixel = 0
BindTriggerSelect.Position = UDim2.new(0, 60, 0, 155)
BindTriggerSelect.Size = UDim2.new(0, 65, 0, 20)
BindTriggerSelect.ZIndex = 10
BindTriggerSelect.Font = Enum.Font.SourceSans
BindTriggerSelect.Text = "KeyDown"
BindTriggerSelect.TextColor3 = Color3.fromRGB(255, 255, 255)
BindTriggerSelect.TextSize = 16.000
table.insert(shade2,BindTriggerSelect)
table.insert(text1,BindTriggerSelect)

Add_2.Name = "Add"
Add_2.Parent = background_2
Add_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Add_2.BorderSizePixel = 0
Add_2.Position = UDim2.new(0, 310, 0, 35)
Add_2.Size = UDim2.new(0, 40, 0, 20)
Add_2.ZIndex = 10
Add_2.Font = Enum.Font.SourceSans
Add_2.Text = "Add"
Add_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Add_2.TextSize = 14.000
table.insert(shade2,Add_2)
table.insert(text1,Add_2)

Toggles.Name = "Toggles"
Toggles.Parent = background_2
Toggles.BackgroundTransparency = 1
Toggles.BorderSizePixel = 0
Toggles.Position = UDim2.new(0, 150, 0, 125)
Toggles.Size = UDim2.new(0, 200, 0, 50)
Toggles.ZIndex = 10
Toggles.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Toggles.CanvasSize = UDim2.new(0, 0, 0, 50)
Toggles.ScrollBarThickness = 8
Toggles.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Toggles.VerticalScrollBarInset = Enum.ScrollBarInset.Always
table.insert(scroll,Toggles)

ClickTP.Name = "Click TP (Hold Key & Click)"
ClickTP.Parent = Toggles
ClickTP.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
ClickTP.BorderSizePixel = 0
ClickTP.Size = UDim2.new(0, 200, 0, 20)
ClickTP.ZIndex = 10
ClickTP.Font = Enum.Font.SourceSans
ClickTP.Text = "    Click TP (Hold Key & Click)"
ClickTP.TextColor3 = Color3.fromRGB(255, 255, 255)
ClickTP.TextSize = 14.000
ClickTP.TextXAlignment = Enum.TextXAlignment.Left
table.insert(shade2,ClickTP)
table.insert(text1,ClickTP)

Select.Name = "Select"
Select.Parent = ClickTP
Select.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Select.BorderSizePixel = 0
Select.Position = UDim2.new(0, 160, 0, 0)
Select.Size = UDim2.new(0, 40, 0, 20)
Select.ZIndex = 10
Select.Font = Enum.Font.SourceSans
Select.Text = "Add"
Select.TextColor3 = Color3.fromRGB(0, 0, 0)
Select.TextSize = 14.000
table.insert(shade3,Select)
table.insert(text2,Select)

ClickDelete.Name = "Click Delete (Hold Key & Click)"
ClickDelete.Parent = Toggles
ClickDelete.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
ClickDelete.BorderSizePixel = 0
ClickDelete.Position = UDim2.new(0, 0, 0, 25)
ClickDelete.Size = UDim2.new(0, 200, 0, 20)
ClickDelete.ZIndex = 10
ClickDelete.Font = Enum.Font.SourceSans
ClickDelete.Text = "    Click Delete (Hold Key & Click)"
ClickDelete.TextColor3 = Color3.fromRGB(255, 255, 255)
ClickDelete.TextSize = 14.000
ClickDelete.TextXAlignment = Enum.TextXAlignment.Left
table.insert(shade2,ClickDelete)
table.insert(text1,ClickDelete)

Select_2.Name = "Select"
Select_2.Parent = ClickDelete
Select_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Select_2.BorderSizePixel = 0
Select_2.Position = UDim2.new(0, 160, 0, 0)
Select_2.Size = UDim2.new(0, 40, 0, 20)
Select_2.ZIndex = 10
Select_2.Font = Enum.Font.SourceSans
Select_2.Text = "Add"
Select_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Select_2.TextSize = 14.000
table.insert(shade3,Select_2)
table.insert(text2,Select_2)

Cmdbar_2.Name = "Cmdbar_2"
Cmdbar_2.Parent = background_2
Cmdbar_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Cmdbar_2.BorderSizePixel = 0
Cmdbar_2.Position = UDim2.new(0, 150, 0, 35)
Cmdbar_2.Size = UDim2.new(0, 150, 0, 20)
Cmdbar_2.ZIndex = 10
Cmdbar_2.Font = Enum.Font.SourceSans
Cmdbar_2.PlaceholderText = "Command"
Cmdbar_2.Text = ""
Cmdbar_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmdbar_2.TextSize = 14.000
Cmdbar_2.TextXAlignment = Enum.TextXAlignment.Left

Cmdbar_3.Name = "Cmdbar_3"
Cmdbar_3.Parent = background_2
Cmdbar_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Cmdbar_3.BorderSizePixel = 0
Cmdbar_3.Position = UDim2.new(0, 150, 0, 60)
Cmdbar_3.Size = UDim2.new(0, 150, 0, 20)
Cmdbar_3.ZIndex = 10
Cmdbar_3.Font = Enum.Font.SourceSans
Cmdbar_3.PlaceholderText = "Command 2"
Cmdbar_3.Text = ""
Cmdbar_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Cmdbar_3.TextSize = 14.000
Cmdbar_3.TextXAlignment = Enum.TextXAlignment.Left

CreateToggle.Name = "CreateToggle"
CreateToggle.Parent = background_2
CreateToggle.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
CreateToggle.BackgroundTransparency = 1
CreateToggle.BorderSizePixel = 0
CreateToggle.Position = UDim2.new(0, 152, 0, 10)
CreateToggle.Size = UDim2.new(0, 198, 0, 20)
CreateToggle.ZIndex = 10
CreateToggle.Font = Enum.Font.SourceSans
CreateToggle.Text = "Create Toggle"
CreateToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
CreateToggle.TextSize = 14.000
CreateToggle.TextXAlignment = Enum.TextXAlignment.Left
table.insert(text1,CreateToggle)

Button_2.Name = "Button"
Button_2.Parent = CreateToggle
Button_2.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Button_2.BorderSizePixel = 0
Button_2.Position = UDim2.new(1, -20, 0, 0)
Button_2.Size = UDim2.new(0, 20, 0, 20)
Button_2.ZIndex = 10
table.insert(shade3,Button_2)

On_2.Name = "On"
On_2.Parent = Button_2
On_2.BackgroundColor3 = Color3.fromRGB(150, 150, 151)
On_2.BackgroundTransparency = 1
On_2.BorderSizePixel = 0
On_2.Position = UDim2.new(0, 2, 0, 2)
On_2.Size = UDim2.new(0, 16, 0, 16)
On_2.ZIndex = 10
On_2.Font = Enum.Font.SourceSans
On_2.Text = ""
On_2.TextColor3 = Color3.fromRGB(0, 0, 0)
On_2.TextSize = 14.000

shadow_2.Name = "shadow"
shadow_2.Parent = KeybindEditor
shadow_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
shadow_2.BorderSizePixel = 0
shadow_2.Size = UDim2.new(0, 360, 0, 20)
shadow_2.ZIndex = 10
table.insert(shade2,shadow_2)

PopupText_2.Name = "PopupText_2"
PopupText_2.Parent = shadow_2
PopupText_2.BackgroundTransparency = 1
PopupText_2.Size = UDim2.new(1, 0, 0.949999988, 0)
PopupText_2.ZIndex = 10
PopupText_2.Font = Enum.Font.SourceSans
PopupText_2.Text = "Set Keybinds"
PopupText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
PopupText_2.TextSize = 14.000
PopupText_2.TextWrapped = true
table.insert(text1,PopupText_2)

Exit_2.Name = "Exit_2"
Exit_2.Parent = shadow_2
Exit_2.BackgroundTransparency = 1
Exit_2.Position = UDim2.new(1, -20, 0, 0)
Exit_2.Size = UDim2.new(0, 20, 0, 20)
Exit_2.ZIndex = 10
Exit_2.Text = ""

ExitImage_2.Parent = Exit_2
ExitImage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExitImage_2.BackgroundTransparency = 1
ExitImage_2.Position = UDim2.new(0, 5, 0, 5)
ExitImage_2.Size = UDim2.new(0, 10, 0, 10)
ExitImage_2.ZIndex = 10
ExitImage_2.Image = "rbxassetid://5054663650"

PositionsFrame.Name = "PositionsFrame"
PositionsFrame.Parent = Settings
PositionsFrame.Active = true
PositionsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
PositionsFrame.BorderSizePixel = 0
PositionsFrame.Size = UDim2.new(0, 250, 0, 175)
PositionsFrame.Position = UDim2.new(0, 0, 0, 175)
PositionsFrame.ZIndex = 10
table.insert(shade1,PositionsFrame)

Close_3.Name = "Close"
Close_3.Parent = PositionsFrame
Close_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close_3.BorderSizePixel = 0
Close_3.Position = UDim2.new(0, 205, 0, 150)
Close_3.Size = UDim2.new(0, 40, 0, 20)
Close_3.Font = Enum.Font.SourceSans
Close_3.TextSize = 14
Close_3.Text = "Close"
Close_3.TextColor3 = Color3.new(1, 1, 1)
Close_3.ZIndex = 10
table.insert(shade2,Close_3)
table.insert(text1,Close_3)

Delete_5.Name = "Delete"
Delete_5.Parent = PositionsFrame
Delete_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Delete_5.BorderSizePixel = 0
Delete_5.Position = UDim2.new(0, 50, 0, 150)
Delete_5.Size = UDim2.new(0, 40, 0, 20)
Delete_5.Font = Enum.Font.SourceSans
Delete_5.TextSize = 14
Delete_5.Text = "Clear"
Delete_5.TextColor3 = Color3.new(1, 1, 1)
Delete_5.ZIndex = 10
table.insert(shade2,Delete_5)
table.insert(text1,Delete_5)

Part.Name = "PartGoto"
Part.Parent = PositionsFrame
Part.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Part.BorderSizePixel = 0
Part.Position = UDim2.new(0, 5, 0, 150)
Part.Size = UDim2.new(0, 40, 0, 20)
Part.Font = Enum.Font.SourceSans
Part.TextSize = 14
Part.Text = "Part"
Part.TextColor3 = Color3.new(1, 1, 1)
Part.ZIndex = 10
table.insert(shade2,Part)
table.insert(text1,Part)

Holder_4.Name = "Holder"
Holder_4.Parent = PositionsFrame
Holder_4.BackgroundTransparency = 1
Holder_4.BorderSizePixel = 0
Holder_4.Position = UDim2.new(0, 0, 0, 0)
Holder_4.Selectable = false
Holder_4.Size = UDim2.new(0, 250, 0, 145)
Holder_4.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_4.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_4.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.ScrollBarThickness = 0
Holder_4.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.VerticalScrollBarInset = 'Always'
Holder_4.ZIndex = 10

Example_4.Name = "Example"
Example_4.Parent = PositionsFrame
Example_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_4.BorderSizePixel = 0
Example_4.Size = UDim2.new(0, 10, 0, 20)
Example_4.Visible = false
Example_4.Position = UDim2.new(0, 0, 0, -5)
Example_4.ZIndex = 10
table.insert(shade2,Example_4)

Text_5.Name = "Text"
Text_5.Parent = Example_4
Text_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_5.BorderSizePixel = 0
Text_5.Position = UDim2.new(0, 10, 0, 0)
Text_5.Size = UDim2.new(0, 240, 0, 20)
Text_5.Font = Enum.Font.SourceSans
Text_5.TextSize = 14
Text_5.Text = "Position"
Text_5.TextColor3 = Color3.new(1, 1, 1)
Text_5.TextXAlignment = Enum.TextXAlignment.Left
Text_5.ZIndex = 10
table.insert(shade2,Text_5)
table.insert(text1,Text_5)

Delete_6.Name = "Delete"
Delete_6.Parent = Text_5
Delete_6.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_6.BorderSizePixel = 0
Delete_6.Position = UDim2.new(0, 200, 0, 0)
Delete_6.Size = UDim2.new(0, 40, 0, 20)
Delete_6.Font = Enum.Font.SourceSans
Delete_6.TextSize = 14
Delete_6.Text = "Delete"
Delete_6.TextColor3 = Color3.new(0, 0, 0)
Delete_6.ZIndex = 10
table.insert(shade3,Delete_6)
table.insert(text2,Delete_6)

TP.Name = "TP"
TP.Parent = Text_5
TP.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
TP.BorderSizePixel = 0
TP.Position = UDim2.new(0, 155, 0, 0)
TP.Size = UDim2.new(0, 40, 0, 20)
TP.Font = Enum.Font.SourceSans
TP.TextSize = 14
TP.Text = "Goto"
TP.TextColor3 = Color3.new(0, 0, 0)
TP.ZIndex = 10
table.insert(shade3,TP)
table.insert(text2,TP)

AliasesFrame.Name = "AliasesFrame"
AliasesFrame.Parent = Settings
AliasesFrame.Active = true
AliasesFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
AliasesFrame.BorderSizePixel = 0
AliasesFrame.Position = UDim2.new(0, 0, 0, 175)
AliasesFrame.Size = UDim2.new(0, 250, 0, 175)
AliasesFrame.ZIndex = 10
table.insert(shade1,AliasesFrame)

Close_2.Name = "Close"
Close_2.Parent = AliasesFrame
Close_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close_2.BorderSizePixel = 0
Close_2.Position = UDim2.new(0, 205, 0, 150)
Close_2.Size = UDim2.new(0, 40, 0, 20)
Close_2.Font = Enum.Font.SourceSans
Close_2.TextSize = 14
Close_2.Text = "Close"
Close_2.TextColor3 = Color3.new(1, 1, 1)
Close_2.ZIndex = 10
table.insert(shade2,Close_2)
table.insert(text1,Close_2)

Delete_3.Name = "Delete"
Delete_3.Parent = AliasesFrame
Delete_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Delete_3.BorderSizePixel = 0
Delete_3.Position = UDim2.new(0, 5, 0, 150)
Delete_3.Size = UDim2.new(0, 40, 0, 20)
Delete_3.Font = Enum.Font.SourceSans
Delete_3.TextSize = 14
Delete_3.Text = "Clear"
Delete_3.TextColor3 = Color3.new(1, 1, 1)
Delete_3.ZIndex = 10
table.insert(shade2,Delete_3)
table.insert(text1,Delete_3)

Holder_3.Name = "Holder"
Holder_3.Parent = AliasesFrame
Holder_3.BackgroundTransparency = 1
Holder_3.BorderSizePixel = 0
Holder_3.Position = UDim2.new(0, 0, 0, 0)
Holder_3.Size = UDim2.new(0, 250, 0, 145)
Holder_3.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_3.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_3.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.ScrollBarThickness = 0
Holder_3.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.VerticalScrollBarInset = 'Always'
Holder_3.ZIndex = 10

Example_3.Name = "Example"
Example_3.Parent = AliasesFrame
Example_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_3.BorderSizePixel = 0
Example_3.Size = UDim2.new(0, 10, 0, 20)
Example_3.Visible = false
Example_3.ZIndex = 10
table.insert(shade2,Example_3)

Text_4.Name = "Text"
Text_4.Parent = Example_3
Text_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_4.BorderSizePixel = 0
Text_4.Position = UDim2.new(0, 10, 0, 0)
Text_4.Size = UDim2.new(0, 240, 0, 20)
Text_4.Font = Enum.Font.SourceSans
Text_4.TextSize = 14
Text_4.Text = "honk"
Text_4.TextColor3 = Color3.new(1, 1, 1)
Text_4.TextXAlignment = Enum.TextXAlignment.Left
Text_4.ZIndex = 10
table.insert(shade2,Text_4)
table.insert(text1,Text_4)

Delete_4.Name = "Delete"
Delete_4.Parent = Text_4
Delete_4.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_4.BorderSizePixel = 0
Delete_4.Position = UDim2.new(0, 200, 0, 0)
Delete_4.Size = UDim2.new(0, 40, 0, 20)
Delete_4.Font = Enum.Font.SourceSans
Delete_4.TextSize = 14
Delete_4.Text = "Delete"
Delete_4.TextColor3 = Color3.new(0, 0, 0)
Delete_4.ZIndex = 10
table.insert(shade3,Delete_4)
table.insert(text2,Delete_4)

PluginsFrame.Name = "PluginsFrame"
PluginsFrame.Parent = Settings
PluginsFrame.Active = true
PluginsFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
PluginsFrame.BorderSizePixel = 0
PluginsFrame.Position = UDim2.new(0, 0, 0, 175)
PluginsFrame.Size = UDim2.new(0, 250, 0, 175)
PluginsFrame.ZIndex = 10
table.insert(shade1,PluginsFrame)

Close_4.Name = "Close"
Close_4.Parent = PluginsFrame
Close_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Close_4.BorderSizePixel = 0
Close_4.Position = UDim2.new(0, 205, 0, 150)
Close_4.Size = UDim2.new(0, 40, 0, 20)
Close_4.Font = Enum.Font.SourceSans
Close_4.TextSize = 14
Close_4.Text = "Close"
Close_4.TextColor3 = Color3.new(1, 1, 1)
Close_4.ZIndex = 10
table.insert(shade2,Close_4)
table.insert(text1,Close_4)

Add_3.Name = "Add"
Add_3.Parent = PluginsFrame
Add_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Add_3.BorderSizePixel = 0
Add_3.Position = UDim2.new(0, 5, 0, 150)
Add_3.Size = UDim2.new(0, 40, 0, 20)
Add_3.Font = Enum.Font.SourceSans
Add_3.TextSize = 14
Add_3.Text = "Add"
Add_3.TextColor3 = Color3.new(1, 1, 1)
Add_3.ZIndex = 10
table.insert(shade2,Add_3)
table.insert(text1,Add_3)

Holder_5.Name = "Holder"
Holder_5.Parent = PluginsFrame
Holder_5.BackgroundTransparency = 1
Holder_5.BorderSizePixel = 0
Holder_5.Position = UDim2.new(0, 0, 0, 0)
Holder_5.Selectable = false
Holder_5.Size = UDim2.new(0, 250, 0, 145)
Holder_5.ScrollBarImageColor3 = Color3.fromRGB(78,78,79)
Holder_5.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.CanvasSize = UDim2.new(0, 0, 0, 0)
Holder_5.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.ScrollBarThickness = 0
Holder_5.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.VerticalScrollBarInset = 'Always'
Holder_5.ZIndex = 10

Example_5.Name = "Example"
Example_5.Parent = PluginsFrame
Example_5.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Example_5.BorderSizePixel = 0
Example_5.Size = UDim2.new(0, 10, 0, 20)
Example_5.Visible = false
Example_5.ZIndex = 10
table.insert(shade2,Example_5)

Text_6.Name = "Text"
Text_6.Parent = Example_5
Text_6.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Text_6.BorderSizePixel = 0
Text_6.Position = UDim2.new(0, 10, 0, 0)
Text_6.Size = UDim2.new(0, 240, 0, 20)
Text_6.Font = Enum.Font.SourceSans
Text_6.TextSize = 14
Text_6.Text = "F4 > Toggle Fly"
Text_6.TextColor3 = Color3.new(1, 1, 1)
Text_6.TextXAlignment = Enum.TextXAlignment.Left
Text_6.ZIndex = 10
table.insert(shade2,Text_6)
table.insert(text1,Text_6)

Delete_7.Name = "Delete"
Delete_7.Parent = Text_6
Delete_7.BackgroundColor3 = Color3.fromRGB(78, 78, 79)
Delete_7.BorderSizePixel = 0
Delete_7.Position = UDim2.new(0, 200, 0, 0)
Delete_7.Size = UDim2.new(0, 40, 0, 20)
Delete_7.Font = Enum.Font.SourceSans
Delete_7.TextSize = 14
Delete_7.Text = "Delete"
Delete_7.TextColor3 = Color3.new(0, 0, 0)
Delete_7.ZIndex = 10
table.insert(shade3,Delete_7)
table.insert(text2,Delete_7)

PluginEditor.Name = randomString()
PluginEditor.Parent = PARENT
PluginEditor.BorderSizePixel = 0
PluginEditor.Active = true
PluginEditor.BackgroundTransparency = 1
PluginEditor.Position = UDim2.new(0.5, -180, 0, -500)
PluginEditor.Size = UDim2.new(0, 360, 0, 20)
PluginEditor.ZIndex = 10

background_3.Name = "background"
background_3.Parent = PluginEditor
background_3.Active = true
background_3.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
background_3.BorderSizePixel = 0
background_3.Position = UDim2.new(0, 0, 0, 20)
background_3.Size = UDim2.new(0, 360, 0, 160)
background_3.ZIndex = 10
table.insert(shade1,background_3)

Dark_2.Name = "Dark"
Dark_2.Parent = background_3
Dark_2.Active = true
Dark_2.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
Dark_2.BorderSizePixel = 0
Dark_2.Position = UDim2.new(0, 222, 0, 0)
Dark_2.Size = UDim2.new(0, 2, 0, 160)
Dark_2.ZIndex = 10
table.insert(shade2,Dark_2)

Img.Name = "Img"
Img.Parent = background_3
Img.BackgroundTransparency = 1
Img.Position = UDim2.new(0, 242, 0, 3)
Img.Size = UDim2.new(0, 100, 0, 95)
Img.Image = "rbxassetid://4113050383"
Img.ZIndex = 10

AddPlugin.Name = "AddPlugin"
AddPlugin.Parent = background_3
AddPlugin.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
AddPlugin.BorderSizePixel = 0
AddPlugin.Position = UDim2.new(0, 235, 0, 100)
AddPlugin.Size = UDim2.new(0, 115, 0, 50)
AddPlugin.Font = Enum.Font.SourceSans
AddPlugin.TextSize = 14
AddPlugin.Text = "Add Plugin"
AddPlugin.TextColor3 = Color3.new(1, 1, 1)
AddPlugin.ZIndex = 10
table.insert(shade2,AddPlugin)
table.insert(text1,AddPlugin)

FileName.Name = "FileName"
FileName.Parent = background_3
FileName.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
FileName.BorderSizePixel = 0
FileName.Position = UDim2.new(0.028, 0, 0.625, 0)
FileName.Size = UDim2.new(0, 200, 0, 50)
FileName.Font = Enum.Font.SourceSans
FileName.TextSize = 14
FileName.Text = "Plugin File Name"
FileName.TextColor3 = Color3.new(1, 1, 1)
FileName.ZIndex = 10
table.insert(shade2,FileName)
table.insert(text1,FileName)

About.Name = "About"
About.Parent = background_3
About.BackgroundTransparency = 1
About.BorderSizePixel = 0
About.Position = UDim2.new(0, 17, 0, 10)
About.Size = UDim2.new(0, 187, 0, 49)
About.Font = Enum.Font.SourceSans
About.TextSize = 14
About.Text = "Plugins are .iy files and should be located in the 'workspace' folder of your exploit."
About.TextColor3 = Color3.fromRGB(255, 255, 255)
About.TextWrapped = true
About.TextYAlignment = Enum.TextYAlignment.Top
About.ZIndex = 10
table.insert(text1,About)

Directions_2.Name = "Directions"
Directions_2.Parent = background_3
Directions_2.BackgroundTransparency = 1
Directions_2.BorderSizePixel = 0
Directions_2.Position = UDim2.new(0, 17, 0, 60)
Directions_2.Size = UDim2.new(0, 187, 0, 49)
Directions_2.Font = Enum.Font.SourceSans
Directions_2.TextSize = 14
Directions_2.Text = "Type the name of the plugin file you want to add below."
Directions_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Directions_2.TextWrapped = true
Directions_2.TextYAlignment = Enum.TextYAlignment.Top
Directions_2.ZIndex = 10
table.insert(text1,Directions_2)

shadow_3.Name = "shadow"
shadow_3.Parent = PluginEditor
shadow_3.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
shadow_3.BorderSizePixel = 0
shadow_3.Size = UDim2.new(0, 360, 0, 20)
shadow_3.ZIndex = 10
table.insert(shade2,shadow_3)

PopupText_3.Name = "PopupText"
PopupText_3.Parent = shadow_3
PopupText_3.BackgroundTransparency = 1
PopupText_3.Size = UDim2.new(1, 0, 0.95, 0)
PopupText_3.ZIndex = 10
PopupText_3.Font = Enum.Font.SourceSans
PopupText_3.TextSize = 14
PopupText_3.Text = "Add Plugins"
PopupText_3.TextColor3 = Color3.new(1, 1, 1)
PopupText_3.TextWrapped = true
table.insert(text1,PopupText_3)

Exit_3.Name = "Exit"
Exit_3.Parent = shadow_3
Exit_3.BackgroundTransparency = 1
Exit_3.Position = UDim2.new(1, -20, 0, 0)
Exit_3.Size = UDim2.new(0, 20, 0, 20)
Exit_3.Text = ""
Exit_3.ZIndex = 10

ExitImage_3.Parent = Exit_3
ExitImage_3.BackgroundColor3 = Color3.new(1, 1, 1)
ExitImage_3.BackgroundTransparency = 1
ExitImage_3.Position = UDim2.new(0, 5, 0, 5)
ExitImage_3.Size = UDim2.new(0, 10, 0, 10)
ExitImage_3.Image = "rbxassetid://5054663650"
ExitImage_3.ZIndex = 10

AliasHint.Name = "AliasHint"
AliasHint.Parent = AliasesFrame
AliasHint.BackgroundTransparency = 1
AliasHint.BorderSizePixel = 0
AliasHint.Position = UDim2.new(0, 25, 0, 40)
AliasHint.Size = UDim2.new(0, 200, 0, 50)
AliasHint.Font = Enum.Font.SourceSansItalic
AliasHint.TextSize = 16
AliasHint.Text = "Add aliases by using the 'addalias' command"
AliasHint.TextColor3 = Color3.new(1, 1, 1)
AliasHint.TextStrokeColor3 = Color3.new(1, 1, 1)
AliasHint.TextWrapped = true
AliasHint.ZIndex = 10
table.insert(text1,AliasHint)

PluginsHint.Name = "PluginsHint"
PluginsHint.Parent = PluginsFrame
PluginsHint.BackgroundTransparency = 1
PluginsHint.BorderSizePixel = 0
PluginsHint.Position = UDim2.new(0, 25, 0, 40)
PluginsHint.Size = UDim2.new(0, 200, 0, 50)
PluginsHint.Font = Enum.Font.SourceSansItalic
PluginsHint.TextSize = 16
PluginsHint.Text = "Download plugins from the IY Discord (discord.io/infiniteyield)"
PluginsHint.TextColor3 = Color3.new(1, 1, 1)
PluginsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
PluginsHint.TextWrapped = true
PluginsHint.ZIndex = 10
table.insert(text1,PluginsHint)

PositionsHint.Name = "PositionsHint"
PositionsHint.Parent = PositionsFrame
PositionsHint.BackgroundTransparency = 1
PositionsHint.BorderSizePixel = 0
PositionsHint.Position = UDim2.new(0, 25, 0, 40)
PositionsHint.Size = UDim2.new(0, 200, 0, 70)
PositionsHint.Font = Enum.Font.SourceSansItalic
PositionsHint.TextSize = 16
PositionsHint.Text = "Use the 'swp' or 'setwaypoint' command to add a position using your character (NOTE: Part teleports will not save)"
PositionsHint.TextColor3 = Color3.new(1, 1, 1)
PositionsHint.TextStrokeColor3 = Color3.new(1, 1, 1)
PositionsHint.TextWrapped = true
PositionsHint.ZIndex = 10
table.insert(text1,PositionsHint)

ToPartFrame.Name = randomString()
ToPartFrame.Parent = PARENT
ToPartFrame.Active = true
ToPartFrame.BackgroundTransparency = 1
ToPartFrame.Position = UDim2.new(0.5, -180, 0, -500)
ToPartFrame.Size = UDim2.new(0, 360, 0, 20)
ToPartFrame.ZIndex = 10

background_4.Name = "background"
background_4.Parent = ToPartFrame
background_4.Active = true
background_4.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
background_4.BorderSizePixel = 0
background_4.Position = UDim2.new(0, 0, 0, 20)
background_4.Size = UDim2.new(0, 360, 0, 117)
background_4.ZIndex = 10
table.insert(shade1,background_4)

ChoosePart.Name = "ChoosePart"
ChoosePart.Parent = background_4
ChoosePart.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
ChoosePart.BorderSizePixel = 0
ChoosePart.Position = UDim2.new(0, 100, 0, 55)
ChoosePart.Size = UDim2.new(0, 75, 0, 30)
ChoosePart.Font = Enum.Font.SourceSans
ChoosePart.TextSize = 14
ChoosePart.Text = "Select Part"
ChoosePart.TextColor3 = Color3.new(1, 1, 1)
ChoosePart.ZIndex = 10
table.insert(shade2,ChoosePart)
table.insert(text1,ChoosePart)

CopyPath.Name = "CopyPath"
CopyPath.Parent = background_4
CopyPath.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
CopyPath.BorderSizePixel = 0
CopyPath.Position = UDim2.new(0, 185, 0, 55)
CopyPath.Size = UDim2.new(0, 75, 0, 30)
CopyPath.Font = Enum.Font.SourceSans
CopyPath.TextSize = 14
CopyPath.Text = "Copy Path"
CopyPath.TextColor3 = Color3.new(1, 1, 1)
CopyPath.ZIndex = 10
table.insert(shade2,CopyPath)
table.insert(text1,CopyPath)

Directions_3.Name = "Directions"
Directions_3.Parent = background_4
Directions_3.BackgroundTransparency = 1
Directions_3.BorderSizePixel = 0
Directions_3.Position = UDim2.new(0, 51, 0, 17)
Directions_3.Size = UDim2.new(0, 257, 0, 32)
Directions_3.Font = Enum.Font.SourceSans
Directions_3.TextSize = 14
Directions_3.Text = 'Click on a part and then click the "Select Part" button below to set it as a teleport location'
Directions_3.TextColor3 = Color3.new(1, 1, 1)
Directions_3.TextWrapped = true
Directions_3.TextYAlignment = Enum.TextYAlignment.Top
Directions_3.ZIndex = 10
table.insert(text1,Directions_3)

Path.Name = "Path"
Path.Parent = background_4
Path.BackgroundTransparency = 1
Path.BorderSizePixel = 0
Path.Position = UDim2.new(0, 0, 0, 94)
Path.Size = UDim2.new(0, 360, 0, 16)
Path.Font = Enum.Font.SourceSansItalic
Path.TextSize = 14
Path.Text = ""
Path.TextColor3 = Color3.new(1, 1, 1)
Path.TextScaled = true
Path.TextWrapped = true
Path.TextYAlignment = Enum.TextYAlignment.Top
Path.ZIndex = 10
table.insert(text1,Path)

shadow_4.Name = "shadow"
shadow_4.Parent = ToPartFrame
shadow_4.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
shadow_4.BorderSizePixel = 0
shadow_4.Size = UDim2.new(0, 360, 0, 20)
shadow_4.ZIndex = 10
table.insert(shade2,shadow_4)

PopupText_5.Name = "PopupText"
PopupText_5.Parent = shadow_4
PopupText_5.BackgroundTransparency = 1
PopupText_5.Size = UDim2.new(1, 0, 0.95, 0)
PopupText_5.ZIndex = 10
PopupText_5.Font = Enum.Font.SourceSans
PopupText_5.TextSize = 14
PopupText_5.Text = "Teleport to Part"
PopupText_5.TextColor3 = Color3.new(1, 1, 1)
PopupText_5.TextWrapped = true
table.insert(text1,PopupText_5)

Exit_4.Name = "Exit"
Exit_4.Parent = shadow_4
Exit_4.BackgroundTransparency = 1
Exit_4.Position = UDim2.new(1, -20, 0, 0)
Exit_4.Size = UDim2.new(0, 20, 0, 20)
Exit_4.Text = ""
Exit_4.ZIndex = 10

ExitImage_5.Parent = Exit_4
ExitImage_5.BackgroundColor3 = Color3.new(1, 1, 1)
ExitImage_5.BackgroundTransparency = 1
ExitImage_5.Position = UDim2.new(0, 5, 0, 5)
ExitImage_5.Size = UDim2.new(0, 10, 0, 10)
ExitImage_5.Image = "rbxassetid://5054663650"
ExitImage_5.ZIndex = 10

logs.Name = randomString()
logs.Parent = PARENT
logs.Active = true
logs.BackgroundTransparency = 1
logs.Position = UDim2.new(0, 0, 1, 10)
logs.Size = UDim2.new(0, 338, 0, 20)
logs.ZIndex = 10

shadow.Name = "shadow"
shadow.Parent = logs
shadow.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0, 0, 0.00999999978, 0)
shadow.Size = UDim2.new(0, 338, 0, 20)
shadow.ZIndex = 10
table.insert(shade2,shadow)

Hide.Name = "Hide"
Hide.Parent = shadow
Hide.BackgroundTransparency = 1
Hide.Position = UDim2.new(1, -40, 0, 0)
Hide.Size = UDim2.new(0, 20, 0, 20)
Hide.ZIndex = 10
Hide.Text = ""

ImageLabel.Parent = Hide
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 3, 0, 3)
ImageLabel.Size = UDim2.new(0, 14, 0, 14)
ImageLabel.Image = "rbxassetid://2406617031"
ImageLabel.ZIndex = 10

PopupText.Name = "PopupText"
PopupText.Parent = shadow
PopupText.BackgroundTransparency = 1
PopupText.Size = UDim2.new(1, 0, 0.949999988, 0)
PopupText.ZIndex = 10
PopupText.Font = Enum.Font.SourceSans
PopupText.FontSize = Enum.FontSize.Size14
PopupText.Text = "Logs"
PopupText.TextColor3 = Color3.new(1, 1, 1)
PopupText.TextWrapped = true
table.insert(text1,PopupText)

Exit.Name = "Exit"
Exit.Parent = shadow
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(1, -20, 0, 0)
Exit.Size = UDim2.new(0, 20, 0, 20)
Exit.ZIndex = 10
Exit.Text = ""

ImageLabel_2.Parent = Exit
ImageLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel_2.BackgroundTransparency = 1
ImageLabel_2.Position = UDim2.new(0, 5, 0, 5)
ImageLabel_2.Size = UDim2.new(0, 10, 0, 10)
ImageLabel_2.Image = "rbxassetid://5054663650"
ImageLabel_2.ZIndex = 10

background.Name = "background"
background.Parent = logs
background.Active = true
background.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
background.BorderSizePixel = 0
background.ClipsDescendants = true
background.Position = UDim2.new(0, 0, 1, 0)
background.Size = UDim2.new(0, 338, 0, 245)
background.ZIndex = 10

chat.Name = "chat"
chat.Parent = background
chat.Active = true
chat.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
chat.BorderSizePixel = 0
chat.ClipsDescendants = true
chat.Size = UDim2.new(0, 338, 0, 245)
chat.ZIndex = 10
table.insert(shade1,chat)

Clear.Name = "Clear"
Clear.Parent = chat
Clear.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Clear.BorderSizePixel = 0
Clear.Position = UDim2.new(0, 5, 0, 220)
Clear.Size = UDim2.new(0, 50, 0, 20)
Clear.ZIndex = 10
Clear.Font = Enum.Font.SourceSans
Clear.FontSize = Enum.FontSize.Size14
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Clear)
table.insert(text1,Clear)

SaveChatlogs.Name = "SaveChatlogs"
SaveChatlogs.Parent = chat
SaveChatlogs.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
SaveChatlogs.BorderSizePixel = 0
SaveChatlogs.Position = UDim2.new(0, 258, 0, 220)
SaveChatlogs.Size = UDim2.new(0, 75, 0, 20)
SaveChatlogs.ZIndex = 10
SaveChatlogs.Font = Enum.Font.SourceSans
SaveChatlogs.FontSize = Enum.FontSize.Size14
SaveChatlogs.Text = "Save To .txt"
SaveChatlogs.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,SaveChatlogs)
table.insert(text1,SaveChatlogs)

Toggle.Name = "Toggle"
Toggle.Parent = chat
Toggle.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0, 60, 0, 220)
Toggle.Size = UDim2.new(0, 66, 0, 20)
Toggle.ZIndex = 10
Toggle.Font = Enum.Font.SourceSans
Toggle.FontSize = Enum.FontSize.Size14
Toggle.Text = "Disabled"
Toggle.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Toggle)
table.insert(text1,Toggle)

scroll_2.Name = "scroll"
scroll_2.Parent = chat
scroll_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
scroll_2.BorderSizePixel = 0
scroll_2.Position = UDim2.new(0, 5, 0, 25)
scroll_2.Size = UDim2.new(0, 328, 0, 190)
scroll_2.ZIndex = 10
scroll_2.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll_2.CanvasSize = UDim2.new(0, 0, 0, 10)
scroll_2.ScrollBarThickness = 8
scroll_2.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
table.insert(scroll,scroll_2)
table.insert(shade2,scroll_2)

join.Name = "join"
join.Parent = background
join.Active = true
join.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.145098)
join.BorderSizePixel = 0
join.ClipsDescendants = true
join.Size = UDim2.new(0, 338, 0, 245)
join.Visible = false
join.ZIndex = 10
table.insert(shade1,join)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = join
Toggle_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Toggle_2.BorderSizePixel = 0
Toggle_2.Position = UDim2.new(0, 60, 0, 220)
Toggle_2.Size = UDim2.new(0, 66, 0, 20)
Toggle_2.ZIndex = 10
Toggle_2.Font = Enum.Font.SourceSans
Toggle_2.FontSize = Enum.FontSize.Size14
Toggle_2.Text = "Disabled"
Toggle_2.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Toggle_2)
table.insert(text1,Toggle_2)

Clear_2.Name = "Clear"
Clear_2.Parent = join
Clear_2.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
Clear_2.BorderSizePixel = 0
Clear_2.Position = UDim2.new(0, 5, 0, 220)
Clear_2.Size = UDim2.new(0, 50, 0, 20)
Clear_2.ZIndex = 10
Clear_2.Font = Enum.Font.SourceSans
Clear_2.FontSize = Enum.FontSize.Size14
Clear_2.Text = "Clear"
Clear_2.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,Clear_2)
table.insert(text1,Clear_2)

scroll_3.Name = "scroll"
scroll_3.Parent = join
scroll_3.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
scroll_3.BorderSizePixel = 0
scroll_3.Position = UDim2.new(0, 5, 0, 25)
scroll_3.Size = UDim2.new(0, 328, 0, 190)
scroll_3.ZIndex = 10
scroll_3.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll_3.CanvasSize = UDim2.new(0, 0, 0, 10)
scroll_3.ScrollBarThickness = 8
scroll_3.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
table.insert(scroll,scroll_3)
table.insert(shade2,scroll_3)

selectChat.Name = "selectChat"
selectChat.Parent = background
selectChat.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.184314)
selectChat.BorderSizePixel = 0
selectChat.Position = UDim2.new(0, 5, 0, 5)
selectChat.Size = UDim2.new(0, 164, 0, 20)
selectChat.ZIndex = 10
selectChat.Font = Enum.Font.SourceSans
selectChat.FontSize = Enum.FontSize.Size14
selectChat.Text = "Chat Logs"
selectChat.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade2,selectChat)
table.insert(text1,selectChat)

selectJoin.Name = "selectJoin"
selectJoin.Parent = background
selectJoin.BackgroundColor3 = Color3.new(0.305882, 0.305882, 0.309804)
selectJoin.BorderSizePixel = 0
selectJoin.Position = UDim2.new(0, 169, 0, 5)
selectJoin.Size = UDim2.new(0, 164, 0, 20)
selectJoin.ZIndex = 10
selectJoin.Font = Enum.Font.SourceSans
selectJoin.FontSize = Enum.FontSize.Size14
selectJoin.Text = "Join Logs"
selectJoin.TextColor3 = Color3.new(1, 1, 1)
table.insert(shade3,selectJoin)
table.insert(text1,selectJoin)

function create(data)
	local insts = {}
	for i,v in pairs(data) do insts[v[1]] = Instance.new(v[2]) end

	for _,v in pairs(data) do
		for prop,val in pairs(v[3]) do
			if type(val) == "table" then
				insts[v[1]][prop] = insts[val[1]]
			else
				insts[v[1]][prop] = val
			end
		end
	end

	return insts[1]
end

local textService = game:GetService("TextService")
ViewportTextBox = (function()

	local funcs = {}
	funcs.Update = function(self)
		local cursorPos = self.TextBox.CursorPosition
		local text = self.TextBox.Text
		if text == "" then self.TextBox.Position = UDim2.new(0,2,0,0) return end
		if cursorPos == -1 then return end

		local cursorText = text:sub(1,cursorPos-1)
		local pos = nil
		local leftEnd = -self.TextBox.Position.X.Offset
		local rightEnd = leftEnd + self.View.AbsoluteSize.X

		local totalTextSize = textService:GetTextSize(text,self.TextBox.TextSize,self.TextBox.Font,Vector2.new(999999999,100)).X
		local cursorTextSize = textService:GetTextSize(cursorText,self.TextBox.TextSize,self.TextBox.Font,Vector2.new(999999999,100)).X

		if cursorTextSize > rightEnd then
			pos = math.max(-2,cursorTextSize - self.View.AbsoluteSize.X + 2)
		elseif cursorTextSize < leftEnd then
			pos = math.max(-2,cursorTextSize-2)
		elseif totalTextSize < rightEnd then
			pos = math.max(-2,totalTextSize - self.View.AbsoluteSize.X + 2)
		end

		if pos then
			self.TextBox.Position = UDim2.new(0,-pos,0,0)
			self.TextBox.Size = UDim2.new(1,pos,1,0)
		end
	end

	local mt = {}
	mt.__index = funcs

	local function convert(textbox)
		local obj = setmetatable({OffsetX = 0, TextBox = textbox},mt)

		local view = Instance.new("Frame")
		view.BackgroundTransparency = textbox.BackgroundTransparency
		view.BackgroundColor3 = textbox.BackgroundColor3
		view.BorderSizePixel = textbox.BorderSizePixel
		view.BorderColor3 = textbox.BorderColor3
		view.Position = textbox.Position
		view.Size = textbox.Size
		view.ClipsDescendants = true
		view.Name = textbox.Name
		view.ZIndex = 10
		textbox.BackgroundTransparency = 1
		textbox.Position = UDim2.new(0,4,0,0)
		textbox.Size = UDim2.new(1,-8,1,0)
		textbox.TextXAlignment = Enum.TextXAlignment.Left
		textbox.Name = "Input"
		table.insert(text1,textbox)
		table.insert(shade2,view)

		obj.View = view

		textbox.Changed:Connect(function(prop)
			if prop == "Text" or prop == "CursorPosition" or prop == "AbsoluteSize" then
				obj:Update()
			end
		end)

		obj:Update()

		view.Parent = textbox.Parent
		textbox.Parent = view

		return obj
	end

	return {convert = convert}
end)()

ViewportTextBox.convert(Cmdbar).View.ZIndex = 10
ViewportTextBox.convert(Cmdbar_2).View.ZIndex = 10
ViewportTextBox.convert(Cmdbar_3).View.ZIndex = 10

IYMouse = Players.LocalPlayer:GetMouse()
UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
HttpService = game:GetService("HttpService")
MarketplaceService = game:GetService("MarketplaceService")
RunService = game:GetService("RunService")
TeleportService = game:GetService("TeleportService")
StarterGui = game:GetService("StarterGui")
GuiService = game:GetService("GuiService")
Lighting = game:GetService("Lighting")
ContextActionService = game:GetService("ContextActionService")
NetworkClient = game:GetService("NetworkClient")
ReplicatedStorage = game:GetService("ReplicatedStorage")
GroupService = game:GetService("GroupService")
PathService = game:GetService("PathfindingService")
SoundService = game:GetService("SoundService")
Teams = game:GetService("Teams")
StarterPlayer = game:GetService("StarterPlayer")
InsertService = game:GetService("InsertService")
ChatService = game:GetService("Chat")
ProximityPromptService = game:GetService("ProximityPromptService")
StatsService = game:GetService("Stats")
MaterialService = game:GetService("MaterialService")
AvatarEditorService = game:GetService("AvatarEditorService")

sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
PlaceId, JobId = game.PlaceId, game.JobId
local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())

function writefileExploit()
	if writefile then
		return true
	end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function tools(plr)
	if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

function toClipboard(String)
	local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
	if clipBoard then
		clipBoard(String)
		notify('Clipboard','Copied to clipboard')
	else
		notify('Clipboard',"Your exploit doesn't have the ability to use the clipboard")
	end
end

function getHierarchy(obj)
	local fullname
	local period

	if string.find(obj.Name,' ') then
		fullname = '["'..obj.Name..'"]'
		period = false
	else
		fullname = obj.Name
		period = true
	end

	local getS = obj
	local parent = obj
	local service = ''

	if getS.Parent ~= game then
		repeat
			getS = getS.Parent
			service = getS.ClassName
		until getS.Parent == game
	end

	if parent.Parent ~= getS then
		repeat
			parent = parent.Parent
			if string.find(tostring(parent),' ') then
				if period then
					fullname = '["'..parent.Name..'"].'..fullname
				else
					fullname = '["'..parent.Name..'"]'..fullname
				end
				period = false
			else
				if period then
					fullname = parent.Name..'.'..fullname
				else
					fullname = parent.Name..''..fullname
				end
				period = true
			end
		until parent.Parent == getS
	elseif string.find(tostring(parent),' ') then
		fullname = '["'..parent.Name..'"]'
		period = false
	end

	if period then
		return 'game:GetService("'..service..'").'..fullname
	else
		return 'game:GetService("'..service..'")'..fullname
	end
end

AllWaypoints = {}

local cooldown = false
function writefileCooldown(name,data)
	task.spawn(function()
		if not cooldown then
			cooldown = true
			writefile(name, data)
		else
			repeat wait() until cooldown == false
			writefileCooldown(name,data)
		end
		wait(3)
		cooldown = false
	end)
end

function dragGUI(gui)
	task.spawn(function()
		local dragging
		local dragInput
		local dragStart = Vector3.new(0,0,0)
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
		end
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end)
end

dragGUI(logs)
dragGUI(KeybindEditor)
dragGUI(PluginEditor)
dragGUI(ToPartFrame)

eventEditor = (function()
	local events = {}

	local function registerEvent(name,sets)
		events[name] = {
			commands = {},
			sets = sets or {}
		}
	end

	local onEdited = nil

	local function fireEvent(name,...)
		local args = {...}
		local event = events[name]
		if event then
			for i,cmd in pairs(event.commands) do
				local metCondition = true
				for idx,set in pairs(event.sets) do
					local argVal = args[idx]
					local cmdSet = cmd[2][idx]
					local condType = set.Type
					if condType == "Player" then
						if cmdSet == 0 then
							metCondition = metCondition and (tostring(Players.LocalPlayer) == argVal)
						elseif cmdSet ~= 1 then
							metCondition = metCondition and table.find(getPlayer(cmdSet,Players.LocalPlayer),argVal)
						end
					elseif condType == "String" then
						if cmdSet ~= 0 then
							metCondition = metCondition and string.find(argVal:lower(),cmdSet:lower())
						end
					elseif condType == "Number" then
						if cmdSet ~= 0 then
							metCondition = metCondition and tonumber(argVal)<=tonumber(cmdSet)
						end
					end
					if not metCondition then break end
				end

				if metCondition then
					pcall(task.spawn(function()
						local cmdStr = cmd[1]
						for count,arg in pairs(args) do
							cmdStr = cmdStr:gsub("%$"..count,arg)
						end
						wait(cmd[3] or 0)
						execCmd(cmdStr)
					end))
				end
			end
		end
	end

	local main = create({
		{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderSizePixel=0,Name="EventEditor",Position=UDim2.new(0.5,-175,0,-500),Size=UDim2.new(0,350,0,20),ZIndex=10,}},
		{2,"Frame",{BackgroundColor3=currentShade2,BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
		{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0.95,0),Text="Event Editor",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=Enum.TextXAlignment.Center,ZIndex=10,}},
		{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://5054663650",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
		{6,"Frame",{BackgroundColor3=currentShade1,BorderSizePixel=0,Name="Content",Parent={1},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,0,202),ZIndex=10,}},
		{7,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,100),Name="List",Parent={6},Position=UDim2.new(0,5,0,5),ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,-10,1,-10),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",ZIndex=10,}},
		{8,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={7},Size=UDim2.new(1,0,1,0),ZIndex=10,}},
		{9,"UIListLayout",{Parent={8},SortOrder=2,}},
		{10,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.3137255012989,0.3137255012989,0.3137255012989),BorderSizePixel=0,ClipsDescendants=true,Name="Settings",Parent={6},Position=UDim2.new(1,0,0,0),Size=UDim2.new(0,150,1,0),ZIndex=10,}},
		{11,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),Name="Slider",Parent={10},Position=UDim2.new(0,-150,0,0),Size=UDim2.new(1,0,1,0),ZIndex=10,}},
		{12,"Frame",{BackgroundColor3=Color3.new(0.23529413342476,0.23529413342476,0.23529413342476),BorderColor3=Color3.new(0.3137255012989,0.3137255012989,0.3137255012989),BorderSizePixel=0,Name="Line",Parent={11},Size=UDim2.new(0,1,1,0),ZIndex=10,}},
		{13,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,100),Name="List",Parent={11},Position=UDim2.new(0,0,0,25),ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,0,1,-25),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",ZIndex=10,}},
		{14,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={13},Size=UDim2.new(1,0,1,0),ZIndex=10,}},
		{15,"UIListLayout",{Parent={14},SortOrder=2,}},
		{16,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={11},Size=UDim2.new(1,0,0,20),Text="Event Settings",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{17,"TextButton",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Font=3,Name="Close",BorderSizePixel=0,Parent={11},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="<",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{18,"Folder",{Name="Templates",Parent={10},}},
		{19,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Players",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,86),Visible=false,ZIndex=10,}},
		{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={19},Size=UDim2.new(1,0,0,20),Text="Choose Players",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{21,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={19},Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-10,0,20),Text="Any Player",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{22,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={21},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{23,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={22},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{24,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Me",Parent={19},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Me Only",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{25,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={24},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{26,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={25},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{27,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={19},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Custom Player Set",Position=UDim2.new(0,5,0,64),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{28,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={19},Position=UDim2.new(1,-25,0,64),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{29,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={28},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{30,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Strings",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,64),Visible=false,ZIndex=10,}},
		{31,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={30},Size=UDim2.new(1,0,0,20),Text="Choose String",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{32,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={30},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Any String",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{33,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={32},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{34,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={33},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{54,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Numbers",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,64),Visible=false,ZIndex=10,}},
		{55,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={54},Size=UDim2.new(1,0,0,20),Text="Choose String",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{56,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={54},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Any Number",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{57,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={56},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{58,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={57},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{59,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={54},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Number",Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{60,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={54},Position=UDim2.new(1,-25,0,42),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{61,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={60},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{35,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={30},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Match String",Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{36,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={30},Position=UDim2.new(1,-25,0,42),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
		{37,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={36},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
		{38,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="DelayEditor",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,24),Visible=false,ZIndex=10,}},
		{39,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Font=3,Name="Secs",Parent={38},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),Position=UDim2.new(0,60,0,2),Size=UDim2.new(1,-65,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{40,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Label",Parent={39},Position=UDim2.new(0,-55,0,0),Size=UDim2.new(1,0,1,0),Text="Delay (s):",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{41,"Frame",{BackgroundColor3=currentShade1,BorderSizePixel=0,ClipsDescendants=true,Name="EventTemplate",Parent={6},Size=UDim2.new(1,0,0,20),Visible=false,ZIndex=10,}},
		{42,"TextButton",{BackgroundColor3=currentText1,BackgroundTransparency=1,Font=3,Name="Expand",Parent={41},Size=UDim2.new(0,20,0,20),Text=">",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{43,"TextLabel",{BackgroundColor3=currentText1,BackgroundTransparency=1,Font=3,Name="EventName",Parent={41},Position=UDim2.new(0,25,0,0),Size=UDim2.new(1,-25,0,20),Text="OnSpawn",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{44,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BorderSizePixel=0,BackgroundTransparency=1,ClipsDescendants=true,Name="Cmds",Parent={41},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,1,-20),ZIndex=10,}},
		{45,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),Name="Add",Parent={44},Position=UDim2.new(0,0,1,-20),Size=UDim2.new(1,0,0,20),ZIndex=10,}},
		{46,"TextBox",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Parent={45},PlaceholderColor3=Color3.new(0.7843137383461,0.7843137383461,0.7843137383461),PlaceholderText="Add new command",Position=UDim2.new(0,5,0,0),Size=UDim2.new(1,-10,1,0),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{47,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={44},Size=UDim2.new(1,0,1,-20),ZIndex=10,}},
		{48,"UIListLayout",{Parent={47},SortOrder=2,}},
		{49,"Frame",{currentShade1,BorderSizePixel=0,ClipsDescendants=true,Name="CmdTemplate",Parent={6},Size=UDim2.new(1,0,0,20),Visible=false,ZIndex=10,}},
		{50,"TextBox",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Parent={49},PlaceholderColor3=Color3.new(1,1,1),Position=UDim2.new(0,5,0,0),Size=UDim2.new(1,-45,0,20),Text="a\\b\\c\\d",TextColor3=currentText1,TextSize=14,TextXAlignment=0,ZIndex=10,}},
		{51,"TextButton",{BackgroundColor3=currentShade1,BorderSizePixel=0,Font=3,Name="Delete",Parent={49},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="X",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{52,"TextButton",{BackgroundColor3=currentShade1,BorderSizePixel=0,Font=3,Name="Settings",Parent={49},Position=UDim2.new(1,-40,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
		{53,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://1204397029",Parent={52},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),ZIndex=10,}},
	})
	main.Name = randomString()
	local mainFrame = main:WaitForChild("Content")
	local eventList = mainFrame:WaitForChild("List")
	local eventListHolder = eventList:WaitForChild("Holder")
	local cmdTemplate = mainFrame:WaitForChild("CmdTemplate")
	local eventTemplate = mainFrame:WaitForChild("EventTemplate")
	local settingsFrame = mainFrame:WaitForChild("Settings"):WaitForChild("Slider")
	local settingsTemplates = mainFrame.Settings:WaitForChild("Templates")
	local settingsList = settingsFrame:WaitForChild("List"):WaitForChild("Holder")
	table.insert(shade2,main.TopBar) table.insert(shade1,mainFrame) table.insert(shade2,eventTemplate)
	table.insert(text1,eventTemplate.EventName) table.insert(shade1,eventTemplate.Cmds.Add) table.insert(shade1,cmdTemplate)
	table.insert(text1,cmdTemplate.TextBox) table.insert(shade2,cmdTemplate.Delete) table.insert(shade2,cmdTemplate.Settings)
	table.insert(scroll,mainFrame.List) table.insert(shade1,settingsFrame) table.insert(shade2,settingsFrame.Line)
	table.insert(shade2,settingsFrame.Close) table.insert(scroll,settingsFrame.List) table.insert(shade2,settingsTemplates.DelayEditor.Secs)
	table.insert(text1,settingsTemplates.DelayEditor.Secs) table.insert(text1,settingsTemplates.DelayEditor.Secs.Label) table.insert(text1,settingsTemplates.Players.Title)
	table.insert(shade3,settingsTemplates.Players.CustomButton) table.insert(shade2,settingsTemplates.Players.Custom) table.insert(text1,settingsTemplates.Players.Custom)
	table.insert(shade3,settingsTemplates.Players.Any.Button) table.insert(shade3,settingsTemplates.Players.Me.Button) table.insert(text1,settingsTemplates.Players.Any)
	table.insert(text1,settingsTemplates.Players.Me) table.insert(text1,settingsTemplates.Strings.Title) table.insert(text1,settingsTemplates.Strings.Any)
	table.insert(shade3,settingsTemplates.Strings.Any.Button) table.insert(shade3,settingsTemplates.Strings.CustomButton) table.insert(text1,settingsTemplates.Strings.Custom)
	table.insert(shade2,settingsTemplates.Strings.Custom)
	table.insert(text1,settingsTemplates.Players.Me) table.insert(text1,settingsTemplates.Numbers.Title) table.insert(text1,settingsTemplates.Numbers.Any)
	table.insert(shade3,settingsTemplates.Numbers.Any.Button) table.insert(shade3,settingsTemplates.Numbers.CustomButton) table.insert(text1,settingsTemplates.Numbers.Custom)
	table.insert(shade2,settingsTemplates.Numbers.Custom)

	local tweenInf = TweenInfo.new(0.25,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)

	local currentlyEditingCmd = nil

	settingsFrame:WaitForChild("Close").MouseButton1Click:Connect(function()
		settingsFrame:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
	end)

	local function resizeList()
		local size = 0

		for i,v in pairs(eventListHolder:GetChildren()) do
			if v.Name == "EventTemplate" then
				size = size + 20
				if v.Expand.Rotation == 90 then
					size = size + 20*(1+(#events[v.EventName:GetAttribute("RawName")].commands or 0))
				end
			end
		end

		TweenService:Create(eventList,tweenInf,{CanvasSize = UDim2.new(0,0,0,size)}):Play()

		if size > eventList.AbsoluteSize.Y then
			eventListHolder.Size = UDim2.new(1,-8,1,0)
		else
			eventListHolder.Size = UDim2.new(1,0,1,0)
		end
	end

	local function resizeSettingsList()
		local size = 0

		for i,v in pairs(settingsList:GetChildren()) do
			if v:IsA("Frame") then
				size = size + v.AbsoluteSize.Y
			end
		end

		settingsList.Parent.CanvasSize = UDim2.new(0,0,0,size)

		if size > settingsList.Parent.AbsoluteSize.Y then
			settingsList.Size = UDim2.new(1,-8,1,0)
		else
			settingsList.Size = UDim2.new(1,0,1,0)
		end
	end

	local function setupCheckbox(button,callback)
		local enabled = button.On.BackgroundTransparency == 0

		local function update()
			button.On.BackgroundTransparency = (enabled and 0 or 1)
		end

		button.On.MouseButton1Click:Connect(function()
			enabled = not enabled
			update()
			if callback then callback(enabled) end
		end)

		return {
			Toggle = function(nocall) enabled = not enabled update() if not nocall and callback then callback(enabled) end end,
			Enable = function(nocall) if enabled then return end enabled = true update()if not nocall and callback then callback(enabled) end end,
			Disable = function(nocall) if not enabled then return end enabled = false update()if not nocall and callback then callback(enabled) end end,
			IsEnabled = function() return enabled end
		}
	end

	local function openSettingsEditor(event,cmd)
		currentlyEditingCmd = cmd

		for i,v in pairs(settingsList:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end

		local delayEditor = settingsTemplates.DelayEditor:Clone()
		delayEditor.Secs.FocusLost:Connect(function()
			cmd[3] = tonumber(delayEditor.Secs.Text) or 0
			delayEditor.Secs.Text = cmd[3]
			if onEdited then onEdited() end
		end)
		delayEditor.Secs.Text = cmd[3]
		delayEditor.Visible = true
		table.insert(shade2,delayEditor.Secs)
		table.insert(text1,delayEditor.Secs)
		table.insert(text1,delayEditor.Secs.Label)
		delayEditor.Parent = settingsList

		for i,v in pairs(event.sets) do
			if v.Type == "Player" then
				local template = settingsTemplates.Players:Clone()
				template.Title.Text = v.Name or "Player"

				local me,any,custom

				me = setupCheckbox(template.Me.Button,function(on)
					if not on then return end
					any.Disable()
					custom.Disable()
					cmd[2][i] = 0
					if onEdited then onEdited() end
				end)

				any = setupCheckbox(template.Any.Button,function(on)
					if not on then return end
					me.Disable()
					custom.Disable()
					cmd[2][i] = 1
					if onEdited then onEdited() end
				end)

				local customTextBox = template.Custom
				custom = setupCheckbox(template.CustomButton,function(on)
					if not on then return end
					me.Disable()
					any.Disable()
					cmd[2][i] = customTextBox.Text
					if onEdited then onEdited() end
				end)

				ViewportTextBox.convert(customTextBox)
				customTextBox.FocusLost:Connect(function()
					if custom:IsEnabled() then
						cmd[2][i] = customTextBox.Text
						if onEdited then onEdited() end
					end
				end)

				local cVal = cmd[2][i]
				if cVal == 0 then
					me:Enable()
				elseif cVal == 1 then
					any:Enable()
				else
					custom:Enable()
					customTextBox.Text = cVal
				end

				template.Visible = true
				table.insert(text1,template.Title)
				table.insert(shade3,template.CustomButton)
				table.insert(shade3,template.Any.Button)
				table.insert(shade3,template.Me.Button)
				table.insert(text1,template.Any)
				table.insert(text1,template.Me)
				template.Parent = settingsList
			elseif v.Type == "String" then
				local template = settingsTemplates.Strings:Clone()
				template.Title.Text = v.Name or "String"

				local any,custom

				any = setupCheckbox(template.Any.Button,function(on)
					if not on then return end
					custom.Disable()
					cmd[2][i] = 0
					if onEdited then onEdited() end
				end)

				local customTextBox = template.Custom
				custom = setupCheckbox(template.CustomButton,function(on)
					if not on then return end
					any.Disable()
					cmd[2][i] = customTextBox.Text
					if onEdited then onEdited() end
				end)

				ViewportTextBox.convert(customTextBox)
				customTextBox.FocusLost:Connect(function()
					if custom:IsEnabled() then
						cmd[2][i] = customTextBox.Text
						if onEdited then onEdited() end
					end
				end)

				local cVal = cmd[2][i]
				if cVal == 0 then
					any:Enable()
				else
					custom:Enable()
					customTextBox.Text = cVal
				end

				template.Visible = true
				table.insert(text1,template.Title)
				table.insert(text1,template.Any)
				table.insert(shade3,template.Any.Button)
				table.insert(shade3,template.CustomButton)
				template.Parent = settingsList
			elseif v.Type == "Number" then
				local template = settingsTemplates.Numbers:Clone()
				template.Title.Text = v.Name or "Number"

				local any,custom

				any = setupCheckbox(template.Any.Button,function(on)
					if not on then return end
					custom.Disable()
					cmd[2][i] = 0
					if onEdited then onEdited() end
				end)

				local customTextBox = template.Custom
				custom = setupCheckbox(template.CustomButton,function(on)
					if not on then return end
					any.Disable()
					cmd[2][i] = customTextBox.Text
					if onEdited then onEdited() end
				end)

				ViewportTextBox.convert(customTextBox)
				customTextBox.FocusLost:Connect(function()
					cmd[2][i] = tonumber(customTextBox.Text) or 0
					customTextBox.Text = cmd[2][i]
					if custom:IsEnabled() then
						if onEdited then onEdited() end
					end
				end)

				local cVal = cmd[2][i]
				if cVal == 0 then
					any:Enable()
				else
					custom:Enable()
					customTextBox.Text = cVal
				end

				template.Visible = true
				table.insert(text1,template.Title)
				table.insert(text1,template.Any)
				table.insert(shade3,template.Any.Button)
				table.insert(shade3,template.CustomButton)
				template.Parent = settingsList
			end
		end
		resizeSettingsList()
		settingsFrame:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
	end

	local function defaultSettings(ev)
		local res = {}

		for i,v in pairs(ev.sets) do
			if v.Type == "Player" then
				res[#res+1] = v.Default or 0
			elseif v.Type == "String" then
				res[#res+1] = v.Default or 0
			elseif v.Type == "Number" then
				res[#res+1] = v.Default or 0
			end
		end

		return res
	end

	local function refreshList()
		for i,v in pairs(eventListHolder:GetChildren()) do if v:IsA("Frame") then v:Destroy() end end

		for name,event in pairs(events) do
			local eventF = eventTemplate:Clone()
			eventF.EventName.Text = name
			eventF.Visible = true
			eventF.EventName:SetAttribute("RawName", name)
			table.insert(shade2,eventF)
			table.insert(text1,eventF.EventName)
			table.insert(shade1,eventF.Cmds.Add)

			local expanded = false
			eventF.Expand.MouseButton1Down:Connect(function()
				expanded = not expanded
				eventF:TweenSize(UDim2.new(1,0,0,20 + (expanded and 20*#eventF.Cmds.Holder:GetChildren() or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
				eventF.Expand.Rotation = expanded and 90 or 0
				resizeList()
			end)

			local function refreshCommands()
				for i,v in pairs(eventF.Cmds.Holder:GetChildren()) do
					if v.Name == "CmdTemplate" then
						v:Destroy()
					end
				end

				eventF.EventName.Text = name..(#event.commands > 0 and " ("..#event.commands..")" or "")

				for i,cmd in pairs(event.commands) do
					local cmdF = cmdTemplate:Clone()
					local cmdTextBox = cmdF.TextBox
					ViewportTextBox.convert(cmdTextBox)
					cmdTextBox.Text = cmd[1]
					cmdF.Visible = true
					table.insert(shade1,cmdF)
					table.insert(shade2,cmdF.Delete)
					table.insert(shade2,cmdF.Settings)

					cmdTextBox.FocusLost:Connect(function()
						event.commands[i] = {cmdTextBox.Text,cmd[2],cmd[3]}
						if onEdited then onEdited() end
					end)

					cmdF.Settings.MouseButton1Click:Connect(function()
						openSettingsEditor(event,cmd)
					end)

					cmdF.Delete.MouseButton1Click:Connect(function()
						table.remove(event.commands,i)
						refreshCommands()
						resizeList()

						if currentlyEditingCmd == cmd then
							settingsFrame:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
						end
						if onEdited then onEdited() end
					end)

					cmdF.Parent = eventF.Cmds.Holder
				end

				eventF:TweenSize(UDim2.new(1,0,0,20 + (expanded and 20*#eventF.Cmds.Holder:GetChildren() or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
			end

			local newBox = eventF.Cmds.Add.TextBox
			ViewportTextBox.convert(newBox)
			newBox.FocusLost:Connect(function(enter)
				if enter then
					event.commands[#event.commands+1] = {newBox.Text,defaultSettings(event),0}
					newBox.Text = ""

					refreshCommands()
					resizeList()
					if onEdited then onEdited() end
				end
			end)

			--eventF:GetPropertyChangedSignal("AbsoluteSize"):Connect(resizeList)

			eventF.Parent = eventListHolder

			refreshCommands()
		end

		resizeList()
	end

	local function saveData()
		local result = {}
		for i,v in pairs(events) do
			result[i] = v.commands
		end
		return HttpService:JSONEncode(result)
	end

	local function loadData(str)
		local data = HttpService:JSONDecode(str)
		for i,v in pairs(data) do
			if events[i] then
				events[i].commands = v
			end
		end
	end

	local function addCmd(event,data)
		table.insert(events[event].commands,data)
	end

	local function setOnEdited(f)
		if type(f) == "function" then
			onEdited = f
		end
	end

	main.TopBar.Close.MouseButton1Click:Connect(function()
		main:TweenPosition(UDim2.new(0.5,-175,0,-500), "InOut", "Quart", 0.5, true, nil)
	end)
	dragGUI(main)
	main.Parent = PARENT

	return {
		RegisterEvent = registerEvent,
		FireEvent = fireEvent,
		Refresh = refreshList,
		SaveData = saveData,
		LoadData = loadData,
		AddCmd = addCmd,
		Frame = main,
		SetOnEdited = setOnEdited
	}
end)()

reference = (function()
	local main = create({
		{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Name="Main",Position=UDim2.new(0.5,-250,0,-500),Size=UDim2.new(0,500,0,20),ZIndex=10,}},
		{2,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
		{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Size=UDim2.new(1,0,0.94999998807907,0),Text="Reference",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
		{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://5054663650",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
		{6,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderSizePixel=0,Name="Content",Parent={1},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,0,300),ZIndex=10,}},
		{7,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,1313),Name="List",Parent={6},ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,0,1,0),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",VerticalScrollBarInset=2,ZIndex=10,}},
		{8,"UIListLayout",{Parent={7},SortOrder=2,}},
		{9,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,429),ZIndex=10,}},
		{10,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={9},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Special Player Cases",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{11,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={9},Position=UDim2.new(0,8,0,25),Size=UDim2.new(1,-8,0,20),Text="These keywords can be used to quickly select groups of players in commands:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{12,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={9},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{13,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Cases",Parent={9},Position=UDim2.new(0,8,0,55),Size=UDim2.new(1,-16,0,342),ZIndex=10,}},
		{14,"UIListLayout",{Parent={13},SortOrder=2,}},
		{15,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-4,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{16,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={15},Size=UDim2.new(1,0,1,0),Text="all",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{17,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={15},Position=UDim2.new(0,15,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{18,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-3,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{19,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={18},Size=UDim2.new(1,0,1,0),Text="others",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={18},Position=UDim2.new(0,37,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone except you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{21,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-2,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{22,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={21},Size=UDim2.new(1,0,1,0),Text="me",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{23,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={21},Position=UDim2.new(0,19,0,0),Size=UDim2.new(1,0,1,0),Text="- includes your player only",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{24,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{25,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={24},Size=UDim2.new(1,0,1,0),Text="#[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{26,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={24},Position=UDim2.new(0,59,0,0),Size=UDim2.new(1,0,1,0),Text="- gets a specified amount of random players",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{27,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{28,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={27},Size=UDim2.new(1,0,1,0),Text="random",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{29,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={27},Position=UDim2.new(0,44,0,0),Size=UDim2.new(1,0,1,0),Text="- affects a random player",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{30,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{31,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={30},Size=UDim2.new(1,0,1,0),Text="%[team name]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{32,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={30},Position=UDim2.new(0,78,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone on a given team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{33,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{34,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={33},Size=UDim2.new(1,0,1,0),Text="allies / team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{35,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={33},Position=UDim2.new(0,63,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{36,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{37,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={36},Size=UDim2.new(1,0,1,0),Text="enemies / nonteam",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{38,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={36},Position=UDim2.new(0,101,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are not on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{39,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{40,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={39},Size=UDim2.new(1,0,1,0),Text="friends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{41,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={39},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{42,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{43,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={42},Size=UDim2.new(1,0,1,0),Text="nonfriends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{44,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={42},Position=UDim2.new(0,61,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is not friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{45,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{46,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={45},Size=UDim2.new(1,0,1,0),Text="guests",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{47,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={45},Position=UDim2.new(0,36,0,0),Size=UDim2.new(1,0,1,0),Text="- guest players (obsolete)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{48,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{49,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={48},Size=UDim2.new(1,0,1,0),Text="bacons",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{50,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={48},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone with the \"bacon\" or pal hair",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{51,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{52,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={51},Size=UDim2.new(1,0,1,0),Text="age[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{53,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={51},Position=UDim2.new(0,71,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone below or at the given age",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{54,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{55,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={54},Size=UDim2.new(1,0,1,0),Text="rad[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{56,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={54},Position=UDim2.new(0,70,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone within the given radius",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{57,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{58,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={57},Size=UDim2.new(1,0,1,0),Text="nearest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{59,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={57},Position=UDim2.new(0,43,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the closest player to you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{60,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{61,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={60},Size=UDim2.new(1,0,1,0),Text="farthest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{62,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={60},Position=UDim2.new(0,46,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the farthest player from you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{63,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{64,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={63},Size=UDim2.new(1,0,1,0),Text="group[ID]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{65,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={63},Position=UDim2.new(0,55,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are in a certain group",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{66,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{67,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={66},Size=UDim2.new(1,0,1,0),Text="alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{68,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={66},Position=UDim2.new(0,27,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{69,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{70,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={69},Size=UDim2.new(1,0,1,0),Text="dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{71,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={69},Position=UDim2.new(0,29,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{72,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-1,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
		{73,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={72},Size=UDim2.new(1,0,1,0),Text="@username",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{74,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={72},Position=UDim2.new(0,66,0,0),Size=UDim2.new(1,0,1,0),Text="- searches for players by username only (ignores displaynames)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{75,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,180),ZIndex=10,}},
		{76,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={75},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Various Operators",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{77,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={75},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{78,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,16),Text="Use commas to separate multiple expressions:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{79,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,75),Size=UDim2.new(1,-8,0,16),Text="Use - to exclude, and + to include players in your expression:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{80,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,91),Size=UDim2.new(1,-8,0,16),Text=";locate %blue-friends (gets players in blue team who aren't your friends)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{81,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,46),Size=UDim2.new(1,-8,0,16),Text=";locate noob,noob2,bob",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{82,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,120),Size=UDim2.new(1,-8,0,16),Text="Put ! before a command to run it with the last arguments it was ran with:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{83,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,136),Size=UDim2.new(1,-8,0,32),Text="After running ;offset 0 100 0,  you can run !offset anytime to repeat that command with the same arguments that were used to run it last time",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{84,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,154),ZIndex=10,}},
		{85,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={84},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Command Looping",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{86,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={84},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,20),Text="Form: [How many times it loops]^[delay (optional)]^[command]",TextColor3=Color3.new(1,1,1),TextSize=15,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{87,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={84},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{88,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={84},Position=UDim2.new(0,8,0,50),Size=UDim2.new(1,-8,0,20),Text="Use the 'breakloops' command to stop all running loops.",TextColor3=Color3.new(1,1,1),TextSize=15,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{89,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={84},Position=UDim2.new(0,8,0,80),Size=UDim2.new(1,-8,0,16),Text="Examples:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{90,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={84},Position=UDim2.new(0,8,0,98),Size=UDim2.new(1,-8,0,42),Text=";5^btools - gives you 5 sets of btools\n;10^3^drophats - drops your hats every 3 seconds 10 times\n;inf^0.1^animspeed 100 - infinitely loops your animation speed to 100",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{91,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,120),ZIndex=10,}},
		{92,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={91},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Execute Multiple Commands at Once",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{93,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={91},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,20),Text="You can execute multiple commands at once using \"\\\"",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{94,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={91},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{95,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={91},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,-8,0,16),Text="Examples:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{96,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={91},Position=UDim2.new(0,8,0,78),Size=UDim2.new(1,-8,0,32),Text=";drophats\\respawn - drops your hats and respawns you\n;enable inventory\\enable playerlist\\refresh - enables those coregui items and refreshes you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{97,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,75),ZIndex=10,}},
		{98,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={97},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Browse Command History",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{99,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={97},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="While focused on the command bar, you can use the up and down arrow keys to browse recently used commands",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{100,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={97},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{101,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,75),ZIndex=10,}},
		{102,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={101},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Autocomplete in the Command Bar",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{103,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={101},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="While focused on the command bar, you can use the tab key to insert the top suggested command into the command bar.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{104,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={101},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{105,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,175),ZIndex=10,}},
		{106,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={105},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Using Event Binds",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{107,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="Use event binds to set up commands that get executed when certain events happen. You can edit the conditions for an event command to run (such as which player triggers it).",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{108,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={105},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
		{109,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,70),Size=UDim2.new(1,-8,0,48),Text="Some events may send arguments; you can use them in your event command by using $ followed by the argument number ($1, $2, etc). You can find out the order and types of these arguments by looking at the settings of the event command.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{110,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={105},Position=UDim2.new(0,8,0,130),Size=UDim2.new(1,-8,0,16),Text="Example:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{111,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,148),Size=UDim2.new(1,-8,0,16),Text="Setting up 'goto $1' on the OnChatted event will teleport you to any player that chats.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
		{112,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,105),ZIndex=10,}},
		{113,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={112},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Get Further Help",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
		{114,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={112},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="You can join the Discord server to get support with IY,  and read up on more documentation such as the Plugin API.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
		{115,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={112},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),Visible=false,ZIndex=10,}},
		{116,"TextButton",{BackgroundColor3=Color3.new(0.48627451062202,0.61960786581039,0.85098040103912),BorderColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),Font=4,Name="InviteButton",Parent={112},Position=UDim2.new(0,5,0,75),Size=UDim2.new(1,-10,0,25),Text="Copy Discord Invite Link (https://discord.io/infiniteyield)",TextColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),TextSize=16,ZIndex=10,}},
	})
	for i,v in pairs(main.Content.List:GetDescendants()) do
		if v:IsA("TextLabel") then
			table.insert(text1,v)
		end
	end
	table.insert(scroll,main.Content.List)
	table.insert(shade1,main.Content)
	table.insert(shade2,main.TopBar)
	main.Name = randomString()
	main.TopBar.Close.MouseButton1Click:Connect(function()
		main:TweenPosition(UDim2.new(0.5,-250,0,-500), "InOut", "Quart", 0.5, true, nil)
	end)
	local inviteButton = main:FindFirstChild("InviteButton",true)
	local lastPress = nil
	inviteButton.MouseButton1Click:Connect(function()
		local func = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
		if func then
			func("https://discord.io/infiniteyield")
			inviteButton.Text = "Copied"
		else
			inviteButton.Text = "No Clipboard Function, type out the link"
		end
		local pressTime = tick()
		lastPress = pressTime
		wait(2)
		if lastPress ~= pressTime then return end
		inviteButton.Text = "Copy Discord Invite Link (https://discord.io/infiniteyield)"
	end)
	dragGUI(main)
	main.Parent = PARENT

	ReferenceButton.MouseButton1Click:Connect(function()
		main:TweenPosition(UDim2.new(0.5,-250,0.5,-150), "InOut", "Quart", 0.5, true, nil)
	end)
end)()

currentShade1 = Color3.fromRGB(36, 36, 37)
currentShade2 = Color3.fromRGB(46, 46, 47)
currentShade3 = Color3.fromRGB(78, 78, 79)
currentText1 = Color3.new(1, 1, 1)
currentText2 = Color3.new(0, 0, 0)
currentScroll = Color3.fromRGB(78,78,79)

defaultsettings = {
	prefix = ';';
	StayOpen = false;
	espTransparency = 0.3;
	keepIY = true;
	logsEnabled = false;
	jLogsEnabled = false;
	aliases = {};
	binds = {};
	WayPoints = {};
	PluginsTable = {};
	currentShade1 = {currentShade1.R,currentShade1.G,currentShade1.B};
	currentShade2 = {currentShade2.R,currentShade2.G,currentShade2.B};
	currentShade3 = {currentShade3.R,currentShade3.G,currentShade3.B};
	currentText1 = {currentText1.R,currentText1.G,currentText1.B};
	currentText2 = {currentText2.R,currentText2.G,currentText2.B};
	currentScroll = {currentScroll.R,currentScroll.G,currentScroll.B};
	eventBinds = eventEditor.SaveData()
}

defaults = HttpService:JSONEncode(defaultsettings)
nosaves = false

local loadedEventData = nil
function saves()
	if writefileExploit() then
		if pcall(function() readfile("IY_FE.iy") end) then
			if readfile("IY_FE.iy") ~= nil then
				local success, response = pcall(function()
					local json = HttpService:JSONDecode(readfile("IY_FE.iy"))
					if json.prefix ~= nil then prefix = json.prefix else prefix = ';' end
					if json.StayOpen ~= nil then StayOpen = json.StayOpen else StayOpen = false end
					if json.keepIY ~= nil then KeepInfYield = json.keepIY else KeepInfYield = true end
					if json.espTransparency ~= nil then espTransparency = json.espTransparency else espTransparency = 0.3 end
					if json.logsEnabled ~= nil then logsEnabled = json.logsEnabled else logsEnabled = false end
					if json.jLogsEnabled ~= nil then jLogsEnabled = json.jLogsEnabled else jLogsEnabled = false end
					if json.aliases ~= nil then aliases = json.aliases else aliases = {} end
					if json.binds ~= nil then binds = (json.binds or {}) else binds = {} end
					if json.spawnCmds ~= nil then spawnCmds = json.spawnCmds end
					if json.WayPoints ~= nil then AllWaypoints = json.WayPoints else WayPoints = {} AllWaypoints = {} end
					if json.PluginsTable ~= nil then PluginsTable = json.PluginsTable else PluginsTable = {} end
					if json.currentShade1 ~= nil then currentShade1 = Color3.new(json.currentShade1[1],json.currentShade1[2],json.currentShade1[3]) end
					if json.currentShade2 ~= nil then currentShade2 = Color3.new(json.currentShade2[1],json.currentShade2[2],json.currentShade2[3]) end
					if json.currentShade3 ~= nil then currentShade3 = Color3.new(json.currentShade3[1],json.currentShade3[2],json.currentShade3[3]) end
					if json.currentText1 ~= nil then currentText1 = Color3.new(json.currentText1[1],json.currentText1[2],json.currentText1[3]) end
					if json.currentText2 ~= nil then currentText2 = Color3.new(json.currentText2[1],json.currentText2[2],json.currentText2[3]) end
					if json.currentScroll ~= nil then currentScroll = Color3.new(json.currentScroll[1],json.currentScroll[2],json.currentScroll[3]) end
					if json.eventBinds ~= nil then loadedEventData = json.eventBinds end
				end)
				if not success then
					warn("Save Json Error:", response)
					warn("Overwriting Save File")
					writefileCooldown("IY_FE.iy", defaults)
					wait()
					saves()
				end
			else
				writefileCooldown("IY_FE.iy", defaults)
				wait()
				saves()
			end
		else
			writefileCooldown("IY_FE.iy", defaults)
			wait()
			if pcall(function() readfile("IY_FE.iy") end) then
				saves()
			else
				nosaves = true
				prefix = ';'
				StayOpen = false
				KeepInfYield = true
				espTransparency = 0.3
				logsEnabled = false
				jLogsEnabled = false
				aliases = {}
				binds = {}
				WayPoints = {}
				PluginsTable = {}

				local FileError = Instance.new("Frame")
				local background = Instance.new("Frame")
				local Directions = Instance.new("TextLabel")
				local shadow = Instance.new("Frame")
				local PopupText = Instance.new("TextLabel")
				local Exit = Instance.new("TextButton")
				local ExitImage = Instance.new("ImageLabel")

				FileError.Name = randomString()
				FileError.Parent = PARENT
				FileError.Active = true
				FileError.BackgroundTransparency = 1
				FileError.Position = UDim2.new(0.5, -180, 0, 290)
				FileError.Size = UDim2.new(0, 360, 0, 20)
				FileError.ZIndex = 10

				background.Name = "background"
				background.Parent = FileError
				background.Active = true
				background.BackgroundColor3 = Color3.fromRGB(36, 36, 37)
				background.BorderSizePixel = 0
				background.Position = UDim2.new(0, 0, 0, 20)
				background.Size = UDim2.new(0, 360, 0, 205)
				background.ZIndex = 10

				Directions.Name = "Directions"
				Directions.Parent = background
				Directions.BackgroundTransparency = 1
				Directions.BorderSizePixel = 0
				Directions.Position = UDim2.new(0, 10, 0, 10)
				Directions.Size = UDim2.new(0, 340, 0, 185)
				Directions.Font = Enum.Font.SourceSans
				Directions.TextSize = 14
				Directions.Text = "There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile is not working.\n\nYour settings, keybinds, waypoints, and aliases will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
				Directions.TextColor3 = Color3.new(1, 1, 1)
				Directions.TextWrapped = true
				Directions.TextXAlignment = Enum.TextXAlignment.Left
				Directions.TextYAlignment = Enum.TextYAlignment.Top
				Directions.ZIndex = 10

				shadow.Name = "shadow"
				shadow.Parent = FileError
				shadow.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
				shadow.BorderSizePixel = 0
				shadow.Size = UDim2.new(0, 360, 0, 20)
				shadow.ZIndex = 10

				PopupText.Name = "PopupText"
				PopupText.Parent = shadow
				PopupText.BackgroundTransparency = 1
				PopupText.Size = UDim2.new(1, 0, 0.95, 0)
				PopupText.ZIndex = 10
				PopupText.Font = Enum.Font.SourceSans
				PopupText.TextSize = 14
				PopupText.Text = "File Error"
				PopupText.TextColor3 = Color3.new(1, 1, 1)
				PopupText.TextWrapped = true

				Exit.Name = "Exit"
				Exit.Parent = shadow
				Exit.BackgroundTransparency = 1
				Exit.Position = UDim2.new(1, -20, 0, 0)
				Exit.Size = UDim2.new(0, 20, 0, 20)
				Exit.Text = ""
				Exit.ZIndex = 10

				ExitImage.Parent = Exit
				ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
				ExitImage.BackgroundTransparency = 1
				ExitImage.Position = UDim2.new(0, 5, 0, 5)
				ExitImage.Size = UDim2.new(0, 10, 0, 10)
				ExitImage.Image = "rbxassetid://5054663650"
				ExitImage.ZIndex = 10

				Exit.MouseButton1Click:Connect(function()
					FileError:Destroy()
				end)
			end
		end
	else
		prefix = ';'
		StayOpen = false
		KeepInfYield = true
		espTransparency = 0.3
		logsEnabled = false
		jLogsEnabled = false
		aliases = {}
		binds = {}
		WayPoints = {}
		PluginsTable = {}
	end
end

saves()

function updatesaves()
	if nosaves == false and writefileExploit() then
		local update = {
			prefix = prefix;
			StayOpen = StayOpen;
			keepIY = KeepInfYield;
			espTransparency = espTransparency;
			logsEnabled = logsEnabled;
			jLogsEnabled = jLogsEnabled;
			aliases = aliases;
			binds = binds or {};
			WayPoints = AllWaypoints;
			PluginsTable = PluginsTable;
			currentShade1 = {currentShade1.R,currentShade1.G,currentShade1.B};
			currentShade2 = {currentShade2.R,currentShade2.G,currentShade2.B};
			currentShade3 = {currentShade3.R,currentShade3.G,currentShade3.B};
			currentText1 = {currentText1.R,currentText1.G,currentText1.B};
			currentText2 = {currentText2.R,currentText2.G,currentText2.B};
			currentScroll = {currentScroll.R,currentScroll.G,currentScroll.B};
			eventBinds = eventEditor.SaveData()
		}
		writefileCooldown("IY_FE.iy", HttpService:JSONEncode(update))
	end
end

eventEditor.SetOnEdited(updatesaves)

pWayPoints = {}
WayPoints = {}

if #AllWaypoints > 0 then
	for i = 1, #AllWaypoints do
		if not AllWaypoints[i].GAME or AllWaypoints[i].GAME == PlaceId then
			WayPoints[#WayPoints + 1] = {NAME = AllWaypoints[i].NAME, COORD = {AllWaypoints[i].COORD[1], AllWaypoints[i].COORD[2], AllWaypoints[i].COORD[3]}, GAME = AllWaypoints[i].GAME}
		end
	end
end

if type(binds) ~= "table" then binds = {} end

function Time()
	local HOUR = math.floor((tick() % 86400) / 3600)
	local MINUTE = math.floor((tick() % 3600) / 60)
	local SECOND = math.floor(tick() % 60)
	local AP = HOUR > 11 and 'PM' or 'AM'
	HOUR = (HOUR % 12 == 0 and 12 or HOUR % 12)
	HOUR = HOUR < 10 and '0' .. HOUR or HOUR
	MINUTE = MINUTE < 10 and '0' .. MINUTE or MINUTE
	SECOND = SECOND < 10 and '0' .. SECOND or SECOND
	return HOUR .. ':' .. MINUTE .. ':' .. SECOND .. ' ' .. AP
end

PrefixBox.Text = prefix
local SettingsOpen = false
local isHidden = false

if StayOpen == false then
	On.BackgroundTransparency = 1
else
	On.BackgroundTransparency = 0
end

if logsEnabled then
	Toggle.Text = 'Enabled'
else
	Toggle.Text = 'Disabled'
end

if jLogsEnabled then
	Toggle_2.Text = 'Enabled'
else
	Toggle_2.Text = 'Disabled'
end

function maximizeHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -220), "InOut", "Quart", 0.2, true, nil)
	end
end

local minimizeNum = -20
function minimizeHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, minimizeNum), "InOut", "Quart", 0.5, true, nil)
	end
end

function cmdbarHolder()
	if StayOpen == false then
		Holder:TweenPosition(UDim2.new(1, Holder.Position.X.Offset, 1, -45), "InOut", "Quart", 0.5, true, nil)
	end
end

pinNotification = nil
local notifyCount = 0
function notify(text,text2,length)
	task.spawn(function()
		local LnotifyCount = notifyCount+1
		local notificationPinned = false
		notifyCount = notifyCount+1
		if pinNotification then pinNotification:Disconnect() end
		pinNotification = PinButton.MouseButton1Click:Connect(function()
			task.spawn(function()
				pinNotification:Disconnect()
				notificationPinned = true
				Title_2.BackgroundTransparency = 1
				wait(0.5)
				Title_2.BackgroundTransparency = 0
			end)
		end)
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.6)
		local closepressed = false
		if text2 then
			Title_2.Text = text
			Text_2.Text = text2
		else
			Title_2.Text = 'Notification'
			Text_2.Text = text
		end
		Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, -100), "InOut", "Quart", 0.5, true, nil)
		CloseButton.MouseButton1Click:Connect(function()
			Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
			closepressed = true
			pinNotification:Disconnect()
		end)
		if length and isNumber(length) then
			wait(length)
		else
			wait(10)
		end
		if LnotifyCount == notifyCount then
			if closepressed == false and notificationPinned == false then
				pinNotification:Disconnect()
				Notification:TweenPosition(UDim2.new(1, Notification.Position.X.Offset, 1, 0), "InOut", "Quart", 0.5, true, nil)
			end
			notifyCount = 0
		end
	end)
end

local lastMessage = nil
local lastLabel = nil
local dupeCount = 1
function CreateLabel(Name, Text)
	if lastMessage == Name..Text then
		dupeCount = dupeCount+1
		lastLabel.Text = Time()..' - ['..Name..']: '..Text..' (x'..dupeCount..')'
	else
		if dupeCount > 1 then dupeCount = 1 end
		if #scroll_2:GetChildren() >= 2546 then
			scroll_2:ClearAllChildren()
		end
		local alls = 0
		for i,v in pairs(scroll_2:GetChildren()) do
			if v then
				alls = v.Size.Y.Offset + alls
			end
			if not v then
				alls = 0
			end
		end
		local tl = Instance.new('TextLabel')
		lastMessage = Name..Text
		lastLabel = tl
		tl.Name = Name
		tl.Parent = scroll_2
		tl.ZIndex = 10
		tl.Text = Time().." - ["..Name.."]: "..Text
		tl.Size = UDim2.new(0,322,0,84)
		tl.BackgroundTransparency = 1
		tl.BorderSizePixel = 0
		tl.Font = "SourceSans"
		tl.Position = UDim2.new(-1,0,0,alls)
		tl.TextTransparency = 1
		tl.TextScaled = false
		tl.TextSize = 14
		tl.TextWrapped = true
		tl.TextXAlignment = "Left"
		tl.TextYAlignment = "Top"
		tl.TextColor3 = currentText1
		tl.Size = UDim2.new(0,322,0,tl.TextBounds.Y)
		table.insert(text1,tl)
		scroll_2.CanvasSize = UDim2.new(0,0,0,alls+tl.TextBounds.Y)
		scroll_2.CanvasPosition = Vector2.new(0,scroll_2.CanvasPosition.Y+tl.TextBounds.Y)
		tl:TweenPosition(UDim2.new(0,3,0,alls), 'In', 'Quint', 0.5)
		for i = 0,50 do wait(0.05)
			tl.TextTransparency = tl.TextTransparency - 0.05
		end
		tl.TextTransparency = 0
	end
end

function CreateJoinLabel(plr,ID)
	if #scroll_3:GetChildren() >= 2546 then
		scroll_3:ClearAllChildren()
	end
	local infoFrame = Instance.new("Frame")
	local info1 = Instance.new("TextLabel")
	local info2 = Instance.new("TextLabel")
	local ImageLabel_3 = Instance.new("ImageLabel")
	infoFrame.Name = randomString()
	infoFrame.Parent = scroll_3
	infoFrame.BackgroundColor3 = Color3.new(1, 1, 1)
	infoFrame.BackgroundTransparency = 1
	infoFrame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
	infoFrame.Size = UDim2.new(1, 0, 0, 50)
	info1.Name = randomString()
	info1.Parent = infoFrame
	info1.BackgroundTransparency = 1
	info1.BorderSizePixel = 0
	info1.Position = UDim2.new(0, 45, 0, 0)
	info1.Size = UDim2.new(0, 135, 1, 0)
	info1.ZIndex = 10
	info1.Font = Enum.Font.SourceSans
	info1.FontSize = Enum.FontSize.Size14
	info1.Text = "Username: "..plr.Name.."\nJoined Server: "..Time()
	info1.TextColor3 = Color3.new(1, 1, 1)
	info1.TextWrapped = true
	info1.TextXAlignment = Enum.TextXAlignment.Left
	info2.Name = randomString()
	info2.Parent = infoFrame
	info2.BackgroundTransparency = 1
	info2.BorderSizePixel = 0
	info2.Position = UDim2.new(0, 185, 0, 0)
	info2.Size = UDim2.new(0, 140, 1, -5)
	info2.ZIndex = 10
	info2.Font = Enum.Font.SourceSans
	info2.FontSize = Enum.FontSize.Size14
	info2.Text = "User ID: "..ID.."\nAccount Age: "..plr.AccountAge.."\nJoined Roblox: Loading..."
	info2.TextColor3 = Color3.new(1, 1, 1)
	info2.TextWrapped = true
	info2.TextXAlignment = Enum.TextXAlignment.Left
	info2.TextYAlignment = Enum.TextYAlignment.Center
	ImageLabel_3.Parent = infoFrame
	ImageLabel_3.BackgroundTransparency = 1
	ImageLabel_3.BorderSizePixel = 0
	ImageLabel_3.Size = UDim2.new(0, 45, 1, 0)
	ImageLabel_3.Image = Players:GetUserThumbnailAsync(ID, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
	scroll_3.CanvasSize = UDim2.new(0, 0, 0, listlayout.AbsoluteContentSize.Y)
	scroll_3.CanvasPosition = Vector2.new(0,scroll_2.CanvasPosition.Y+infoFrame.AbsoluteSize.Y)
	wait()
	local user = game:HttpGet("https://users.roblox.com/v1/users/"..ID)
	local json = HttpService:JSONDecode(user)
	local date = json["created"]:sub(1,10)
	local splitDates = string.split(date,"-")
	info2.Text = string.gsub(info2.Text, "Loading...",splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
end

IYMouse.KeyDown:Connect(function(Key)
	if (Key==prefix) then
		Cmdbar:CaptureFocus()
		spawn(function()
			repeat Cmdbar.Text = '' until Cmdbar.Text == ''
		end)
		maximizeHolder()
	end
end)

local lastMinimizeReq = 0
Holder.MouseEnter:Connect(function()
	lastMinimizeReq = 0
	maximizeHolder()
end)

Holder.MouseLeave:Connect(function()
	if not Cmdbar:IsFocused() then
		local reqTime = tick()
		lastMinimizeReq = reqTime
		wait(1)
		if lastMinimizeReq ~= reqTime then return end
		if not Cmdbar:IsFocused() then
			minimizeHolder()
		end
	end
end)

function updateColors(color,ctype)
	if ctype == shade1 then
		for i,v in pairs(shade1) do
			v.BackgroundColor3 = color
		end
		currentShade1 = color
	elseif ctype == shade2 then
		for i,v in pairs(shade2) do
			v.BackgroundColor3 = color
		end
		currentShade2 = color
	elseif ctype == shade3 then
		for i,v in pairs(shade3) do
			v.BackgroundColor3 = color
		end
		currentShade3 = color
	elseif ctype == text1 then
		for i,v in pairs(text1) do
			v.TextColor3 = color
			if v:IsA("TextBox") then
				v.PlaceholderColor3 = color	
			end
		end
		currentText1 = color
	elseif ctype == text2 then
		for i,v in pairs(text2) do
			v.TextColor3 = color
		end
		currentText2 = color
	elseif ctype == scroll then
		for i,v in pairs(scroll) do
			v.ScrollBarImageColor3 = color
		end
		currentScroll = color
	end
end

local colorpickerOpen = false
ColorsButton.MouseButton1Click:Connect(function()
	cache_currentShade1 = currentShade1
	cache_currentShade2 = currentShade2
	cache_currentShade3 = currentShade3
	cache_currentText1 = currentText1
	cache_currentText2 = currentText2
	cache_currentScroll = currentScroll
	if not colorpickerOpen then
		colorpickerOpen = true
		picker = game:GetObjects("rbxassetid://4908465318")[1]
		picker.Name = randomString()
		picker.Parent = PARENT

		local ColorPicker do
			ColorPicker = {}

			ColorPicker.new = function()
				local newMt = setmetatable({},{})

				local pickerGui = picker.ColorPicker
				local pickerTopBar = pickerGui.TopBar
				local pickerExit = pickerTopBar.Exit
				local pickerFrame = pickerGui.Content
				local colorSpace = pickerFrame.ColorSpaceFrame.ColorSpace
				local colorStrip = pickerFrame.ColorStrip
				local previewFrame = pickerFrame.Preview
				local basicColorsFrame = pickerFrame.BasicColors
				local customColorsFrame = pickerFrame.CustomColors
				local defaultButton = pickerFrame.Default
				local cancelButton = pickerFrame.Cancel
				local shade1Button = pickerFrame.Shade1
				local shade2Button = pickerFrame.Shade2
				local shade3Button = pickerFrame.Shade3
				local text1Button = pickerFrame.Text1
				local text2Button = pickerFrame.Text2
				local scrollButton = pickerFrame.Scroll

				local colorScope = colorSpace.Scope
				local colorArrow = pickerFrame.ArrowFrame.Arrow

				local hueInput = pickerFrame.Hue.Input
				local satInput = pickerFrame.Sat.Input
				local valInput = pickerFrame.Val.Input

				local redInput = pickerFrame.Red.Input
				local greenInput = pickerFrame.Green.Input
				local blueInput = pickerFrame.Blue.Input

				local mouse = IYMouse

				local hue,sat,val = 0,0,1
				local red,green,blue = 1,1,1
				local chosenColor = Color3.new(0,0,0)

				local basicColors = {Color3.new(0,0,0),Color3.new(0.66666668653488,0,0),Color3.new(0,0.33333334326744,0),Color3.new(0.66666668653488,0.33333334326744,0),Color3.new(0,0.66666668653488,0),Color3.new(0.66666668653488,0.66666668653488,0),Color3.new(0,1,0),Color3.new(0.66666668653488,1,0),Color3.new(0,0,0.49803924560547),Color3.new(0.66666668653488,0,0.49803924560547),Color3.new(0,0.33333334326744,0.49803924560547),Color3.new(0.66666668653488,0.33333334326744,0.49803924560547),Color3.new(0,0.66666668653488,0.49803924560547),Color3.new(0.66666668653488,0.66666668653488,0.49803924560547),Color3.new(0,1,0.49803924560547),Color3.new(0.66666668653488,1,0.49803924560547),Color3.new(0,0,1),Color3.new(0.66666668653488,0,1),Color3.new(0,0.33333334326744,1),Color3.new(0.66666668653488,0.33333334326744,1),Color3.new(0,0.66666668653488,1),Color3.new(0.66666668653488,0.66666668653488,1),Color3.new(0,1,1),Color3.new(0.66666668653488,1,1),Color3.new(0.33333334326744,0,0),Color3.new(1,0,0),Color3.new(0.33333334326744,0.33333334326744,0),Color3.new(1,0.33333334326744,0),Color3.new(0.33333334326744,0.66666668653488,0),Color3.new(1,0.66666668653488,0),Color3.new(0.33333334326744,1,0),Color3.new(1,1,0),Color3.new(0.33333334326744,0,0.49803924560547),Color3.new(1,0,0.49803924560547),Color3.new(0.33333334326744,0.33333334326744,0.49803924560547),Color3.new(1,0.33333334326744,0.49803924560547),Color3.new(0.33333334326744,0.66666668653488,0.49803924560547),Color3.new(1,0.66666668653488,0.49803924560547),Color3.new(0.33333334326744,1,0.49803924560547),Color3.new(1,1,0.49803924560547),Color3.new(0.33333334326744,0,1),Color3.new(1,0,1),Color3.new(0.33333334326744,0.33333334326744,1),Color3.new(1,0.33333334326744,1),Color3.new(0.33333334326744,0.66666668653488,1),Color3.new(1,0.66666668653488,1),Color3.new(0.33333334326744,1,1),Color3.new(1,1,1)}
				local customColors = {}

				dragGUI(picker)

				local function updateColor(noupdate)
					local relativeX,relativeY,relativeStripY = 219 - hue*219, 199 - sat*199, 199 - val*199
					local hsvColor = Color3.fromHSV(hue,sat,val)

					if noupdate == 2 or not noupdate then
						hueInput.Text = tostring(math.ceil(359*hue))
						satInput.Text = tostring(math.ceil(255*sat))
						valInput.Text = tostring(math.floor(255*val))
					end
					if noupdate == 1 or not noupdate then
						redInput.Text = tostring(math.floor(255*red))
						greenInput.Text = tostring(math.floor(255*green))
						blueInput.Text = tostring(math.floor(255*blue))
					end

					chosenColor = Color3.new(red,green,blue)

					colorScope.Position = UDim2.new(0,relativeX-9,0,relativeY-9)
					colorStrip.ImageColor3 = Color3.fromHSV(hue,sat,1)
					colorArrow.Position = UDim2.new(0,-2,0,relativeStripY-4)
					previewFrame.BackgroundColor3 = chosenColor

					newMt.Color = chosenColor
					if newMt.Changed then newMt:Changed(chosenColor) end
				end

				local function colorSpaceInput()
					local relativeX = mouse.X - colorSpace.AbsolutePosition.X
					local relativeY = mouse.Y - colorSpace.AbsolutePosition.Y

					if relativeX < 0 then relativeX = 0 elseif relativeX > 219 then relativeX = 219 end
					if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end

					hue = (219 - relativeX)/219
					sat = (199 - relativeY)/199

					local hsvColor = Color3.fromHSV(hue,sat,val)
					red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b

					updateColor()
				end

				local function colorStripInput()
					local relativeY = mouse.Y - colorStrip.AbsolutePosition.Y

					if relativeY < 0 then relativeY = 0 elseif relativeY > 199 then relativeY = 199 end	

					val = (199 - relativeY)/199

					local hsvColor = Color3.fromHSV(hue,sat,val)
					red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b

					updateColor()
				end

				local function hookButtons(frame,func)
					frame.ArrowFrame.Up.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Up.BackgroundTransparency = 0.5
						elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
							local releaseEvent,runEvent

							local startTime = tick()
							local pressing = true
							local startNum = tonumber(frame.Text)

							if not startNum then return end

							releaseEvent = UserInputService.InputEnded:Connect(function(input)
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								releaseEvent:Disconnect()
								pressing = false
							end)

							startNum = startNum + 1
							func(startNum)
							while pressing do
								if tick()-startTime > 0.3 then
									startNum = startNum + 1
									func(startNum)
								end
								wait(0.1)
							end
						end
					end)

					frame.ArrowFrame.Up.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Up.BackgroundTransparency = 1
						end
					end)

					frame.ArrowFrame.Down.InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Down.BackgroundTransparency = 0.5
						elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
							local releaseEvent,runEvent

							local startTime = tick()
							local pressing = true
							local startNum = tonumber(frame.Text)

							if not startNum then return end

							releaseEvent = UserInputService.InputEnded:Connect(function(input)
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
								releaseEvent:Disconnect()
								pressing = false
							end)

							startNum = startNum - 1
							func(startNum)
							while pressing do
								if tick()-startTime > 0.3 then
									startNum = startNum - 1
									func(startNum)
								end
								wait(0.1)
							end
						end
					end)

					frame.ArrowFrame.Down.InputEnded:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement then
							frame.ArrowFrame.Down.BackgroundTransparency = 1
						end
					end)
				end

				colorSpace.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local releaseEvent,mouseEvent

						releaseEvent = UserInputService.InputEnded:Connect(function(input)
							if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
							releaseEvent:Disconnect()
							mouseEvent:Disconnect()
						end)

						mouseEvent = UserInputService.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								colorSpaceInput()
							end
						end)

						colorSpaceInput()
					end
				end)

				colorStrip.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local releaseEvent,mouseEvent

						releaseEvent = UserInputService.InputEnded:Connect(function(input)
							if input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
							releaseEvent:Disconnect()
							mouseEvent:Disconnect()
						end)

						mouseEvent = UserInputService.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement then
								colorStripInput()
							end
						end)

						colorStripInput()
					end
				end)

				local function updateHue(str)
					local num = tonumber(str)
					if num then
						hue = math.clamp(math.floor(num),0,359)/359
						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
						hueInput.Text = tostring(hue*359)
						updateColor(1)
					end
				end
				hueInput.FocusLost:Connect(function() updateHue(hueInput.Text) end) hookButtons(hueInput,updateHue)

				local function updateSat(str)
					local num = tonumber(str)
					if num then
						sat = math.clamp(math.floor(num),0,255)/255
						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
						satInput.Text = tostring(sat*255)
						updateColor(1)
					end
				end
				satInput.FocusLost:Connect(function() updateSat(satInput.Text) end) hookButtons(satInput,updateSat)

				local function updateVal(str)
					local num = tonumber(str)
					if num then
						val = math.clamp(math.floor(num),0,255)/255
						local hsvColor = Color3.fromHSV(hue,sat,val)
						red,green,blue = hsvColor.r,hsvColor.g,hsvColor.b
						valInput.Text = tostring(val*255)
						updateColor(1)
					end
				end
				valInput.FocusLost:Connect(function() updateVal(valInput.Text) end) hookButtons(valInput,updateVal)

				local function updateRed(str)
					local num = tonumber(str)
					if num then
						red = math.clamp(math.floor(num),0,255)/255
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						redInput.Text = tostring(red*255)
						updateColor(2)
					end
				end
				redInput.FocusLost:Connect(function() updateRed(redInput.Text) end) hookButtons(redInput,updateRed)

				local function updateGreen(str)
					local num = tonumber(str)
					if num then
						green = math.clamp(math.floor(num),0,255)/255
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						greenInput.Text = tostring(green*255)
						updateColor(2)
					end
				end
				greenInput.FocusLost:Connect(function() updateGreen(greenInput.Text) end) hookButtons(greenInput,updateGreen)

				local function updateBlue(str)
					local num = tonumber(str)
					if num then
						blue = math.clamp(math.floor(num),0,255)/255
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						blueInput.Text = tostring(blue*255)
						updateColor(2)
					end
				end
				blueInput.FocusLost:Connect(function() updateBlue(blueInput.Text) end) hookButtons(blueInput,updateBlue)

				local colorChoice = Instance.new("TextButton")
				colorChoice.Name = "Choice"
				colorChoice.Size = UDim2.new(0,25,0,18)
				colorChoice.BorderColor3 = Color3.new(96/255,96/255,96/255)
				colorChoice.Text = ""
				colorChoice.AutoButtonColor = false
				colorChoice.ZIndex = 10

				local row = 0
				local column = 0
				for i,v in pairs(basicColors) do
					local newColor = colorChoice:Clone()
					newColor.BackgroundColor3 = v
					newColor.Position = UDim2.new(0,1 + 30*column,0,21 + 23*row)

					newColor.MouseButton1Click:Connect(function()
						red,green,blue = v.r,v.g,v.b
						local newColor = Color3.new(red,green,blue)
						hue,sat,val = Color3.toHSV(newColor)
						updateColor()
					end)	

					newColor.Parent = basicColorsFrame
					column = column + 1
					if column == 6 then row = row + 1 column = 0 end
				end

				row = 0
				column = 0
				for i = 1,12 do
					local color = customColors[i] or Color3.new(0,0,0)
					local newColor = colorChoice:Clone()
					newColor.BackgroundColor3 = color
					newColor.Position = UDim2.new(0,1 + 30*column,0,20 + 23*row)

					newColor.MouseButton1Click:Connect(function()
						local curColor = customColors[i] or Color3.new(0,0,0)
						red,green,blue = curColor.r,curColor.g,curColor.b
						hue,sat,val = Color3.toHSV(curColor)
						updateColor()
					end)

					newColor.MouseButton2Click:Connect(function()
						customColors[i] = chosenColor
						newColor.BackgroundColor3 = chosenColor
					end)

					newColor.Parent = customColorsFrame
					column = column + 1
					if column == 6 then row = row + 1 column = 0 end
				end

				shade1Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade1) end end)
				shade1Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade1Button.BackgroundTransparency = 0.4 end end)
				shade1Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade1Button.BackgroundTransparency = 0 end end)

				shade2Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade2) end end)
				shade2Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade2Button.BackgroundTransparency = 0.4 end end)
				shade2Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade2Button.BackgroundTransparency = 0 end end)

				shade3Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,shade3) end end)
				shade3Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade3Button.BackgroundTransparency = 0.4 end end)
				shade3Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then shade3Button.BackgroundTransparency = 0 end end)

				text1Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,text1) end end)
				text1Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text1Button.BackgroundTransparency = 0.4 end end)
				text1Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text1Button.BackgroundTransparency = 0 end end)

				text2Button.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,text2) end end)
				text2Button.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text2Button.BackgroundTransparency = 0.4 end end)
				text2Button.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then text2Button.BackgroundTransparency = 0 end end)

				scrollButton.MouseButton1Click:Connect(function() if newMt.Confirm then newMt:Confirm(chosenColor,scroll) end end)
				scrollButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then scrollButton.BackgroundTransparency = 0.4 end end)
				scrollButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then scrollButton.BackgroundTransparency = 0 end end)

				cancelButton.MouseButton1Click:Connect(function() if newMt.Cancel then newMt:Cancel() end end)
				cancelButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0.4 end end)
				cancelButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then cancelButton.BackgroundTransparency = 0 end end)

				defaultButton.MouseButton1Click:Connect(function() if newMt.Default then newMt:Default() end end)
				defaultButton.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then defaultButton.BackgroundTransparency = 0.4 end end)
				defaultButton.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then defaultButton.BackgroundTransparency = 0 end end)

				pickerExit.MouseButton1Click:Connect(function()
					picker:TweenPosition(UDim2.new(0.5, -219, 0, -500), "InOut", "Quart", 0.5, true, nil)
				end)

				updateColor()

				newMt.SetColor = function(self,color)
					red,green,blue = color.r,color.g,color.b
					hue,sat,val = Color3.toHSV(color)
					updateColor()
				end

				return newMt
			end
		end

		picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), "InOut", "Quart", 0.5, true, nil)

		local Npicker = ColorPicker.new()
		Npicker.Confirm = function(self,color,ctype) updateColors(color,ctype) wait() updatesaves() end
		Npicker.Cancel = function(self)
			updateColors(cache_currentShade1,shade1)
			updateColors(cache_currentShade2,shade2)
			updateColors(cache_currentShade3,shade3)
			updateColors(cache_currentText1,text1)
			updateColors(cache_currentText2,text2)
			updateColors(cache_currentScroll,scroll)
			wait()
			updatesaves()
		end
		Npicker.Default = function(self)
			updateColors(Color3.fromRGB(36, 36, 37),shade1)
			updateColors(Color3.fromRGB(46, 46, 47),shade2)
			updateColors(Color3.fromRGB(78, 78, 79),shade3)
			updateColors(Color3.new(1, 1, 1),text1)
			updateColors(Color3.new(0, 0, 0),text2)
			updateColors(Color3.fromRGB(78,78,79),scroll)
			wait()
			updatesaves()
		end
	else
		picker:TweenPosition(UDim2.new(0.5, -219, 0, 100), "InOut", "Quart", 0.5, true, nil)
	end
end)


SettingsButton.MouseButton1Click:Connect(function()
	if SettingsOpen == false then SettingsOpen = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.5, true, nil)
		CMDsF.Visible = false
	else SettingsOpen = false
		CMDsF.Visible = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.5, true, nil)
	end
end)

On.MouseButton1Click:Connect(function()
	if isHidden == false then
		if StayOpen == false then
			StayOpen = true
			On.BackgroundTransparency = 0
		else
			StayOpen = false
			On.BackgroundTransparency = 1
		end
		updatesaves()
	end
end)

Clear.MouseButton1Down:Connect(function()
	for _, child in pairs(scroll_2:GetChildren()) do
		child:Destroy()
	end
	scroll_2.CanvasSize = UDim2.new(0, 0, 0, 10)
end)

Clear_2.MouseButton1Down:Connect(function()
	for _, child in pairs(scroll_3:GetChildren()) do
		child:Destroy()
	end
	scroll_3.CanvasSize = UDim2.new(0, 0, 0, 10)
end)

Toggle.MouseButton1Down:Connect(function()
	if logsEnabled then
		logsEnabled = false
		Toggle.Text = 'Disabled'
		updatesaves()
	else
		logsEnabled = true
		Toggle.Text = 'Enabled'
		updatesaves()
	end
end)

Toggle_2.MouseButton1Down:Connect(function()
	if jLogsEnabled then
		jLogsEnabled = false
		Toggle_2.Text = 'Disabled'
		updatesaves()
	else
		jLogsEnabled = true
		Toggle_2.Text = 'Enabled'
		updatesaves()
	end
end)

selectChat.MouseButton1Down:Connect(function()
	join.Visible = false
	chat.Visible = true
	table.remove(shade3,table.find(shade3,selectChat))
	table.remove(shade2,table.find(shade2,selectJoin))
	table.insert(shade2,selectChat)
	table.insert(shade3,selectJoin)
	selectJoin.BackgroundColor3 = currentShade3
	selectChat.BackgroundColor3 = currentShade2
end)

selectJoin.MouseButton1Down:Connect(function()
	chat.Visible = false
	join.Visible = true	
	table.remove(shade3,table.find(shade3,selectJoin))
	table.remove(shade2,table.find(shade2,selectChat))
	table.insert(shade2,selectJoin)
	table.insert(shade3,selectChat)
	selectChat.BackgroundColor3 = currentShade3
	selectJoin.BackgroundColor3 = currentShade2
end)

if not writefileExploit() then
	notify('Saves','Your exploit does not support read/write file. Your settings will not save.')
end

ChatLog = function(plr)
	plr.Chatted:Connect(function(Message)
		if logsEnabled == true then
			CreateLabel(plr.Name,Message)
		end
	end)
end

JoinLog = function(plr)
	if jLogsEnabled == true then
		CreateJoinLabel(plr,plr.UserId)
	end
end

local CleanFileName = function(str)
	local gsub = string.gsub
	return gsub(str, "[*\\?:<>|]+", "")
end

SaveChatlogs.MouseButton1Down:Connect(function()
	if writefileExploit() then
		if #scroll_2:GetChildren() > 0 then
			notify("Loading",'Hold on a sec')
			local placeName = CleanFileName(MarketplaceService:GetProductInfo(PlaceId).Name)
			local writelogs = '-- Infinite Yield Chat logs for "'..placeName..'"\n'
			for _, child in pairs(scroll_2:GetChildren()) do
				writelogs = writelogs..'\n'..child.Text
			end
			local writelogsFile = tostring(writelogs)
			local fileext = 0
			local function nameFile()
				local file
				pcall(function() file = readfile(placeName..' Chat Logs ('..fileext..').txt') end)
				if file then
					fileext = fileext+1
					nameFile()
				else
					writefileCooldown(placeName..' Chat Logs ('..fileext..').txt', writelogsFile)
				end
			end
			nameFile()
			notify('Chat Logs','Saved chat logs to the workspace folder within your exploit folder.')
		end
	else
		notify('Chat Logs','Your exploit does not support write file. You cannot save chat logs.')
	end
end)

for _, plr in pairs(Players:GetChildren()) do
	if plr.ClassName == "Player" then
		ChatLog(plr)
	end
end

Players.PlayerRemoving:Connect(function(player)
	if ESPenabled or CHMSenabled or COREGUI:FindFirstChild(player.Name..'_LC') then
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == player.Name..'_ESP' or v.Name == player.Name..'_LC' or v.Name == player.Name..'_CHMS' then
				v:Destroy()
			end
		end
	end
	if viewing ~= nil and player == viewing then
		workspace.CurrentCamera.CameraSubject = Players.LocalPlayer.Character
		viewing = nil
		if viewDied then
			viewDied:Disconnect()
			viewChanged:Disconnect()
		end
		notify('Spectate','View turned off (player left)')
	end
end)

Exit.MouseButton1Down:Connect(function()
	logs:TweenPosition(UDim2.new(0, 0, 1, 10), "InOut", "Quart", 0.3, true, nil)
end)

Hide.MouseButton1Down:Connect(function()
	if logs.Position ~= UDim2.new(0, 0, 1, -20) then
		logs:TweenPosition(UDim2.new(0, 0, 1, -20), "InOut", "Quart", 0.3, true, nil)
	else
		logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
	end
end)

EventBind.MouseButton1Click:Connect(function()
	eventEditor.Frame:TweenPosition(UDim2.new(0.5,-175,0.5,-101), "InOut", "Quart", 0.5, true, nil)
end)

Keybinds.MouseButton1Click:Connect(function()
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

Close.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Keybinds.MouseButton1Click:Connect(function()
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

Add.MouseButton1Click:Connect(function()
	KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, 260), "InOut", "Quart", 0.5, true, nil)
end)

Delete.MouseButton1Click:Connect(function()
	binds = {}
	refreshbinds()
	updatesaves()
	notify('Keybinds Updated','Removed all keybinds')
end)

Close_2.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Aliases.MouseButton1Click:Connect(function()
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

Close_3.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

Positions.MouseButton1Click:Connect(function()
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
end)

local selectionBox = Instance.new("SelectionBox")
selectionBox.Name = randomString()
selectionBox.Color3 = Color3.new(255,255,255)
selectionBox.Adornee = nil
selectionBox.Parent = PARENT

local selected = Instance.new("SelectionBox")
selected.Name = randomString()
selected.Color3 = Color3.new(0,166,0)
selected.Adornee = nil
selected.Parent = PARENT

local ActivateHighlight = nil
local ClickSelect = nil
function selectPart()
	ToPartFrame:TweenPosition(UDim2.new(0.5, -180, 0, 335), "InOut", "Quart", 0.5, true, nil)
	local function HighlightPart()
		if selected.Adornee ~= IYMouse.Target then
			selectionBox.Adornee = IYMouse.Target
		else
			selectionBox.Adornee = nil
		end
	end
	ActivateHighlight = IYMouse.Move:Connect(HighlightPart)
	local function SelectPart()
		if IYMouse.Target ~= nil then
			selected.Adornee = IYMouse.Target
			Path.Text = getHierarchy(IYMouse.Target)
		end
	end
	ClickSelect = IYMouse.Button1Down:Connect(SelectPart)
end

Part.MouseButton1Click:Connect(function()
	selectPart()
end)

Exit_4.MouseButton1Click:Connect(function()
	ToPartFrame:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
	if ActivateHighlight then
		ActivateHighlight:Disconnect()
	end
	if ClickSelect then
		ClickSelect:Disconnect()
	end
	selectionBox.Adornee = nil
	selected.Adornee = nil
	Path.Text = ""
end)

CopyPath.MouseButton1Click:Connect(function()
	if Path.Text ~= "" then
		toClipboard(Path.Text)
	else
		notify('Copy Path','Select a part to copy its path')
	end
end)

ChoosePart.MouseButton1Click:Connect(function()
	if Path.Text ~= "" then
		local tpNameExt = ''
		local function handleWpNames()
			local FoundDupe = false
			for i,v in pairs(pWayPoints) do
				if v.NAME:lower() == selected.Adornee.Name:lower()..tpNameExt then
					FoundDupe = true
				end
			end
			if not FoundDupe then
				notify('Modified Waypoints',"Created waypoint: "..selected.Adornee.Name..tpNameExt)
				pWayPoints[#pWayPoints + 1] = {NAME = selected.Adornee.Name..tpNameExt, COORD = {selected.Adornee}}
			else
				if isNumber(tpNameExt) then
					tpNameExt = tpNameExt+1
				else
					tpNameExt = 1
				end
				handleWpNames()
			end
		end
		handleWpNames()
		refreshwaypoints()
	else
		notify('Part Selection','Select a part first')
	end
end)

cmds={}
customAlias = {}
Delete_3.MouseButton1Click:Connect(function()
	customAlias = {}
	aliases = {}
	notify('Aliases Modified','Removed all aliases')
	updatesaves()
	refreshaliases()
end)

PrefixBox:GetPropertyChangedSignal("Text"):Connect(function()
	prefix = PrefixBox.Text
	Cmdbar.PlaceholderText = "Command Bar ("..prefix..")"
	updatesaves()
end)

function CamViewport()
	if workspace.CurrentCamera then
		return workspace.CurrentCamera.ViewportSize.X
	end
end

function UpdateToViewport()
	if Holder.Position.X.Offset < -CamViewport() then
		Holder:TweenPosition(UDim2.new(1, -CamViewport(), Holder.Position.Y.Scale, Holder.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
		Notification:TweenPosition(UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
	end
end
CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateToViewport)

function updateCamera(child, parent)
	if parent ~= workspace then
		CamMoved:Disconnect()
		CameraChanged:Disconnect()
		repeat wait() until workspace.CurrentCamera
		CameraChanged = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(UpdateToViewport)
		CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)
	end
end
CamMoved = workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)

function dragMain(dragpoint,gui)
	task.spawn(function()
		local dragging
		local dragInput
		local dragStart = Vector3.new(0,0,0)
		local startPos
		local function update(input)
			local pos = -250
			local delta = input.Position - dragStart
			if startPos.X.Offset + delta.X <= -500 then
				local Position = UDim2.new(1, -250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position}):Play()
				pos = 250
			else
				local Position = UDim2.new(1, -500, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position}):Play()
				pos = -250
			end
			if startPos.X.Offset + delta.X <= -250 and -CamViewport() <= startPos.X.Offset + delta.X then
				local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, gui.Position.Y.Scale, gui.Position.Y.Offset)
				TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
				local Position2 = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X + pos, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position2}):Play()
			elseif startPos.X.Offset + delta.X > -500 then
				local Position = UDim2.new(1, -250, gui.Position.Y.Scale, gui.Position.Y.Offset)
				TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
			elseif -CamViewport() > startPos.X.Offset + delta.X then
				gui:TweenPosition(UDim2.new(1, -CamViewport(), gui.Position.Y.Scale, gui.Position.Y.Offset), "InOut", "Quart", 0.04, true, nil)
				local Position = UDim2.new(1, -CamViewport(), gui.Position.Y.Scale, gui.Position.Y.Offset)
				TweenService:Create(gui, TweenInfo.new(.20), {Position = Position}):Play()
				local Position2 = UDim2.new(1, -CamViewport() + 250, Notification.Position.Y.Scale, Notification.Position.Y.Offset)
				TweenService:Create(Notification, TweenInfo.new(.20), {Position = Position2}):Play()
			end
		end
		dragpoint.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		dragpoint.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end)
end

dragMain(Title,Holder)

Match = function(name,str)
	str = str:gsub("%W", "%%%1")
	return name:lower():find(str:lower()) and true
end

local canvasPos = Vector2.new(0,0)
local topCommand = nil
IndexContents = function(str,bool,cmdbar,Ianim)
	CMDsF.CanvasPosition = Vector2.new(0,0)
	local SizeY = 0
	local indexnum = 0
	local frame = CMDsF
	topCommand = nil
	local chunks = {}
	if str:sub(#str,#str) == "\\" then str = "" end
	for w in string.gmatch(str,"[^\\]+") do
		table.insert(chunks,w)
	end
	if #chunks > 0 then str = chunks[#chunks] end
	if str:sub(1,1) == "!" then str = str:sub(2) end
	for i,v in next, frame:GetChildren() do
		if v:IsA("TextButton") then
			if bool then
				if Match(v.Text,str) then
					indexnum = indexnum + 1
					v.Visible = true
					if topCommand == nil then
						topCommand = v.Text
					end
				else
					v.Visible = false
				end
			else
				v.Visible = true
				if topCommand == nil then
					topCommand = v.Text
				end
			end
		end
	end
	frame.CanvasSize = UDim2.new(0,0,0,cmdListLayout.AbsoluteContentSize.Y)
	if not Ianim then
		if indexnum == 0 or string.find(str, " ") then
			if not cmdbar then
				minimizeHolder()
			elseif cmdbar then
				cmdbarHolder()
			end
		else
			maximizeHolder()
		end
	else
		minimizeHolder()
	end
end

PlayerGui = Players.LocalPlayer:FindFirstChildOfClass("PlayerGui")
local chatbox
task.spawn(function()
	local success, result = pcall(function() chatbox = game.WaitForChild(PlayerGui, "Chat").Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar end)
	if success then
		local function chatboxFocused()
			canvasPos = CMDsF.CanvasPosition
		end
		local chatboxFocusedC = chatbox.Focused:Connect(chatboxFocused)

		local function Index()
			if chatbox.Text:lower():sub(1,1) == prefix then
				if SettingsOpen == true then
					wait(0.2)
					CMDsF.Visible = true
					Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
				end
				IndexContents(PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text:lower():sub(2),true)
			else
				minimizeHolder()
				if SettingsOpen == true then
					wait(0.2)
					Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
					CMDsF.Visible = false
				end
			end
		end
		local chatboxFunc = chatbox:GetPropertyChangedSignal("Text"):Connect(Index)

		local function chatboxFocusLost(enterpressed)
			if not enterpressed or chatbox.Text:lower():sub(1,1) ~= prefix then
				IndexContents('',true)
			end
			CMDsF.CanvasPosition = canvasPos
			minimizeHolder()
		end
		local chatboxFocusLostC = chatbox.FocusLost:Connect(chatboxFocusLost)

		PlayerGui:WaitForChild("Chat").Frame.ChatBarParentFrame.ChildAdded:Connect(function(newbar)
			wait()
			if newbar:FindFirstChild('BoxFrame') then
				chatbox = PlayerGui:WaitForChild("Chat").Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
				if chatboxFocusedC then chatboxFocusedC:Disconnect() end
				chatboxFocusedC = chatbox.Focused:Connect(chatboxFocused)
				if chatboxFunc then chatboxFunc:Disconnect() end
				chatboxFunc = chatbox:GetPropertyChangedSignal("Text"):Connect(Index)
				if chatboxFocusLostC then chatboxFocusLostC:Disconnect() end
				chatboxFocusLostC = chatbox.FocusLost:Connect(chatboxFocusLost)
			end
		end)
		--else
		--print('Custom chat detected. Will not provide suggestions for commands typed in the chat.')
	end
end)

function autoComplete(str,curText)
	local endingChar = {"[", "/", "(", " "}
	local stop = 0
	for i=1,#str do
		local c = str:sub(i,i)
		if table.find(endingChar, c) then
			stop = i
			break
		end
	end
	curText = curText or Cmdbar.Text
	local subPos = 0
	local pos = 1
	local findRes = string.find(curText,"\\",pos)
	while findRes do
		subPos = findRes
		pos = findRes+1
		findRes = string.find(curText,"\\",pos)
	end
	if curText:sub(subPos+1,subPos+1) == "!" then subPos = subPos + 1 end
	Cmdbar.Text = curText:sub(1,subPos) .. str:sub(1, stop - 1)..' '
	wait()
	Cmdbar.Text = Cmdbar.Text:gsub( '\t', '' )
	Cmdbar.CursorPosition = #Cmdbar.Text+1--1020
end

CMDs = {}
CMDs[#CMDs + 1] = {NAME = 'discord / support / help', DESC = 'Invite to the Infinite Yield support server.'}
CMDs[#CMDs + 1] = {NAME = 'console', DESC = 'Loads old Roblox console'}
CMDs[#CMDs + 1] = {NAME = 'explorer / dex', DESC = 'Opens DEX by Moon'}
CMDs[#CMDs + 1] = {NAME = 'olddex / odex', DESC = 'Opens Old DEX by Moon'}
CMDs[#CMDs + 1] = {NAME = 'remotespy / rspy', DESC = 'Opens Simple Spy V3'}
CMDs[#CMDs + 1] = {NAME = 'audiologger / alogger', DESC = 'Opens Edges audio logger'}
CMDs[#CMDs + 1] = {NAME = 'serverinfo / info', DESC = 'Gives you info about the server'}
CMDs[#CMDs + 1] = {NAME = 'jobid', DESC = 'Copies the games JobId to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'notifyjobid', DESC = 'Notifies you the games JobId'}
CMDs[#CMDs + 1] = {NAME = 'rejoin / rj', DESC = 'Makes you rejoin the game'}
CMDs[#CMDs + 1] = {NAME = 'autorejoin / autorj', DESC = 'Automatically rejoins the server if you get kicked/disconnected'}
CMDs[#CMDs + 1] = {NAME = 'serverhop / shop', DESC = 'Teleports you to a different server'}
CMDs[#CMDs + 1] = {NAME = 'joinplayer [username / ID] [place ID]', DESC = 'Joins a specific players server'}
CMDs[#CMDs + 1] = {NAME = 'gameteleport / gametp [place ID]', DESC = 'Joins a game by ID'}
CMDs[#CMDs + 1] = {NAME = 'antiidle / antiafk', DESC = 'Prevents the game from kicking you for being idle/afk'}
CMDs[#CMDs + 1] = {NAME = 'datalimit [num]', DESC = 'Set outgoing KBPS limit'}
CMDs[#CMDs + 1] = {NAME = 'replicationlag / backtrack [num]', DESC = 'Set IncomingReplicationLag'}
CMDs[#CMDs + 1] = {NAME = 'creatorid / creator', DESC = 'Notifies you the creators ID'}
CMDs[#CMDs + 1] = {NAME = 'copycreatorid / copycreator', DESC = 'Copies the creators ID to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'setcreatorid / setcreator', DESC = 'Sets your userid to the creators ID'}
CMDs[#CMDs + 1] = {NAME = 'noprompts', DESC = 'Prevents the game from showing you purchase/premium prompts'}
CMDs[#CMDs + 1] = {NAME = 'showprompts', DESC = 'Allows the game to show purchase/premium prompts again'}
CMDs[#CMDs + 1] = {NAME = 'enable [inventory/playerlist/chat/reset/emotes/all]', DESC = 'Toggles visibility of coregui items'}
CMDs[#CMDs + 1] = {NAME = 'disable [inventory/playerlist/chat/reset/emotes/all]', DESC = 'Toggles visibility of coregui items'}
CMDs[#CMDs + 1] = {NAME = 'showguis', DESC = 'Shows any invisible GUIs'}
CMDs[#CMDs + 1] = {NAME = 'unshowguis', DESC = 'Undoes showguis'}
CMDs[#CMDs + 1] = {NAME = 'hideguis', DESC = 'Hides any GUIs in PlayerGui'}
CMDs[#CMDs + 1] = {NAME = 'unhideguis', DESC = 'Undoes hideguis'}
CMDs[#CMDs + 1] = {NAME = 'guidelete', DESC = 'Enables backspace to delete GUI'}
CMDs[#CMDs + 1] = {NAME = 'unguidelete / noguidelete', DESC = 'Disables guidelete'}
CMDs[#CMDs + 1] = {NAME = 'hideiy', DESC = 'Hides the main IY GUI'}
CMDs[#CMDs + 1] = {NAME = 'showiy / unhideiy', DESC = 'Shows IY again'}
CMDs[#CMDs + 1] = {NAME = 'keepiy', DESC = 'Auto execute IY when you teleport through servers'}
CMDs[#CMDs + 1] = {NAME = 'unkeepiy', DESC = 'Disable keepiy'}
CMDs[#CMDs + 1] = {NAME = 'togglekeepiy', DESC = 'Toggle keepiy'}
CMDs[#CMDs + 1] = {NAME = 'savegame / saveplace', DESC = 'Uses saveinstance to save the game'}
CMDs[#CMDs + 1] = {NAME = 'clearerror', DESC = 'Clears the annoying box and blur when a game kicks you'}
CMDs[#CMDs + 1] = {NAME = 'clientantikick / antikick (CLIENT)', DESC = 'Prevents localscripts from kicking you'}
CMDs[#CMDs + 1] = {NAME = 'clientantiteleport / antiteleport (CLIENT)', DESC = 'Prevents localscripts from teleporting you'}
CMDs[#CMDs + 1] = {NAME = 'allowrejoin / allowrj [true/false] (CLIENT)', DESC = 'Changes if antiteleport allows you to rejoin or not'}
CMDs[#CMDs + 1] = {NAME = 'cancelteleport / canceltp', DESC = 'Cancels teleports in progress'}
CMDs[#CMDs + 1] = {NAME = 'volume / vol [0-10]', DESC = 'Adjusts your game volume on a scale of 0 to 10'}
CMDs[#CMDs + 1] = {NAME = 'antilag / boostfps / lowgraphics', DESC = 'Lowers game quality to boost FPS'}
CMDs[#CMDs + 1] = {NAME = 'record / rec', DESC = 'Starts roblox recorder'}
CMDs[#CMDs + 1] = {NAME = 'screenshot / scrnshot', DESC = 'Takes a screenshot'}
CMDs[#CMDs + 1] = {NAME = 'togglefullscreen / togglefs', DESC = 'Toggles fullscreen'}
CMDs[#CMDs + 1] = {NAME = 'notify [text]', DESC = 'Sends you a notification with the provided text'}
CMDs[#CMDs + 1] = {NAME = 'lastcommand / lastcmd', DESC = 'Executes the previous command used'}
CMDs[#CMDs + 1] = {NAME = 'exit', DESC = 'Kills roblox process'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'noclip', DESC = 'Go through objects'}
CMDs[#CMDs + 1] = {NAME = 'unnoclip / clip', DESC = 'Disables noclip'}
CMDs[#CMDs + 1] = {NAME = 'fly [speed]', DESC = 'Makes you fly'}
CMDs[#CMDs + 1] = {NAME = 'unfly', DESC = 'Disables fly'}
CMDs[#CMDs + 1] = {NAME = 'flyspeed [num]', DESC = 'Set fly speed (default is 20)'}
CMDs[#CMDs + 1] = {NAME = 'vehiclefly / vfly [speed]', DESC = 'Makes you fly in a vehicle'}
CMDs[#CMDs + 1] = {NAME = 'unvehiclefly / unvfly', DESC = 'Disables vehicle fly'}
CMDs[#CMDs + 1] = {NAME = 'vehicleflyspeed  / vflyspeed [num]', DESC = 'Set vehicle fly speed'}
CMDs[#CMDs + 1] = {NAME = 'cframefly / cfly [speed]', DESC = 'Makes you fly, bypassing some anti cheats (works on mobile)'}
CMDs[#CMDs + 1] = {NAME = 'uncframefly / uncfly', DESC = 'Disables cfly'}
CMDs[#CMDs + 1] = {NAME = 'cframeflyspeed  / cflyspeed [num]', DESC = 'Sets cfly speed'}
CMDs[#CMDs + 1] = {NAME = 'qefly [true / false]', DESC = 'enables or disables the Q and E hotkeys for fly'}
CMDs[#CMDs + 1] = {NAME = 'vehiclenoclip / vnoclip', DESC = 'Turns off vehicle collision'}
CMDs[#CMDs + 1] = {NAME = 'vehicleclip / vclip / unvnoclip', DESC = 'Enables vehicle collision'}
CMDs[#CMDs + 1] = {NAME = 'float /  platform', DESC = 'Spawns a platform beneath you causing you to float'}
CMDs[#CMDs + 1] = {NAME = 'unfloat / noplatform', DESC = 'Removes the platform'}
CMDs[#CMDs + 1] = {NAME = 'swim', DESC = 'Allows you to swim in the air'}
CMDs[#CMDs + 1] = {NAME = 'unswim / noswim', DESC = 'Stops you from swimming everywhere'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'setwaypoint / swp [name]', DESC = 'Sets a waypoint at your position'}
CMDs[#CMDs + 1] = {NAME = 'waypointpos / wpp [name] [X Y Z]', DESC = 'Sets a waypoint with specified coordinates'}
CMDs[#CMDs + 1] = {NAME = 'waypoints', DESC = 'Shows a list of currently active waypoints'}
CMDs[#CMDs + 1] = {NAME = 'showwaypoints / showwp', DESC = 'Shows all currently set waypoints'}
CMDs[#CMDs + 1] = {NAME = 'hidewaypoints / hidewp', DESC = 'Hides shown waypoints'}
CMDs[#CMDs + 1] = {NAME = 'waypoint / wp [name]', DESC = 'Teleports player to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'tweenwaypoint / twp [name]', DESC = 'Tweens player to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'walktowaypoint / wtwp [name]', DESC = 'Walks player to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'deletewaypoint / dwp [name]', DESC = 'Deletes a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'clearwaypoints / cwp', DESC = 'Clears all waypoints'}
CMDs[#CMDs + 1] = {NAME = 'cleargamewaypoints / cgamewp', DESC = 'Clears all waypoints for the game you are in'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'goto [plr]', DESC = 'Go to a player'}
CMDs[#CMDs + 1] = {NAME = 'tweengoto / tgoto [plr]', DESC = 'Tween to a player (bypasses some anti cheats)'}
CMDs[#CMDs + 1] = {NAME = 'tweenspeed / tspeed [num]', DESC = 'Sets how fast all tween commands go (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'vehiclegoto / vgoto [plr]', DESC = 'Go to a player while in a vehicle'}
CMDs[#CMDs + 1] = {NAME = 'loopgoto [plr] [distance] [delay]', DESC = 'Loop teleport to a player'}
CMDs[#CMDs + 1] = {NAME = 'unloopgoto', DESC = 'Stops teleporting you to a player'}
CMDs[#CMDs + 1] = {NAME = 'pulsetp / ptp [plr] [seconds]', DESC = 'Teleports you to a player for a specified ammount of time'}
CMDs[#CMDs + 1] = {NAME = 'clientbring / cbring [plr] (CLIENT)', DESC = 'Bring a player'}
CMDs[#CMDs + 1] = {NAME = 'loopbring [plr] [distance] [delay] (CLIENT)', DESC = 'Loop brings a player to you (useful for killing)'}
CMDs[#CMDs + 1] = {NAME = 'unloopbring [plr]', DESC = 'Undoes loopbring'}
CMDs[#CMDs + 1] = {NAME = 'freeze / fr [plr] (CLIENT)', DESC = 'Freezes a player'}
CMDs[#CMDs + 1] = {NAME = 'freezeanims', DESC = 'Freezes your animations / pauses your animations - Does not work on default animations'}
CMDs[#CMDs + 1] = {NAME = 'unfreezeanims', DESC = 'Unfreezes your animations / plays your animations'}
CMDs[#CMDs + 1] = {NAME = 'thaw / unfr [plr] (CLIENT)', DESC = 'Unfreezes a player'}
CMDs[#CMDs + 1] = {NAME = 'tpposition / tppos [X Y Z]', DESC = 'Teleports you to certain coordinates'}
CMDs[#CMDs + 1] = {NAME = 'tweentpposition / ttppos [X Y Z]', DESC = 'Tween to coordinates (bypasses some anti cheats)'}
CMDs[#CMDs + 1] = {NAME = 'offset [X Y Z]', DESC = 'Offsets you by certain coordinates'}
CMDs[#CMDs + 1] = {NAME = 'tweenoffset / toffset [X Y Z]', DESC = 'Tween offset (bypasses some anti cheats)'}
CMDs[#CMDs + 1] = {NAME = 'notifyposition / notifypos [plr]', DESC = 'Notifies you the coordinates of a character'}
CMDs[#CMDs + 1] = {NAME = 'copyposition / copypos [plr]', DESC = 'Copies the coordinates of a character to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'walktoposition / walktopos [X Y Z]', DESC = 'Makes you walk to a coordinate'}
CMDs[#CMDs + 1] = {NAME = 'spawnpoint / spawn [delay]', DESC = 'Sets a position where you will spawn'}
CMDs[#CMDs + 1] = {NAME = 'nospawnpoint / nospawn', DESC = 'Removes your custom spawn point'}
CMDs[#CMDs + 1] = {NAME = 'flashback / diedtp', DESC = 'Teleports you to where you last died'}
CMDs[#CMDs + 1] = {NAME = 'walltp', DESC = 'Teleports you above/over any wall you run into'}
CMDs[#CMDs + 1] = {NAME = 'nowalltp / unwalltp', DESC = 'Disables walltp'}
CMDs[#CMDs + 1] = {NAME = 'teleporttool / tptool', DESC = 'Gives you a teleport tool'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'logs', DESC = 'Opens the logs GUI'}
CMDs[#CMDs + 1] = {NAME = 'chatlogs / clogs', DESC = 'Log what people say or whisper'}
CMDs[#CMDs + 1] = {NAME = 'joinlogs / jlogs', DESC = 'Log when people join'}
CMDs[#CMDs + 1] = {NAME = 'chat / say [text]', DESC = 'Makes you chat a string (possible mute bypass)'}
CMDs[#CMDs + 1] = {NAME = 'spam [text]', DESC = 'Makes you spam the chat'}
CMDs[#CMDs + 1] = {NAME = 'unspam', DESC = 'Turns off spam'}
CMDs[#CMDs + 1] = {NAME = 'whisper / pm [plr] [text]', DESC = 'Makes you whisper a string to someone (possible mute bypass)'}
CMDs[#CMDs + 1] = {NAME = 'pmspam [plr] [text]', DESC = 'Makes you spam a players whispers'}
CMDs[#CMDs + 1] = {NAME = 'unpmspam [plr]', DESC = 'Turns off pm spam'}
CMDs[#CMDs + 1] = {NAME = 'spamspeed [num]', DESC = 'How quickly you spam (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'bubblechat (CLIENT)', DESC = 'Enables bubble chat for your client'}
CMDs[#CMDs + 1] = {NAME = 'unbubblechat / nobubblechat', DESC = 'Disables the bubblechat command'}
CMDs[#CMDs + 1] = {NAME = 'safechat', DESC = 'Enables safe chat'}
CMDs[#CMDs + 1] = {NAME = 'nosafechat / disablesafechat', DESC = 'Disables safechat'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'esp', DESC = 'View all players and their status'}
CMDs[#CMDs + 1] = {NAME = 'noesp / unesp', DESC = 'Removes esp'}
CMDs[#CMDs + 1] = {NAME = 'esptransparency [number]', DESC = 'Changes the transparency of esp related commands'}
CMDs[#CMDs + 1] = {NAME = 'partesp [part name]', DESC = 'Highlights a part'}
CMDs[#CMDs + 1] = {NAME = 'unpartesp / nopartesp [part name]', DESC = 'removes partesp'}
CMDs[#CMDs + 1] = {NAME = 'chams', DESC = 'ESP but without text in the way'}
CMDs[#CMDs + 1] = {NAME = 'nochams / unchams', DESC = 'Removes chams'}
CMDs[#CMDs + 1] = {NAME = 'locate [plr]', DESC = 'View a single player and their status'}
CMDs[#CMDs + 1] = {NAME = 'unlocate / nolocate [plr]', DESC = 'Removes locate'}
CMDs[#CMDs + 1] = {NAME = 'xray', DESC = 'Makes all parts in workspace transparent'}
CMDs[#CMDs + 1] = {NAME = 'unxray / noxray', DESC = 'Restores transparency'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'spectate / view [plr]', DESC = 'View a player'}
CMDs[#CMDs + 1] = {NAME = 'viewpart / viewp [part name]', DESC = 'View a part'}
CMDs[#CMDs + 1] = {NAME = 'unspectate / unview', DESC = 'Stops viewing player'}
CMDs[#CMDs + 1] = {NAME = 'freecam / fc', DESC = 'Allows you to freely move camera around the game'}
CMDs[#CMDs + 1] = {NAME = 'freecampos / fcpos [X Y Z]', DESC = 'Moves / opens freecam in a certain position'}
CMDs[#CMDs + 1] = {NAME = 'freecamwaypoint / fcwp [name]', DESC = 'Moves / opens freecam to a waypoint'}
CMDs[#CMDs + 1] = {NAME = 'freecamgoto / fcgoto / fctp [plr]', DESC = 'Moves / opens freecam to a player'}
CMDs[#CMDs + 1] = {NAME = 'unfreecam / unfc', DESC = 'Disables freecam'}
CMDs[#CMDs + 1] = {NAME = 'freecamspeed / fcspeed [num]', DESC = 'Adjusts freecam speed (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'notifyfreecamposition / notifyfcpos', DESC = 'Noitifies you your freecam coordinates'}
CMDs[#CMDs + 1] = {NAME = 'copyfreecamposition / copyfcpos', DESC = 'Copies your freecam coordinates to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'gotocamera / gotocam', DESC = 'Teleports you to the location of your camera'}
CMDs[#CMDs + 1] = {NAME = 'tweengotocam / tgotocam', DESC = 'Tweens you to the location of your camera'}
CMDs[#CMDs + 1] = {NAME = 'firstp', DESC = 'Forces camera to go into first person'}
CMDs[#CMDs + 1] = {NAME = 'thirdp', DESC = 'Allows camera to go into third person'}
CMDs[#CMDs + 1] = {NAME = 'noclipcam / nccam', DESC = 'Allows camera to go through objects like walls'}
CMDs[#CMDs + 1] = {NAME = 'maxzoom [num]', DESC = 'Maximum camera zoom'}
CMDs[#CMDs + 1] = {NAME = 'minzoom [num]', DESC = 'Minimum camera zoom'}
CMDs[#CMDs + 1] = {NAME = 'camdistance [num]', DESC = 'Changes camera distance from your player'}
CMDs[#CMDs + 1] = {NAME = 'fov [num]', DESC = 'Adjusts field of view (default is 70)'}
CMDs[#CMDs + 1] = {NAME = 'fixcam / restorecam', DESC = 'Fixes camera'}
CMDs[#CMDs + 1] = {NAME = 'enableshiftlock / enablesl', DESC = 'Enables the shift lock option'}
CMDs[#CMDs + 1] = {NAME = 'lookat [plr]', DESC = 'Moves your camera view to a player'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'btools (CLIENT)', DESC = 'Gives you building tools (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'f3x (CLIENT)', DESC = 'Gives you F3X building tools (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'partname / partpath', DESC = 'Allows you to click a part to see its path & name'}
CMDs[#CMDs + 1] = {NAME = 'delete [instance name] (CLIENT)', DESC = 'Removes any part with a certain name from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'deleteclass / dc [class name] (CLIENT)', DESC = 'Removes any part with a certain classname from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs + 1] = {NAME = 'lockworkspace / lockws', DESC = 'Locks the whole workspace'}
CMDs[#CMDs + 1] = {NAME = 'unlockworkspace / unlockws', DESC = 'Unlocks the whole workspace'}
CMDs[#CMDs + 1] = {NAME = 'invisibleparts / invisparts (CLIENT)', DESC = 'Shows invisible parts'}
CMDs[#CMDs + 1] = {NAME = 'uninvisibleparts / uninvisparts (CLIENT)', DESC = 'Makes parts affected by invisparts return to normal'}
CMDs[#CMDs + 1] = {NAME = 'deleteinvisparts / dip (CLIENT)', DESC = 'Deletes invisible parts'}
CMDs[#CMDs + 1] = {NAME = 'gotopart [part name]', DESC = 'Moves your character to a part or multiple parts'}
CMDs[#CMDs + 1] = {NAME = 'tweengotopart / tgotopart [part name]', DESC = 'Tweens your character to a part or multiple parts'}
CMDs[#CMDs + 1] = {NAME = 'gotopartclass / gpc [class name]', DESC = 'Moves your character to a part or multiple parts based on classname'}
CMDs[#CMDs + 1] = {NAME = 'tweengotopartclass / tgpc [class name]', DESC = 'Tweens your character to a part or multiple parts based on classname'}
CMDs[#CMDs + 1] = {NAME = 'gotomodel [part name]', DESC = 'Moves your character to a model or multiple models'}
CMDs[#CMDs + 1] = {NAME = 'tweengotomodel / tgotomodel [part name]', DESC = 'Tweens your character to a model or multiple models'}
CMDs[#CMDs + 1] = {NAME = 'gotopartdelay / gotomodeldelay [num]', DESC = 'Adjusts how quickly you teleport to each part (default is 0.1)'}
CMDs[#CMDs + 1] = {NAME = 'bringpart [part name] (CLIENT)', DESC = 'Moves a part or multiple parts to your character'}
CMDs[#CMDs + 1] = {NAME = 'bringpartclass / bpc [class name] (CLIENT)', DESC = 'Moves a part or multiple parts to your character based on classname'}
CMDs[#CMDs + 1] = {NAME = 'noclickdetectorlimits / nocdlimits', DESC = 'Sets all click detectors MaxActivationDistance to math.huge'}
CMDs[#CMDs + 1] = {NAME = 'fireclickdetectors / firecd [name]', DESC = 'Uses all click detectors in a game or uses the optional name'}
CMDs[#CMDs + 1] = {NAME = 'firetouchinterests / touchinterests [name]', DESC = 'Uses all touchinterests in a game or uses the optional name'}
CMDs[#CMDs + 1] = {NAME = 'noproximitypromptlimits / nopplimits', DESC = 'Sets all proximity prompts MaxActivationDistance to math.huge'}
CMDs[#CMDs + 1] = {NAME = 'fireproximityprompts / firepp [name]', DESC = 'Uses all proximity prompts in a game or uses the optional name'}
CMDs[#CMDs + 1] = {NAME = 'instantproximityprompts / instantpp', DESC = 'Disable the cooldown for proximity prompts'}
CMDs[#CMDs + 1] = {NAME = 'uninstantproximityprompts / uninstantpp', DESC = 'Undo the cooldown removal'}
CMDs[#CMDs + 1] = {NAME = 'tpunanchored / tpua [plr]', DESC = 'Teleports unanchored parts to a player'}
CMDs[#CMDs + 1] = {NAME = 'animsunanchored / freezeua', DESC = 'Freezes unanchored parts'}
CMDs[#CMDs + 1] = {NAME = 'thawunanchored / thawua / unfreezeua', DESC = 'Thaws unanchored parts'}
CMDs[#CMDs + 1] = {NAME = 'removeterrain / rterrain / noterrain', DESC = 'Removes all terrain'}
CMDs[#CMDs + 1] = {NAME = 'clearnilinstances / nonilinstances / cni', DESC = 'Removes nil instances'}
CMDs[#CMDs + 1] = {NAME = 'destroyheight / dh [num]', DESC = 'Sets FallenPartsDestroyHeight'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'fullbright / fb (CLIENT)', DESC = 'Makes the map brighter / more visible'}
CMDs[#CMDs + 1] = {NAME = 'loopfullbright / loopfb (CLIENT)', DESC = 'Makes the map brighter / more visible but looped'}
CMDs[#CMDs + 1] = {NAME = 'unloopfullbright / unloopfb', DESC = 'Unloops fullbright'}
CMDs[#CMDs + 1] = {NAME = 'ambient [num] [num] [num] (CLIENT)', DESC = 'Changes ambient'}
CMDs[#CMDs + 1] = {NAME = 'day (CLIENT)', DESC = 'Changes the time to day for the client'}
CMDs[#CMDs + 1] = {NAME = 'night (CLIENT)', DESC = 'Changes the time to night for the client'}
CMDs[#CMDs + 1] = {NAME = 'nofog (CLIENT)', DESC = 'Removes fog'}
CMDs[#CMDs + 1] = {NAME = 'brightness [num] (CLIENT)', DESC = 'Changes the brightness lighting property'}
CMDs[#CMDs + 1] = {NAME = 'globalshadows / gshadows (CLIENT)', DESC = 'Enables global shadows'}
CMDs[#CMDs + 1] = {NAME = 'noglobalshadows / nogshadows (CLIENT)', DESC = 'Disables global shadows'}
CMDs[#CMDs + 1] = {NAME = 'restorelighting / rlighting', DESC = 'Restores Lighting properties'}
CMDs[#CMDs + 1] = {NAME = 'light [radius] [brightness] (CLIENT)', DESC = 'Gives your player dynamic light'}
CMDs[#CMDs + 1] = {NAME = 'nolight / unlight', DESC = 'Removes dynamic light from your player'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'inspect / examine [plr]', DESC = 'Opens InspectMenu for a certain player'}
CMDs[#CMDs + 1] = {NAME = 'age [plr]', DESC = 'Tells you the age of a player'}
CMDs[#CMDs + 1] = {NAME = 'chatage [plr]', DESC = 'Chats the age of a player'}
CMDs[#CMDs + 1] = {NAME = 'joindate / jd [plr]', DESC = 'Tells you the date the player joined Roblox'}
CMDs[#CMDs + 1] = {NAME = 'chatjoindate / cjd [plr]', DESC = 'Chats the date the player joined Roblox'}
CMDs[#CMDs + 1] = {NAME = 'copyname / copyuser [plr]', DESC = 'Copies a players full username to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'userid / id [plr]', DESC = 'Notifies a players user ID'}
CMDs[#CMDs + 1] = {NAME = 'copyuserid / copyid [plr]', DESC = 'Copies a players user ID to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'appearanceid / aid [plr]', DESC = 'Notifies a players appearance ID'}
CMDs[#CMDs + 1] = {NAME = 'copyappearanceid / caid [plr]', DESC = 'Copies a players appearance ID to your clipboard'}
CMDs[#CMDs + 1] = {NAME = 'bang [plr] [speed]', DESC = 'owo'}
CMDs[#CMDs + 1] = {NAME = 'unbang', DESC = 'uwu'}
CMDs[#CMDs + 1] = {NAME = 'carpet [plr]', DESC = 'Be someones carpet'}
CMDs[#CMDs + 1] = {NAME = 'uncarpet', DESC = 'Undoes carpet'}
CMDs[#CMDs + 1] = {NAME = 'friend [plr]', DESC = 'Sends a friend request to certain players'}
CMDs[#CMDs + 1] = {NAME = 'unfriend [plr]', DESC = 'Unfriends certain players'}
CMDs[#CMDs + 1] = {NAME = 'headsit [plr]', DESC = 'Sit on a players head'}
CMDs[#CMDs + 1] = {NAME = 'walkto / follow [plr]', DESC = 'Follow a player'}
CMDs[#CMDs + 1] = {NAME = 'pathfindwalkto / pathfindfollow [plr]', DESC = 'Follow a player using pathfinding'}
CMDs[#CMDs + 1] = {NAME = 'pathfindwalktowaypoint / pathfindwalktowp [waypoint]', DESC = 'Walk to a waypoint using pathfinding'}
CMDs[#CMDs + 1] = {NAME = 'unwalkto / unfollow', DESC = 'Stops following a player'}
CMDs[#CMDs + 1] = {NAME = 'stareat / stare [plr]', DESC = 'Stare / look at a player'}
CMDs[#CMDs + 1] = {NAME = 'unstareat / unstare [plr]', DESC = 'Disables stareat'}
CMDs[#CMDs + 1] = {NAME = 'rolewatch [group id] [role name]', DESC = 'Notify if someone from a watched group joins the server'}
CMDs[#CMDs + 1] = {NAME = 'rolewatchstop / unrolewatch', DESC = 'Disable Rolewatch'}
CMDs[#CMDs + 1] = {NAME = 'rolewatchleave', DESC = 'Toggle if you should leave the game if someone from a watched group joins the server'}
CMDs[#CMDs + 1] = {NAME = 'attach [plr] (TOOL)', DESC = 'Attaches you to a player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'kill [plr] (TOOL)', DESC = 'Kills a player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fastkill [plr] (TOOL)', DESC = 'Kills a player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'handlekill / hkill [plr] (TOOL)', DESC = 'Kills a player using tool damage (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'bring [plr] (TOOL)', DESC = 'Brings a player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fastbring [plr] (TOOL)', DESC = 'Brings a player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'teleport / tp [plr] [plr] (TOOL)', DESC = 'Teleports a player to another player (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fastteleport / fasttp [plr] [plr] (TOOL)', DESC = 'Teleports a player to another player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs + 1] = {NAME = 'fling', DESC = 'Flings anyone you touch'}
CMDs[#CMDs + 1] = {NAME = 'unfling', DESC = 'Disables the fling command'}
CMDs[#CMDs + 1] = {NAME = 'flyfling', DESC = 'Basically the invisfling command but not invisible'}
CMDs[#CMDs + 1] = {NAME = 'unflyfling', DESC = 'Disables the flyfling command'}
CMDs[#CMDs + 1] = {NAME = 'invisfling', DESC = 'Enables invisible fling'}
CMDs[#CMDs + 1] = {NAME = 'loopoof', DESC = 'Loops everyones character sounds (everyone can hear)'}
CMDs[#CMDs + 1] = {NAME = 'unloopoof', DESC = 'Stops the oof chaos'}
CMDs[#CMDs + 1] = {NAME = 'muteboombox [plr]', DESC = 'Mutes someones boombox'}
CMDs[#CMDs + 1] = {NAME = 'unmuteboombox [plr]', DESC = 'Unmutes someones boombox'}
CMDs[#CMDs + 1] = {NAME = 'hitbox [plr] [size]', DESC = 'Expands the hitbox for players HumanoidRootPart (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'headsize [plr] [size]', DESC = 'Expands the head size for players Head (default is 1)'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'reset', DESC = 'Resets your character normally'}
CMDs[#CMDs + 1] = {NAME = 'respawn', DESC = 'Respawns you'}
CMDs[#CMDs + 1] = {NAME = 'refresh / re', DESC = 'Respawns and brings you back to the same position'}
CMDs[#CMDs + 1] = {NAME = 'god', DESC = 'Makes your character difficult to kill in most games'}
CMDs[#CMDs + 1] = {NAME = 'invisible / invis', DESC = 'Makes you invisible to other players'}
CMDs[#CMDs + 1] = {NAME = 'visible / vis', DESC = 'Makes you visible to other players'}
CMDs[#CMDs + 1] = {NAME = 'toolinvisible / toolinvis / tinvis', DESC = 'Makes you invisible to other players and able to use tools'}
CMDs[#CMDs + 1] = {NAME = 'speed / ws / walkspeed [num]', DESC = 'Change your walkspeed'}
CMDs[#CMDs + 1] = {NAME = 'spoofspeed / spoofws [num]', DESC = 'Spoofs your WalkSpeed on the Client'}
CMDs[#CMDs + 1] = {NAME = 'loopspeed / loopws [num]', DESC = 'Loops your walkspeed'}
CMDs[#CMDs + 1] = {NAME = 'unloopspeed / unloopws', DESC = 'Turns off loopspeed'}
CMDs[#CMDs + 1] = {NAME = 'hipheight / hheight [num]', DESC = 'Adjusts hip height'}
CMDs[#CMDs + 1] = {NAME = 'jumppower / jpower / jp [num]', DESC = 'Change a players jump height'}
CMDs[#CMDs + 1] = {NAME = 'spoofjumppower / spoofjp [num]', DESC = 'Spoofs your JumpPower on the Client'}
CMDs[#CMDs + 1] = {NAME = 'loopjumppower / loopjp [num]', DESC = 'Loops your jump height'}
CMDs[#CMDs + 1] = {NAME = 'unloopjumppower / unloopjp', DESC = 'Turns off loopjumppower'}
CMDs[#CMDs + 1] = {NAME = 'maxslopeangle / msa [num]', DESC = 'Adjusts MaxSlopeAngle'}
CMDs[#CMDs + 1] = {NAME = 'gravity / grav [num] (CLIENT)', DESC = 'Change your gravity'}
CMDs[#CMDs + 1] = {NAME = 'sit', DESC = 'Makes your character sit'}
CMDs[#CMDs + 1] = {NAME = 'lay / laydown', DESC = 'Makes your character lay down'}
CMDs[#CMDs + 1] = {NAME = 'sitwalk', DESC = 'Makes your character sit while still being able to walk'}
CMDs[#CMDs + 1] = {NAME = 'nosit', DESC = 'Prevents your character from sitting'}
CMDs[#CMDs + 1] = {NAME = 'unnosit', DESC = 'Disables nosit'}
CMDs[#CMDs + 1] = {NAME = 'jump', DESC = 'Makes your character jump'}
CMDs[#CMDs + 1] = {NAME = 'infinitejump / infjump', DESC = 'Allows you to jump before hitting the ground'}
CMDs[#CMDs + 1] = {NAME = 'uninfinitejump / uninfjump', DESC = 'Disables infjump'}
CMDs[#CMDs + 1] = {NAME = 'flyjump', DESC = 'Allows you to hold space to fly up'}
CMDs[#CMDs + 1] = {NAME = 'unflyjump', DESC = 'Disables flyjump'}
CMDs[#CMDs + 1] = {NAME = 'autojump / ajump', DESC = 'Automatically jumps when you run into an object'}
CMDs[#CMDs + 1] = {NAME = 'unautojump / unajump', DESC = 'Disables autojump'}
CMDs[#CMDs + 1] = {NAME = 'edgejump / ejump', DESC = 'Automatically jumps when you get to the edge of an object'}
CMDs[#CMDs + 1] = {NAME = 'unedgejump / unejump', DESC = 'Disables edgejump'}
CMDs[#CMDs + 1] = {NAME = 'platformstand / stun', DESC = 'Enables PlatformStand'}
CMDs[#CMDs + 1] = {NAME = 'unplatformstand / unstun', DESC = 'Disables PlatformStand'}
CMDs[#CMDs + 1] = {NAME = 'norotate / noautorotate', DESC = 'Disables AutoRotate'}
CMDs[#CMDs + 1] = {NAME = 'unnorotate / autorotate', DESC = 'Enables AutoRotate'}
CMDs[#CMDs + 1] = {NAME = 'enablestate [StateType]', DESC = 'Enables a humanoid state type'}
CMDs[#CMDs + 1] = {NAME = 'disablestate [StateType]', DESC = 'Disables a humanoid state type'}
CMDs[#CMDs + 1] = {NAME = 'team [team name] (CLIENT)', DESC = 'Changes your team. Sometimes fools localscripts.'}
CMDs[#CMDs + 1] = {NAME = 'nobillboardgui / nobgui / noname', DESC = 'Removes billboard and surface guis from your players (i.e. name guis at cafes)'}
CMDs[#CMDs + 1] = {NAME = 'loopnobgui / loopnoname', DESC = 'Loop removes billboard and surface guis from your players (i.e. name guis at cafes)'}
CMDs[#CMDs + 1] = {NAME = 'unloopnobgui / unloopnoname', DESC = 'Disables loopnobgui'}
CMDs[#CMDs + 1] = {NAME = 'nohead / headless', DESC = 'Removes your head (uses simulation radius)'}
CMDs[#CMDs + 1] = {NAME = 'noarms', DESC = 'Removes your arms'}
CMDs[#CMDs + 1] = {NAME = 'nolegs', DESC = 'Removes your legs'}
CMDs[#CMDs + 1] = {NAME = 'nolimbs', DESC = 'Removes your limbs'}
CMDs[#CMDs + 1] = {NAME = 'naked (CLIENT)', DESC = 'Removes your clothing'}
CMDs[#CMDs + 1] = {NAME = 'noface / removeface', DESC = 'Removes your face'}
CMDs[#CMDs + 1] = {NAME = 'blockhead', DESC = 'Turns your head into a block'}
CMDs[#CMDs + 1] = {NAME = 'blockhats', DESC = 'Turns your hats into blocks'}
CMDs[#CMDs + 1] = {NAME = 'blocktool', DESC = 'Turns the currently selected tool into a block'}
CMDs[#CMDs + 1] = {NAME = 'creeper', DESC = 'Makes you look like a creeper'}
CMDs[#CMDs + 1] = {NAME = 'drophats', DESC = 'Drops your hats'}
CMDs[#CMDs + 1] = {NAME = 'nohats / deletehats / rhats', DESC = 'Deletes your hats'}
CMDs[#CMDs + 1] = {NAME = 'hatspin / spinhats', DESC = 'Spins your characters accessories'}
CMDs[#CMDs + 1] = {NAME = 'unhatspin / unspinhats', DESC = 'Undoes spinhats'}
CMDs[#CMDs + 1] = {NAME = 'clearhats / cleanhats', DESC = 'Clears hats in the workspace'}
CMDs[#CMDs + 1] = {NAME = 'chardelete / cd [instance name]', DESC = 'Removes any part with a certain name from your character'}
CMDs[#CMDs + 1] = {NAME = 'chardeleteclass / cdc [class name]', DESC = 'Removes any part with a certain classname from your character'}
CMDs[#CMDs + 1] = {NAME = 'deletevelocity / dv / removeforces', DESC = 'Removes any velocity / force instances in your character'}
CMDs[#CMDs + 1] = {NAME = 'weaken [num]', DESC = 'Makes your character less dense'}
CMDs[#CMDs + 1] = {NAME = 'unweaken', DESC = 'Sets your characters CustomPhysicalProperties to default'}
CMDs[#CMDs + 1] = {NAME = 'strengthen [num]', DESC = 'Makes your character more dense (CustomPhysicalProperties)'}
CMDs[#CMDs + 1] = {NAME = 'unstrengthen', DESC = 'Sets your characters CustomPhysicalProperties to default'}
CMDs[#CMDs + 1] = {NAME = 'breakvelocity', DESC = 'Sets your characters velocity to 0'}
CMDs[#CMDs + 1] = {NAME = 'spin [speed]', DESC = 'Spins your character'}
CMDs[#CMDs + 1] = {NAME = 'unspin', DESC = 'Disables spin'}
CMDs[#CMDs + 1] = {NAME = 'vr', DESC = 'Loads CLOVR by Abacaxl'}
CMDs[#CMDs + 1] = {NAME = 'split', DESC = 'Splits your character in half'}
CMDs[#CMDs + 1] = {NAME = 'nilchar', DESC = 'Sets your characters parent to nil'}
CMDs[#CMDs + 1] = {NAME = 'unnilchar / nonilchar', DESC = 'Sets your characters parent to workspace'}
CMDs[#CMDs + 1] = {NAME = 'noroot / removeroot / rroot', DESC = 'Removes your characters HumanoidRootPart'}
CMDs[#CMDs + 1] = {NAME = 'replaceroot', DESC = 'Replaces your characters HumanoidRootPart'}
CMDs[#CMDs + 1] = {NAME = 'clearcharappearance / clearchar / clrchar', DESC = 'Removes all accessory, shirt, pants, charactermesh, and bodycolors'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'animation / anim [ID] [speed]', DESC = 'Makes your character perform an animation (must be by roblox to replicate)'}
CMDs[#CMDs + 1] = {NAME = 'dance', DESC = 'Makes you  d a n c e'}
CMDs[#CMDs + 1] = {NAME = 'undance', DESC = 'Stops dance animations'}
CMDs[#CMDs + 1] = {NAME = 'spasm', DESC = 'Makes you  c r a z y'}
CMDs[#CMDs + 1] = {NAME = 'unspasm', DESC = 'Stops spasm'}
CMDs[#CMDs + 1] = {NAME = 'headthrow', DESC = 'Simply makes you throw your head'}
CMDs[#CMDs + 1] = {NAME = 'noanim', DESC = 'Disables your animations'}
CMDs[#CMDs + 1] = {NAME = 'reanim', DESC = 'Restores your animations'}
CMDs[#CMDs + 1] = {NAME = 'animspeed [num]', DESC = 'Changes the speed of your current animation'}
CMDs[#CMDs + 1] = {NAME = 'copyanimation / copyanim / copyemote [plr]', DESC = 'Copies someone elses animation'}
CMDs[#CMDs + 1] = {NAME = 'loopanimation / loopanim', DESC = 'Loops your current animation'}
CMDs[#CMDs + 1] = {NAME = 'stopanimations / stopanims', DESC = 'Stops running animations'}
CMDs[#CMDs + 1] = {NAME = 'refreshanimations / refreshanims', DESC = 'Refreshes animations'}
CMDs[#CMDs + 1] = {NAME = 'allowcustomanim / allowcustomanimations', DESC = 'Lets you use custom animation packs instead'}
CMDs[#CMDs + 1] = {NAME = 'unallowcustomanim / unallowcustomanimations', DESC = 'Doesn\'t let you use custom animation packs instead'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'autoclick [click delay] [release delay]', DESC = 'Automatically clicks your mouse with a set delay'}
CMDs[#CMDs + 1] = {NAME = 'unautoclick / noautoclick', DESC = 'Turns off autoclick'}
CMDs[#CMDs + 1] = {NAME = 'autokeypress [key] [down delay] [up delay]', DESC = 'Automatically presses a key with a set delay'}
CMDs[#CMDs + 1] = {NAME = 'unautokeypress', DESC = 'Stops autokeypress'}
CMDs[#CMDs + 1] = {NAME = 'hovername', DESC = 'Shows a players username when your mouse is hovered over them'}
CMDs[#CMDs + 1] = {NAME = 'unhovername / nohovername', DESC = 'Turns off hovername'}
CMDs[#CMDs + 1] = {NAME = 'mousesensitivity / ms [0-10]', DESC = 'Sets your mouse sensitivity (affects first person and right click drag) (default is 1)'}
CMDs[#CMDs + 1] = {NAME = 'clickdelete', DESC = 'Go to settings>Keybinds>Add for clicktp'}
CMDs[#CMDs + 1] = {NAME = 'clickteleport', DESC = 'Go to settings>Keybinds>Add for click tp'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'tools', DESC = 'Copies tools from ReplicatedStorage and Lighting'}
CMDs[#CMDs + 1] = {NAME = 'notools / removetools / deletetools', DESC = 'Removes tools from character and backpack'}
CMDs[#CMDs + 1] = {NAME = 'deleteselectedtool / dst', DESC = 'Removes any currently selected tools'}
CMDs[#CMDs + 1] = {NAME = 'grabtools', DESC = 'Automatically get tools that are dropped'}
CMDs[#CMDs + 1] = {NAME = 'ungrabtools / nograbtools', DESC = 'Disables grabtools'}
CMDs[#CMDs + 1] = {NAME = 'copytools [plr] (CLIENT)', DESC = 'Copies a players tools'}
CMDs[#CMDs + 1] = {NAME = 'dupetools / clonetools [num]', DESC = 'Duplicates your inventory tools a set ammount of times'}
CMDs[#CMDs + 1] = {NAME = 'givetool / givetools', DESC = 'Gives all the tools you\'re holding to [plr] using the attach method.'}
CMDs[#CMDs + 1] = {NAME = 'droptools', DESC = 'Drops your tools'}
CMDs[#CMDs + 1] = {NAME = 'droppabletools', DESC = 'Makes your tools droppable'}
CMDs[#CMDs + 1] = {NAME = 'equiptools', DESC = 'Equips every tool in your inventory at once'}
CMDs[#CMDs + 1] = {NAME = 'unequiptools', DESC = 'Unequips every tool you are currently holding at once'}
CMDs[#CMDs + 1] = {NAME = 'removespecifictool [name]', DESC = 'Automatically remove a specific tool from your inventory'}
CMDs[#CMDs + 1] = {NAME = 'unremovespecifictool [name]', DESC = 'Stops removing a specific tool from your inventory'}
CMDs[#CMDs + 1] = {NAME = 'clearremovespecifictool', DESC = 'Stop removing all specific tools from your inventory'}
CMDs[#CMDs + 1] = {NAME = 'reach [num]', DESC = 'Increases the hitbox of your held tool'}
CMDs[#CMDs + 1] = {NAME = 'unreach / noreach', DESC = 'Turns off reach'}
CMDs[#CMDs + 1] = {NAME = 'grippos [X Y Z]', DESC = 'Changes your current tools grip position'}
CMDs[#CMDs + 1] = {NAME = 'usetools [ammount] [delay]', DESC = 'Activates all tools in your backpack at the same time'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'addalias [cmd] [alias]', DESC = 'Adds an alias to a command'}
CMDs[#CMDs + 1] = {NAME = 'removealias [alias]', DESC = 'Removes a custom alias'}
CMDs[#CMDs + 1] = {NAME = 'clraliases', DESC = 'Removes all custom aliases'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'addplugin / plugin [name]', DESC = 'Add a plugin via command'}
CMDs[#CMDs + 1] = {NAME = 'removeplugin / deleteplugin [name]', DESC = 'Remove a plugin via command'}
CMDs[#CMDs + 1] = {NAME = 'reloadplugin [name]', DESC = 'Reloads a plugin'}
CMDs[#CMDs + 1] = {NAME = '', DESC = ''}
CMDs[#CMDs + 1] = {NAME = 'breakloops / break (cmd loops)', DESC = 'Stops any cmd loops (;100^1^cmd)'}
CMDs[#CMDs + 1] = {NAME = 'removecmd / deletecmd', DESC = 'Removes a command until the admin is reloaded'}
CMDs[#CMDs + 1] = {NAME = 'tpwalk / teleportwalk [num]', DESC = 'Teleports you to your move direction'}
CMDs[#CMDs + 1] = {NAME = 'untpwalk / unteleportwalk', DESC = 'Undoes tpwalk / teleportwalk'}
CMDs[#CMDs + 1] = {NAME = 'notifyping / ping', DESC = 'Notify yourself your ping'}
CMDs[#CMDs + 1] = {NAME = 'trip', DESC = 'Makes your character fall over'}
CMDs[#CMDs + 1] = {NAME = 'norender', DESC = 'Disable 3d Rendering to decrease the amount of CPU the client uses'}
CMDs[#CMDs + 1] = {NAME = 'render', DESC = 'Enable 3d Rendering'}
CMDs[#CMDs + 1] = {NAME = 'use2022materials / 2022materials', DESC = 'Enables 2022 material textures'}
CMDs[#CMDs + 1] = {NAME = 'unuse2022materials / un2022materials', DESC = 'Disables 2022 material textures'}
CMDs[#CMDs + 1] = {NAME = 'promptr6', DESC = 'Prompts the game to switch your rig type to R6'}
CMDs[#CMDs + 1] = {NAME = 'promptr15', DESC = 'Prompts the game to switch your rig type to R15'}
wait()

for i = 1, #CMDs do
	local newcmd = Example:Clone()
	newcmd.Parent = CMDsF
	newcmd.Visible = false
	newcmd.Text = CMDs[i].NAME
	newcmd.Name = "CMD"
	table.insert(text1, newcmd)
	if CMDs[i].DESC ~= "" then
		newcmd:SetAttribute("Title", CMDs[i].NAME)
		newcmd:SetAttribute("Desc", CMDs[i].DESC)
		newcmd.MouseButton1Down:Connect(function()
			if not IsOnMobile and newcmd.Visible and newcmd.TextTransparency == 0 then
				local currentText = Cmdbar.Text
				Cmdbar:CaptureFocus()
				autoComplete(newcmd.Text, currentText)
				maximizeHolder()
			end
		end)
	end
end

IndexContents("", true)

function checkTT()
	local t
	local guisAtPosition = COREGUI:GetGuiObjectsAtPosition(IYMouse.X, IYMouse.Y)

	for _, gui in pairs(guisAtPosition) do
		if gui.Parent == CMDsF then
			t = gui
		end
	end

	if t ~= nil and t:GetAttribute("Title") ~= nil then
		local x = IYMouse.X
		local y = IYMouse.Y
		local xP
		local yP
		if IYMouse.X > 200 then
			xP = x - 201
		else
			xP = x + 21
		end
		if IYMouse.Y > (IYMouse.ViewSizeY-96) then
			yP = y - 97
		else
			yP = y
		end
		Tooltip.Position = UDim2.new(0, xP, 0, yP)
		Description.Text = t:GetAttribute("Desc")
		if t:GetAttribute("Title") ~= nil then
			Title_3.Text = t:GetAttribute("Title")
		else
			Title_3.Text = ''
		end
		Tooltip.Visible = true
	else
		Tooltip.Visible = false
	end
end

function FindInTable(tbl,val)
	if tbl == nil then return false end
	for _,v in pairs(tbl) do
		if v == val then return true end
	end 
	return false
end

function GetInTable(Table, Name)
	for i = 1, #Table do
		if Table[i] == Name then
			return i
		end
	end
	return false
end

function respawn(plr)
	if invisRunning then TurnVisible() end
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end

local refreshCmd = false
function refresh(plr)
	refreshCmd = true
	local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawn(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
		refreshCmd = false
	end)
end

local lastDeath

function onDied()
	task.spawn(function()
		if pcall(function() Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') end) and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
			Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
				if getRoot(Players.LocalPlayer.Character) then
					lastDeath = getRoot(Players.LocalPlayer.Character).CFrame
				end
			end)
		else
			wait(2)
			onDied()
		end
	end)
end

Clip = true
spDelay = 0.1
Players.LocalPlayer.CharacterAdded:Connect(function()
	NOFLY()
	Floating = false

	if not Clip then
		execCmd('clip')
	end

	repeat wait() until getRoot(Players.LocalPlayer.Character)

	pcall(function()
		if spawnpoint and not refreshCmd and spawnpos ~= nil then
			wait(spDelay)
			getRoot(Players.LocalPlayer.Character).CFrame = spawnpos
		end
	end)

	onDied()
end)

onDied()

function getstring(begin)
	local start = begin-1
	local AA = '' for i,v in pairs(cargs) do
		if i > start then
			if AA ~= '' then
				AA = AA .. ' ' .. v
			else
				AA = AA .. v
			end
		end
	end
	return AA
end

findCmd=function(cmd_name)
	for i,v in pairs(cmds)do
		if v.NAME:lower()==cmd_name:lower() or FindInTable(v.ALIAS,cmd_name:lower()) then
			return v
		end
	end
	return customAlias[cmd_name:lower()]
end

function splitString(str,delim)
	local broken = {}
	if delim == nil then delim = "," end
	for w in string.gmatch(str,"[^"..delim.."]+") do
		table.insert(broken,w)
	end
	return broken
end

cmdHistory = {}
local lastCmds = {}
local historyCount = 0
local split=" "
local lastBreakTime = 0
function execCmd(cmdStr,speaker,store)
	cmdStr = cmdStr:gsub("%s+$","")
	task.spawn(function()
		local rawCmdStr = cmdStr
		cmdStr = string.gsub(cmdStr,"\\\\","%%BackSlash%%")
		local commandsToRun = splitString(cmdStr,"\\")
		for i,v in pairs(commandsToRun) do
			v = string.gsub(v,"%%BackSlash%%","\\")
			local x,y,num = v:find("^(%d+)%^")
			local cmdDelay = 0
			local infTimes = false
			if num then
				v = v:sub(y+1)
				local x,y,del = v:find("^([%d%.]+)%^")
				if del then
					v = v:sub(y+1)
					cmdDelay = tonumber(del) or 0
				end
			else
				local x,y = v:find("^inf%^")
				if x then
					infTimes = true
					v = v:sub(y+1)
					local x,y,del = v:find("^([%d%.]+)%^")
					if del then
						v = v:sub(y+1)
						del = tonumber(del) or 1
						cmdDelay = (del > 0 and del or 1)
					else
						cmdDelay = 1
					end
				end
			end
			num = tonumber(num or 1)

			if v:sub(1,1) == "!" then
				local chunks = splitString(v:sub(2),split)
				if chunks[1] and lastCmds[chunks[1]] then v = lastCmds[chunks[1]] end
			end

			local args = splitString(v,split)
			local cmdName = args[1]
			local cmd = findCmd(cmdName)
			if cmd then
				table.remove(args,1)
				cargs = args
				if not speaker then speaker = Players.LocalPlayer end
				if store then
					if speaker == Players.LocalPlayer then
						if cmdHistory[1] ~= rawCmdStr and rawCmdStr:sub(1,11) ~= 'lastcommand' and rawCmdStr:sub(1,7) ~= 'lastcmd' then
							table.insert(cmdHistory,1,rawCmdStr)
						end
					end
					if #cmdHistory > 30 then table.remove(cmdHistory) end

					lastCmds[cmdName] = v
				end
				local cmdStartTime = tick()
				if infTimes then
					while lastBreakTime < cmdStartTime do
						local success,err = pcall(cmd.FUNC,args, speaker)
						if not success and _G.IY_DEBUG then
							warn("Command Error:", cmdName, err)
						end
						wait(cmdDelay)
					end
				else
					for rep = 1,num do
						if lastBreakTime > cmdStartTime then break end
						local success,err = pcall(function()
							cmd.FUNC(args, speaker)
						end)
						if not success and _G.IY_DEBUG then
							warn("Command Error:", cmdName, err)
						end
						if cmdDelay ~= 0 then wait(cmdDelay) end
					end
				end
			end
		end
	end)
end	

function addcmd(name,alias,func,plgn)
	cmds[#cmds+1]=
		{
			NAME=name;
			ALIAS=alias or {};
			FUNC=func;
			PLUGIN=plgn;
		}
end

function removecmd(cmd)
	if cmd ~= " " then
		for i = #cmds,1,-1 do
			if cmds[i].NAME == cmd or FindInTable(cmds[i].ALIAS,cmd) then
				table.remove(cmds, i)
				for a,c in pairs(CMDsF:GetChildren()) do
					if string.find(c.Text, "^"..cmd.."$") or string.find(c.Text, "^"..cmd.." ") or string.find(c.Text, " "..cmd.."$") or string.find(c.Text, " "..cmd.." ") then
						c.TextTransparency = 0.7
						c.MouseButton1Click:Connect(function()
							notify(c.Text, "Command has been disabled by you or a plugin")
						end)
					end
				end
			end
		end
	end
end

function addbind(cmd,key,iskeyup,toggle)
	if toggle then
		binds[#binds+1]=
			{
				COMMAND=cmd;
				KEY=key;
				ISKEYUP=iskeyup;
				TOGGLE = toggle;
			}
	else
		binds[#binds+1]=
			{
				COMMAND=cmd;
				KEY=key;
				ISKEYUP=iskeyup;
			}
	end
end

function addcmdtext(text,name,desc)
	local newcmd = Example:Clone()
	local tooltipText = tostring(text)
	local tooltipDesc = tostring(desc)
	newcmd.Parent = CMDsF
	newcmd.Visible = false
	newcmd.Text = text
	newcmd.Name = 'PLUGIN_'..name
	table.insert(text1,newcmd)
	if desc and desc ~= '' then
		newcmd:SetAttribute("Title", tooltipText)
		newcmd:SetAttribute("Desc", tooltipDesc)
		newcmd.MouseButton1Down:Connect(function()
			if newcmd.Visible and newcmd.TextTransparency == 0 then
				Cmdbar:CaptureFocus()
				autoComplete(newcmd.Text)
				maximizeHolder()
			end
		end)
	end
end

local WorldToScreen = function(Object)
	local ObjectVector = workspace.CurrentCamera:WorldToScreenPoint(Object.Position)
	return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

local MousePositionToVector2 = function()
	return Vector2.new(IYMouse.X, IYMouse.Y)
end

local GetClosestPlayerFromCursor = function()
	local found = nil
	local ClosestDistance = math.huge
	for i, v in pairs(Players:GetPlayers()) do
		if v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass("Humanoid") then
			for k, x in pairs(v.Character:GetChildren()) do
				if string.find(x.Name, "Torso") then
					local Distance = (WorldToScreen(x) - MousePositionToVector2()).Magnitude
					if Distance < ClosestDistance then
						ClosestDistance = Distance
						found = v
					end
				end
			end
		end
	end
	return found
end

SpecialPlayerCases = {
	["all"] = function(speaker) return Players:GetPlayers() end,
	["others"] = function(speaker)
		local plrs = {}
		for i,v in pairs(Players:GetPlayers()) do
			if v ~= speaker then
				table.insert(plrs,v)
			end
		end
		return plrs
	end,
	["me"] = function(speaker)return {speaker} end,
	["#(%d+)"] = function(speaker,args,currentList)
		local returns = {}
		local randAmount = tonumber(args[1])
		local players = {unpack(currentList)}
		for i = 1,randAmount do
			if #players == 0 then break end
			local randIndex = math.random(1,#players)
			table.insert(returns,players[randIndex])
			table.remove(players,randIndex)
		end
		return returns
	end,
	["random"] = function(speaker,args,currentList)
		local players = Players:GetPlayers()
		local localplayer = Players.LocalPlayer
		table.remove(players, table.find(players, localplayer))
		return {players[math.random(1,#players)]}
	end,
	["%%(.+)"] = function(speaker,args)
		local returns = {}
		local team = args[1]
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team and string.sub(string.lower(plr.Team.Name),1,#team) == string.lower(team) then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["allies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["enemies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["team"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonteam"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["friends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonfriends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if not plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["guests"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Guest then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["bacons"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character:FindFirstChild('Pal Hair') or plr.Character:FindFirstChild('Kate Hair') then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["age(%d+)"] = function(speaker,args)
		local returns = {}
		local age = tonumber(args[1])
		if not age == nil then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.AccountAge <= age then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nearest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local lowest = math.huge
		local NearestPlayer = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance < lowest then
					lowest = distance
					NearestPlayer = {plr}
				end
			end
		end
		return NearestPlayer
	end,
	["farthest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local highest = 0
		local Farthest = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance > highest then
					highest = distance
					Farthest = {plr}
				end
			end
		end
		return Farthest
	end,
	["group(%d+)"] = function(speaker,args)
		local returns = {}
		local groupID = tonumber(args[1])
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsInGroup(groupID) then  
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["alive"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["dead"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if (not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid")) or plr.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["rad(%d+)"] = function(speaker,args)
		local returns = {}
		local radius = tonumber(args[1])
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and getRoot(plr.Character) then
				local magnitude = (getRoot(plr.Character).Position-getRoot(speakerChar).Position).magnitude
				if magnitude <= radius then table.insert(returns,plr) end
			end
		end
		return returns
	end,
	["cursor"] = function(speaker)
		local plrs = {}
		local v = GetClosestPlayerFromCursor()
		if v ~= nil then table.insert(plrs, v) end
		return plrs
	end,
	["npcs"] = function(speaker,args)
		local returns = {}
		for _, v in pairs(workspace:GetDescendants()) do
			if v:IsA("Model") and getRoot(v) and v:FindFirstChildWhichIsA("Humanoid") and Players:GetPlayerFromCharacter(v) == nil then
				local clone = Instance.new("Player")
				clone.Name = v.Name .. " - " .. v:FindFirstChildWhichIsA("Humanoid").DisplayName
				clone.Character = v
				table.insert(returns, clone)
			end
		end
		return returns
	end,
}

function toTokens(str)
	local tokens = {}
	for op,name in string.gmatch(str,"([+-])([^+-]+)") do
		table.insert(tokens,{Operator = op,Name = name})
	end
	return tokens
end

function onlyIncludeInTable(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

function removeTableMatches(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

function getPlayersByName(Name)
	local Name,Len,Found = string.lower(Name),#Name,{}
	for _,v in pairs(Players:GetPlayers()) do
		if Name:sub(0,1) == '@' then
			if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
				table.insert(Found,v)
			end
		else
			if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
				table.insert(Found,v)
			end
		end
	end
	return Found
end

function getPlayer(list,speaker)
	if list == nil then return {speaker.Name} end
	local nameList = splitString(list,",")

	local foundList = {}

	for _,name in pairs(nameList) do
		if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
		local tokens = toTokens(name)
		local initialPlayers = Players:GetPlayers()

		for i,v in pairs(tokens) do
			if v.Operator == "+" then
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = onlyIncludeInTable(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
				end
			else
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = removeTableMatches(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
				end
			end
		end

		for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
	end

	local foundNames = {}
	for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end

	return foundNames
end

getprfx=function(strn)
	if strn:sub(1,string.len(prefix))==prefix then return{'cmd',string.len(prefix)+1}
	end return
end

function do_exec(str, plr)
	str = str:gsub('/e ', '')
	local t = getprfx(str)
	if not t then return end
	str = str:sub(t[2])
	if t[1]=='cmd' then
		execCmd(str, plr, true)
		IndexContents('',true,false,true)
		CMDsF.CanvasPosition = canvasPos
	end
end

lastTextBoxString,lastTextBoxCon,lastEnteredString = nil,nil,nil

UserInputService.TextBoxFocused:Connect(function(obj)
	if lastTextBoxCon then lastTextBoxCon:Disconnect() end
	if obj == Cmdbar then lastTextBoxString = nil return end
	lastTextBoxString = obj.Text
	lastTextBoxCon = obj:GetPropertyChangedSignal("Text"):Connect(function()
		if not (UserInputService:IsKeyDown(Enum.KeyCode.Return) or UserInputService:IsKeyDown(Enum.KeyCode.KeypadEnter)) then
			lastTextBoxString = obj.Text
		end
	end)
end)

UserInputService.InputBegan:Connect(function(input,gameProcessed)
	if gameProcessed then
		if Cmdbar and Cmdbar:IsFocused() then
			if input.KeyCode == Enum.KeyCode.Up then
				historyCount = historyCount + 1
				if historyCount > #cmdHistory then historyCount = #cmdHistory end
				Cmdbar.Text = cmdHistory[historyCount] or ""
				Cmdbar.CursorPosition = 1020
			elseif input.KeyCode == Enum.KeyCode.Down then
				historyCount = historyCount - 1
				if historyCount < 0 then historyCount = 0 end
				Cmdbar.Text = cmdHistory[historyCount] or ""
				Cmdbar.CursorPosition = 1020
			end
		elseif input.KeyCode == Enum.KeyCode.Return or input.KeyCode == Enum.KeyCode.KeypadEnter then
			lastEnteredString = lastTextBoxString
		end
	end
end)

Players.LocalPlayer.Chatted:Connect(function()
	wait()
	if lastEnteredString then
		local message = lastEnteredString
		lastEnteredString = nil
		do_exec(message, Players.LocalPlayer)
	end
end)

Cmdbar.PlaceholderText = "Command Bar ("..prefix..")"
Cmdbar:GetPropertyChangedSignal("Text"):Connect(function()
	if Cmdbar:IsFocused() then
		IndexContents(Cmdbar.Text,true,true)
	end
end)

local tabComplete = nil
tabAllowed = true
Cmdbar.FocusLost:Connect(function(enterpressed)
	if enterpressed then
		local cmdbarText = Cmdbar.Text:gsub("^"..prefix,"")
		execCmd(cmdbarText,Players.LocalPlayer,true)
	end
	if tabComplete then tabComplete:Disconnect() end
	wait()
	if not Cmdbar:IsFocused() then
		Cmdbar.Text = ""
		IndexContents('',true,false,true)
		if SettingsOpen == true then
			wait(0.2)
			Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.2, true, nil)
			CMDsF.Visible = false
		end
	end
	CMDsF.CanvasPosition = canvasPos
end)

Cmdbar.Focused:Connect(function()
	historyCount = 0
	canvasPos = CMDsF.CanvasPosition
	if SettingsOpen == true then
		wait(0.2)
		CMDsF.Visible = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 220), "InOut", "Quart", 0.2, true, nil)
	end
	tabComplete = UserInputService.InputBegan:Connect(function(input,gameProcessed)
		if Cmdbar:IsFocused() then
			if tabAllowed == true and input.KeyCode == Enum.KeyCode.Tab and topCommand ~= nil then
				autoComplete(topCommand)
			end
		else
			tabComplete:Disconnect()
		end
	end)
end)

ESPenabled = false
CHMSenabled = false

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function ESP(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_ESP'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local espLoopFunc
				local teamChange
				local addedFunc
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						addedFunc:Disconnect()
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
				local function espLoop()
					if COREGUI:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							TextLabel.Text = 'Name: '..plr.Name..' | Health: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Studs: '..pos
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						espLoopFunc:Disconnect()
					end
				end
				espLoopFunc = RunService.RenderStepped:Connect(espLoop)
			end
		end
	end)
end

function CHMS(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_CHMS' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_CHMS') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_CHMS'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			local addedFunc
			local teamChange
			local CHMSremoved
			addedFunc = plr.CharacterAdded:Connect(function()
				if CHMSenabled then
					ESPholder:Destroy()
					teamChange:Disconnect()
					repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
					CHMS(plr)
					addedFunc:Disconnect()
				else
					teamChange:Disconnect()
					addedFunc:Disconnect()
				end
			end)
			teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
				if CHMSenabled then
					ESPholder:Destroy()
					addedFunc:Disconnect()
					repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
					CHMS(plr)
					teamChange:Disconnect()
				else
					teamChange:Disconnect()
				end
			end)
			CHMSremoved = ESPholder.AncestryChanged:Connect(function()
				teamChange:Disconnect()
				addedFunc:Disconnect()
				CHMSremoved:Disconnect()
			end)
		end
	end)
end

function Locate(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_LC' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_LC') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_LC'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local lcLoopFunc
				local addedFunc
				local teamChange
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPholder ~= nil and ESPholder.Parent ~= nil then
						lcLoopFunc:Disconnect()
						teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						Locate(plr)
						addedFunc:Disconnect()
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPholder ~= nil and ESPholder.Parent ~= nil then
						lcLoopFunc:Disconnect()
						addedFunc:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						Locate(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
				local function lcLoop()
					if COREGUI:FindFirstChild(plr.Name..'_LC') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							TextLabel.Text = 'Name: '..plr.Name..' | Health: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' | Studs: '..pos
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						lcLoopFunc:Disconnect()
					end
				end
				lcLoopFunc = RunService.RenderStepped:Connect(lcLoop)
			end
		end
	end)
end

local bindsGUI = KeybindEditor
local awaitingInput = false
local keySelected = false

function refreshbinds()
	if Holder_2 then
		Holder_2:ClearAllChildren()
		Holder_2.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #binds do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newbind = Example_2:Clone()
			newbind.Parent = Holder_2
			newbind.Visible = true
			newbind.Position = UDim2.new(0,0,0, Position + 5)
			table.insert(shade2,newbind)
			table.insert(shade2,newbind.Text)
			table.insert(text1,newbind.Text)
			table.insert(shade3,newbind.Text.Delete)
			table.insert(text2,newbind.Text.Delete)
			local input = tostring(binds[i].KEY)
			local key
			if input == 'RightClick' or input == 'LeftClick' then
				key = input
			else
				key = input:sub(14)
			end
			if binds[i].TOGGLE then
				newbind.Text.Text = key.." > "..binds[i].COMMAND.." / "..binds[i].TOGGLE
			else
				newbind.Text.Text = key.." > "..binds[i].COMMAND.."  "..(binds[i].ISKEYUP and "(keyup)" or "(keydown)")
			end
			Holder_2.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newbind.Text.Delete.MouseButton1Click:Connect(function()
				unkeybind(binds[i].COMMAND,binds[i].KEY)
			end)
		end
	end
end

refreshbinds()

toggleOn = {}

function unkeybind(cmd,key)
	for i = #binds,1,-1 do
		if binds[i].COMMAND == cmd and binds[i].KEY == key then
			toggleOn[binds[i]] = nil
			table.remove(binds, i)
		end
	end
	refreshbinds()
	updatesaves()
	if key == 'RightClick' or key == 'LeftClick' then
		notify('Keybinds Updated','Unbinded '..key..' from '..cmd)
	else
		notify('Keybinds Updated','Unbinded '..key:sub(14)..' from '..cmd)
	end
end

PositionsFrame.Delete.MouseButton1Click:Connect(function()
	execCmd('cpos')
end)

function refreshwaypoints()
	if #WayPoints > 0 or #pWayPoints > 0 then
		PositionsHint:Destroy()
	end
	if Holder_4 then
		Holder_4:ClearAllChildren()
		Holder_4.CanvasSize = UDim2.new(0, 0, 0, 10)
		local YSize = 25
		local num = 1
		for i = 1, #WayPoints do
			local Position = ((num * YSize) - YSize)
			local newpoint = Example_4:Clone()
			newpoint.Parent = Holder_4
			newpoint.Visible = true
			newpoint.Position = UDim2.new(0,0,0, Position + 5)
			newpoint.Text.Text = WayPoints[i].NAME
			table.insert(shade2,newpoint)
			table.insert(shade2,newpoint.Text)
			table.insert(text1,newpoint.Text)
			table.insert(shade3,newpoint.Text.Delete)
			table.insert(text2,newpoint.Text.Delete)
			table.insert(shade3,newpoint.Text.TP)
			table.insert(text2,newpoint.Text.TP)
			Holder_4.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newpoint.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('dpos '..WayPoints[i].NAME)
			end)
			newpoint.Text.TP.MouseButton1Click:Connect(function()
				execCmd("loadpos "..WayPoints[i].NAME)
			end)
			num = num+1
		end
		for i = 1, #pWayPoints do
			local Position = ((num * YSize) - YSize)
			local newpoint = Example_4:Clone()
			newpoint.Parent = Holder_4
			newpoint.Visible = true
			newpoint.Position = UDim2.new(0,0,0, Position + 5)
			newpoint.Text.Text = pWayPoints[i].NAME
			table.insert(shade2,newpoint)
			table.insert(shade2,newpoint.Text)
			table.insert(text1,newpoint.Text)
			table.insert(shade3,newpoint.Text.Delete)
			table.insert(text2,newpoint.Text.Delete)
			table.insert(shade3,newpoint.Text.TP)
			table.insert(text2,newpoint.Text.TP)
			Holder_4.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newpoint.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('dpos '..pWayPoints[i].NAME)
			end)
			newpoint.Text.TP.MouseButton1Click:Connect(function()
				execCmd("loadpos "..pWayPoints[i].NAME)
			end)
			num = num+1
		end
	end
end

refreshwaypoints()

function refreshaliases()
	if #aliases > 0 then
		AliasHint:Destroy()
	end
	if Holder_3 then
		Holder_3:ClearAllChildren()
		Holder_3.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i = 1, #aliases do
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newalias = Example_3:Clone()
			newalias.Parent = Holder_3
			newalias.Visible = true
			newalias.Position = UDim2.new(0,0,0, Position + 5)
			newalias.Text.Text = aliases[i].CMD.." > "..aliases[i].ALIAS
			table.insert(shade2,newalias)
			table.insert(shade2,newalias.Text)
			table.insert(text1,newalias.Text)
			table.insert(shade3,newalias.Text.Delete)
			table.insert(text2,newalias.Text.Delete)
			Holder_3.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newalias.Text.Delete.MouseButton1Click:Connect(function()
				execCmd('removealias '..aliases[i].ALIAS)
			end)
		end
	end
end

local bindChosenKeyUp = false

BindTo.MouseButton1Click:Connect(function()
	awaitingInput = true
	BindTo.Text = 'Press something'
end)

BindTriggerSelect.MouseButton1Click:Connect(function()
	bindChosenKeyUp = not bindChosenKeyUp
	BindTriggerSelect.Text = bindChosenKeyUp and "KeyUp" or "KeyDown"
end)

newToggle = false
Cmdbar_3.Parent.Visible = false
On_2.MouseButton1Click:Connect(function()
	if newToggle == false then newToggle = true
		On_2.BackgroundTransparency = 0
		Cmdbar_3.Parent.Visible = true
		BindTriggerSelect.Visible = false
	else newToggle = false
		On_2.BackgroundTransparency = 1
		Cmdbar_3.Parent.Visible = false
		BindTriggerSelect.Visible = true
	end
end)

Add_2.MouseButton1Click:Connect(function()
	if keySelected then
		if string.find(Cmdbar_2.Text, "\\\\") or string.find(Cmdbar_3.Text, "\\\\") then
			notify('Keybind Error','Only use one backslash to keybind multiple commands into one keybind or command')
		else
			if newToggle and Cmdbar_3.Text ~= '' and Cmdbar_2.text ~= '' then
				addbind(Cmdbar_2.Text,keyPressed,false,Cmdbar_3.Text)
			elseif not newToggle and Cmdbar_2.text ~= '' then
				addbind(Cmdbar_2.Text,keyPressed,bindChosenKeyUp)
			else
				return
			end
			refreshbinds()
			updatesaves()
			if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
				notify('Keybinds Updated','Binded '..keyPressed..' to '..Cmdbar_2.Text..(newToggle and " / "..Cmdbar_3.Text or ""))
			else
				notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to '..Cmdbar_2.Text..(newToggle and " / "..Cmdbar_3.Text or ""))
			end
		end
	end
end)

Exit_2.MouseButton1Click:Connect(function()
	Cmdbar_2.Text = 'Command'
	Cmdbar_3.Text = 'Command 2'
	BindTo.Text = 'Click to bind'
	bindChosenKeyUp = false
	BindTriggerSelect.Text = "KeyDown"
	keySelected = false
	KeybindEditor:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
end)

function onInputBegan(input,gameProcessed)
	if awaitingInput then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			keyPressed = tostring(input.KeyCode)
			BindTo.Text = keyPressed:sub(14)
		elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
			keyPressed = 'LeftClick'
			BindTo.Text = 'LeftClick'
		elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
			keyPressed = 'RightClick'
			BindTo.Text = 'RightClick'
		end
		awaitingInput = false
		keySelected = true
	end
	if not gameProcessed and #binds > 0 then
		for i,v in pairs(binds) do
			if not v.ISKEYUP then
				if (input.UserInputType == Enum.UserInputType.Keyboard and v.KEY:lower()==tostring(input.KeyCode):lower()) or (input.UserInputType == Enum.UserInputType.MouseButton1 and v.KEY:lower()=='leftclick') or (input.UserInputType == Enum.UserInputType.MouseButton2 and v.KEY:lower()=='rightclick') then
					if v.TOGGLE then
						local isOn = toggleOn[v] == true
						toggleOn[v] = not isOn
						if isOn then
							execCmd(v.TOGGLE,Players.LocalPlayer)
						else
							execCmd(v.COMMAND,Players.LocalPlayer)
						end
					else
						execCmd(v.COMMAND,Players.LocalPlayer)
					end
				end
			end
		end
	end
end

function onInputEnded(input,gameProcessed)
	if not gameProcessed and #binds > 0 then
		for i,v in pairs(binds) do
			if v.ISKEYUP then
				if (input.UserInputType == Enum.UserInputType.Keyboard and v.KEY:lower()==tostring(input.KeyCode):lower()) or (input.UserInputType == Enum.UserInputType.MouseButton1 and v.KEY:lower()=='leftclick') or (input.UserInputType == Enum.UserInputType.MouseButton2 and v.KEY:lower()=='rightclick') then
					execCmd(v.COMMAND,Players.LocalPlayer)
				end
			end
		end
	end
end

UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)

ClickTP.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('clicktp',keyPressed,bindChosenKeyUp)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to click tp')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to click tp')
		end
	end
end)

ClickDelete.Select.MouseButton1Click:Connect(function()
	if keySelected then
		addbind('clickdel',keyPressed,bindChosenKeyUp)
		refreshbinds()
		updatesaves()
		if keyPressed == 'RightClick' or keyPressed == 'LeftClick' then
			notify('Keybinds Updated','Binded '..keyPressed..' to click delete')
		else
			notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to click delete')
		end
	end
end)

local function clicktpFunc()
	pcall(function()
		local character = Players.LocalPlayer.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.SeatPart then
			humanoid.Sit = false
			wait(0.1)
		end

		local hipHeight = humanoid and humanoid.HipHeight > 0 and (humanoid.HipHeight + 1)
		local rootPart = getRoot(character)
		local rootPartPosition = rootPart.Position
		local hitPosition = IYMouse.Hit.Position
		local newCFrame = CFrame.new(
			hitPosition, 
			Vector3.new(rootPartPosition.X, hitPosition.Y, rootPartPosition.Z)
		) * CFrame.Angles(0, math.pi, 0)

		rootPart.CFrame = newCFrame + Vector3.new(0, hipHeight or 4, 0)
	end)
end

IYMouse.Button1Down:Connect(function()
	for i,v in pairs(binds) do
		if v.COMMAND == 'clicktp' then
			local input = v.KEY
			if input == 'RightClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and Players.LocalPlayer.Character then
				clicktpFunc()
			elseif input == 'LeftClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) and Players.LocalPlayer.Character then
				clicktpFunc()
			elseif UserInputService:IsKeyDown(Enum.KeyCode[input:sub(14)]) and Players.LocalPlayer.Character then
				clicktpFunc()
			end
		elseif v.COMMAND == 'clickdel' then
			local input = v.KEY
			if input == 'RightClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
				pcall(function() IYMouse.Target:Destroy() end)
			elseif input == 'LeftClick' and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
				pcall(function() IYMouse.Target:Destroy() end)
			elseif UserInputService:IsKeyDown(Enum.KeyCode[input:sub(14)]) then
				pcall(function() IYMouse.Target:Destroy() end)
			end
		end
	end
end)

PluginsGUI = PluginEditor.background

function addPlugin(name)
	if name:lower() == 'plugin file name' or name:lower() == 'iy_fe.iy' or name == 'iy_fe' then
		notify('Plugin Error','Please enter a valid plugin')
	else
		local file
		local fileName
		if name:sub(-3) == '.iy' then
			pcall(function() file = readfile(name) end)
			fileName = name
		else
			pcall(function() file = readfile(name..'.iy') end)
			fileName = name..'.iy'
		end
		if file then
			if not FindInTable(PluginsTable, fileName) then
				table.insert(PluginsTable, fileName)
				LoadPlugin(fileName)
				refreshplugins()
				pcall(eventEditor.Refresh)
			else
				notify('Plugin Error','This plugin is already added')
			end
		else
			notify('Plugin Error','Cannot locate file "'..fileName..'". Is the file in the correct folder?')
		end
	end
end

function deletePlugin(name)
	local pName = name..'.iy'
	if name:sub(-3) == '.iy' then
		pName = name
	end
	for i = #cmds,1,-1 do
		if cmds[i].PLUGIN == pName then
			table.remove(cmds, i)
		end
	end
	for i,v in pairs(CMDsF:GetChildren()) do
		if v.Name == 'PLUGIN_'..pName then
			v:Destroy()
		end
	end
	for i,v in pairs(PluginsTable) do
		if v == pName then
			table.remove(PluginsTable, i)
			notify('Removed Plugin',pName..' was removed')
		end
	end
	IndexContents('',true)
	refreshplugins()
end

function refreshplugins(dontSave)
	if #PluginsTable > 0 then
		PluginsHint:Destroy()
	end
	if Holder_5 then
		Holder_5:ClearAllChildren()
		Holder_5.CanvasSize = UDim2.new(0, 0, 0, 10)
		for i,v in pairs(PluginsTable) do
			local pName = v
			local YSize = 25
			local Position = ((i * YSize) - YSize)
			local newplugin = Example_5:Clone()
			newplugin.Parent = Holder_5
			newplugin.Visible = true
			newplugin.Position = UDim2.new(0,0,0, Position + 5)
			newplugin.Text.Text = pName
			table.insert(shade2,newplugin)
			table.insert(shade2,newplugin.Text)
			table.insert(text1,newplugin.Text)
			table.insert(shade3,newplugin.Text.Delete)
			table.insert(text2,newplugin.Text.Delete)
			Holder_5.CanvasSize = UDim2.new(0,0,0, Position + 30)
			newplugin.Text.Delete.MouseButton1Click:Connect(function()
				deletePlugin(pName)
			end)
		end
		if not dontSave then
			updatesaves()
		end
	end
end

local PluginCache
function LoadPlugin(val,startup)
	local plugin

	function CatchedPluginLoad()
		plugin = loadfile(val)()
	end

	function handlePluginError(plerror)
		notify('Plugin Error','An error occurred with the plugin, "'..val..'" and it could not be loaded')
		if FindInTable(PluginsTable,val) then
			for i,v in pairs(PluginsTable) do
				if v == val then
					table.remove(PluginsTable,i)
				end
			end
		end
		updatesaves()

		print("Original Error: "..tostring(plerror))
		print("Plugin Error, stack traceback: "..tostring(debug.traceback()))

		plugin = nil

		return false
	end

	xpcall(CatchedPluginLoad, handlePluginError)

	if plugin ~= nil then
		if not startup then
			notify('Loaded Plugin',"Name: "..plugin["PluginName"].."\n".."Description: "..plugin["PluginDescription"])
		end
		addcmdtext('',val)
		addcmdtext(string.upper('--'..plugin["PluginName"]),val,plugin["PluginDescription"])
		if plugin["Commands"] then
			for i,v in pairs(plugin["Commands"]) do 
				local cmdExt = ''
				local cmdName = i
				local function handleNames()
					cmdName = i
					if findCmd(cmdName..cmdExt) then
						if isNumber(cmdExt) then
							cmdExt = cmdExt+1
						else
							cmdExt = 1
						end
						handleNames()
					else
						cmdName = cmdName..cmdExt
					end
				end
				handleNames()
				addcmd(cmdName, v["Aliases"], v["Function"], val)
				if v["ListName"] then
					local newName = v.ListName
					local cmdNames = {i,unpack(v.Aliases)}
					for i,v in pairs(cmdNames) do
						newName = newName:gsub(v,v..cmdExt)
					end
					addcmdtext(newName,val,v["Description"])
				else
					addcmdtext(cmdName,val,v["Description"])
				end
			end
		end
		IndexContents('',true)
	elseif plugin == nil then
		plugin = nil
	end
end

function FindPlugins()
	if PluginsTable ~= nil and type(PluginsTable) == "table" then
		for i,v in pairs(PluginsTable) do
			LoadPlugin(v,true)
		end
		refreshplugins(true)
	end
end

AddPlugin.MouseButton1Click:Connect(function()
	addPlugin(PluginsGUI.FileName.Text)
end)

Exit_3.MouseButton1Click:Connect(function()
	PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
	FileName.Text = 'Plugin File Name'
end)

Add_3.MouseButton1Click:Connect(function()
	PluginEditor:TweenPosition(UDim2.new(0.5, -180, 0, 310), "InOut", "Quart", 0.5, true, nil)
end)

Plugins.MouseButton1Click:Connect(function()
	if writefileExploit() then
		PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
		wait(0.5)
		SettingsHolder.Visible = false
	else
		notify('Incompatible Exploit','Your exploit is unable to use plugins (missing read/writefile)')
	end
end)

Close_4.MouseButton1Click:Connect(function()
	SettingsHolder.Visible = true
	PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
end)

local TeleportCheck = false
Players.LocalPlayer.OnTeleport:Connect(function(State)
	if KeepInfYield and (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()")
	end
end)

addcmd('addalias',{},function(args, speaker)
	if #args < 2 then return end
	local cmd = string.lower(args[1])
	local alias = string.lower(args[2])
	for i,v in pairs(cmds) do
		if v.NAME:lower()==cmd or FindInTable(v.ALIAS,cmd) then
			customAlias[alias] = v
			aliases[#aliases + 1] = {CMD = cmd, ALIAS = alias}
			notify('Aliases Modified',"Added "..alias.." as an alias to "..cmd)
			updatesaves()
			refreshaliases()
			break
		end
	end
end)

addcmd('removealias',{},function(args, speaker)
	if #args < 1 then return end
	local alias = string.lower(args[1])
	if customAlias[alias] then
		local cmd = customAlias[alias].NAME
		customAlias[alias] = nil
		for i = #aliases,1,-1 do
			if aliases[i].ALIAS == tostring(alias) then
				table.remove(aliases, i)
			end
		end
		notify('Aliases Modified',"Removed the alias "..alias.." from "..cmd)
		updatesaves()
		refreshaliases()
	end
end)

addcmd('clraliases',{},function(args, speaker)
	customAlias = {}
	aliases = {}
	notify('Aliases Modified','Removed all aliases')
	updatesaves()
	refreshaliases()
end)

addcmd('discord', {'support', 'help'}, function(args, speaker)
	if toClipboard then
		toClipboard('https://discord.com/invite/dYHag43eeU')
		notify('Discord Invite', 'Copied to clipboard!\ndiscord.gg/dYHag43eeU')
	else
		notify('Discord Invite', 'discord.gg/dYHag43eeU')
	end
	if httprequest then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = 'dYHag43eeU'}
			})
		})
	end
end)

addcmd('keepiy', {}, function(args, speaker)
	if queueteleport then
		KeepInfYield = true
		updatesaves()
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
	end
end)

addcmd('unkeepiy', {}, function(args, speaker)
	if queueteleport then
		KeepInfYield = false
		updatesaves()
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
	end
end)

addcmd('toggleunkeepiy', {}, function(args, speaker)
	if queueteleport then
		KeepInfYield = not KeepInfYield
		updatesaves()
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
	end
end)

local canOpenServerinfo = true
addcmd('serverinfo',{'info','sinfo'},function(args, speaker)
	if not canOpenServerinfo then return end
	canOpenServerinfo = false
	task.spawn(function()
		local FRAME = Instance.new("Frame")
		local shadow = Instance.new("Frame")
		local PopupText = Instance.new("TextLabel")
		local Exit = Instance.new("TextButton")
		local ExitImage = Instance.new("ImageLabel")
		local background = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local TextLabel2 = Instance.new("TextLabel")
		local TextLabel3 = Instance.new("TextLabel")
		local Time = Instance.new("TextLabel")
		local appearance = Instance.new("TextLabel")
		local maxplayers = Instance.new("TextLabel")
		local name = Instance.new("TextLabel")
		local placeid = Instance.new("TextLabel")
		local playerid = Instance.new("TextLabel")
		local players = Instance.new("TextLabel")
		local CopyApp = Instance.new("TextButton")
		local CopyPlrID = Instance.new("TextButton")
		local CopyPlcID = Instance.new("TextButton")

		FRAME.Name = randomString()
		FRAME.Parent = PARENT
		FRAME.Active = true
		FRAME.BackgroundTransparency = 1
		FRAME.Position = UDim2.new(0.5, -130, 0, -500)
		FRAME.Size = UDim2.new(0, 250, 0, 20)
		FRAME.ZIndex = 10
		dragGUI(FRAME)

		shadow.Name = "shadow"
		shadow.Parent = FRAME
		shadow.BackgroundColor3 = currentShade2
		shadow.BorderSizePixel = 0
		shadow.Size = UDim2.new(0, 250, 0, 20)
		shadow.ZIndex = 10
		table.insert(shade2,shadow)

		PopupText.Name = "PopupText"
		PopupText.Parent = shadow
		PopupText.BackgroundTransparency = 1
		PopupText.Size = UDim2.new(1, 0, 0.95, 0)
		PopupText.ZIndex = 10
		PopupText.Font = Enum.Font.SourceSans
		PopupText.TextSize = 14
		PopupText.Text = "Server"
		PopupText.TextColor3 = currentText1
		PopupText.TextWrapped = true
		table.insert(text1,PopupText)

		Exit.Name = "Exit"
		Exit.Parent = shadow
		Exit.BackgroundTransparency = 1
		Exit.Position = UDim2.new(1, -20, 0, 0)
		Exit.Size = UDim2.new(0, 20, 0, 20)
		Exit.Text = ""
		Exit.ZIndex = 10

		ExitImage.Parent = Exit
		ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
		ExitImage.BackgroundTransparency = 1
		ExitImage.Position = UDim2.new(0, 5, 0, 5)
		ExitImage.Size = UDim2.new(0, 10, 0, 10)
		ExitImage.Image = "rbxassetid://5054663650"
		ExitImage.ZIndex = 10

		background.Name = "background"
		background.Parent = FRAME
		background.Active = true
		background.BackgroundColor3 = currentShade1
		background.BorderSizePixel = 0
		background.Position = UDim2.new(0, 0, 1, 0)
		background.Size = UDim2.new(0, 250, 0, 250)
		background.ZIndex = 10
		table.insert(shade1,background)

		TextLabel.Name = "Text Label"
		TextLabel.Parent = background
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0, 5, 0, 80)
		TextLabel.Size = UDim2.new(0, 100, 0, 20)
		TextLabel.ZIndex = 10
		TextLabel.Font = Enum.Font.SourceSansLight
		TextLabel.TextSize = 20
		TextLabel.Text = "Run Time:"
		TextLabel.TextColor3 = currentText1
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,TextLabel)

		TextLabel2.Name = "Text Label2"
		TextLabel2.Parent = background
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.BorderSizePixel = 0
		TextLabel2.Position = UDim2.new(0, 5, 0, 130)
		TextLabel2.Size = UDim2.new(0, 100, 0, 20)
		TextLabel2.ZIndex = 10
		TextLabel2.Font = Enum.Font.SourceSansLight
		TextLabel2.TextSize = 20
		TextLabel2.Text = "Statistics:"
		TextLabel2.TextColor3 = currentText1
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,TextLabel2)

		TextLabel3.Name = "Text Label3"
		TextLabel3.Parent = background
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.BorderSizePixel = 0
		TextLabel3.Position = UDim2.new(0, 5, 0, 10)
		TextLabel3.Size = UDim2.new(0, 100, 0, 20)
		TextLabel3.ZIndex = 10
		TextLabel3.Font = Enum.Font.SourceSansLight
		TextLabel3.TextSize = 20
		TextLabel3.Text = "Local Player:"
		TextLabel3.TextColor3 = currentText1
		TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,TextLabel3)

		Time.Name = "Time"
		Time.Parent = background
		Time.BackgroundTransparency = 1
		Time.BorderSizePixel = 0
		Time.Position = UDim2.new(0, 5, 0, 105)
		Time.Size = UDim2.new(0, 100, 0, 20)
		Time.ZIndex = 10
		Time.Font = Enum.Font.SourceSans
		Time.FontSize = Enum.FontSize.Size14
		Time.Text = "LOADING"
		Time.TextColor3 = currentText1
		Time.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,Time)

		appearance.Name = "appearance"
		appearance.Parent = background
		appearance.BackgroundTransparency = 1
		appearance.BorderSizePixel = 0
		appearance.Position = UDim2.new(0, 5, 0, 55)
		appearance.Size = UDim2.new(0, 100, 0, 20)
		appearance.ZIndex = 10
		appearance.Font = Enum.Font.SourceSans
		appearance.FontSize = Enum.FontSize.Size14
		appearance.Text = "Appearance: LOADING"
		appearance.TextColor3 = currentText1
		appearance.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,appearance)

		maxplayers.Name = "maxplayers"
		maxplayers.Parent = background
		maxplayers.BackgroundTransparency = 1
		maxplayers.BorderSizePixel = 0
		maxplayers.Position = UDim2.new(0, 5, 0, 175)
		maxplayers.Size = UDim2.new(0, 100, 0, 20)
		maxplayers.ZIndex = 10
		maxplayers.Font = Enum.Font.SourceSans
		maxplayers.FontSize = Enum.FontSize.Size14
		maxplayers.Text = "LOADING"
		maxplayers.TextColor3 = currentText1
		maxplayers.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,maxplayers)

		name.Name = "name"
		name.Parent = background
		name.BackgroundTransparency = 1
		name.BorderSizePixel = 0
		name.Position = UDim2.new(0, 5, 0, 215)
		name.Size = UDim2.new(0, 240, 0, 30)
		name.ZIndex = 10
		name.Font = Enum.Font.SourceSans
		name.FontSize = Enum.FontSize.Size14
		name.Text = "Place Name: LOADING"
		name.TextColor3 = currentText1
		name.TextWrapped = true
		name.TextXAlignment = Enum.TextXAlignment.Left
		name.TextYAlignment = Enum.TextYAlignment.Top
		table.insert(text1,name)

		placeid.Name = "placeid"
		placeid.Parent = background
		placeid.BackgroundTransparency = 1
		placeid.BorderSizePixel = 0
		placeid.Position = UDim2.new(0, 5, 0, 195)
		placeid.Size = UDim2.new(0, 100, 0, 20)
		placeid.ZIndex = 10
		placeid.Font = Enum.Font.SourceSans
		placeid.FontSize = Enum.FontSize.Size14
		placeid.Text = "Place ID: LOADING"
		placeid.TextColor3 = currentText1
		placeid.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,placeid)

		playerid.Name = "playerid"
		playerid.Parent = background
		playerid.BackgroundTransparency = 1
		playerid.BorderSizePixel = 0
		playerid.Position = UDim2.new(0, 5, 0, 35)
		playerid.Size = UDim2.new(0, 100, 0, 20)
		playerid.ZIndex = 10
		playerid.Font = Enum.Font.SourceSans
		playerid.FontSize = Enum.FontSize.Size14
		playerid.Text = "Player ID: LOADING"
		playerid.TextColor3 = currentText1
		playerid.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,playerid)

		players.Name = "players"
		players.Parent = background
		players.BackgroundTransparency = 1
		players.BorderSizePixel = 0
		players.Position = UDim2.new(0, 5, 0, 155)
		players.Size = UDim2.new(0, 100, 0, 20)
		players.ZIndex = 10
		players.Font = Enum.Font.SourceSans
		players.FontSize = Enum.FontSize.Size14
		players.Text = "LOADING"
		players.TextColor3 = currentText1
		players.TextXAlignment = Enum.TextXAlignment.Left
		table.insert(text1,players)

		CopyApp.Name = "CopyApp"
		CopyApp.Parent = background
		CopyApp.BackgroundColor3 = currentShade2
		CopyApp.BorderSizePixel = 0
		CopyApp.Position = UDim2.new(0, 210, 0, 55)
		CopyApp.Size = UDim2.new(0, 35, 0, 20)
		CopyApp.Font = Enum.Font.SourceSans
		CopyApp.TextSize = 14
		CopyApp.Text = "Copy"
		CopyApp.TextColor3 = currentText1
		CopyApp.ZIndex = 10
		table.insert(shade2,CopyApp)
		table.insert(text1,CopyApp)

		CopyPlrID.Name = "CopyPlrID"
		CopyPlrID.Parent = background
		CopyPlrID.BackgroundColor3 = currentShade2
		CopyPlrID.BorderSizePixel = 0
		CopyPlrID.Position = UDim2.new(0, 210, 0, 35)
		CopyPlrID.Size = UDim2.new(0, 35, 0, 20)
		CopyPlrID.Font = Enum.Font.SourceSans
		CopyPlrID.TextSize = 14
		CopyPlrID.Text = "Copy"
		CopyPlrID.TextColor3 = currentText1
		CopyPlrID.ZIndex = 10
		table.insert(shade2,CopyPlrID)
		table.insert(text1,CopyPlrID)

		CopyPlcID.Name = "CopyPlcID"
		CopyPlcID.Parent = background
		CopyPlcID.BackgroundColor3 = currentShade2
		CopyPlcID.BorderSizePixel = 0
		CopyPlcID.Position = UDim2.new(0, 210, 0, 195)
		CopyPlcID.Size = UDim2.new(0, 35, 0, 20)
		CopyPlcID.Font = Enum.Font.SourceSans
		CopyPlcID.TextSize = 14
		CopyPlcID.Text = "Copy"
		CopyPlcID.TextColor3 = currentText1
		CopyPlcID.ZIndex = 10
		table.insert(shade2,CopyPlcID)
		table.insert(text1,CopyPlcID)

		local SINFOGUI = background
		FRAME:TweenPosition(UDim2.new(0.5, -130, 0, 100), "InOut", "Quart", 0.5, true, nil) 
		wait(0.5)
		Exit.MouseButton1Click:Connect(function()
			FRAME:TweenPosition(UDim2.new(0.5, -130, 0, -500), "InOut", "Quart", 0.5, true, nil) 
			wait(0.6)
			FRAME:Destroy()
			canOpenServerinfo = true
		end)
		local Asset = MarketplaceService:GetProductInfo(PlaceId)
		SINFOGUI.name.Text = "Place Name: " .. Asset.Name
		SINFOGUI.playerid.Text = "Player ID: " ..speaker.UserId
		SINFOGUI.maxplayers.Text = Players.MaxPlayers.. " Players Max"
		SINFOGUI.placeid.Text = "Place ID: " ..PlaceId

		CopyApp.MouseButton1Click:Connect(function()
			toClipboard(speaker.CharacterAppearanceId)
		end)
		CopyPlrID.MouseButton1Click:Connect(function()
			toClipboard(speaker.UserId)
		end)
		CopyPlcID.MouseButton1Click:Connect(function()
			toClipboard(PlaceId)
		end)

		repeat
			players = Players:GetPlayers()
			SINFOGUI.players.Text = #players.. " Player(s)"
			SINFOGUI.appearance.Text = "Appearance: " ..speaker.CharacterAppearanceId
			local seconds = math.floor(workspace.DistributedGameTime)
			local minutes = math.floor(workspace.DistributedGameTime / 60)
			local hours = math.floor(workspace.DistributedGameTime / 60 / 60)
			local seconds = seconds - (minutes * 60)
			local minutes = minutes - (hours * 60)
			if hours < 1 then if minutes < 1 then
					SINFOGUI.Time.Text = seconds .. " Second(s)" else
					SINFOGUI.Time.Text = minutes .. " Minute(s), " .. seconds .. " Second(s)"
				end
			else
				SINFOGUI.Time.Text = hours .. " Hour(s), " .. minutes .. " Minute(s), " .. seconds .. " Second(s)"
			end
			wait(1)
		until SINFOGUI.Parent == nil
	end)
end)

addcmd('jobid',{},function(args, speaker)
	local jobId = 'Roblox.GameLauncher.joinGameInstance('..PlaceId..', "'..JobId..'")'
	toClipboard(jobId)
end)

addcmd('notifyjobid',{},function(args, speaker)
	notify('JobId / PlaceId',JobId..' / '..PlaceId)
end)

addcmd('breakloops',{'break'},function(args, speaker)
	lastBreakTime = tick()
end)

addcmd('gametp',{'gameteleport'},function(args, speaker)
	TeleportService:Teleport(args[1])
end)

addcmd("rejoin", {"rj"}, function(args, speaker)
	if #Players:GetPlayers() <= 1 then
		Players.LocalPlayer:Kick("\nRejoining...")
		wait()
		TeleportService:Teleport(PlaceId, Players.LocalPlayer)
	else
		TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
	end
end)

addcmd("autorejoin", {"autorj"}, function(args, speaker)
	GuiService.ErrorMessageChanged:Connect(function()
		execCmd("rejoin")
	end)
	notify("Auto Rejoin", "Auto rejoin enabled")
end)

addcmd('serverhop',{'shop'},function(args, speaker)
	-- thanks to NoobSploit for fixing
	if httprequest then
		local servers = {}
		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", PlaceId)})
		local body = HttpService:JSONDecode(req.Body)
		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= JobId then
					table.insert(servers, 1, v.id)
				end
			end
		end
		if #servers > 0 then
			TeleportService:TeleportToPlaceInstance(PlaceId, servers[math.random(1, #servers)], Players.LocalPlayer)
		else
			return notify("Serverhop", "Couldn't find a server.")
		end
	end
end)

addcmd('joinplayer',{'joinp'},function(args, speaker)
	local retries = 0
	function ToServer(User,Place)	
		if args[2] == nil then Place = PlaceId end
		if not pcall(function()
				local FoundUser, UserId = pcall(function()
					if tonumber(User) then
						return tonumber(User)
					end

					return Players:GetUserIdFromNameAsync(User)
				end)
				if not FoundUser then
					notify('Join Error','Username/UserID does not exist')
				else
					notify('Join Player','Loading servers. Hold on a second.')
					local URL2 = ("https://games.roblox.com/v1/games/"..Place.."/servers/Public?sortOrder=Asc&limit=100")
					local Http = HttpService:JSONDecode(game:HttpGet(URL2))
					local GUID

					function tablelength(T)
						local count = 0
						for _ in pairs(T) do count = count + 1 end
						return count
					end

					for i=1,tonumber(tablelength(Http.data)) do
						for j,k in pairs(Http.data[i].playerIds) do
							if k == UserId then
								GUID = Http.data[i].id
							end
						end
					end

					if GUID ~= nil then
						notify('Join Player','Joining '..User)
						TeleportService:TeleportToPlaceInstance(Place,GUID,Players.LocalPlayer)
					else
						notify('Join Error','Unable to join user.')
					end
				end
			end)
		then
			if retries < 3 then
				retries = retries + 1
				print('ERROR retrying '..retries..'/3')
				notify('Join Error','Error while trying to join. Retrying '..retries..'/3.')
				ToServer(User,Place)
			else
				notify('Join Error','Error while trying to join.')
			end
		end
	end
	ToServer(args[1],args[2])
end)

addcmd('exit',{},function(args, speaker)
	game:shutdown() 
end)

local Noclipping = nil
addcmd('noclip',{},function(args, speaker)
	Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = RunService.Stepped:Connect(NoclipLoop)
end)

addcmd('clip',{'unnoclip'},function(args, speaker)
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end)

addcmd('togglenoclip',{},function(args, speaker)
	if Clip then
		execCmd('noclip')
	else
		execCmd('clip')
	end
end)

FLYING = false
QEfly = true
iyflyspeed = 1
vehicleflyspeed = 1
function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until IYMouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = IYMouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = IYMouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local velocityHandlerName = randomString()
local gyroHandlerName = randomString()
local mfly1
local mfly2

local unmobilefly = function(speaker)
	pcall(function()
		FLYING = false
		local root = getRoot(speaker.Character)
		root:FindFirstChild(velocityHandlerName):Destroy()
		root:FindFirstChild(gyroHandlerName):Destroy()
		speaker.Character:FindFirstChildWhichIsA("Humanoid").PlatformStand = false
		mfly1:Disconnect()
		mfly2:Disconnect()
	end)
end

local mobilefly = function(speaker, vfly)
	unmobilefly(speaker)
	FLYING = true

	local root = getRoot(speaker.Character)
	local camera = workspace.CurrentCamera
	local v3none = Vector3.new()
	local v3zero = Vector3.new(0, 0, 0)
	local v3inf = Vector3.new(9e9, 9e9, 9e9)

	local controlModule = require(speaker.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
	local bv = Instance.new("BodyVelocity")
	bv.Name = velocityHandlerName
	bv.Parent = root
	bv.MaxForce = v3zero
	bv.Velocity = v3zero

	local bg = Instance.new("BodyGyro")
	bg.Name = gyroHandlerName
	bg.Parent = root
	bg.MaxTorque = v3inf
	bg.P = 1000
	bg.D = 50

	mfly1 = speaker.CharacterAdded:Connect(function()
		local bv = Instance.new("BodyVelocity")
		bv.Name = velocityHandlerName
		bv.Parent = root
		bv.MaxForce = v3zero
		bv.Velocity = v3zero

		local bg = Instance.new("BodyGyro")
		bg.Name = gyroHandlerName
		bg.Parent = root
		bg.MaxTorque = v3inf
		bg.P = 1000
		bg.D = 50
	end)

	mfly2 = RunService.RenderStepped:Connect(function()
		root = getRoot(speaker.Character)
		camera = workspace.CurrentCamera
		if speaker.Character:FindFirstChildWhichIsA("Humanoid") and root and root:FindFirstChild(velocityHandlerName) and root:FindFirstChild(gyroHandlerName) then
			local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
			local VelocityHandler = root:FindFirstChild(velocityHandlerName)
			local GyroHandler = root:FindFirstChild(gyroHandlerName)

			VelocityHandler.MaxForce = v3inf
			GyroHandler.MaxTorque = v3inf
			if not vfly then humanoid.PlatformStand = true end
			GyroHandler.CFrame = camera.CoordinateFrame
			VelocityHandler.Velocity = v3none

			local direction = controlModule:GetMoveVector()
			if direction.X > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.X < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity + camera.CFrame.RightVector * (direction.X * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z > 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
			if direction.Z < 0 then
				VelocityHandler.Velocity = VelocityHandler.Velocity - camera.CFrame.LookVector * (direction.Z * ((vfly and vehicleflyspeed or iyflyspeed) * 50))
			end
		end
	end)
end

addcmd('fly',{},function(args, speaker)
	if not IsOnMobile then
		NOFLY()
		wait()
		sFLY()
	else
		mobilefly(speaker)
	end
	if args[1] and isNumber(args[1]) then
		iyflyspeed = args[1]
	end
end)

addcmd('flyspeed',{'flysp'},function(args, speaker)
	local speed = args[1] or 1
	if isNumber(speed) then
		iyflyspeed = speed
	end
end)

addcmd('unfly',{'nofly','novfly','unvehiclefly','novehiclefly','unvfly'},function(args, speaker)
	if not IsOnMobile then NOFLY() else unmobilefly(speaker) end
end)

addcmd('vfly',{'vehiclefly'},function(args, speaker)
	if not IsOnMobile then
		NOFLY()
		wait()
		sFLY(true)
	else
		mobilefly(speaker, true)
	end
	if args[1] and isNumber(args[1]) then
		vehicleflyspeed = args[1]
	end
end)

addcmd('togglevfly',{},function(args, speaker)
	if FLYING then
		if not IsOnMobile then NOFLY() else unmobilefly(speaker) end
	else
		if not IsOnMobile then sFLY(true) else mobilefly(speaker, true) end
	end
end)

addcmd('vflyspeed',{'vflysp','vehicleflyspeed','vehicleflysp'},function(args, speaker)
	local speed = args[1] or 1
	if isNumber(speed) then
		vehicleflyspeed = speed
	end
end)

addcmd('qefly',{'flyqe'},function(args, speaker)
	if args[1] == 'false' then
		QEfly = false
	else
		QEfly = true
	end
end)

addcmd('togglefly',{},function(args, speaker)
	if FLYING then
		if not IsOnMobile then NOFLY() else unmobilefly(speaker) end
	else
		if not IsOnMobile then sFLY() else mobilefly(speaker) end
	end
end)

CFspeed = 50
addcmd('cframefly', {'cfly'}, function(args, speaker)
	-- Full credit to peyton#9148 (apeyton)
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
	local Head = speaker.Character:WaitForChild("Head")
	Head.Anchored = true
	if CFloop then CFloop:Disconnect() end
	CFloop = RunService.Heartbeat:Connect(function(deltaTime)
		local moveDirection = speaker.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (CFspeed * deltaTime)
		local headCFrame = Head.CFrame
		local cameraCFrame = workspace.CurrentCamera.CFrame
		local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
		cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
		local cameraPosition = cameraCFrame.Position
		local headPosition = headCFrame.Position

		local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
		Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
	end)
end)

addcmd('uncframefly',{'uncfly'},function(args, speaker)
	if CFloop then
		CFloop:Disconnect()
		speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
		local Head = speaker.Character:WaitForChild("Head")
		Head.Anchored = false
	end
end)

addcmd('cframeflyspeed',{'cflyspeed'},function(args, speaker)
	if isNumber(args[1]) then
		CFspeed = args[1]
	end
end)

Floating = false
floatName = randomString()
addcmd('float', {'platform'},function(args, speaker)
	Floating = true
	local pchar = speaker.Character
	if pchar and not pchar:FindFirstChild(floatName) then
		task.spawn(function()
			local Float = Instance.new('Part')
			Float.Name = floatName
			Float.Parent = pchar
			Float.Transparency = 1
			Float.Size = Vector3.new(2,0.2,1.5)
			Float.Anchored = true
			local FloatValue = -3.1
			Float.CFrame = getRoot(pchar).CFrame * CFrame.new(0,FloatValue,0)
			notify('Float','Float Enabled (Q = down & E = up)')
			qUp = IYMouse.KeyUp:Connect(function(KEY)
				if KEY == 'q' then
					FloatValue = FloatValue + 0.5
				end
			end)
			eUp = IYMouse.KeyUp:Connect(function(KEY)
				if KEY == 'e' then
					FloatValue = FloatValue - 0.5
				end
			end)
			qDown = IYMouse.KeyDown:Connect(function(KEY)
				if KEY == 'q' then
					FloatValue = FloatValue - 0.5
				end
			end)
			eDown = IYMouse.KeyDown:Connect(function(KEY)
				if KEY == 'e' then
					FloatValue = FloatValue + 0.5
				end
			end)
			floatDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
				FloatingFunc:Disconnect()
				Float:Destroy()
				qUp:Disconnect()
				eUp:Disconnect()
				qDown:Disconnect()
				eDown:Disconnect()
				floatDied:Disconnect()
			end)
			local function FloatPadLoop()
				if pchar:FindFirstChild(floatName) and getRoot(pchar) then
					Float.CFrame = getRoot(pchar).CFrame * CFrame.new(0,FloatValue,0)
				else
					FloatingFunc:Disconnect()
					Float:Destroy()
					qUp:Disconnect()
					eUp:Disconnect()
					qDown:Disconnect()
					eDown:Disconnect()
					floatDied:Disconnect()
				end
			end			
			FloatingFunc = RunService.Heartbeat:Connect(FloatPadLoop)
		end)
	end
end)

addcmd('unfloat',{'nofloat','unplatform','noplatform'},function(args, speaker)
	Floating = false
	local pchar = speaker.Character
	notify('Float','Float Disabled')
	if pchar:FindFirstChild(floatName) then
		pchar:FindFirstChild(floatName):Destroy()
	end
	if floatDied then
		FloatingFunc:Disconnect()
		qUp:Disconnect()
		eUp:Disconnect()
		qDown:Disconnect()
		eDown:Disconnect()
		floatDied:Disconnect()
	end
end)

addcmd('togglefloat',{},function(args, speaker)
	if Floating then
		execCmd('unfloat')
	else
		execCmd('float')
	end
end)

swimming = false
local oldgrav = workspace.Gravity
local swimbeat = nil
addcmd('swim',{},function(args, speaker)
	if not swimming and speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
		oldgrav = workspace.Gravity
		workspace.Gravity = 0
		local swimDied = function()
			workspace.Gravity = oldgrav
			swimming = false
		end
		local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
		gravReset = Humanoid.Died:Connect(swimDied)
		local enums = Enum.HumanoidStateType:GetEnumItems()
		table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
		for i, v in pairs(enums) do
			Humanoid:SetStateEnabled(v, false)
		end
		Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		swimbeat = RunService.Heartbeat:Connect(function()
			pcall(function()
				speaker.Character.HumanoidRootPart.Velocity = ((Humanoid.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and speaker.Character.HumanoidRootPart.Velocity or Vector3.new())
			end)
		end)
		swimming = true
	end
end)

addcmd('unswim',{'noswim'},function(args, speaker)
	if speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
		workspace.Gravity = oldgrav
		swimming = false
		if gravReset then
			gravReset:Disconnect()
		end
		if swimbeat ~= nil then
			swimbeat:Disconnect()
			swimbeat = nil
		end
		local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
		local enums = Enum.HumanoidStateType:GetEnumItems()
		table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
		for i, v in pairs(enums) do
			Humanoid:SetStateEnabled(v, true)
		end
	end
end)

addcmd('toggleswim',{},function(args, speaker)
	if swimming then
		execCmd('unswim')
	else
		execCmd('swim')
	end
end)

addcmd('setwaypoint',{'swp','setwp','spos','saveposition','savepos'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if getRoot(speaker.Character) then
		notify('Modified Waypoints',"Created waypoint: "..getstring(1))
		local torso = getRoot(speaker.Character)
		WayPoints[#WayPoints + 1] = {NAME = WPName, COORD = {math.floor(torso.Position.X), math.floor(torso.Position.Y), math.floor(torso.Position.Z)}, GAME = PlaceId}
		if AllWaypoints ~= nil then
			AllWaypoints[#AllWaypoints + 1] = {NAME = WPName, COORD = {math.floor(torso.Position.X), math.floor(torso.Position.Y), math.floor(torso.Position.Z)}, GAME = PlaceId}
		end
	end	
	refreshwaypoints()
	updatesaves()
end)

addcmd('waypointpos',{'wpp','setwaypointposition','setpos','setwaypoint','setwaypointpos'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if getRoot(speaker.Character) then
		notify('Modified Waypoints',"Created waypoint: "..getstring(1))
		WayPoints[#WayPoints + 1] = {NAME = WPName, COORD = {args[2], args[3], args[4]}, GAME = PlaceId}
		if AllWaypoints ~= nil then
			AllWaypoints[#AllWaypoints + 1] = {NAME = WPName, COORD = {args[2], args[3], args[4]}, GAME = PlaceId}
		end
	end	
	refreshwaypoints()
	updatesaves()
end)

addcmd('waypoints',{'positions'},function(args, speaker)
	if SettingsOpen == false then SettingsOpen = true
		Settings:TweenPosition(UDim2.new(0, 0, 0, 45), "InOut", "Quart", 0.5, true, nil)
		CMDsF.Visible = false
	end
	KeybindsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
	AliasesFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
	PluginsFrame:TweenPosition(UDim2.new(0, 0, 0, 175), "InOut", "Quart", 0.5, true, nil)
	PositionsFrame:TweenPosition(UDim2.new(0, 0, 0, 0), "InOut", "Quart", 0.5, true, nil)
	wait(0.5)
	SettingsHolder.Visible = false
	maximizeHolder()
end)

waypointParts = {}
addcmd('showwaypoints',{'showwp','showwps'},function(args, speaker)
	execCmd('hidewaypoints')
	wait()
	for i,_ in pairs(WayPoints) do
		local x = WayPoints[i].COORD[1]
		local y = WayPoints[i].COORD[2]
		local z = WayPoints[i].COORD[3]
		local part = Instance.new("Part")
		part.Size = Vector3.new(5,5,5)
		part.CFrame = CFrame.new(x,y,z)
		part.Parent = workspace
		part.Anchored = true
		part.CanCollide = false
		table.insert(waypointParts,part)
		local view = Instance.new("BoxHandleAdornment")
		view.Adornee = part
		view.AlwaysOnTop = true
		view.ZIndex = 10
		view.Size = part.Size
		view.Parent = part
	end
	for i,v in pairs(pWayPoints) do
		local view = Instance.new("BoxHandleAdornment")
		view.Adornee = pWayPoints[i].COORD[1]
		view.AlwaysOnTop = true
		view.ZIndex = 10
		view.Size = pWayPoints[i].COORD[1].Size
		view.Parent = pWayPoints[i].COORD[1]
		table.insert(waypointParts,view)
	end
end)

addcmd('hidewaypoints',{'hidewp','hidewps'},function(args, speaker)
	for i,v in pairs(waypointParts) do
		v:Destroy()
	end
	waypointParts = {}
end)

addcmd('waypoint',{'wp','lpos','loadposition','loadpos'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				local x = WayPoints[i].COORD[1]
				local y = WayPoints[i].COORD[2]
				local z = WayPoints[i].COORD[3]
				getRoot(speaker.Character).CFrame = CFrame.new(x,y,z)
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				getRoot(speaker.Character).CFrame = CFrame.new(pWayPoints[i].COORD[1].Position)
			end
		end
	end
end)

tweenSpeed = 1
addcmd('tweenspeed',{'tspeed'},function(args, speaker)
	local newSpeed = args[1] or 1
	if tonumber(newSpeed) then
		tweenSpeed = tonumber(newSpeed)
	end
end)

addcmd('tweenwaypoint',{'twp'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			local x = WayPoints[i].COORD[1]
			local y = WayPoints[i].COORD[2]
			local z = WayPoints[i].COORD[3]
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(x,y,z)}):Play()
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(pWayPoints[i].COORD[1].Position)}):Play()
			end
		end
	end
end)

addcmd('walktowaypoint',{'wtwp'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			local x = WayPoints[i].COORD[1]
			local y = WayPoints[i].COORD[2]
			local z = WayPoints[i].COORD[3]
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(x,y,z)
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(pWayPoints[i].COORD[1].Position)
			end
		end
	end
end)

addcmd('deletewaypoint',{'dwp','dpos','deleteposition','deletepos'},function(args, speaker)
	for i,v in pairs(WayPoints) do
		if v.NAME:lower() == tostring(getstring(1)):lower() then
			notify('Modified Waypoints',"Deleted waypoint: " .. v.NAME)
			table.remove(WayPoints, i)
		end
	end
	if AllWaypoints ~= nil and #AllWaypoints > 0 then
		for i,v in pairs(AllWaypoints) do
			if v.NAME:lower() == tostring(getstring(1)):lower() then
				if not v.GAME or v.GAME == PlaceId then
					table.remove(AllWaypoints, i)
				end
			end
		end
	end
	for i,v in pairs(pWayPoints) do
		if v.NAME:lower() == tostring(getstring(1)):lower() then
			notify('Modified Waypoints',"Deleted waypoint: " .. v.NAME)
			table.remove(pWayPoints, i)
		end
	end
	refreshwaypoints()
	updatesaves()
end)

addcmd('clearwaypoints',{'cwp','clearpositions','cpos','clearpos'},function(args, speaker)
	WayPoints = {}
	pWayPoints = {}
	refreshwaypoints()
	updatesaves()
	AllWaypoints = {}
	notify('Modified Waypoints','Removed all waypoints')
end)

addcmd('cleargamewaypoints',{'cgamewp'},function(args, speaker)
	for i,v in pairs(WayPoints) do
		if v.GAME == PlaceId then
			table.remove(WayPoints, i)
		end
	end
	if AllWaypoints ~= nil and #AllWaypoints > 0 then
		for i,v in pairs(AllWaypoints) do
			if v.GAME == PlaceId then
				table.remove(AllWaypoints, i)
			end
		end
	end
	for i,v in pairs(pWayPoints) do
		if v.GAME == PlaceId then
			table.remove(pWayPoints, i)
		end
	end
	refreshwaypoints()
	updatesaves()
	notify('Modified Waypoints','Deleted game waypoints')
end)


local coreGuiTypeNames = {
	-- predefined aliases
	["inventory"] = Enum.CoreGuiType.Backpack,
	["leaderboard"] = Enum.CoreGuiType.PlayerList,
	["emotes"] = Enum.CoreGuiType.EmotesMenu
}

-- Load the full list of enums
for _, enumItem in ipairs(Enum.CoreGuiType:GetEnumItems()) do
	coreGuiTypeNames[enumItem.Name:lower()] = enumItem
end

addcmd('enable',{},function(args, speaker)
	local input = args[1] and args[1]:lower()
	if input then
		if input == "reset" then
			StarterGui:SetCore("ResetButtonCallback", true)
		else
			local coreGuiType = coreGuiTypeNames[input]
			if coreGuiType then
				StarterGui:SetCoreGuiEnabled(coreGuiType, true)
			end
		end
	end
end)

addcmd('disable',{},function(args, speaker)
	local input = args[1] and args[1]:lower()
	if input then
		if input == "reset" then
			StarterGui:SetCore("ResetButtonCallback", false)
		else
			local coreGuiType = coreGuiTypeNames[input]
			if coreGuiType then
				StarterGui:SetCoreGuiEnabled(coreGuiType, false)
			end
		end
	end
end)


local invisGUIS = {}
addcmd('showguis',{},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
		if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and not v.Visible then
			v.Visible = true
			if not FindInTable(invisGUIS,v) then
				table.insert(invisGUIS,v)
			end
		end
	end
end)

addcmd('unshowguis',{},function(args, speaker)
	for i,v in pairs(invisGUIS) do
		v.Visible = false
	end
	invisGUIS = {}
end)

local hiddenGUIS = {}
addcmd('hideguis',{},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildWhichIsA("PlayerGui"):GetDescendants()) do
		if (v:IsA("Frame") or v:IsA("ImageLabel") or v:IsA("ScrollingFrame")) and v.Visible then
			v.Visible = false
			if not FindInTable(hiddenGUIS,v) then
				table.insert(hiddenGUIS,v)
			end
		end
	end
end)

addcmd('unhideguis',{},function(args, speaker)
	for i,v in pairs(hiddenGUIS) do
		v.Visible = true
	end
	hiddenGUIS = {}
end)

function deleteGuisAtPos()
	pcall(function()
		local guisAtPosition = Players.LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(IYMouse.X, IYMouse.Y)
		for _, gui in pairs(guisAtPosition) do
			if gui.Visible == true then
				gui:Destroy()
			end
		end
	end)
end

local deleteGuiInput
addcmd('guidelete',{},function(args, speaker)
	deleteGuiInput = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if not gameProcessedEvent then
			if input.KeyCode == Enum.KeyCode.Backspace then
				deleteGuisAtPos()
			end
		end
	end)
	notify('GUI Delete Enabled','Hover over a GUI and press backspace to delete it')
end)

addcmd('unguidelete',{'noguidelete'},function(args, speaker)
	if deleteGuiInput then deleteGuiInput:Disconnect() end
	notify('GUI Delete Disabled','GUI backspace delete has been disabled')
end)

local wasStayOpen = StayOpen
addcmd('hideiy',{},function(args, speaker)
	isHidden = true
	wasStayOpen = StayOpen
	if StayOpen == true then
		StayOpen = false
		On.BackgroundTransparency = 1
	end
	minimizeNum = 0
	minimizeHolder()
	if not (args[1] and tostring(args[1]) == 'nonotify') then notify('IY Hidden','You can press the prefix key to access the command bar') end
end)

addcmd('showiy',{'unhideiy'},function(args, speaker)
	isHidden = false
	minimizeNum = -20
	if wasStayOpen then
		maximizeHolder()
		StayOpen = true
		On.BackgroundTransparency = 0
	else
		minimizeHolder()
	end
end)

addcmd('rec', {'record'}, function(args, speaker)
	return COREGUI:ToggleRecording()
end)

addcmd('screenshot', {'scrnshot'}, function(args, speaker)
	return COREGUI:TakeScreenshot()
end)

addcmd('togglefs', {'togglefullscreen'}, function(args, speaker)
	return GuiService:ToggleFullscreen()
end)

addcmd('inspect', {'examine'}, function(args, speaker)
	for _, v in ipairs(getPlayer(args[1], speaker)) do
		GuiService:CloseInspectMenu()
		GuiService:InspectPlayerFromUserId(Players[v].UserId)
	end
end)

addcmd('savegame',{'saveplace'},function(args, speaker)
	if saveinstance then
		notify("Loading","Downloading game. This will take a while")
		if getsynasset then
			saveinstance()
		else
			saveinstance(game)
		end
		notify('Game Saved','Saved place to the workspace folder within your exploit folder.')
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing saveinstance)')
	end
end)


addcmd('clearerror',{'clearerrors'},function(args, speaker)
	GuiService:ClearError()
end)

addcmd('clientantikick',{'antikick'},function(args, speaker)
	if not hookmetamethod then 
		return notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
	end
	local LocalPlayer = Players.LocalPlayer
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == LocalPlayer and method:lower() == "kick" then
			return error("Expected ':' not '.' calling member function Kick", 2)
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == LocalPlayer and getnamecallmethod():lower() == "kick" then
			return
		end
		return oldhmmnc(self, ...)
	end)

	notify('Client Antikick','Client anti kick is now active (only effective on localscript kick)')
end)

allow_rj = true
addcmd('clientantiteleport',{'antiteleport'},function(args, speaker)
	if not hookmetamethod then 
		return notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
	end
	local TeleportService = TeleportService
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == TeleportService then
			if method:lower() == "teleport" then
				return error("Expected ':' not '.' calling member function Kick", 2)
			elseif method == "TeleportToPlaceInstance" then
				return error("Expected ':' not '.' calling member function TeleportToPlaceInstance", 2)
			end
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == TeleportService and getnamecallmethod():lower() == "teleport" or getnamecallmethod() == "TeleportToPlaceInstance" then
			return
		end
		return oldhmmnc(self, ...)
	end)

	notify('Client AntiTP','Client anti teleport is now active (only effective on localscript teleport)')
end)

addcmd('allowrejoin',{'allowrj'},function(args, speaker)
	if args[1] and args[1] == 'false' then
		allow_rj = false
		notify('Client AntiTP','Allow rejoin set to false')
	else
		allow_rj = true
		notify('Client AntiTP','Allow rejoin set to true')
	end
end)

addcmd('cancelteleport',{'canceltp'},function(args, speaker)
	TeleportService:TeleportCancel()
end)

addcmd('volume',{'vol'},function(args, speaker)
	local level = args[1]/10
	UserSettings():GetService("UserGameSettings").MasterVolume = level
end)

addcmd('antilag',{'boostfps','lowgraphics'},function(args, speaker)
	local Terrain = workspace:FindFirstChildOfClass('Terrain')
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	settings().Rendering.QualityLevel = 1
	for i,v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	workspace.DescendantAdded:Connect(function(child)
		task.spawn(function()
			if child:IsA('ForceField') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				RunService.Heartbeat:Wait()
				child:Destroy()
			end
		end)
	end)
end)

addcmd('setfpscap', {'fpscap', 'maxfps'}, function(args, speaker)
	if setfpscap and type(setfpscap) == "function" then
		local num = args[1] or 1e6
		if num == 'none' then
			return setfpscap(1e6)
		elseif num > 0 then
			return setfpscap(num)
		else
			return notify('Invalid argument', "Please provide a number above 0 or 'none'.")
		end
	else
		return notify('Incompatible Exploit', 'Your exploit does not support this command (missing setfpscap)')
	end
end)

addcmd('notify',{},function(args, speaker)
	notify(getstring(1))
end)

addcmd('lastcommand',{'lastcmd'},function(args, speaker)
	if cmdHistory[1]:sub(1,11) ~= 'lastcommand' and cmdHistory[1]:sub(1,7) ~= 'lastcmd' then
		execCmd(cmdHistory[1])
	end
end)

addcmd('esp',{},function(args, speaker)
	if not CHMSenabled then
		ESPenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= speaker.Name then
				ESP(v)
			end
		end
	else
		notify('ESP','Disable chams (nochams) before using esp')
	end
end)

addcmd('noesp',{'unesp'},function(args, speaker)
	ESPenabled = false
	for i,c in pairs(COREGUI:GetChildren()) do
		if string.sub(c.Name, -4) == '_ESP' then
			c:Destroy()
		end
	end
end)

addcmd('esptransparency',{},function(args, speaker)
	espTransparency = (args[1] and isNumber(args[1]) and args[1]) or 0.3
	updatesaves()
end)

local espParts = {}
local partEspTrigger = nil
function partAdded(part)
	if #espParts > 0 then
		if FindInTable(espParts,part.Name:lower()) then
			local a = Instance.new("BoxHandleAdornment")
			a.Name = part.Name:lower().."_PESP"
			a.Parent = part
			a.Adornee = part
			a.AlwaysOnTop = true
			a.ZIndex = 0
			a.Size = part.Size
			a.Transparency = espTransparency
			a.Color = BrickColor.new("Lime green")
		end
	else
		partEspTrigger:Disconnect()
		partEspTrigger = nil
	end
end

addcmd('partesp',{},function(args, speaker)
	local partEspName = getstring(1):lower()
	if not FindInTable(espParts,partEspName) then
		table.insert(espParts,partEspName)
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and v.Name:lower() == partEspName then
				local a = Instance.new("BoxHandleAdornment")
				a.Name = partEspName.."_PESP"
				a.Parent = v
				a.Adornee = v
				a.AlwaysOnTop = true
				a.ZIndex = 0
				a.Size = v.Size
				a.Transparency = espTransparency
				a.Color = BrickColor.new("Lime green")
			end
		end
	end
	if partEspTrigger == nil then
		partEspTrigger = workspace.DescendantAdded:Connect(partAdded)
	end
end)

addcmd('unpartesp',{'nopartesp'},function(args, speaker)
	if args[1] then
		local partEspName = getstring(1):lower()
		if FindInTable(espParts,partEspName) then
			table.remove(espParts, GetInTable(espParts, partEspName))
		end
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BoxHandleAdornment") and v.Name == partEspName..'_PESP' then
				v:Destroy()
			end
		end
	else
		partEspTrigger:Disconnect()
		partEspTrigger = nil
		espParts = {}
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BoxHandleAdornment") and v.Name:sub(-5) == '_PESP' then
				v:Destroy()
			end
		end
	end
end)

addcmd('chams',{},function(args, speaker)
	if not ESPenabled then
		CHMSenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= speaker.Name then
				CHMS(v)
			end
		end
	else
		notify('Chams','Disable ESP (noesp) before using chams')
	end
end)

addcmd('nochams',{'unchams'},function(args, speaker)
	CHMSenabled = false
	for i,v in pairs(Players:GetChildren()) do
		local chmsplr = v
		for i,c in pairs(COREGUI:GetChildren()) do
			if c.Name == chmsplr.Name..'_CHMS' then
				c:Destroy()
			end
		end
	end
end)

addcmd('locate',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		Locate(Players[v])
	end
end)

addcmd('nolocate',{'unlocate'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if args[1] then
		for i,v in pairs(players) do
			for i,c in pairs(COREGUI:GetChildren()) do
				if c.Name == Players[v].Name..'_LC' then
					c:Destroy()
				end
			end
		end
	else
		for i,c in pairs(COREGUI:GetChildren()) do
			if string.sub(c.Name, -3) == '_LC' then
				c:Destroy()
			end
		end
	end
end)

viewing = nil
addcmd('view',{'spectate'},function(args, speaker)
	StopFreecam()
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if viewDied then
			viewDied:Disconnect()
			viewChanged:Disconnect()
		end
		viewing = Players[v]
		workspace.CurrentCamera.CameraSubject = viewing.Character
		notify('Spectate','Viewing ' .. Players[v].Name)
		local function viewDiedFunc()
			repeat wait() until Players[v].Character ~= nil and getRoot(Players[v].Character)
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewDied = Players[v].CharacterAdded:Connect(viewDiedFunc)
		local function viewChangedFunc()
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(viewChangedFunc)
	end
end)

addcmd('viewpart',{'viewp'},function(args, speaker)
	StopFreecam()
	if args[1] then
		for i,v in pairs(workspace:GetDescendants()) do
			if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
				wait(0.1)
				workspace.CurrentCamera.CameraSubject = v
			end
		end
	end
end)

addcmd('unview',{'unspectate'},function(args, speaker)
	StopFreecam()
	if viewing ~= nil then
		viewing = nil
		notify('Spectate','View turned off')
	end
	if viewDied then
		viewDied:Disconnect()
		viewChanged:Disconnect()
	end
	workspace.CurrentCamera.CameraSubject = speaker.Character
end)


fcRunning = false
local Camera = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value

Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*math.pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = math.exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()

local velSpring = Spring.new(5, Vector3.new())
local panSpring = Spring.new(5, Vector2.new())

Input = {} do

	keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
	}

	mouse = {
		Delta = Vector2.new(),
	}

	NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	PAN_MOUSE_SPEED = Vector2.new(1, 1)*(math.pi/64)
	NAV_ADJ_SPEED = 0.75
	NAV_SHIFT_MUL = 0.25

	navSpeed = 1

	function Input.Vel(dt)
		navSpeed = math.clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A,
			keyboard.E - keyboard.Q,
			keyboard.S - keyboard.W
		)*NAV_KEYBOARD_SPEED

		local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)

		return (kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kMouse
	end

	do
		function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard",Keypress,false,INPUT_PRIORITY,
				Enum.KeyCode.W,
				Enum.KeyCode.A,
				Enum.KeyCode.S,
				Enum.KeyCode.D,
				Enum.KeyCode.E,
				Enum.KeyCode.Q,
				Enum.KeyCode.Up,
				Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",MousePan,false,INPUT_PRIORITY,Enum.UserInputType.MouseMovement)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
		end
	end
end

function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2*math.tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))

	local zoomFactor = math.sqrt(math.tan(math.rad(70/2))/math.tan(math.rad(cameraFov/2)))

	cameraRot = cameraRot + pan*Vector2.new(0.75, 1)*8*(dt/zoomFactor)
	cameraRot = Vector2.new(math.clamp(cameraRot.x, -math.rad(90), math.rad(90)), cameraRot.y%(2*math.pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*Vector3.new(1, 1, 1)*64*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

local PlayerState = {} do
	mouseBehavior = ""
	mouseIconEnabled = ""
	cameraType = ""
	cameraFocus = ""
	cameraCFrame = ""
	cameraFieldOfView = ""

	function PlayerState.Push()
		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = true

		mouseBehavior = UserInputService.MouseBehavior
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		Camera.FieldOfView = 70

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

function StartFreecam(pos)
	if fcRunning then
		StopFreecam()
	end
	local cameraCFrame = Camera.CFrame
	if pos then
		cameraCFrame = pos
	end
	cameraRot = Vector2.new()
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
	fcRunning = true
end

function StopFreecam()
	if not fcRunning then return end
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
	workspace.Camera.FieldOfView = 70
	fcRunning = false
end

addcmd('freecam',{'fc'},function(args, speaker)
	StartFreecam()
end)

addcmd('freecampos',{'fcpos','fcp','freecamposition','fcposition'},function(args, speaker)
	if not args[1] then return end
	local freecamPos = CFrame.new(args[1],args[2],args[3])
	StartFreecam(freecamPos)
end)

addcmd('freecamwaypoint',{'fcwp'},function(args, speaker)
	local WPName = tostring(getstring(1))
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			local x = WayPoints[i].COORD[1]
			local y = WayPoints[i].COORD[2]
			local z = WayPoints[i].COORD[3]
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				StartFreecam(CFrame.new(x,y,z))
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				StartFreecam(CFrame.new(pWayPoints[i].COORD[1].Position))
			end
		end
	end
end)

addcmd('freecamgoto',{'fcgoto','freecamtp','fctp'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		StartFreecam(getRoot(Players[v].Character).CFrame)
	end
end)

addcmd('unfreecam',{'nofreecam','unfc','nofc'},function(args, speaker)
	StopFreecam()
end)

addcmd('freecamspeed',{'fcspeed'},function(args, speaker)
	local FCspeed = args[1] or 1
	if isNumber(FCspeed) then
		NAV_KEYBOARD_SPEED = Vector3.new(FCspeed, FCspeed, FCspeed)
	end
end)

addcmd('notifyfreecamposition',{'notifyfcpos'},function(args, speaker)
	if fcRunning then
		local X,Y,Z = workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
		local Format, Round = string.format, math.round
		notify("Current Position", Format("%s, %s, %s", Round(X), Round(Y), Round(Z)))
	end
end)

addcmd('copyfreecamposition',{'copyfcpos'},function(args, speaker)
	if fcRunning then
		local X,Y,Z = workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
		local Format, Round = string.format, math.round
		toClipboard(Format("%s, %s, %s", Round(X), Round(Y), Round(Z)))
	end
end)

addcmd('gotocamera',{'gotocam','tocam'},function(args, speaker)
	getRoot(speaker.Character).CFrame = workspace.Camera.CFrame
end)

addcmd('tweengotocamera',{'tweengotocam','tgotocam','ttocam'},function(args, speaker)
	TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = workspace.Camera.CFrame}):Play()
end)

addcmd('fov',{},function(args, speaker)
	local fov = args[1] or 70
	if isNumber(fov) then
		workspace.CurrentCamera.FieldOfView = fov
	end
end)

local preMaxZoom = Players.LocalPlayer.CameraMaxZoomDistance
local preMinZoom = Players.LocalPlayer.CameraMinZoomDistance
addcmd('lookat',{},function(args, speaker)
	if speaker.CameraMaxZoomDistance ~= 0.5 then
		preMaxZoom = speaker.CameraMaxZoomDistance
		preMinZoom = speaker.CameraMinZoomDistance
	end
	speaker.CameraMaxZoomDistance = 0.5
	speaker.CameraMinZoomDistance = 0.5
	wait()
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local target = Players[v].Character
		if target and target:FindFirstChild('Head') then
			workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.p, target.Head.CFrame.p)
			wait(0.1)
		end
	end
	speaker.CameraMaxZoomDistance = preMaxZoom
	speaker.CameraMinZoomDistance = preMinZoom
end)

addcmd('fixcam',{'restorecam'},function(args, speaker)
	StopFreecam()
	execCmd('unview')
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until speaker.Character ~= nil
	workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	speaker.CameraMinZoomDistance = 0.5
	speaker.CameraMaxZoomDistance = 400
	speaker.CameraMode = "Classic"
	speaker.Character.Head.Anchored = false
end)

addcmd('enableshiftlock',{'enablesl','shiftlock'},function(args, speaker)
	speaker.DevEnableMouseLock = true
	notify('Shiftlock','Shift lock is now available')
end)

addcmd('firstp',{},function(args, speaker)
	speaker.CameraMode = "LockFirstPerson"
end)

addcmd('thirdp',{},function(args, speaker)
	speaker.CameraMode = "Classic"
end)

addcmd('noclipcam', {'nccam'}, function(args, speaker)
	local sc = (debug and debug.setconstant) or setconstant
	local gc = (debug and debug.getconstants) or getconstants
	if not sc or not getgc or not gc then
		return notify('Incompatible Exploit', 'Your exploit does not support this command (missing setconstant or getconstants or getgc)')
	end
	local pop = speaker.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
	for _, v in pairs(getgc()) do
		if type(v) == 'function' and getfenv(v).script == pop then
			for i, v1 in pairs(gc(v)) do
				if tonumber(v1) == .25 then
					sc(v, i, 0)
				elseif tonumber(v1) == 0 then
					sc(v, i, .25)
				end
			end
		end
	end
end)

addcmd('maxzoom',{},function(args, speaker)
	speaker.CameraMaxZoomDistance = args[1]
end)

addcmd('minzoom',{},function(args, speaker)
	speaker.CameraMinZoomDistance = args[1]
end)

addcmd('camdistance',{},function(args, speaker)
	local camMax = speaker.CameraMaxZoomDistance
	local camMin = speaker.CameraMinZoomDistance
	if camMax < tonumber(args[1]) then
		camMax = args[1]
	end
	speaker.CameraMaxZoomDistance = args[1]
	speaker.CameraMinZoomDistance = args[1]
	wait()
	speaker.CameraMaxZoomDistance = camMax
	speaker.CameraMinZoomDistance = camMin
end)

addcmd('unlockws',{'unlockworkspace'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = false
		end
	end
end)

addcmd('lockws',{'lockworkspace'},function(args, speaker) 
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Locked = true
		end
	end
end)

addcmd('delete',{'remove'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted ' ..getstring(1))
end)

addcmd('deleteclass',{'removeclass','deleteclassname','removeclassname','dc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted items with ClassName ' ..getstring(1))
end)

addcmd('chardelete',{'charremove','cd'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted ' ..getstring(1))
end)

addcmd('chardeleteclass',{'charremoveclass','chardeleteclassname','charremoveclassname','cdc'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() then
			v:Destroy()
		end
	end
	notify('Item(s) Deleted','Deleted items with ClassName ' ..getstring(1))
end)

addcmd('deletevelocity',{'dv','removevelocity','removeforces'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("BodyVelocity") or v:IsA("BodyGyro") or v:IsA("RocketPropulsion") or v:IsA("BodyThrust") or v:IsA("BodyAngularVelocity") or v:IsA("AngularVelocity") or v:IsA("BodyForce") or v:IsA("VectorForce") or v:IsA("LineForce") then
			v:Destroy()
		end
	end
end)

addcmd('deleteinvisparts',{'deleteinvisibleparts','dip'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and v.Transparency == 1 and v.CanCollide then
			v:Destroy()
		end
	end
end)

local shownParts = {}
addcmd('invisibleparts',{'invisparts'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and v.Transparency == 1 then
			if not table.find(shownParts,v) then
				table.insert(shownParts,v)
			end
			v.Transparency = 0
		end
	end
end)

addcmd('uninvisibleparts',{'uninvisparts'},function(args, speaker)
	for i,v in pairs(shownParts) do
		v.Transparency = 1
	end
	shownParts = {}
end)

addcmd('btools',{},function(args, speaker)
	for i = 1, 4 do
		local Tool = Instance.new("HopperBin")
		Tool.BinType = i
		Tool.Name = randomString()
		Tool.Parent = speaker:FindFirstChildOfClass("Backpack")
	end
end)

addcmd('f3x',{'fex'},function(args, speaker)
	loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
end)

addcmd('partpath',{'partname'},function(args, speaker)
	selectPart()
end)

addcmd('antiafk',{'antiidle'},function(args, speaker)
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		Players.LocalPlayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
	if not (args[1] and tostring(args[1]) == 'nonotify') then notify('Anti Idle','Anti idle is enabled') end
end)

addcmd("datalimit", {}, function(args, speaker)
	if tonumber(args[1]) then
		NetworkClient:SetOutgoingKBPSLimit(args[1])
	end
end)

addcmd("replicationlag", {"backtrack"}, function(args, speaker)
	if tonumber(args[1]) then
		settings():GetService("NetworkSettings").IncomingReplicationLag = args[1]
	end
end)

addcmd("noprompts", {"nopurchaseprompts"}, function(args, speaker)
	COREGUI.PurchasePrompt.Enabled = false
end)

addcmd("showprompts", {"showpurchaseprompts"}, function(args, speaker)
	COREGUI.PurchasePrompt.Enabled = true
end)

promptNewRig = function(speaker, rig)
	local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		AvatarEditorService:PromptSaveAvatar(humanoid.HumanoidDescription, Enum.HumanoidRigType[rig])
		local result = AvatarEditorService.PromptSaveAvatarCompleted:Wait()
		if result == Enum.AvatarPromptResult.Success then
			execCmd("reset")
		end
	end
end

addcmd("promptr6", {}, function(args, speaker)
	promptNewRig(speaker, "R6")
end)

addcmd("promptr15", {}, function(args, speaker)
	promptNewRig(speaker, "R15")
end)

addcmd('age',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local ages = {}
	for i,v in pairs(players) do
		local p = Players[v]
		table.insert(ages, p.Name.."'s age is: "..p.AccountAge)
	end
	notify('Account Age',table.concat(ages, ',\n'))
end)

addcmd('chatage',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local ages = {}
	for i,v in pairs(players) do
		local p = Players[v]
		table.insert(ages, p.Name.."'s age is: "..p.AccountAge)
	end
	local chatString = table.concat(ages, ', ')
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatString, "All")
end)

addcmd('joindate',{'jd'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local dates = {}
	notify("Loading",'Hold on a sec')
	for i,v in pairs(players) do
		local user = game:HttpGet("https://users.roblox.com/v1/users/"..Players[v].UserId)
		local json = HttpService:JSONDecode(user)
		local date = json["created"]:sub(1,10)
		local splitDates = string.split(date,"-")
		table.insert(dates,Players[v].Name.." joined: "..splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
	end
	notify('Join Date (Month/Day/Year)',table.concat(dates, ',\n'))
end)

addcmd('chatjoindate',{'cjd'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	local dates = {}
	notify("Loading",'Hold on a sec')
	for i,v in pairs(players) do
		local user = game:HttpGet("https://users.roblox.com/v1/users/"..Players[v].UserId)
		local json = HttpService:JSONDecode(user)
		local date = json["created"]:sub(1,10)
		local splitDates = string.split(date,"-")
		table.insert(dates,Players[v].Name.." joined: "..splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
	end
	local chatString = table.concat(dates, ', ')
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chatString, "All")
end)

addcmd('copyname',{'copyuser'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local name = tostring(Players[v].Name)
		toClipboard(name)
	end
end)

addcmd('userid',{'id'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local id = tostring(Players[v].UserId)
		notify('User ID',id)
	end
end)

addcmd('copyid',{'copyuserid'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local id = tostring(Players[v].UserId)
		toClipboard(id)
	end
end)

addcmd('creatorid',{'creator'},function(args, speaker)
	if game.CreatorType == Enum.CreatorType.User then
		notify('Creator ID',game.CreatorId)
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		speaker.UserId = OwnerID
		notify('Creator ID',OwnerID)
	end
end)

addcmd('copycreatorid',{'copycreator'},function(args, speaker)
	if game.CreatorType == Enum.CreatorType.User then
		toClipboard(game.CreatorId)
		notify('Copied ID','Copied creator ID to clipboard')
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		toClipboard(OwnerID)
		notify('Copied ID','Copied creator ID to clipboard')
	end
end)

addcmd('setcreatorid',{'setcreator'},function(args, speaker)
	if game.CreatorType == Enum.CreatorType.User then
		speaker.UserId = game.CreatorId
		notify('Set ID','Set UserId to '..game.CreatorId)
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		speaker.UserId = OwnerID
		notify('Set ID','Set UserId to '..OwnerID)
	end
end)

addcmd('appearanceid',{'aid'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local aid = tostring(Players[v].CharacterAppearanceId)
		notify('Appearance ID',aid)
	end
end)

addcmd('copyappearanceid',{'caid'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		local aid = tostring(Players[v].CharacterAppearanceId)
		toClipboard(aid)
	end
end)

addcmd('norender',{},function(args, speaker)
	RunService:Set3dRenderingEnabled(false)
end)

addcmd('render',{},function(args, speaker)
	RunService:Set3dRenderingEnabled(true)
end)

addcmd('2022materials',{'use2022materials'},function(args, speaker)
	if sethidden then
		sethidden(MaterialService, "Use2022Materials", true)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('un2022materials',{'unuse2022materials'},function(args, speaker)
	if sethidden then
		sethidden(MaterialService, "Use2022Materials", false)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('goto',{'to'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(3,1,0)
		end
	end
	execCmd('breakvelocity')
end)

addcmd('tweengoto',{'tgoto','tto','tweento'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(3,1,0)}):Play()
		end
	end
	execCmd('breakvelocity')
end)

addcmd('vehiclegoto',{'vgoto','vtp','vehicletp'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
			local vehicleModel = seat:FindFirstAncestorWhichIsA("Model")
			vehicleModel:MoveTo(getRoot(Players[v].Character).Position)
		end
	end
end)

addcmd('pulsetp',{'ptp'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			local startPos = getRoot(speaker.Character).CFrame
			local seconds = args[2] or 1
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(3,1,0)
			wait(seconds)
			getRoot(speaker.Character).CFrame = startPos
		end
	end
	execCmd('breakvelocity')
end)

local vnoclipParts = {}
addcmd('vehiclenoclip',{'vnoclip'},function(args, speaker)
	vnoclipParts = {}
	local seat = speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart
	local vehicleModel = seat.Parent
	repeat
		if vehicleModel.ClassName ~= "Model" then
			vehicleModel = vehicleModel.Parent
		end
	until vehicleModel.ClassName == "Model"
	wait(0.1)
	execCmd('noclip')
	for i,v in pairs(vehicleModel:GetDescendants()) do
		if v:IsA("BasePart") and v.CanCollide then
			table.insert(vnoclipParts,v)
			v.CanCollide = false
		end
	end
end)

addcmd("vehicleclip", {"vclip", "unvnoclip", "unvehiclenoclip"}, function(args, speaker)
	execCmd("clip")
	for i, v in pairs(vnoclipParts) do
		v.CanCollide = true
	end
	vnoclipParts = {}
end)

addcmd("togglevnoclip", {}, function(args, speaker)
	execCmd(Clip and "vnoclip" or "vclip")
end)

addcmd('clientbring',{'cbring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if Players[v].Character:FindFirstChildOfClass('Humanoid') then
				Players[v].Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait()
			getRoot(Players[v].Character).CFrame = getRoot(speaker.Character).CFrame + Vector3.new(3,1,0)
		end
	end
end)

local bringT = {}
addcmd('loopbring',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			if Players[v].Name ~= speaker.Name and not FindInTable(bringT, Players[v].Name) then
				table.insert(bringT, Players[v].Name)
				local plrName = Players[v].Name
				local pchar=Players[v].Character
				local distance = 3
				if args[2] and isNumber(args[2]) then
					distance = args[2]
				end
				local lDelay = 0
				if args[3] and isNumber(args[3]) then
					lDelay = args[3]
				end
				repeat
					for i,c in pairs(players) do
						if Players:FindFirstChild(v) then
							pchar = Players[v].Character
							if pchar~= nil and Players[v].Character ~= nil and getRoot(pchar) and speaker.Character ~= nil and getRoot(speaker.Character) then
								getRoot(pchar).CFrame = getRoot(speaker.Character).CFrame + Vector3.new(distance,1,0)
							end
							wait(lDelay)
						else 
							for a,b in pairs(bringT) do if b == plrName then table.remove(bringT, a) end end
						end
					end
				until not FindInTable(bringT, plrName)
			end
		end)
	end
end)

addcmd('unloopbring',{'noloopbring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			for a,b in pairs(bringT) do if b == Players[v].Name then table.remove(bringT, a) end end
		end)
	end
end)

local walkto = false
local waypointwalkto = false
addcmd('walkto',{'follow'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			walkto = true
			repeat wait()
				speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(Players[v].Character).Position)
			until Players[v].Character == nil or not getRoot(Players[v].Character) or walkto == false
		end
	end
end)

addcmd('pathfindwalkto',{'pathfindfollow'},function(args, speaker)
	walkto = false
	wait()
	local players = getPlayer(args[1], speaker)
	local hum = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local path = PathService:CreatePath()
	for i,v in pairs(players)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			walkto = true
			repeat wait()
				local success, response = pcall(function()
					path:ComputeAsync(getRoot(speaker.Character).Position, getRoot(Players[v].Character).Position)
					local waypoints = path:GetWaypoints()
					local distance 
					for waypointIndex, waypoint in pairs(waypoints) do
						local waypointPosition = waypoint.Position
						hum:MoveTo(waypointPosition)
						repeat 
							distance = (waypointPosition - hum.Parent.PrimaryPart.Position).magnitude
							wait()
						until
						distance <= 5
					end	 
				end)
				if not success then
					speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(Players[v].Character).Position)
				end
			until Players[v].Character == nil or not getRoot(Players[v].Character) or walkto == false
		end
	end
end)

addcmd('pathfindwalktowaypoint',{'pathfindwalktowp'},function(args, speaker)
	waypointwalkto = false
	wait()
	local WPName = tostring(getstring(1))
	local hum = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local path = PathService:CreatePath()
	if speaker.Character then
		for i,_ in pairs(WayPoints) do
			if tostring(WayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				local TrueCoords = Vector3.new(WayPoints[i].COORD[1], WayPoints[i].COORD[2], WayPoints[i].COORD[3])
				waypointwalkto = true
				repeat wait()
					local success, response = pcall(function()
						path:ComputeAsync(getRoot(speaker.Character).Position, TrueCoords)
						local waypoints = path:GetWaypoints()
						local distance 
						for waypointIndex, waypoint in pairs(waypoints) do
							local waypointPosition = waypoint.Position
							hum:MoveTo(waypointPosition)
							repeat 
								distance = (waypointPosition - hum.Parent.PrimaryPart.Position).magnitude
								wait()
							until
							distance <= 5
						end
					end)
					if not success then
						speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(TrueCoords)
					end
				until not speaker.Character or waypointwalkto == false
			end
		end
		for i,_ in pairs(pWayPoints) do
			if tostring(pWayPoints[i].NAME):lower() == tostring(WPName):lower() then
				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				local TrueCoords = pWayPoints[i].COORD[1].Position
				waypointwalkto = true
				repeat wait()
					local success, response = pcall(function()
						path:ComputeAsync(getRoot(speaker.Character).Position, TrueCoords)
						local waypoints = path:GetWaypoints()
						local distance 
						for waypointIndex, waypoint in pairs(waypoints) do
							local waypointPosition = waypoint.Position
							hum:MoveTo(waypointPosition)
							repeat 
								distance = (waypointPosition - hum.Parent.PrimaryPart.Position).magnitude
								wait()
							until
							distance <= 5
						end
					end)
					if not success then
						speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(TrueCoords)
					end
				until not speaker.Character or waypointwalkto == false
			end
		end
	end
end)

addcmd('unwalkto',{'nowalkto','unfollow','nofollow'},function(args, speaker)
	walkto = false
	waypointwalkto = false
end)

addcmd('freeze',{'fr'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("BasePart") and not x.Anchored then
						x.Anchored = true
					end
				end
			end)
		end
	end
end)


addcmd('thaw',{'unfreeze','unfr'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x.Name ~= floatName and x:IsA("BasePart") and x.Anchored then
						x.Anchored = false
					end
				end
			end)
		end
	end
end)

oofing = false
addcmd('loopoof',{},function(args, speaker)
	oofing = true
	repeat wait(0.1)
		for i,v in pairs(Players:GetPlayers()) do
			if v.Character ~= nil and v.Character:FindFirstChild'Head' then
				for _,x in pairs(v.Character.Head:GetChildren()) do
					if x:IsA'Sound' then x.Playing = true end
				end
			end
		end
	until oofing == false
end)

addcmd('unloopoof',{},function(args, speaker)
	oofing = false
end)

local notifiedRespectFiltering = false
addcmd('muteboombox',{},function(args, speaker)
	if not notifiedRespectFiltering and SoundService.RespectFilteringEnabled then notifiedRespectFiltering = true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)') end
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("Sound") and x.Playing == true then
						x.Playing = false
					end
				end
				for i, x in next, Players[v]:FindFirstChildOfClass("Backpack"):GetDescendants() do
					if x:IsA("Sound") and x.Playing == true then
						x.Playing = false
					end
				end
			end)
		end
	end
end)

addcmd('unmuteboombox',{},function(args, speaker)
	if not notifiedRespectFiltering and SoundService.RespectFilteringEnabled then notifiedRespectFiltering = true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)') end
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			task.spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("Sound") and x.Playing == false then
						x.Playing = true
					end
				end
			end)
		end
	end
end)

addcmd('reset',{},function(args, speaker)
	speaker.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)
end)

addcmd('freezeanims',{},function(args, speaker)
	local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(0)
	end
end)

addcmd('unfreezeanims',{},function(args, speaker)
	local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(1)
	end
end)




addcmd('respawn',{},function(args, speaker)
	respawn(speaker)
end)

addcmd('refresh',{'re'},function(args, speaker)
	refresh(speaker)
end)

addcmd('god',{},function(args, speaker)
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end)

invisRunning = false
addcmd('invisible',{'invis'},function(args, speaker)
	if invisRunning then return end
	invisRunning = true
	-- Full credit to AmokahFox @V3rmillion
	local Player = speaker
	repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = Lighting
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

	local invisFix = RunService.Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

	for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Transparency = .5
			end
		end
	end

	function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = Lighting
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	execCmd('fixcam')
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false

	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
	notify('Invisible','You now appear invisible to other players')
end)

addcmd("visible", {"vis"}, function(args, speaker)
	TurnVisible()
end)

addcmd("toggleinvis", {}, function(args, speaker)
	execCmd(invisRunning and "visible" or "invisible")
end)

addcmd('toolinvisible',{'toolinvis','tinvis'},function(args, speaker)
	local Char  = Players.LocalPlayer.Character
	local touched = false
	local tpdback = false
	local box = Instance.new('Part')
	box.Anchored = true
	box.CanCollide = true
	box.Size = Vector3.new(10,1,10)
	box.Position = Vector3.new(0,10000,0)
	box.Parent = workspace
	local boxTouched = box.Touched:connect(function(part)
		if (part.Parent.Name == Players.LocalPlayer.Name) then
			if touched == false then
				touched = true
				local function apply()
					local no = Char.HumanoidRootPart:Clone()
					wait(.25)
					Char.HumanoidRootPart:Destroy()
					no.Parent = Char
					Char:MoveTo(loc)
					touched = false
				end
				if Char then
					apply()
				end
			end
		end
	end)
	repeat wait() until Char
	local cleanUp
	cleanUp = Players.LocalPlayer.CharacterAdded:connect(function(char)
		boxTouched:Disconnect()
		box:Destroy()
		cleanUp:Disconnect()
	end)
	loc = Char.HumanoidRootPart.Position
	Char:MoveTo(box.Position + Vector3.new(0,.5,0))
end)

addcmd("strengthen", {}, function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if args[1] then
				child.CustomPhysicalProperties = PhysicalProperties.new(args[1], 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
			end
		end
	end
end)

addcmd("weaken", {}, function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if args[1] then
				child.CustomPhysicalProperties = PhysicalProperties.new(-args[1], 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
			end
		end
	end
end)

addcmd("unweaken", {"unstrengthen"}, function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd("breakvelocity", {}, function(args, speaker)
	local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
	delay(1, function()
		BeenASecond = true
	end)
	while not BeenASecond do
		for _, v in ipairs(speaker.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Velocity, v.RotVelocity = V3, V3
			end
		end
		wait()
	end
end)

addcmd('jpower',{'jumppower','jp'},function(args, speaker)
	local jpower = args[1] or 50
	if isNumber(jpower) then
		if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = jpower
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jpower
		end
	end
end)

addcmd("maxslopeangle", {"msa"}, function(args, speaker)
	local sangle = args[1] or 89
	if isNumber(sangle) then
		speaker.Character:FindFirstChildWhichIsA("Humanoid").MaxSlopeAngle = sangle
	end
end)

addcmd("gravity", {"grav"}, function(args, speaker)
	local grav = args[1] or 196.2
	if isNumber(grav) then
		workspace.Gravity = grav
	end
end)

addcmd("hipheight", {"hheight"}, function(args, speaker)
	speaker.Character:FindFirstChildWhichIsA("Humanoid").HipHeight = args[1] or (r15(speaker) and 2.1 or 0)
end)

addcmd("dance", {}, function(args, speaker)
	pcall(execCmd, "undance")
	local dances = {"27789359", "30196114", "248263260", "45834924", "33796059", "28488254", "52155728"}
	if r15(speaker) then
		dances = {"3333432454", "4555808220", "4049037604", "4555782893", "10214311282", "10714010337", "10713981723", "10714372526", "10714076981", "10714392151", "11444443576"}
	end
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://" .. dances[math.random(1, #dances)]
	danceTrack = speaker.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(animation)
	danceTrack.Looped = true
	danceTrack:Play()
end)

addcmd("undance", {"nodance"}, function(args, speaker)
	danceTrack:Stop()
	danceTrack:Destroy()
end)

addcmd('nolimbs',{'rlimbs'},function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" or
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" or
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('nohead',{'rhead','headless'},function(args, speaker)
	if sethidden then
		-- Full credit to Thomas_Cornez#0272 @Discord
		local lplr = Players.LocalPlayer
		local char = lplr.Character
		local rigType = tostring(char:FindFirstChildOfClass('Humanoid').RigType) == "Enum.HumanoidRigType.R6" and 1 or tostring(char:FindFirstChildOfClass('Humanoid').RigType) == "Enum.HumanoidRigType.R15" and 2

		local speaker = Players.LocalPlayer


		local test = Instance.new("Model")
		local hum  = Instance.new("Humanoid")
		local animation = Instance.new("Model")
		local humanoidanimation = Instance.new("Humanoid")
		test.Parent = workspace
		hum.Parent = test
		animation.Parent = workspace
		humanoidanimation.Parent = animation

		lplr.Character = test
		wait(2)
		char:FindFirstChildOfClass('Humanoid').Animator.Parent = humanoidanimation
		char:FindFirstChildOfClass('Humanoid'):Destroy()

		char.Head:Destroy()
		wait(5)
		Players.LocalPlayer.Character = char

		local hum2 = Instance.new("Humanoid")
		hum2.Parent = char
		char:FindFirstChildOfClass("Humanoid").Jump = true

		humanoidanimation.Animator.Parent = hum2
		char.Animate.Disabled = true
		wait()
		char.Animate.Disabled = false
		wait()

		if rig == 1 then
			hum2.HipHeight = 0
		elseif rig == 2 then
			hum2.HipHeight = 2.19
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('noarms',{'rarms'},function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('nolegs',{'rlegs'},function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
end)

addcmd("sit", {}, function(args, speaker)
	speaker.Character:FindFirstChildWhichIsA("Humanoid").Sit = true
end)

addcmd("lay", {"laydown"}, function(args, speaker)
	local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
	humanoid.Sit = true
	task.wait(0.1)
	humanoid.RootPart.CFrame = humanoid.RootPart.CFrame * CFrame.Angles(math.pi * 0.5, 0, 0)
	for _, v in ipairs(humanoid:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end)

addcmd("sitwalk", {}, function(args, speaker)
	local anims = speaker.Character.Animate
	local sit = anims.sit:FindFirstChildWhichIsA("Animation").AnimationId
	anims.idle:FindFirstChildWhichIsA("Animation").AnimationId = sit
	anims.walk:FindFirstChildWhichIsA("Animation").AnimationId = sit
	anims.run:FindFirstChildWhichIsA("Animation").AnimationId = sit
	anims.jump:FindFirstChildWhichIsA("Animation").AnimationId = sit
	speaker.Character:FindFirstChildWhichIsA("Humanoid").HipHeight = not r15(speaker) and -1.5 or 0.5
end)

function noSitFunc()
	wait()
	if Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Sit then
		Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid").Sit = false
	end
end
addcmd("nosit", {}, function(args, speaker)
	if noSit then noSit:Disconnect() nositDied:Disconnect() end
	noSit = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("Sit"):Connect(noSitFunc)
	local function nositDiedFunc()
		repeat wait() until speaker.Character ~= nil and speaker.Character:FindFirstChildOfClass("Humanoid")
		noSit:Disconnect()
		noSit = Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("Sit"):Connect(noSitFunc)
	end
	nositDied = speaker.CharacterAdded:Connect(nositDiedFunc)
end)

addcmd("unnosit", {}, function(args, speaker)
	if noSit then noSit:Disconnect() nositDied:Disconnect() end
end)

addcmd("jump", {}, function(args, speaker)
	speaker.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
end)

local infJump
infJumpDebounce = false
addcmd("infjump", {"infinitejump"}, function(args, speaker)
	if infJump then infJump:Disconnect() end
	infJumpDebounce = false
	infJump = UserInputService.JumpRequest:Connect(function()
		if not infJumpDebounce then
			infJumpDebounce = true
			speaker.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
			wait()
			infJumpDebounce = false
		end
	end)
end)

addcmd("uninfjump", {"uninfinitejump", "noinfjump", "noinfinitejump"}, function(args, speaker)
	if infJump then infJump:Disconnect() end
	infJumpDebounce = false
end)

local flyjump
addcmd("flyjump", {}, function(args, speaker)
	if flyjump then flyjump:Disconnect() end
	flyjump = UserInputService.JumpRequest:Connect(function()
		speaker.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end)
end)

addcmd("unflyjump", {"noflyjump"}, function(args, speaker)
	if flyjump then flyjump:Disconnect() end
end)

local HumanModCons = {}
addcmd('autojump',{'ajump'},function(args, speaker)
	local Char = speaker.Character
	local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
	local function autoJump()
		if Char and Human then
			local check1 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position-Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
			local check2 = workspace:FindPartOnRay(Ray.new(Human.RootPart.Position+Vector3.new(0,1.5,0), Human.RootPart.CFrame.lookVector*3), Human.Parent)
			if check1 or check2 then
				Human.Jump = true
			end
		end
	end
	autoJump()
	HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or RunService.RenderStepped:Connect(autoJump)
	HumanModCons.ajCA = (HumanModCons.ajCA and HumanModCons.ajCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
		Char, Human = nChar, nChar:WaitForChild("Humanoid")
		autoJump()
		HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or RunService.RenderStepped:Connect(autoJump)
	end)
end)

addcmd('unautojump',{'noautojump', 'noajump', 'unajump'},function(args, speaker)
	HumanModCons.ajLoop = (HumanModCons.ajLoop and HumanModCons.ajLoop:Disconnect() and false) or nil
	HumanModCons.ajCA = (HumanModCons.ajCA and HumanModCons.ajCA:Disconnect() and false) or nil
end)

addcmd('edgejump',{'ejump'},function(args, speaker)
	local Char = speaker.Character
	local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
	-- Full credit to NoelGamer06 @V3rmillion
	local state
	local laststate
	local lastcf
	local function edgejump()
		if Char and Human then
			laststate = state
			state = Human:GetState()
			if laststate ~= state and state == Enum.HumanoidStateType.Freefall and laststate ~= Enum.HumanoidStateType.Jumping then
				Char.HumanoidRootPart.CFrame = lastcf
				Char.HumanoidRootPart.Velocity = Vector3.new(Char.HumanoidRootPart.Velocity.X, Human.JumpPower or Human.JumpHeight, Char.HumanoidRootPart.Velocity.Z)
			end
			lastcf = Char.HumanoidRootPart.CFrame
		end
	end
	edgejump()
	HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or RunService.RenderStepped:Connect(edgejump)
	HumanModCons.ejCA = (HumanModCons.ejCA and HumanModCons.ejCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
		Char, Human = nChar, nChar:WaitForChild("Humanoid")
		edgejump()
		HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or RunService.RenderStepped:Connect(edgejump)
	end)
end)

addcmd('unedgejump',{'noedgejump', 'noejump', 'unejump'},function(args, speaker)
	HumanModCons.ejLoop = (HumanModCons.ejLoop and HumanModCons.ejLoop:Disconnect() and false) or nil
	HumanModCons.ejCA = (HumanModCons.ejCA and HumanModCons.ejCA:Disconnect() and false) or nil
end)

addcmd('team',{},function(args, speaker)
	local teamname = nil
	for a,b in pairs(Teams:GetChildren()) do
		local L_name = b.Name:lower()
		local F = L_name:find(getstring(1))
		if F == 1 then
			teamname = b 
		end
	end
	speaker.Team = teamname
end)

addcmd('nobgui',{'unbgui','nobillboardgui','unbillboardgui','noname','rohg'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants())do
		if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
			v:Destroy()
		end
	end
end)

addcmd('loopnobgui',{'loopunbgui','loopnobillboardgui','loopunbillboardgui','loopnoname','looprohg'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants())do
		if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
			v:Destroy()
		end
	end
	local function charPartAdded(part)
		if part:IsA("BillboardGui") or part:IsA("SurfaceGui") then
			wait()
			part:Destroy()
		end
	end
	charPartTrigger = speaker.Character.DescendantAdded:Connect(charPartAdded)
end)

addcmd('unloopnobgui',{'unloopunbgui','unloopnobillboardgui','unloopunbillboardgui','unloopnoname','unlooprohg'},function(args, speaker)
	if charPartTrigger then
		charPartTrigger:Disconnect()
	end
end)

addcmd('spasm',{},function(args, speaker)
	if not r15(speaker) then
		local pchar=speaker.Character
		local AnimationId = "33796059"
		SpasmAnim = Instance.new("Animation")
		SpasmAnim.AnimationId = "rbxassetid://"..AnimationId
		Spasm = pchar:FindFirstChildOfClass('Humanoid'):LoadAnimation(SpasmAnim)
		Spasm:Play()
		Spasm:AdjustSpeed(99)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('unspasm',{'nospasm'},function(args, speaker)
	Spasm:Stop()
	SpasmAnim:Destroy()
end)

addcmd('headthrow',{},function(args, speaker)
	if not r15(speaker) then
		local AnimationId = "35154961"
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
		k:Play(0)
		k:AdjustSpeed(1)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('animation',{'anim'},function(args, speaker)
	if not r15(speaker) then
		local pchar=speaker.Character
		local AnimationId = tostring(args[1])
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = pchar:FindFirstChildOfClass('Humanoid'):LoadAnimation(Anim)
		k:Play()
		if args[2] then
			k:AdjustSpeed(tostring(args[2]))
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('noanim',{},function(args, speaker)
	speaker.Character.Animate.Disabled = true
end)

addcmd('reanim',{},function(args, speaker)
	speaker.Character.Animate.Disabled = false
end)

addcmd('animspeed',{},function(args, speaker)
	local Char = speaker.Character
	local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

	for i,v in next, Hum:GetPlayingAnimationTracks() do
		v:AdjustSpeed(tonumber(args[1] or 1))
	end
end)

addcmd('copyanimation',{'copyanim','copyemote'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for _,v in ipairs(players)do
		local char = Players[v].Character
		for _, v1 in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks()) do
			v1:Stop()
		end
		for _, v1 in pairs(Players[v].Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks()) do
			if not string.find(v1.Animation.AnimationId, "507768375") then
				local ANIM = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(v1.Animation)
				ANIM:Play(.1, 1, v1.Speed)
				ANIM.TimePosition = v1.TimePosition
				task.spawn(function()
					v1.Stopped:Wait()
					ANIM:Stop()
					ANIM:Destroy()
				end)
			end
		end
	end
end)

addcmd('stopanimations',{'stopanims','stopanim'},function(args, speaker)
	local Char = speaker.Character
	local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

	for i,v in next, Hum:GetPlayingAnimationTracks() do
		v:Stop()
	end
end)

addcmd('refreshanimations', {'refreshanimation', 'refreshanims', 'refreshanim'}, function(args, speaker)
	local Char = speaker.Character or speaker.CharacterAdded:Wait()
	local Human = Char and Char:WaitForChild('Humanoid', 15)
	local Animate = Char and Char:WaitForChild('Animate', 15)
	if not Human or not Animate then
		return notify('Refresh Animations', 'Failed to get Animate/Humanoid')
	end
	Animate.Disabled = true
	for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
		v:Stop()
	end
	Animate.Disabled = false
end)

addcmd('allowcustomanim', {'allowcustomanimations'}, function(args, speaker)
	StarterPlayer.AllowCustomAnimations = true
	execCmd('refreshanimations')
end)

addcmd('unallowcustomanim', {'unallowcustomanimations'}, function(args, speaker)
	StarterPlayer.AllowCustomAnimations = false
	execCmd('refreshanimations')
end)

addcmd('loopanimation', {'loopanim'},function(args, speaker)
	local Char = speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	for _, v in ipairs(Human.GetPlayingAnimationTracks(Human)) do
		v.Looped = true
	end
end)

addcmd('tpposition',{'tppos'},function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
	end
end)

addcmd('tweentpposition',{'ttppos'},function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(tpX,tpY,tpZ)}):Play()
	end
end)

addcmd('offset',{},function(args, speaker)
	if #args < 3 then
		return 
	end
	if speaker.Character then
		speaker.Character:TranslateBy(Vector3.new(tonumber(args[1]) or 0, tonumber(args[2]) or 0, tonumber(args[3]) or 0))
	end
end)

addcmd('tweenoffset',{'toffset'},function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = CFrame.new(tpX,tpY,tpZ)}):Play()
	end
end)

addcmd('clickteleport',{},function(args, speaker)
	if speaker == Players.LocalPlayer then
		notify('Click TP','Go to Settings>Keybinds>Add to set up click tp')
	end
end)

addcmd('tptool', {'teleporttool'}, function(args, speaker)
	local TpTool = Instance.new("Tool")
	TpTool.Name = "Teleport Tool"
	TpTool.RequiresHandle = false
	TpTool.Parent = speaker.Backpack
	TpTool.Activated:Connect(function()
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		if not Char or not HRP then
			return warn("Failed to find HumanoidRootPart")
		end
		HRP.CFrame = CFrame.new(IYMouse.Hit.X, IYMouse.Hit.Y + 3, IYMouse.Hit.Z, select(4, HRP.CFrame:components()))
	end)
end)

addcmd('clickdelete',{},function(args, speaker)
	if speaker == Players.LocalPlayer then
		notify('Click Delete','Go to Settings>Keybinds>Add to set up click delete')
	end
end)

addcmd('getposition',{'getpos','notifypos','notifyposition'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		local char = Players[v].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify('Getposition Error','Missing character')
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		notify('Current Position',roundedPos)
	end
end)

addcmd('copyposition',{'copypos'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		local char = Players[v].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify('Getposition Error','Missing character')
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		toClipboard(roundedPos)
	end
end)

addcmd('walktopos',{'walktoposition'},function(args, speaker)
	if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
		speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
		wait(.1)
	end
	speaker.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(args[1],args[2],args[3])
end)

addcmd('speed',{'ws','walkspeed'},function(args, speaker)
	if args[2] then
		local speed = args[2] or 16
		if isNumber(speed) then
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
		end
	else
		local speed = args[1] or 16
		if isNumber(speed) then
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
		end
	end
end)

addcmd('spoofspeed',{'spoofws','spoofwalkspeed'},function(args, speaker)
	if args[1] and isNumber(args[1]) then
		if hookmetamethod then
			local char = speaker.Character
			local setspeed;
			local index; index = hookmetamethod(game, "__index", function(self, key)
				local keyclean = key:gsub("\0", "")
				if (keyclean == "WalkSpeed" or keyclean == "walkSpeed") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					return setspeed or args[1]
				end
				return index(self, key)
			end)
			local newindex; newindex = hookmetamethod(game, "__newindex", function(self, key, value)
				local keyclean = string.gsub(key, "\0", "")
				if (keyclean == "WalkSpeed" or keyclean == "walkSpeed") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					setspeed = tonumber(value)
					return setspeed
				end
				return newindex(self, key, value)
			end)
		else
			notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
		end
	end
end)

addcmd('loopspeed',{'loopws'},function(args, speaker)
	local speed = args[1] or 16
	if args[2] then
		speed = args[2] or 16
	end
	if isNumber(speed) then
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
		local function WalkSpeedChange()
			if Char and Human then
				Human.WalkSpeed = speed
			end
		end
		WalkSpeedChange()
		HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
			Char, Human = nChar, nChar:WaitForChild("Humanoid")
			WalkSpeedChange()
			HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		end)
	end
end)

addcmd('unloopspeed',{'unloopws'},function(args, speaker)
	HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or nil
	HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or nil
end)

addcmd('spoofjumppower',{'spoofjp'},function(args, speaker)
	if args[1] and isNumber(args[1]) then
		if hookmetamethod then
			local char = speaker.Character
			local setpower;
			local index; index = hookmetamethod(game, "__index", function(self, key)
				local keyclean = key:gsub("\0", "")
				if (keyclean == "JumpPower" or keyclean == "jumpPower") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					return setpower or args[1]
				end
				return index(self, key)
			end)
			local newindex; newindex = hookmetamethod(game, "__newindex", function(self, key, value)
				local keyclean = string.gsub(key, "\0", "")
				if (keyclean == "JumpPower" or keyclean == "jumpPower") and self:IsA("Humanoid") and self:IsDescendantOf(char) and not checkcaller() then
					setpower = tonumber(value)
					return setpower
				end
				return newindex(self, key, value)
			end)
		else
			notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
		end
	end
end)

addcmd('loopjumppower',{'loopjp','loopjpower'},function(args, speaker)
	local jpower = args[1] or 50
	if isNumber(jpower) then
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
		local function JumpPowerChange()
			if Char and Human then
				if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
					speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = jpower
				else
					speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jpower
				end
			end
		end
		JumpPowerChange()
		HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
		HumanModCons.jpCA = (HumanModCons.jpCA and HumanModCons.jpCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
			Char, Human = nChar, nChar:WaitForChild("Humanoid")
			JumpPowerChange()
			HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
		end)
	end
end)

addcmd('unloopjumppower',{'unloopjp','unloopjpower'},function(args, speaker)
	local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
	local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
	HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or nil
	HumanModCons.jpCA = (HumanModCons.jpCA and HumanModCons.jpCA:Disconnect() and false) or nil
	if Char and Human then
		if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = 50
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = 50
		end
	end
end)

addcmd('tools',{'gears'},function(args, speaker)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
			end
			copy(c)
		end
	end
	copy(Lighting)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
			end
			copy(c)
		end
	end
	copy(ReplicatedStorage)
	notify('Tools','Copied tools from ReplicatedStorage and Lighting')
end)

addcmd('notools',{'rtools','clrtools','removetools','deletetools','dtools'},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:Destroy()
		end
	end
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:Destroy()
		end
	end
end)

addcmd('deleteselectedtool',{'dst'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:Destroy()
		end
	end
end)

addcmd('console',{},function(args, speaker)
	-- Thanks wally!!
	notify("Loading",'Hold on a sec')
	local _, str = pcall(function()
		return game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/console.lua", true)
	end)

	local s, e = loadstring(str)
	if typeof(s) ~= "function" then
		return
	end

	local success, message = pcall(s)
	if (not success) then
		if printconsole then
			printconsole(message)
		elseif printoutput then
			printoutput(message)
		end
	end
	wait(1)
	notify('Console','Press F9 to open the console')
end)

addcmd('explorer', {'dex'}, function(args, speaker)
	notify('Loading', 'Hold on a sec')
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

addcmd('olddex', {'odex'}, function(args, speaker)
	notify('Loading old explorer', 'Hold on a sec')

	local getobjects = function(a)
		local Objects = {}
		if a then
			local b = InsertService:LoadLocalAsset(a)
			if b then 
				table.insert(Objects, b) 
			end
		end
		return Objects
	end

	local Dex = getobjects("rbxassetid://10055842438")[1]
	Dex.Parent = PARENT

	local function Load(Obj, Url)
		local function GiveOwnGlobals(Func, Script)
			-- Fix for this edit of dex being poorly made
			-- I (Alex) would like to commemorate whoever added this dex in somehow finding the worst dex to ever exist
			local Fenv, RealFenv, FenvMt = {}, {
				script = Script,
				getupvalue = function(a, b)
					return nil -- force it to use globals
				end,
				getreg = function() -- It loops registry for some idiotic reason so stop it from doing that and just use a global
					return {} -- force it to use globals
				end,
				getprops = getprops or function(inst)
					if getproperties then
						local props = getproperties(inst)
						if props[1] and gethiddenproperty then
							local results = {}
							for _,name in pairs(props) do
								local success, res = pcall(gethiddenproperty, inst, name)
								if success then
									results[name] = res
								end
							end

							return results
						end

						return props
					end

					return {}
				end
			}, {}
			FenvMt.__index = function(a,b)
				return RealFenv[b] == nil and getgenv()[b] or RealFenv[b]
			end
			FenvMt.__newindex = function(a, b, c)
				if RealFenv[b] == nil then 
					getgenv()[b] = c 
				else 
					RealFenv[b] = c 
				end
			end
			setmetatable(Fenv, FenvMt)
			pcall(setfenv, Func, Fenv)
			return Func
		end

		local function LoadScripts(_, Script)
			if Script:IsA("LocalScript") then
				task.spawn(function()
					GiveOwnGlobals(loadstring(Script.Source,"="..Script:GetFullName()), Script)()
				end)
			end
			table.foreach(Script:GetChildren(), LoadScripts)
		end

		LoadScripts(nil, Obj)
	end

	Load(Dex)
end)

addcmd('remotespy',{'rspy'},function(args, speaker)
	notify("Loading",'Hold on a sec')
	-- Full credit to exx, creator of SimpleSpy
	-- also thanks to NoobSploit for fixing
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end)

addcmd('audiologger',{'alogger'},function(args, speaker)
	notify("Loading",'Hold on a sec')
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua'),true))()
end)

local loopgoto = nil
addcmd('loopgoto',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		loopgoto = nil
		if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
			speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			wait(.1)
		end
		loopgoto = Players[v]
		local distance = 3
		if args[2] and isNumber(args[2]) then
			distance = args[2]
		end
		local lDelay = 0
		if args[3] and isNumber(args[3]) then
			lDelay = args[3]
		end
		repeat
			if Players:FindFirstChild(v) then
				if Players[v].Character ~= nil then
					getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(distance,1,0)
				end
				wait(lDelay)
			else
				loopgoto = nil
			end
		until loopgoto ~= Players[v]
	end
end)

addcmd('unloopgoto',{'noloopgoto'},function(args, speaker)
	loopgoto = nil
end)

addcmd('headsit',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	if headSit then headSit:Disconnect() end
	for i,v in pairs(players)do
		speaker.Character:FindFirstChildOfClass('Humanoid').Sit = true
		headSit = RunService.Heartbeat:Connect(function()
			if Players:FindFirstChild(Players[v].Name) and Players[v].Character ~= nil and getRoot(Players[v].Character) and getRoot(speaker.Character) and speaker.Character:FindFirstChildOfClass('Humanoid').Sit == true then
				getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
			else
				headSit:Disconnect()
			end
		end)
	end
end)

addcmd('chat',{'say'},function(args, speaker)
	local cString = getstring(1)
	ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(cString, "All")
end)


spamming = false
spamspeed = 1
addcmd('spam',{},function(args, speaker)
	spamming = true
	local spamstring = getstring(1)
	repeat wait(spamspeed)
		ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamstring, "All")
	until spamming == false
end)

addcmd('nospam',{'unspam'},function(args, speaker)
	spamming = false
end)

addcmd('whisper',{'pm'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			local plrName = Players[v].Name
			local pmstring = getstring(2)
			ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..plrName.." "..pmstring, "All")
		end)
	end
end)

pmspamming = {}
addcmd('pmspam',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			local plrName = Players[v].Name
			if FindInTable(pmspamming, plrName) then return end
			table.insert(pmspamming, plrName)
			local pmspamstring = getstring(2)
			repeat
				if Players:FindFirstChild(v) then
					wait(spamspeed)
					ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..plrName.." "..pmspamstring, "All")
				else
					for a,b in pairs(pmspamming) do if b == plrName then table.remove(pmspamming, a) end end
				end
			until not FindInTable(pmspamming, plrName)
		end)
	end
end)

addcmd('nopmspam',{'unpmspam'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			for a,b in pairs(pmspamming) do
				if b == Players[v].Name then
					table.remove(pmspamming, a)
				end
			end
		end)
	end
end)

addcmd('spamspeed',{},function(args, speaker)
	local speed = args[1] or 1
	if isNumber(speed) then
		spamspeed = speed
	end
end)

addcmd('bubblechat',{},function(args, speaker)
	ChatService.BubbleChatEnabled = true
end)

addcmd('unbubblechat',{'nobubblechat'},function(args, speaker)
	ChatService.BubbleChatEnabled = false
end)

addcmd('safechat',{},function(args, speaker)
	speaker:SetSuperSafeChat(true)
end)

addcmd('nosafechat',{'disablesafechat','unsafechat'},function(args, speaker)
	speaker:SetSuperSafeChat(false)
end)

addcmd('blockhead',{},function(args, speaker)
	speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
end)

addcmd('blockhats',{},function(args, speaker)
	for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
		for i,c in pairs(v:GetDescendants()) do
			if c:IsA("SpecialMesh") then
				c:Destroy()
			end
		end
	end
end)

addcmd('blocktool',{},function(args, speaker)
	for _,v in pairs(speaker.Character:GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			for i,c in pairs(v:GetDescendants()) do
				if c:IsA("SpecialMesh") then
					c:Destroy()
				end
			end
		end
	end
end)

addcmd('creeper',{},function(args, speaker)
	if r15(speaker) then
		speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
		speaker.Character.LeftUpperArm:Destroy()
		speaker.Character.RightUpperArm:Destroy()
		speaker.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
	else
		speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
		speaker.Character["Left Arm"]:Destroy()
		speaker.Character["Right Arm"]:Destroy()
		speaker.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
	end
end)

function getTorso(x)
	x = x or Players.LocalPlayer.Character
	return x:FindFirstChild("Torso") or x:FindFirstChild("UpperTorso") or x:FindFirstChild("LowerTorso") or x:FindFirstChild("HumanoidRootPart")
end

addcmd("bang", {"rape"}, function(args, speaker)
	execCmd("unbang")
	wait()
	local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
	bangAnim = Instance.new("Animation")
	bangAnim.AnimationId = not r15(speaker) and "rbxassetid://148840371" or "rbxassetid://5918726674"
	bang = humanoid:LoadAnimation(bangAnim)
	bang:Play(0.1, 1, 1)
	bang:AdjustSpeed(args[2] or 3)
	bangDied = humanoid.Died:Connect(function()
		bang:Stop()
		bangAnim:Destroy()
		bangDied:Disconnect()
		bangLoop:Disconnect()
	end)
	if args[1] then
		local players = getPlayer(args[1], speaker)
		for _, v in pairs(players) do
			local bangplr = Players[v].Name
			local bangOffet = CFrame.new(0, 0, 1.1)
			bangLoop = RunService.Stepped:Connect(function()
				pcall(function()
					local otherRoot = getTorso(Players[bangplr].Character)
					getRoot(speaker.Character).CFrame = otherRoot.CFrame * bangOffet
				end)
			end)
		end
	end
end)

addcmd("unbang", {"unrape"}, function(args, speaker)
	if bangDied then
		bangDied:Disconnect()
		bang:Stop()
		bangAnim:Destroy()
		bangLoop:Disconnect()
	end
end)

addcmd('carpet',{},function(args, speaker)
	if not r15(speaker) then
		execCmd('uncarpet')
		wait()
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players)do
			carpetAnim = Instance.new("Animation")
			carpetAnim.AnimationId = "rbxassetid://282574440"
			carpet = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(carpetAnim)
			carpet:Play(.1, 1, 1)
			local carpetplr = Players[v].Name
			carpetDied = speaker.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
				carpetLoop:Disconnect()
				carpet:Stop()
				carpetAnim:Destroy()
				carpetDied:Disconnect()
			end)
			carpetLoop = RunService.Heartbeat:Connect(function()
				pcall(function()
					getRoot(Players.LocalPlayer.Character).CFrame = getRoot(Players[carpetplr].Character).CFrame
				end)
			end)
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('uncarpet',{'nocarpet'},function(args, speaker)
	if carpetLoop then
		carpetLoop:Disconnect()
		carpetDied:Disconnect()
		carpet:Stop()
		carpetAnim:Destroy()
	end
end)

addcmd('friend',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		speaker:RequestFriendship(v)
	end
end)

addcmd('unfriend',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		speaker:RevokeFriendship(v)
	end
end)

addcmd('bringpart',{},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end)

addcmd('bringpartclass',{'bpc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end)

gotopartDelay = 0.1
addcmd('gotopart',{'topart'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
		end
	end
end)

addcmd('tweengotopart',{'tgotopart','ttopart'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
		end
	end
end)

addcmd('gotopartclass',{'gpc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
		end
	end
end)

addcmd('tweengotopartclass',{'tgpc'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
		end
	end
end)

addcmd('gotomodel',{'tomodel'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("Model") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v:GetModelCFrame()
		end
	end
end)

addcmd('tweengotomodel',{'tgotomodel','ttomodel'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("Model") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(tweenSpeed, Enum.EasingStyle.Linear), {CFrame = v:GetModelCFrame()}):Play()
		end
	end
end)

addcmd('gotopartdelay',{},function(args, speaker)
	local gtpDelay = args[1] or 0.1
	if isNumber(gtpDelay) then
		gotopartDelay = gtpDelay
	end
end)

addcmd('noclickdetectorlimits',{'nocdlimits','removecdlimits'},function(args, speaker)
	for i,v in ipairs(workspace:GetDescendants()) do
		if v:IsA("ClickDetector") then
			v.MaxActivationDistance = math.huge
		end
	end
end)

addcmd('fireclickdetectors',{'firecd','firecds'}, function(args, speaker)
	if fireclickdetector then
		if args[1] then
			local name = getstring(1)
			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant:IsA("ClickDetector") and descendant.Name == name or descandant.Parent.Name == name then
					fireclickdetector(descendant)
				end
			end
		else
			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant:IsA("ClickDetector") then
					fireclickdetector(descendant)
				end
			end
		end
	else
		notify("Incompatible Exploit", "Your exploit does not support this command (missing fireclickdetector)")
	end
end)

addcmd('noproximitypromptlimits',{'nopplimits','removepplimits'},function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ProximityPrompt") then
			v.MaxActivationDistance = math.huge
		end
	end
end)

addcmd('fireproximityprompts',{'firepp'},function(args, speaker)
	if fireclickdetector then
		if args[1] then
			local name = getstring(1)
			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") and descendant.Name == name or descandant.Parent.Name == name then
					fireproximityprompt(descendant)
				end
			end
		else
			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") then
					fireproximityprompt(descendant)
				end
			end
		end
	else
		notify("Incompatible Exploit", "Your exploit does not support this command (missing fireproximityprompt)")
	end
end)

local PromptButtonHoldBegan = nil
addcmd('instantproximityprompts',{'instantpp'},function(args, speaker)
	if fireproximityprompt then
		execCmd("uninstantproximityprompts")
		wait(0.1)
		PromptButtonHoldBegan = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
			fireproximityprompt(prompt)
		end)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing fireproximityprompt)')
	end
end)

addcmd('uninstantproximityprompts',{'uninstantpp'},function(args, speaker)
	if PromptButtonHoldBegan ~= nil then
		PromptButtonHoldBegan:Disconnect()
		PromptButtonHoldBegan = nil
	end
end)

addcmd('notifyping',{'ping'},function(args, speaker)
	notify("Ping", math.round(speaker:GetNetworkPing() * 1000) .. "ms")
end)

addcmd('grabtools', {}, function(args, speaker)
	local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
	for _, child in ipairs(workspace:GetChildren()) do
		if speaker.Character and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
		end
	end

	if grabtoolsFunc then 
		grabtoolsFunc:Disconnect() 
	end

	grabtoolsFunc = workspace.ChildAdded:Connect(function(child)
		if speaker.Character and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
		end
	end)

	notify("Grabtools", "Picking up any dropped tools")
end)

addcmd('nograbtools',{'ungrabtools'},function(args, speaker)
	if grabtoolsFunc then 
		grabtoolsFunc:Disconnect() 
	end

	notify("Grabtools", "Grabtools has been disabled")
end)

local specifictoolremoval = {}
addcmd('removespecifictool',{},function(args, speaker)
	if args[1] and speaker:FindFirstChildOfClass("Backpack") then
		local tool = string.lower(getstring(1))
		local RST = RunService.RenderStepped:Connect(function()
			if speaker:FindFirstChildOfClass("Backpack") then
				for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
					if v.Name:lower() == tool then
						v:Remove()
					end
				end
			end
		end)
		specifictoolremoval[tool] = RST
	end
end)

addcmd('unremovespecifictool',{},function(args, speaker)
	if args[1] then
		local tool = string.lower(getstring(1))
		if specifictoolremoval[tool] ~= nil then
			specifictoolremoval[tool]:Disconnect()
			specifictoolremoval[tool] = nil
		end
	end
end)

addcmd('clearremovespecifictool',{},function(args, speaker)
	for obj in pairs(specifictoolremoval) do
		specifictoolremoval[obj]:Disconnect()
		specifictoolremoval[obj] = nil
	end
end)

addcmd('light',{},function(args, speaker)
	local light = Instance.new("PointLight")
	light.Parent = getRoot(speaker.Character)
	light.Range = 30
	if args[1] then
		light.Brightness = args[2]
		light.Range = args[1]
	else
		light.Brightness = 5
	end
end)

addcmd('unlight',{'nolight'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.ClassName == "PointLight" then
			v:Destroy()
		end
	end
end)

addcmd('copytools',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		task.spawn(function()
			for i,v in pairs(Players[v]:FindFirstChildOfClass("Backpack"):GetChildren()) do
				if v:IsA('Tool') or v:IsA('HopperBin') then
					v:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
				end
			end
		end)
	end
end)

addcmd('naked',{},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Clothing") or v:IsA("ShirtGraphic") then
			v:Destroy()
		end
	end
end)

addcmd('noface',{'removeface'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Decal") and v.Name == 'face' then
			v:Destroy()
		end
	end
end)

addcmd('spawnpoint',{'spawn'},function(args, speaker)
	spawnpos = getRoot(speaker.Character).CFrame
	spawnpoint = true
	spDelay = tonumber(args[1]) or 0.1
	notify('Spawn Point','Spawn point created at '..tostring(spawnpos))
end)

addcmd('nospawnpoint',{'nospawn','removespawnpoint'},function(args, speaker)
	spawnpoint = false
	notify('Spawn Point','Removed spawn point')
end)

addcmd('flashback',{'diedtp'},function(args, speaker)
	if lastDeath ~= nil then
		if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
			speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			wait(.1)
		end
		getRoot(speaker.Character).CFrame = lastDeath
	end
end)

addcmd('hatspin',{'spinhats'},function(args, speaker)
	execCmd('unhatspin')
	wait(.5)
	for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
		local keep = Instance.new("BodyPosition") keep.Name = randomString() keep.Parent = v.Handle
		local spin = Instance.new("BodyAngularVelocity") spin.Name = randomString() spin.Parent = v.Handle
		v.Handle:FindFirstChildOfClass("Weld"):Destroy()
		if args[1] then
			spin.AngularVelocity = Vector3.new(0, args[1], 0)
			spin.MaxTorque = Vector3.new(0, args[1] * 2, 0)
		else
			spin.AngularVelocity = Vector3.new(0, 100, 0)
			spin.MaxTorque = Vector3.new(0, 200, 0)
		end
		keep.P = 30000
		keep.D = 50
		spinhats = RunService.Stepped:Connect(function()
			pcall(function()
				keep.Position = Players.LocalPlayer.Character.Head.Position
			end)
		end)
	end
end)

addcmd('unhatspin',{'unspinhats'},function(args, speaker)
	if spinhats then
		spinhats:Disconnect()
	end
	for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
		v.Parent = workspace
		for i,c in pairs(v.Handle) do
			if c:IsA("BodyPosition") or c:IsA("BodyAngularVelocity") then
				c:Destroy()
			end
		end
		wait()
		v.Parent = speaker.Character
	end
end)

addcmd('clearhats',{'cleanhats'},function(args, speaker)
	if firetouchinterest then
		local Player = Players.LocalPlayer
		local Character = Player.Character
		local Old = Character:FindFirstChild("HumanoidRootPart").CFrame
		local Hats = {}

		for _, child in ipairs(workspace:GetChildren()) do
			if child:IsA("Accessory") then
				table.insert(Hats, child)
			end
		end

		for _, accessory in ipairs(Character:FindFirstChildOfClass("Humanoid"):GetAccessories()) do
			accessory:Destroy()
		end

		for i = 1, #Hats do
			repeat RunService.Heartbeat:wait() until Hats[i]
			firetouchinterest(Hats[i].Handle,Character:FindFirstChild("HumanoidRootPart"),0)
			repeat RunService.Heartbeat:wait() until Character:FindFirstChildOfClass("Accessory")
			Character:FindFirstChildOfClass("Accessory"):Destroy()
			repeat RunService.Heartbeat:wait() until not Character:FindFirstChildOfClass("Accessory")
		end

		execCmd("reset")

		Player.CharacterAdded:Wait()

		for i = 1,20 do 
			RunService.Heartbeat:Wait()
			if Player.Character:FindFirstChild("HumanoidRootPart") then
				Player.Character:FindFirstChild("HumanoidRootPart").CFrame = Old
			end
		end
	else
		notify("Incompatible Exploit","Your exploit does not support this command (missing firetouchinterest)")
	end
end)

addcmd('vr',{},function(args, speaker)
	-- Full credit to Abacaxl @V3rmillion
	notify("Loading", "Hold on a sec")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/vr.lua"))()
end)

addcmd('split',{},function(args, speaker)
	if r15(speaker) then
		speaker.Character.UpperTorso.Waist:Destroy()
	else
		notify('R15 Required','This command requires the r15 rig type')
	end
end)

addcmd('nilchar',{},function(args, speaker)
	if speaker.Character ~= nil then
		speaker.Character.Parent = nil
	end
end)

addcmd('unnilchar',{'nonilchar'},function(args, speaker)
	if speaker.Character ~= nil then
		speaker.Character.Parent = workspace
	end
end)

addcmd('noroot',{'removeroot','rroot'},function(args, speaker)
	if speaker.Character ~= nil then
		local char = Players.LocalPlayer.Character
		char.Parent = nil
		char.HumanoidRootPart:Destroy()
		char.Parent = workspace
	end
end)

addcmd('replaceroot',{'replacerootpart'},function(args, speaker)
	if speaker.Character ~= nil and speaker.Character:FindFirstChild("HumanoidRootPart") then
		local Char = speaker.Character
		local OldParent = Char.Parent
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		local OldPos = HRP.CFrame
		Char.Parent = game
		local HRP1 = HRP:Clone()
		HRP1.Parent = Char
		HRP = HRP:Destroy()
		HRP1.CFrame = OldPos
		Char.Parent = OldParent
	end
end)

addcmd('clearcharappearance',{'clearchar','clrchar'},function(args, speaker)
	speaker:ClearCharacterAppearance()
end)

addcmd('equiptools',{},function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			v.Parent = speaker.Character
		end
	end
end)

addcmd('unequiptools',{},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
end)

local function GetHandleTools(p)
	p = p or Players.LocalPlayer
	local r = {}
	for _, v in ipairs(p.Character and p.Character:GetChildren() or {}) do
		if v.IsA(v, "BackpackItem") and v.FindFirstChild(v, "Handle") then
			r[#r + 1] = v
		end
	end
	for _, v in ipairs(p.Backpack:GetChildren()) do
		if v.IsA(v, "BackpackItem") and v.FindFirstChild(v, "Handle") then
			r[#r + 1] = v
		end
	end
	return r
end
addcmd('dupetools', {'clonetools'}, function(args, speaker)
	local LOOP_NUM = tonumber(args[1]) or 1
	local OrigPos = speaker.Character.HumanoidRootPart.Position
	local Tools, TempPos = {}, Vector3.new(math.random(-2e5, 2e5), 2e5, math.random(-2e5, 2e5))
	for i = 1, LOOP_NUM do
		local Human = speaker.Character:WaitForChild("Humanoid")
		wait(.1, Human.Parent:MoveTo(TempPos))
		Human.RootPart.Anchored = speaker:ClearCharacterAppearance(wait(.1)) or true
		local t = GetHandleTools(speaker)
		while #t > 0 do
			for _, v in ipairs(t) do
				task.spawn(function()
					for _ = 1, 25 do
						v.Parent = speaker.Character
						v.Handle.Anchored = true
					end
					for _ = 1, 5 do
						v.Parent = workspace
					end
					table.insert(Tools, v.Handle)
				end)
			end
			t = GetHandleTools(speaker)
		end
		wait(.1)
		speaker.Character = speaker.Character:Destroy()
		speaker.CharacterAdded:Wait():WaitForChild("Humanoid").Parent:MoveTo(LOOP_NUM == i and OrigPos or TempPos, wait(.1))
		if i == LOOP_NUM or i % 5 == 0 then
			local HRP = speaker.Character.HumanoidRootPart
			if type(firetouchinterest) == "function" then
				for _, v in ipairs(Tools) do
					v.Anchored = not firetouchinterest(v, HRP, 1, firetouchinterest(v, HRP, 0)) and false or false
				end
			else
				for _, v in ipairs(Tools) do
					task.spawn(function()
						local x = v.CanCollide
						v.CanCollide = false
						v.Anchored = false
						for _ = 1, 10 do
							v.CFrame = HRP.CFrame
							wait()
						end
						v.CanCollide = x
					end)
				end
			end
			wait(.1)
			Tools = {}
		end
		TempPos = TempPos + Vector3.new(10, math.random(-5, 5), 0)
	end
end)

local RS = RunService.RenderStepped
addcmd('givetool', {'givetools'}, function(args, speaker)
	local v = Players[getPlayer(args[1], speaker)[1]].Character
	workspace.CurrentCamera.CameraSubject = v
	local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
	local hum = Char and Char:FindFirstChildWhichIsA('Humanoid')
	local hrp = hum and hum.RootPart
	local hrppos = hrp.CFrame
	hum = hum:Destroy() or hum:Clone()
	hum.Parent = Char
	hum:ClearAllChildren()
	speaker:ClearCharacterAppearance()
	task.spawn(function()
		speaker.CharacterAdded:Wait():WaitForChild('Humanoid').RootPart.CFrame = wait() and hrppos
	end)
	local vHRP = getRoot(v)
	while Char and Char.Parent and vHRP and vHRP.Parent do
		local Tools = false
		for _, v in ipairs(Char:GetChildren()) do
			if v:IsA('BackpackItem') and v:FindFirstChild('Handle') then
				Tools = true
				firetouchinterest(v.Handle, vHRP, 0)
				firetouchinterest(v.Handle, vHRP, 1)
			end
		end
		if not Tools then
			break
		end
		hrp.CFrame = vHRP.CFrame
		RS:Wait()
	end
	execCmd('re')
end)

addcmd('touchinterests', {'touchinterest', 'firetouchinterests', 'firetouchinterest'}, function(args, speaker)
	if not firetouchinterest then
		notify("Incompatible Exploit", "Your exploit does not support this command (missing firetouchinterest)")
		return
	end

	local root = getRoot(speaker.Character) or speaker.Character:FindFirstChildWhichIsA("BasePart")

	local function touch(x)
		x = x:FindFirstAncestorWhichIsA("Part")
		if x then
			if firetouchinterest then
				task.spawn(function()
					firetouchinterest(x, root, 1)
					wait()
					firetouchinterest(x, root, 0)
				end)
			end
			x.CFrame = root.CFrame
		end
	end

	if args[1] then
		local name = getstring(1)
		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("TouchTransmitter") and descendant.Name == name or descandant.Parent.Name == name then
				touch(descendant)
			end
		end
	else
		for _, descendant in ipairs(workspace:GetDescendants()) do
			if descendant:IsA("TouchTransmitter") then
				touch(descendant)
			end
		end
	end
end)

addcmd('fullbright',{'fb','fullbrightness'},function(args, speaker)
	Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)

addcmd('loopfullbright',{'loopfb'},function(args, speaker)
	if brightLoop then
		brightLoop:Disconnect()
	end
	local function brightFunc()
		Lighting.Brightness = 2
		Lighting.ClockTime = 14
		Lighting.FogEnd = 100000
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end

	brightLoop = RunService.RenderStepped:Connect(brightFunc)
end)

addcmd('unloopfullbright',{'unloopfb'},function(args, speaker)
	if brightLoop then
		brightLoop:Disconnect()
	end
end)

addcmd('ambient',{},function(args, speaker)
	Lighting.Ambient = Color3.new(args[1],args[2],args[3])
	Lighting.OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)

addcmd('day',{},function(args, speaker)
	Lighting.ClockTime = 14
end)

addcmd('night',{},function(args, speaker)
	Lighting.ClockTime = 0
end)

addcmd('nofog',{},function(args, speaker)
	Lighting.FogEnd = 100000
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("Atmosphere") then
			v:Destroy()
		end
	end
end)

addcmd('brightness',{},function(args, speaker)
	Lighting.Brightness = args[1]
end)

addcmd('globalshadows',{'gshadows'},function(args, speaker)
	Lighting.GlobalShadows = true
end)

addcmd('unglobalshadows',{'nogshadows','ungshadows','noglobalshadows'},function(args, speaker)
	Lighting.GlobalShadows = false
end)

origsettings = {abt = Lighting.Ambient, oabt = Lighting.OutdoorAmbient, brt = Lighting.Brightness, time = Lighting.ClockTime, fe = Lighting.FogEnd, fs = Lighting.FogStart, gs = Lighting.GlobalShadows}

addcmd('restorelighting',{'rlighting'},function(args, speaker)
	Lighting.Ambient = origsettings.abt
	Lighting.OutdoorAmbient = origsettings.oabt
	Lighting.Brightness = origsettings.brt
	Lighting.ClockTime = origsettings.time
	Lighting.FogEnd = origsettings.fe
	Lighting.FogStart = origsettings.fs
	Lighting.GlobalShadows = origsettings.gs
end)

addcmd('stun',{'platformstand'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
end)

addcmd('unstun',{'nostun','unplatformstand','noplatformstand'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
end)

addcmd('norotate',{'noautorotate'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
end)

addcmd('unnorotate',{'autorotate'},function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
end)

addcmd('enablestate',{},function(args, speaker)
	local x = args[1]
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[args[1]]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, true)
end)

addcmd('disablestate',{},function(args, speaker)
	local x = args[1]
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[args[1]]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, false)
end)

addcmd('drophats',{'drophat'},function(args, speaker)
	if speaker.Character then
		for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
			v.Parent = workspace
		end
	end
end)

addcmd('deletehats',{'nohats','rhats'},function(args, speaker)
	for i,v in next, speaker.Character:GetDescendants() do
		if v:IsA("Accessory") then
			for i,p in next, v:GetDescendants() do
				if p:IsA("Weld") then
					p:Destroy()
				end
			end
		end
	end
end)

addcmd('droptools',{'droptool'},function(args, speaker)
	for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = Players.LocalPlayer.Character
		end
	end
	wait()
	for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end
end)

addcmd('droppabletools',{},function(args, speaker)
	if speaker.Character then
		for _,obj in pairs(speaker.Character:GetChildren()) do
			if obj:IsA("Tool") then
				obj.CanBeDropped = true
			end
		end
	end
	if speaker:FindFirstChildOfClass("Backpack") then
		for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if obj:IsA("Tool") then
				obj.CanBeDropped = true
			end
		end
	end
end)

local currentToolSize = ""
local currentGripPos = ""
addcmd('reach',{},function(args, speaker)
	execCmd('unreach')
	wait()
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			if args[1] then
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox")
				a.Name = "SelectionBoxCreated"
				a.Parent = v.Handle
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,args[1])
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
			else
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox")
				a.Name = "SelectionBoxCreated"
				a.Parent = v.Handle
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,60)
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
			end
		end
	end
end)

addcmd('unreach',{'noreach'},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Handle.Size = currentToolSize
			v.GripPos = currentGripPos
			v.Handle.SelectionBoxCreated:Destroy()
		end
	end
end)

addcmd('grippos',{},function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Parent = speaker:FindFirstChildOfClass("Backpack")
			v.GripPos = Vector3.new(args[1],args[2],args[3])
			v.Parent = speaker.Character
		end
	end
end)

addcmd('usetools', {}, function(args, speaker)
	local Backpack = speaker:FindFirstChildOfClass("Backpack")
	local ammount = tonumber(args[1]) or 1
	local delay_ = tonumber(args[2]) or false
	for _, v in ipairs(Backpack:GetChildren()) do
		v.Parent = speaker.Character
		task.spawn(function()
			for _ = 1, ammount do
				v:Activate()
				if delay_ then
					wait(delay_)
				end
			end
			v.Parent = Backpack
		end)
	end
end)

addcmd('logs',{},function(args, speaker)
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

addcmd('chatlogs',{'clogs'},function(args, speaker)
	join.Visible = false
	chat.Visible = true
	table.remove(shade3,table.find(shade3,selectChat))
	table.remove(shade2,table.find(shade2,selectJoin))
	table.insert(shade2,selectChat)
	table.insert(shade3,selectJoin)
	selectJoin.BackgroundColor3 = currentShade3
	selectChat.BackgroundColor3 = currentShade2
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

addcmd('joinlogs',{'jlogs'},function(args, speaker)
	chat.Visible = false
	join.Visible = true	
	table.remove(shade3,table.find(shade3,selectJoin))
	table.remove(shade2,table.find(shade2,selectChat))
	table.insert(shade2,selectJoin)
	table.insert(shade3,selectChat)
	selectChat.BackgroundColor3 = currentShade3
	selectJoin.BackgroundColor3 = currentShade2
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

flinging = false
addcmd('fling',{},function(args, speaker)
	flinging = false
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child:IsA("BasePart") then
			child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
		end
	end
	execCmd('noclip')
	wait(.1)
	local bambam = Instance.new("BodyAngularVelocity")
	bambam.Name = randomString()
	bambam.Parent = getRoot(speaker.Character)
	bambam.AngularVelocity = Vector3.new(0,99999,0)
	bambam.MaxTorque = Vector3.new(0,math.huge,0)
	bambam.P = math.huge
	local Char = speaker.Character:GetChildren()
	for i, v in next, Char do
		if v:IsA("BasePart") then
			v.CanCollide = false
			v.Massless = true
			v.Velocity = Vector3.new(0, 0, 0)
		end
	end
	flinging = true
	local function flingDiedF()
		execCmd('unfling')
	end
	flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
	repeat
		bambam.AngularVelocity = Vector3.new(0,99999,0)
		wait(.2)
		bambam.AngularVelocity = Vector3.new(0,0,0)
		wait(.1)
	until flinging == false
end)

addcmd('unfling',{'nofling'},function(args, speaker)
	execCmd('clip')
	if flingDied then
		flingDied:Disconnect()
	end
	flinging = false
	wait(.1)
	local speakerChar = speaker.Character
	if not speakerChar or not getRoot(speakerChar) then return end
	for i,v in pairs(getRoot(speakerChar):GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(speakerChar:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd('togglefling',{},function(args, speaker)
	if flinging then
		execCmd('unfling')
	else
		execCmd('fling')
	end
end)

addcmd("flyfling", {}, function(args, speaker)
    execCmd("unvehiclefly\\unfling\\unnoclip")
    wait()
    execCmd("vehiclefly\\fling\\noclip")
end)

addcmd("unflyfling", {}, function(args, speaker)
    execCmd("unvehiclefly\\unfling\\unnoclip\\breakvelocity")
end)

addcmd("toggleflyfling", {}, function(args, speaker)
    execCmd(flinging and "unflyfling" or "flyfling")
end)

addcmd('invisfling',{},function(args, speaker)
	local ch = speaker.Character
	local prt=Instance.new("Model")
	prt.Parent = speaker.Character
	local z1 = Instance.new("Part")
	z1.Name="Torso"
	z1.CanCollide = false
	z1.Anchored = true
	local z2 = Instance.new("Part")
	z2.Name="Head"
	z2.Parent = prt
	z2.Anchored = true
	z2.CanCollide = false
	local z3 =Instance.new("Humanoid")
	z3.Name="Humanoid"
	z3.Parent = prt
	z1.Position = Vector3.new(0,9999,0)
	speaker.Character=prt
	wait(3)
	speaker.Character=ch
	wait(3)
	local Hum = Instance.new("Humanoid")
	z2:Clone()
	Hum.Parent = speaker.Character
	local root =  getRoot(speaker.Character)
	for i,v in pairs(speaker.Character:GetChildren()) do
		if v ~= root and  v.Name ~= "Humanoid" then
			v:Destroy()
		end
	end
	root.Transparency = 0
	root.Color = Color3.new(1, 1, 1)
	local invisflingStepped
	invisflingStepped = RunService.Stepped:Connect(function()
		if speaker.Character and getRoot(speaker.Character) then
			getRoot(speaker.Character).CanCollide = false
		else
			invisflingStepped:Disconnect()
		end
	end)
	sFLY()
	workspace.CurrentCamera.CameraSubject = root
	local bambam = Instance.new("BodyThrust")
	bambam.Parent = getRoot(speaker.Character)
	bambam.Force = Vector3.new(99999,99999*10,99999)
	bambam.Location = getRoot(speaker.Character).Position
end)

function attach(speaker,target)
	if tools(speaker) then
		local char = speaker.Character
		local tchar = target.Character
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = getRoot(speaker.Character)
		local hrp2 = getRoot(target.Character)
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
		tool.Parent = char
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('attach',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		attach(speaker,Players[v])
	end
end)

function kill(speaker,target,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('kill',{'fekill'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		kill(speaker,Players[v])
	end
end)

addcmd('handlekill', {'hkill'}, function(args, speaker)
	if not firetouchinterest then
		return notify('Incompatible Exploit', 'Your exploit does not support this command (missing firetouchinterest)')
	end
	local RS = RunService.RenderStepped
	local Tool = speaker.Character.FindFirstChildWhichIsA(speaker.Character, "Tool")
	local Handle = Tool and Tool.FindFirstChild(Tool, "Handle")
	if not Tool or not Handle then
		return notify("Handle Kill", "You need to hold a \"Tool\" that does damage on touch. For example the default \"Sword\" tool.")
	end
	for _, v in ipairs(getPlayer(args[1], speaker)) do
		v = Players[v]
		task.spawn(function()
			while Tool and speaker.Character and v.Character and Tool.Parent == speaker.Character do
				local Human = v.Character.FindFirstChildWhichIsA(v.Character, "Humanoid")
				if not Human or Human.Health <= 0 then
					break
				end
				for _, v1 in ipairs(v.Character.GetChildren(v.Character)) do
					v1 = ((v1.IsA(v1, "BasePart") and firetouchinterest(Handle, v1, 1, (RS.Wait(RS) and nil) or firetouchinterest(Handle, v1, 0)) and nil) or v1) or v1
				end
			end
			notify("Handle Kill Stopped!", v.Name .. " died/left or you unequipped the tool!")
		end)
	end
end)

local hb = RunService.Heartbeat
addcmd('tpwalk', {'teleportwalk'}, function(args, speaker)
	tpwalking = true
	local chr = speaker.Character
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
	while tpwalking and chr and hum and hum.Parent do
		local delta = hb:Wait()
		if hum.MoveDirection.Magnitude > 0 then
			if args[1] and isNumber(args[1]) then
				chr:TranslateBy(hum.MoveDirection * tonumber(args[1]) * delta * 10)
			else
				chr:TranslateBy(hum.MoveDirection * delta * 10)
			end
		end
	end
end)
addcmd('untpwalk', {'unteleportwalk'}, function(args, speaker)
	tpwalking = false
end)

addcmd('fastkill',{'fastfekill'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		kill(speaker,Players[v],true)
	end
end)

function bring(speaker,target,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = NormPos
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('bring',{'febring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		bring(speaker,Players[v])
	end
end)

addcmd('fastbring',{'fastfebring'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		bring(speaker,Players[v],true)
	end
end)

function teleport(speaker,target,target2,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			local hrp2 = getRoot(target2.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = hrp2.CFrame
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			wait(1)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('tp',{'teleport'},function(args, speaker)
	local players1=getPlayer(args[1], speaker)
	local players2=getPlayer(args[2], speaker)
	for i,v in pairs(players1)do
		if getRoot(Players[v].Character) and getRoot(Players[players2[1]].Character) then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			teleport(speaker,Players[v],Players[players2[1]])
		end
	end
end)

addcmd('fasttp',{'fastteleport'},function(args, speaker)
	local players1=getPlayer(args[1], speaker)
	local players2=getPlayer(args[2], speaker)
	for i,v in pairs(players1)do
		if getRoot(Players[v].Character) and getRoot(Players[players2[1]].Character) then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			teleport(speaker,Players[v],Players[players2[1]],true)
		end
	end
end)

addcmd('spin',{},function(args, speaker)
	local spinSpeed = 20
	if args[1] and isNumber(args[1]) then
		spinSpeed = args[1]
	end
	for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
	local Spin = Instance.new("BodyAngularVelocity")
	Spin.Name = "Spinning"
	Spin.Parent = getRoot(speaker.Character)
	Spin.MaxTorque = Vector3.new(0, math.huge, 0)
	Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
end)

addcmd('unspin',{},function(args, speaker)
	for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
end)

local transparent = false
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end

addcmd('xray',{},function(args, speaker)
	transparent = true
	x(transparent)
end)

addcmd('unxray',{'noxray'},function(args, speaker)
	transparent = false
	x(transparent)
end)

addcmd('togglexray',{},function(args, speaker)
	transparent=not transparent
	x(transparent)
end)

local walltpTouch = nil
addcmd('walltp',{},function(args, speaker)
	local torso
	if r15(speaker) then
		torso = speaker.Character.UpperTorso
	else
		torso = speaker.Character.Torso
	end
	local function touchedFunc(hit)
		local Root = getRoot(speaker.Character)
		if hit:IsA("BasePart") and hit.Position.Y > Root.Position.Y - speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight then
			local hitP = getRoot(hit.Parent)
			if hitP ~= nil then
				Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hitP.Size.Z/2 + speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,Root.CFrame.lookVector.Z)
			elseif hitP == nil then
				Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hit.Size.Y/2 + speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight,Root.CFrame.lookVector.Z)
			end
		end
	end
	walltpTouch = torso.Touched:Connect(touchedFunc)
end)

addcmd('unwalltp',{'nowalltp'},function(args, speaker)
	if walltpTouch then
		walltpTouch:Disconnect()
	end
end)

autoclicking = false
addcmd('autoclick',{},function(args, speaker)
	if mouse1press and mouse1release then
		execCmd('unautoclick')
		wait()
		local clickDelay = 0.1
		local releaseDelay = 0.1
		if args[1] and isNumber(args[1]) then clickDelay = args[1] end
		if args[2] and isNumber(args[2]) then releaseDelay = args[2] end
		autoclicking = true
		cancelAutoClick = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				if (input.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
					autoclicking = false
					cancelAutoClick:Disconnect()
				end
			end
		end)
		notify('Auto Clicker',"Press [backspace] and [=] at the same time to stop")
		repeat wait(clickDelay)
			mouse1press()
			wait(releaseDelay)
			mouse1release()
		until autoclicking == false
	else
		notify('Auto Clicker',"Your exploit doesn't have the ability to use the autoclick")
	end
end)

addcmd('unautoclick',{'noautoclick'},function(args, speaker)
	autoclicking = false
	if cancelAutoClick then cancelAutoClick:Disconnect() end
end)

addcmd('mousesensitivity',{'ms'},function(args, speaker)
	UserInputService.MouseDeltaSensitivity = args[1]
end)

local nameBox = nil
local nbSelection = nil
addcmd('hovername',{},function(args, speaker)
	execCmd('unhovername')
	wait()
	nameBox = Instance.new("TextLabel")
	nameBox.Name = randomString()
	nameBox.Parent = PARENT
	nameBox.BackgroundTransparency = 1
	nameBox.Size = UDim2.new(0,200,0,30)
	nameBox.Font = Enum.Font.Code
	nameBox.TextSize = 16
	nameBox.Text = ""
	nameBox.TextColor3 = Color3.new(1, 1, 1)
	nameBox.TextStrokeTransparency = 0
	nameBox.TextXAlignment = Enum.TextXAlignment.Left
	nameBox.ZIndex = 10
	nbSelection = Instance.new('SelectionBox')
	nbSelection.Name = randomString()
	nbSelection.LineThickness = 0.03
	nbSelection.Color3 = Color3.new(1, 1, 1)
	local function updateNameBox()
		local t
		local target = IYMouse.Target

		if target then
			local humanoid = target.Parent:FindFirstChildOfClass("Humanoid") or target.Parent.Parent:FindFirstChildOfClass("Humanoid")
			if humanoid then
				t = humanoid.Parent
			end
		end

		if t ~= nil then
			local x = IYMouse.X
			local y = IYMouse.Y
			local xP
			local yP
			if IYMouse.X > 200 then
				xP = x - 205
				nameBox.TextXAlignment = Enum.TextXAlignment.Right
			else
				xP = x + 25
				nameBox.TextXAlignment = Enum.TextXAlignment.Left
			end
			nameBox.Position = UDim2.new(0, xP, 0, y)
			nameBox.Text = t.Name
			nameBox.Visible = true
			nbSelection.Parent = t
			nbSelection.Adornee = t
		else
			nameBox.Visible = false
			nbSelection.Parent = nil
			nbSelection.Adornee = nil
		end
	end
	nbUpdateFunc = IYMouse.Move:Connect(updateNameBox)
end)

addcmd('unhovername',{'nohovername'},function(args, speaker)
	if nbUpdateFunc then
		nbUpdateFunc:Disconnect()
		nameBox:Destroy()
		nbSelection:Destroy()
	end
end)

addcmd('headsize',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if Players[v] ~= speaker and Players[v].Character:FindFirstChild('Head') then
			local sizeArg = tonumber(args[2])
			local Size = Vector3.new(sizeArg,sizeArg,sizeArg)
			local Head = Players[v].Character:FindFirstChild('Head')
			if Head:IsA("BasePart") then
				if not args[2] or sizeArg == 1 then
					Head.Size = Vector3.new(2,1,1)
				else
					Head.Size = Size
				end
			end
		end
	end
end)

addcmd('hitbox',{},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if Players[v] ~= speaker and Players[v].Character:FindFirstChild('HumanoidRootPart') then
			local sizeArg = tonumber(args[2])
			local Size = Vector3.new(sizeArg,sizeArg,sizeArg)
			local Root = Players[v].Character:FindFirstChild('HumanoidRootPart')
			if Root:IsA("BasePart") then
				if not args[2] or sizeArg == 1 then
					Root.Size = Vector3.new(2,1,1)
					Root.Transparency = 0.4
				else
					Root.Size = Size
					Root.Transparency = 0.4
				end
			end
		end
	end
end)

addcmd('stareat',{'stare'},function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if stareLoop then
			stareLoop:Disconnect()
		end
		if not Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Players[v].Character:FindFirstChild("HumanoidRootPart") then return end
		local function stareFunc()
			if Players.LocalPlayer.Character.PrimaryPart and Players:FindFirstChild(v) and Players[v].Character ~= nil and Players[v].Character:FindFirstChild("HumanoidRootPart") then
				local chrPos=Players.LocalPlayer.Character.PrimaryPart.Position
				local tPos=Players[v].Character:FindFirstChild("HumanoidRootPart").Position
				local modTPos=Vector3.new(tPos.X,chrPos.Y,tPos.Z)
				local newCF=CFrame.new(chrPos,modTPos)
				Players.LocalPlayer.Character:SetPrimaryPartCFrame(newCF)
			elseif not Players:FindFirstChild(v) then
				stareLoop:Disconnect()
			end
		end

		stareLoop = RunService.RenderStepped:Connect(stareFunc)
	end
end)

addcmd('unstareat',{'unstare','nostare','nostareat'},function(args, speaker)
	if stareLoop then
		stareLoop:Disconnect()
	end
end)

local RolewatchData = {["Group"]=0,["Role"]="",["Leave"]=false}
local RolewatchConnection = Players.PlayerAdded:Connect(function(player)
	if RolewatchData.Group == 0 then return end
	if player:IsInGroup(RolewatchData.Group) then
		if tostring(player:GetRoleInGroup(RolewatchData.Group)):lower() == RolewatchData.Role:lower() then
			if RolewatchData.Leave == true then
				Players.LocalPlayer:Kick("\n\nRolewatch\nPlayer \"" .. tostring(player.Name) .. "\" has joined with the Role \"" .. RolewatchData.Role .. "\"\n")
			else
				notify("Rolewatch", "Player \"" .. tostring(player.Name) .. "\" has joined with the Role \"" .. RolewatchData.Role .. "\"")
			end
		end
	end
end)

addcmd('rolewatch',{},function(args, speaker)
	local groupid = args[1] or 0
	if isNumber(groupid) then
		if args[2] then
			local rolename = tostring(getstring(2))
			RolewatchData.Group = tonumber(groupid)
			RolewatchData.Role = rolename
			notify("Rolewatch", "Watching Group ID \"" .. tostring(groupid) .. "\" for Role \"" .. rolename .. "\"")
		end
	end
end)

addcmd('rolewatchstop',{},function(args, speaker)
	RolewatchData = {["Group"]=0,["Role"]="",["Leave"]=false}
end)

addcmd('rolewatchleave',{'unrolewatch'},function(args, speaker)
	RolewatchData.Leave = not RolewatchData.Leave
	notify("Rolewatch", RolewatchData.Leave and "Leave has been Enabled" or "Leave has been Disabled")
end)

addcmd('removeterrain',{'rterrain','noterrain'},function(args, speaker)
	workspace:FindFirstChildOfClass('Terrain'):Clear()
end)

addcmd('clearnilinstances',{'nonilinstances','cni'},function(args, speaker)
	if getnilinstances then
		for i,v in pairs(getnilinstances()) do
			v:Destroy()
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing getnilinstances)')
	end
end)

addcmd('destroyheight',{'dh'},function(args, speaker)
	local dh = args[1] or -500
	if isNumber(dh) then
		workspace.FallenPartsDestroyHeight = dh
	end
end)

addcmd('trip',{},function(args, speaker)
	if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local root = getRoot(speaker.Character)
		hum:ChangeState(0)
		root.Velocity = root.CFrame.LookVector * 30
	end
end)

local freezingua = nil
frozenParts = {}
addcmd('freezeunanchored',{'freezeua'},function(args, speaker)
	if sethidden then
		local badnames = {
			"Head",
			"UpperTorso",
			"LowerTorso",
			"RightUpperArm",
			"LeftUpperArm",
			"RightLowerArm",
			"LeftLowerArm",
			"RightHand",
			"LeftHand",
			"RightUpperLeg",
			"LeftUpperLeg",
			"RightLowerLeg",
			"LeftLowerLeg",
			"RightFoot",
			"LeftFoot",
			"Torso",
			"Right Arm",
			"Left Arm",
			"Right Leg",
			"Left Leg",
			"HumanoidRootPart"
		}
		local function FREEZENOOB(v)
			if v:IsA("BasePart" or "UnionOperation") and v.Anchored == false then
				local BADD = false
				for i = 1,#badnames do
					if v.Name == badnames[i] then
						BADD = true
					end
				end
				if speaker.Character and v:IsDescendantOf(speaker.Character) then
					BADD = true
				end
				if BADD == false then
					for i,c in pairs(v:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					local bodypos = Instance.new("BodyPosition")
					bodypos.Parent = v
					bodypos.Position = v.Position
					bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					local bodygyro = Instance.new("BodyGyro")
					bodygyro.Parent = v
					bodygyro.CFrame = v.CFrame
					bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
					if not table.find(frozenParts,v) then
						table.insert(frozenParts,v)
					end
				end
			end
		end
		for i,v in pairs(workspace:GetDescendants()) do
			FREEZENOOB(v)
		end
		freezingua = workspace.DescendantAdded:Connect(FREEZENOOB)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('thawunanchored',{'thawua','unfreezeunanchored','unfreezeua'},function(args, speaker)
	if sethidden then
		if freezingua then
			freezingua:Disconnect()
		end
		for i,v in pairs(frozenParts) do
			for i,c in pairs(v:GetChildren()) do
				if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
					c:Destroy()
				end
			end
		end
		frozenParts = {}
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('tpunanchored',{'tpua'},function(args, speaker)
	if sethidden then
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players) do
			local Forces = {}
			for _,part in pairs(workspace:GetDescendants()) do
				if Players[v].Character:FindFirstChild('Head') and part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and not part:IsDescendantOf(speaker.Character) and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false then
					for i,c in pairs(part:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					local ForceInstance = Instance.new("BodyPosition")
					ForceInstance.Parent = part
					ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					table.insert(Forces, ForceInstance)
					if not table.find(frozenParts,part) then
						table.insert(frozenParts,part)
					end
				end
			end
			for i,c in pairs(Forces) do
				c.Position = Players[v].Character.Head.Position
			end
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

keycodeMap = {
	["0"] = 0x30,
	["1"] = 0x31,
	["2"] = 0x32,
	["3"] = 0x33,
	["4"] = 0x34,
	["5"] = 0x35,
	["6"] = 0x36,
	["7"] = 0x37,
	["8"] = 0x38,
	["9"] = 0x39,
	["a"] = 0x41,
	["b"] = 0x42,
	["c"] = 0x43,
	["d"] = 0x44,
	["e"] = 0x45,
	["f"] = 0x46,
	["g"] = 0x47,
	["h"] = 0x48,
	["i"] = 0x49,
	["j"] = 0x4A,
	["k"] = 0x4B,
	["l"] = 0x4C,
	["m"] = 0x4D,
	["n"] = 0x4E,
	["o"] = 0x4F,
	["p"] = 0x50,
	["q"] = 0x51,
	["r"] = 0x52,
	["s"] = 0x53,
	["t"] = 0x54,
	["u"] = 0x55,
	["v"] = 0x56,
	["w"] = 0x57,
	["x"] = 0x58,
	["y"] = 0x59,
	["z"] = 0x5A,
	["enter"] = 0x0D,
	["shift"] = 0x10,
	["ctrl"] = 0x11,
	["alt"] = 0x12,
	["pause"] = 0x13,
	["capslock"] = 0x14,
	["spacebar"] = 0x20,
	["space"] = 0x20,
	["pageup"] = 0x21,
	["pagedown"] = 0x22,
	["end"] = 0x23,
	["home"] = 0x24,
	["left"] = 0x25,
	["up"] = 0x26,
	["right"] = 0x27,
	["down"] = 0x28,
	["insert"] = 0x2D,
	["delete"] = 0x2E,
	["f1"] = 0x70,
	["f2"] = 0x71,
	["f3"] = 0x72,
	["f4"] = 0x73,
	["f5"] = 0x74,
	["f6"] = 0x75,
	["f7"] = 0x76,
	["f8"] = 0x77,
	["f9"] = 0x78,
	["f10"] = 0x79,
	["f11"] = 0x7A,
	["f12"] = 0x7B,
}
autoKeyPressing = false
cancelAutoKeyPress = nil

addcmd('autokeypress',{'keypress'},function(args, speaker)
	if keypress and keyrelease and args[1] then
		local code = keycodeMap[args[1]:lower()]
		if not code then notify('Auto Key Press',"Invalid key") return end
		execCmd('unautokeypress')
		wait()
		local clickDelay = 0.1
		local releaseDelay = 0.1
		if args[2] and isNumber(args[2]) then clickDelay = args[2] end
		if args[3] and isNumber(args[3]) then releaseDelay = args[3] end
		autoKeyPressing = true
		cancelAutoKeyPress = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				if (input.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
					autoKeyPressing = false
					cancelAutoKeyPress:Disconnect()
				end
			end
		end)
		notify('Auto Key Press',"Press [backspace] and [=] at the same time to stop")
		repeat wait(clickDelay)
			keypress(code)
			wait(releaseDelay)
			keyrelease(code)
		until autoKeyPressing == false
		if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect() keyrelease(code) end
	else
		notify('Auto Key Press',"Your exploit doesn't have the ability to use auto key press")
	end
end)

addcmd('unautokeypress',{'noautokeypress','unkeypress','nokeypress'},function(args, speaker)
	autoKeyPressing = false
	if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect() end
end)

addcmd('addplugin',{'plugin'},function(args, speaker)
	addPlugin(getstring(1))
end)

addcmd('removeplugin',{'deleteplugin'},function(args, speaker)
	deletePlugin(getstring(1))
end)

addcmd('reloadplugin',{},function(args, speaker)
	local pluginName = getstring(1)
	deletePlugin(pluginName)
	wait(1)
	addPlugin(pluginName)
end)

addcmd('removecmd',{'deletecmd'},function(args, speaker)
	removecmd(args[1])
end)

if IsOnMobile then
	local QuickCapture = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	QuickCapture.Name = randomString()
	QuickCapture.Parent = PARENT
	QuickCapture.BackgroundColor3 = Color3.fromRGB(46, 46, 47)
	QuickCapture.BackgroundTransparency = 0.14
	QuickCapture.Position = UDim2.new(0.489, 0, 0, 0)
	QuickCapture.Size = UDim2.new(0, 32, 0, 33)
	QuickCapture.Font = Enum.Font.SourceSansBold
	QuickCapture.Text = "IY"
	QuickCapture.TextColor3 = Color3.fromRGB(255, 255, 255)
	QuickCapture.TextSize = 20.000
	QuickCapture.TextWrapped = true
	QuickCapture.Draggable = true
	UICorner.Name = randomString()
	UICorner.CornerRadius = UDim.new(0.5, 0)
	UICorner.Parent = QuickCapture
	QuickCapture.MouseButton1Click:Connect(function()
		Cmdbar:CaptureFocus()
		maximizeHolder()
	end)
	table.insert(shade1, QuickCapture)
	table.insert(text1, QuickCapture)
end

updateColors(currentShade1,shade1)
updateColors(currentShade2,shade2)
updateColors(currentShade3,shade3)
updateColors(currentText1,text1)
updateColors(currentText2,text2)
updateColors(currentScroll,scroll)

if PluginsTable ~= nil or PluginsTable ~= {} then
	FindPlugins(PluginsTable)
end

-- Events
eventEditor.RegisterEvent("OnExecute")
eventEditor.RegisterEvent("OnSpawn",{
	{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnDied",{
	{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnDamage",{
	{Type="Player",Name="Player Filter ($1)"},
	{Type="Number",Name="Below Health ($2)"}
})
eventEditor.RegisterEvent("OnKilled",{
	{Type="Player",Name="Victim Player ($1)"},
	{Type="Player",Name="Killer Player ($2)",Default = 1}
})
eventEditor.RegisterEvent("OnJoin",{
	{Type="Player",Name="Player Filter ($1)",Default = 1}
})
eventEditor.RegisterEvent("OnChatted",{
	{Type="Player",Name="Player Filter ($1)",Default = 1},
	{Type="String",Name="Message Filter ($2)"}
})

function hookCharEvents(plr,instant)
	task.spawn(function()
		local char = plr.Character
		if not char then return end

		local humanoid = char:WaitForChild("Humanoid",10)
		if not humanoid then return end

		local oldHealth = humanoid.Health
		humanoid.HealthChanged:Connect(function(health)
			local change = math.abs(oldHealth - health)
			if oldHealth > health then
				eventEditor.FireEvent("OnDamage",plr.Name,tonumber(health))
			end
			oldHealth = health
		end)

		humanoid.Died:Connect(function()
			eventEditor.FireEvent("OnDied",plr.Name)

			local killedBy = humanoid:FindFirstChild("creator")
			if killedBy and killedBy.Value and killedBy.Value.Parent then
				eventEditor.FireEvent("OnKilled",plr.Name,killedBy.Name)
			end
		end)
	end)
end

Players.PlayerAdded:Connect(function(plr)
	eventEditor.FireEvent("OnJoin",plr.Name)
	plr.Chatted:Connect(function(msg) eventEditor.FireEvent("OnChatted",tostring(plr),msg) end)
	plr.CharacterAdded:Connect(function() eventEditor.FireEvent("OnSpawn",tostring(plr)) hookCharEvents(plr) end)
	JoinLog(plr)
	ChatLog(plr)
	if ESPenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		ESP(plr)
	end
	if CHMSenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		CHMS(plr)
	end
end)

for _,plr in pairs(Players:GetPlayers()) do
	pcall(function()
		plr.CharacterAdded:Connect(function() eventEditor.FireEvent("OnSpawn",tostring(plr)) hookCharEvents(plr) end)
		hookCharEvents(plr)
	end)
end

if spawnCmds and #spawnCmds > 0 then
	for i,v in pairs(spawnCmds) do
		eventEditor.AddCmd("OnSpawn",{v.COMMAND or "",{0},v.DELAY or 0})
	end
	updatesaves()
end

if loadedEventData then eventEditor.LoadData(loadedEventData) end
eventEditor.Refresh()

eventEditor.FireEvent("OnExecute")

if aliases and #aliases > 0 then
	local cmdMap = {}
	for i,v in pairs(cmds) do
		cmdMap[v.NAME:lower()] = v
		for _,alias in pairs(v.ALIAS) do
			cmdMap[alias:lower()] = v
		end
	end
	for i = 1, #aliases do
		local cmd = string.lower(aliases[i].CMD)
		local alias = string.lower(aliases[i].ALIAS)
		if cmdMap[cmd] then
			customAlias[alias] = cmdMap[cmd]
		end
	end
	refreshaliases()
end

IYMouse.Move:Connect(checkTT)

task.spawn(function()
	local success, latestVersionInfo = pcall(function() 
		local versionJson = game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/version')
		return HttpService:JSONDecode(versionJson)
	end)

	if success then
		if currentVersion ~= latestVersionInfo.Version then
			notify('Outdated','Get the new version at infyiff.github.io')
		end

		if latestVersionInfo.Announcement and latestVersionInfo.Announcement ~= '' then
			local AnnGUI = Instance.new("Frame")
			local background = Instance.new("Frame")
			local TextBox = Instance.new("TextLabel")
			local shadow = Instance.new("Frame")
			local PopupText = Instance.new("TextLabel")
			local Exit = Instance.new("TextButton")
			local ExitImage = Instance.new("ImageLabel")

			AnnGUI.Name = randomString()
			AnnGUI.Parent = PARENT
			AnnGUI.Active = true
			AnnGUI.BackgroundTransparency = 1
			AnnGUI.Position = UDim2.new(0.5, -180, 0, -500)
			AnnGUI.Size = UDim2.new(0, 360, 0, 20)
			AnnGUI.ZIndex = 10

			background.Name = "background"
			background.Parent = AnnGUI
			background.Active = true
			background.BackgroundColor3 = currentShade1
			background.BorderSizePixel = 0
			background.Position = UDim2.new(0, 0, 0, 20)
			background.Size = UDim2.new(0, 360, 0, 150)
			background.ZIndex = 10

			TextBox.Parent = background
			TextBox.BackgroundTransparency = 1
			TextBox.Position = UDim2.new(0, 5, 0, 5)
			TextBox.Size = UDim2.new(0, 350, 0, 140)
			TextBox.Font = Enum.Font.SourceSans
			TextBox.TextSize = 18
			TextBox.TextWrapped = true
			TextBox.Text = Announcement
			TextBox.TextColor3 = currentText1
			TextBox.TextXAlignment = Enum.TextXAlignment.Left
			TextBox.TextYAlignment = Enum.TextYAlignment.Top
			TextBox.ZIndex = 10

			shadow.Name = "shadow"
			shadow.Parent = AnnGUI
			shadow.BackgroundColor3 = currentShade2
			shadow.BorderSizePixel = 0
			shadow.Size = UDim2.new(0, 360, 0, 20)
			shadow.ZIndex = 10

			PopupText.Name = "PopupText"
			PopupText.Parent = shadow
			PopupText.BackgroundTransparency = 1
			PopupText.Size = UDim2.new(1, 0, 0.95, 0)
			PopupText.ZIndex = 10
			PopupText.Font = Enum.Font.SourceSans
			PopupText.TextSize = 14
			PopupText.Text = "Server Announcement"
			PopupText.TextColor3 = currentText1
			PopupText.TextWrapped = true

			Exit.Name = "Exit"
			Exit.Parent = shadow
			Exit.BackgroundTransparency = 1
			Exit.Position = UDim2.new(1, -20, 0, 0)
			Exit.Size = UDim2.new(0, 20, 0, 20)
			Exit.Text = ""
			Exit.ZIndex = 10

			ExitImage.Parent = Exit
			ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
			ExitImage.BackgroundTransparency = 1
			ExitImage.Position = UDim2.new(0, 5, 0, 5)
			ExitImage.Size = UDim2.new(0, 10, 0, 10)
			ExitImage.Image = "rbxassetid://5054663650"
			ExitImage.ZIndex = 10

			wait(1)
			AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, 150), "InOut", "Quart", 0.5, true, nil)

			Exit.MouseButton1Click:Connect(function()
				AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
				wait(0.6)
				AnnGUI:Destroy()
			end)
		end
	end
end)

task.spawn(function()
	wait()
	Credits:TweenPosition(UDim2.new(0, 0, 0.9, 0), "Out", "Quart", 0.2)
	Logo:TweenSizeAndPosition(UDim2.new(0, 175, 0, 175), UDim2.new(0, 37, 0, 45), "Out", "Quart", 0.3)
	wait(1)
	local OutInfo = TweenInfo.new(1.6809, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
	TweenService:Create(Logo, OutInfo, {ImageTransparency = 1}):Play()
	TweenService:Create(IntroBackground, OutInfo, {BackgroundTransparency = 1}):Play()
	Credits:TweenPosition(UDim2.new(0, 0, 0.9, 30), "Out", "Quart", 0.2)
	wait(0.2)
	Logo:Destroy()
	Credits:Destroy()
	IntroBackground:Destroy()
	minimizeHolder()
	if IsOnMobile then notify("Unstable Device", "On mobile, Infinite Yield may have issues or features that are not functioning correctly.") end
end)

([[This file was protected with MoonSec V3 by Federal#9999]]):gsub('.+', (function(a) _J_MKgnUpTFgX = a; end)); return(function(f,...)local k;local n;local t;local d;local u;local l;local r=24915;local o=0;local e={};while o<357 do o=o+1;while o<0x1c3 and r%0x1bd4<0xdea do o=o+1 r=(r+666)%29743 local h=o+r if(r%0x4b3a)>=0x259d then r=(r-0x399)%0x9be6 while o<0x1c7 and r%0xc6c<0x636 do o=o+1 r=(r-511)%11348 local l=o+r if(r%0x1b98)<=0xdcc then r=(r+0x2f6)%0x9882 local r=4201 if not e[r]then e[r]=0x1 t=string;end elseif r%2~=0 then r=(r+0x3af)%0xae02 local r=52245 if not e[r]then e[r]=0x1 d=function(e)local r=0x01 local function o(o)r=r+o return e:sub(r-o,r-0x01)end while true do local e=o(0x01)if(e=="\5")then break end local r=t.byte(o(0x01))local r=o(r)if e=="\2"then r=k.rPFpAunz(r)elseif e=="\3"then r=r~="\0"elseif e=="\6"then n[r]=function(r,o)return f(8,nil,f,o,r)end elseif e=="\4"then r=n[r]elseif e=="\0"then r=n[r][o(t.byte(o(0x01)))];end local o=o(0x08)k[o]=r end end end else r=(r*0x26e)%0x6b2a o=o+1 local r=96527 if not e[r]then e[r]=0x1 u=tonumber;end end end elseif r%2~=0 then r=(r-0x3a8)%0x6527 while o<0x135 and r%0x248a<0x1245 do o=o+1 r=(r*109)%17973 local n=o+r if(r%0xdb4)>0x6da then r=(r*0x3d4)%0x2d4a local r=40342 if not e[r]then e[r]=0x1 end elseif r%2~=0 then r=(r-0x3c5)%0x5301 local r=66694 if not e[r]then e[r]=0x1 end else r=(r*0x1a9)%0x7ee6 o=o+1 local r=84256 if not e[r]then e[r]=0x1 k={};end end end else r=(r*0x62)%0x7968 o=o+1 while o<0x3b5 and r%0x4d0a<0x2685 do o=o+1 r=(r+688)%42228 local d=o+r if(r%0x1d12)<=0xe89 then r=(r+0x4f)%0x684e local r=16737 if not e[r]then e[r]=0x1 n=getfenv and getfenv();end elseif r%2~=0 then r=(r*0x6f)%0x566a local r=26796 if not e[r]then e[r]=0x1 n=(not n)and _ENV or n;end else r=(r*0x26b)%0x5fe0 o=o+1 local r=5273 if not e[r]then e[r]=0x1 l="\4\8\116\111\110\117\109\98\101\114\114\80\70\112\65\117\110\122\0\6\115\116\114\105\110\103\4\99\104\97\114\69\113\121\111\97\79\118\107\0\6\115\116\114\105\110\103\3\115\117\98\98\72\70\116\99\88\86\79\0\6\115\116\114\105\110\103\4\98\121\116\101\105\84\111\86\73\115\66\99\0\5\116\97\98\108\101\6\99\111\110\99\97\116\113\89\70\117\98\114\67\117\0\5\116\97\98\108\101\6\105\110\115\101\114\116\97\75\81\116\80\90\105\86\5";end end end end end r=(r*854)%26310 end d(l);local r={};for o=0x0,0xff do local e=k.EqyoaOvk(o);r[o]=e;r[e]=o;end local function h(o)return r[o];end local t=(function(f,t)local l,e=0x01,0x10 local o={{},{},{}}local n=-0x01 local r=0x01 local d=f while true do o[0x03][k.bHFtcXVO(t,r,(function()r=l+r return r-0x01 end)())]=(function()n=n+0x01 return n end)()if n==(0x0f)then n=""e=0x000 break end end local n=#t while r<n+0x01 do o[0x02][e]=k.bHFtcXVO(t,r,(function()r=l+r return r-0x01 end)())e=e+0x01 if e%0x02==0x00 then e=0x00 k.aKQtPZiV(o[0x01],(h((((o[0x03][o[0x02][0x00]]or 0x00)*0x10)+(o[0x03][o[0x02][0x01]]or 0x00)+d)%0x100)));d=f+d;end end return k.qYFubrCu(o[0x01])end);d(t(186,"_U}xuwf?1H2cvG:{uc"));d(t(124,"1)/4VMlYtiHr+OLntVWLnntVAlt)2HtYHtt+/)iO/VYO/+rYA+iV5niMVtM+L)OxVY+iMtO+M+LkMM+lYtO4t)ni)MiOt+)/tO)lHSnMt6nitj)nHL)HHMO&MHVrO}M/+OMlO4nML)Min}l4L+VH+LMtQrY/2YYH))/tr_iO)MH+/VVM46H+4)+tVV+M/lHY/+L)VVr/4HY+<tn4lin+YinMttniiT=)tl)Vi))niL/OYL/Mr/kLiMOVMr/L+)V4OtMYOL/4+rl)n4lrnYM+hVYnit)+)4t)}Oi+LnH,JMtMUrH4/+rr+LM)POrOMlHtVL++VO+VMHY+!VnVY4nrt?_/YOJlt4)4lnnOtVnOYL4)Hn+2Vi4+HO4/+^4Ol/MMO/Mt+OM4On4Ln)V)+YMJLrY)Ot)+H/iM)/itQOi4)ntn/ltl4trr4liY4iM+L)OTMlO)MHLVVMOYV++MVtOnlOO))tiLtnpMiQ{Otn/VHV/nr)/+tH/YtL4lMVO++iV)OtM2Y)MlL.lYLrY/ntMiKVYHKVMiLttlHi"));local r=(-109+(function()local n,e=0,1;(function(r,o)r(o(o,o),r(r,r))end)(function(o,r)if n>157 then return o end n=n+1 e=(e*183)%508 if(e%1520)<760 then return r(r(r,o and r),r(o,r)and r(o,r))else return o end return o end,function(r,o)if n>250 then return o end n=n+1 e=(e-536)%17884 if(e%578)<=289 then return r else return o(o(r,r)and o(r,o),o(r and o,r))end return o(r(r,o),o(r,r))end)return e;end)())local s=k.WjFtsjGe or k.FuACH_aD;local tr=(getfenv)or(function()return _ENV end);local n=2;local d=3;local j=1;local l=4;local function er(b,...)local h=t(r,"/<?:wVr!,AX oC-{wA!w?--,Xwr-<rC&,XA,r:?wC!AoVV<?o-:w??{!r?w<?-CAA-1wCiVX<ooo,rw(w<<A-?! w!R-oo!A?C-Aw_{C ?ro?rw:&Ao}!C:X,ww-{r 1rX!,w:hw !!o:V{?X-<wI?C!w??g#V {!o-wX{:Xi Xorr?*?!m: C!r<V-<AAw{{CC,Agw<h# :!A0,-:A,V?qCCqVCwXyw oZrC:!,:?-o{XoV,r:A{- !!w:OAr,wVAowX-,ww!{{X-rA<{Awrg-X <Vo<rCGCrXA!w<CC-wo<roD Vr8<CoX,wVV<:!?:r-wA-V,rw:V-CX,r-{!CCArVrQ-oV!ooo,{:-{, ? XAVw:yr C!-?!o,X,V!<!ro?-C-A,V?V,? {rA{rGC{Aor!?{-rV?<-ow!-:,:-<<Co,Vwr w,r?,<Co,!{:!{? ,!<{,-<X<VX<C!o:---X,r?,,wV{<X-!!:?-XA VXfCr??:Cw,-w,w:?gCX!?V{<,C?,!wf,-V qK X!w,?wC)-o<,r:{{o ,<-1o-<wo:r9oo{,!:r{<X!<o-!!?:,-wA-V,VV: {?X{roCw &,Aw-2,!rVV<CCwwW<? ?ro?r:w{{o4!::,{<X-rXCT -A:{-Coo<! :,XGXQr:?Y,,rCw<q{!7:oor,?:,{?XoX ,-w{b<Vnx{o?!o:r: l{CCr<w!{r <8,o,!X:w--D:Ar!A{rCCA:V!+<!X:r-oXrrQVCw:{?XCjwo?!r:u-X-!oC,ww<{-!A8?ow!w?--,-!oX,X:A{- C<-{CoV!o-, ?VX<wo-CwX!!?< CowX<VC?!,V wq- XCrCCw :! :?A-r!<^oX,wA?r!<AC:A?wV XXA!!-,oCX<r{<?C:A?w?AXV{Yoor,6,-VA<XoCA?w =,ow?X;A{rX<rrX-!w?JCXAwAVrC:rAo!CV<<!oA,-:A_V {r ::!owX--X,r?!N: {oX{!w?C-XXr+o<Xo{:X?w-{ <!v:jC{A-V<owA<<XCA,owr^e?8-rACVV{wX:V,C?,Cww{- , rAVw X?r<<wo-,,Xrr<<oC<A{VJ<?VX<roo,rw8: ?A-?A!-wX-Vr<yoXC,X:rw<!CoAVV?*-!wr?:!X?,<r-<AC-ww<<AXrw%oor,9,rVA?woC,-{ooC!YrV<,or!C<?{< wrw<A{<V12-o?!o:rwr?:C?,!VZh!w-<-o4!X:w:XyCC,,<w? P! :VC-C:,r:w- ,f!<<V-q,CwXP o ,:?{^<r0??C?,owr!w?AC AVVwF! C!,:o-{wrp! ,!??o:o#<or,X::X,,!w{.r!?:<-wA-V,V::J-X,?r:??C?? -:A-!<<FoX,w,XVC?,C<A?%Ko ,X?-?:oV,-w {CXo!x?!-rAA?o<:oV,!w:j1o<!{C-XoVtIXowC?ACV-<<Cr,{wo6,r-!o:<Ao,rV<<:C?A?w<03 :?r{?!ow---X,r?!D: {oX{!w?C-XXrho{Xo{:X<,{C !!wCo oA{VoowoA!Cw Xo!!s?o-!w?--,{ro<,?:V{X :!z?oA?,;VVoOXr!V:?-oX!r-CrX??o{oA-V,<??M- XoV{?wCCAXVr oXX!{-XoVXXVA?wCAwr?o{{oX!::X{V:-<w ErX?w?X{Co,!<:?Xs!O<w*A,Aw:{C !XC?X<{CnXCrhooAXwnw{Grr-!w? -?A wCXo!^<-C,A?,CrX?w -XAw{<wX-!C:,{V rmro<!,:?-o<<oVA:CrAww,_? o !Aww--roCAmCwA{wr)D X !X:V <ro ,:{qC, :!??<C,AVwAT<o-!C:C{rwwpw r!;?X?VW? oV-?C-,XVrr r!X?,-?Ao <w<?!XwA?VC<-C<Arw{eoo,<B{A,?:o{r{:C{ArV1{CoU,S:?{Ar,??o- o,Xw<>, V?X?C{<V,wy< ,r!w:{UL :!,:<--XXr:oXXX,CwX ?o(r-?A-CVw:XlCC,,<w? -wo<o -!,:?:V<wC:,-:V{o o??bo-,A{r?1Co ,<wr7VrrVn?o-:A V,<rV-? Cb,XwwV?<CC-A<VrL{oo,,--Co <<o3rCoA{V!Nro<!!-o Aw?<! wr-?,?oz  {!--Xo,X!r <VC A,ww XX{Vsw<X?,#V{?:oCA:VP{o!?rC:r{iA!{rDAr,??Co{-ow!-:w{<!??<C C,,<V<o? V!<:r-wX V?<{C!,:wX{V  !w:wC{X?r?CroV, w: {AorA?V-CA-wC<, rA:w?{!oM!!- o XwV:<Lo!,o: {< A?{?!CVA!VrC<X8!{w:-C :!s<oA!V-<r-Ao,,X:!{oX!r--Vo:AAVA<Y  !!{X{? VV  r!!?,-?AoA !-:--C ?!<{! {!r-?XrVwB-o,CCr{V:C8 C,AV?xo  !X?C{::oE<X-r,???ob oX,w:2-:!XV:<,C?rV?C-wVW??o?!o:rww_{C),:w,>< -!X-ko-X:Z-{,o:,Vww+w :!??V- V?:-<Vo{,!CrA,w,^? o !Aww-{!o:! wr{V Vr- o,-?--,X?X?!{w,XX,rrC<A-rwow<-{o,,Yw!X,A2r<<!-?wX?oMCow!!:{-:w?a: wr-?,?w<<oX,w:A{?,:w b?r-:C-kAXVwr??C--X<rr<{CoA,{--oo<?oTA{?XAVrW{CXw??-mV {!!orAw:,{?Xo X,Vwr{A -!!:w{PVrww<A,wr-:A{  X!X?A-,A q-CArw::CrAiwXVq?:--A!V,orA<wC{w-AAowX^<Ar!r:{{? &r!?<CAAAVC o!C?--,X?AC!X:wCXXCr<?:C!A--,X VX<wo---X r-< C{A,wA} o,,rwV,,VA{X wr-!ow!d,  ,4:A{r ?<,irC wr::{{ !,5?C{rVowr<VCoA!wC7rVw<<or,8:Xr,<roC,{w<A,VV3Xow!-XoV ?RC?,VCoXrw-H,o?CvA Vo#{Cw,CwX+rroVX?{AX!Arr<<Cr:oeXA?w-^w -!,A,V,7!o!<o-!,-w,L?<8C Aow{<woC,XwrXoAXr{CXo,ArwCo?X<,w:w,oV_{- ,!?rCwAH: {,?w?X,,Vr ??C{Ao-rCVV,<?ooCXX,r:?!,-,-w G,  :0w<-V <<,??C-AVVw{{ !,??C-rVorC<AC-,o{--Vo<! :wC:A{V!o- -VV{o{,oA?XkX-:AoV!<-o!,o{CoC,!w<{ !-VG{5XXrwrX:C0, <!?-kXCVwwA-AXwVC?wCwAAV?H: oV?: -oXrr:<!C:XVMwoV!r:a-X-Vo?!o?r{ XCr!?rCA:i-{X?Vo<r<,{- ,r-{{C!X=-,XoVX<wo-C:X!!V<AC{,-wA-wo!,w?<o{w?FV wr-?,?!<w  !::{{,X:<,{r <!--?X Vw}-o,CrX<r?<VCXA:V#Lo!?ru:VXE,CrwB{C{ADC-{rVv;Xow-rXorr<oCAVXlAo:oFrA:AXXACVA<-ooA::X0! {r :?CCX:Vo<oo!,XwX -XC!:? X!,VVwg!ow,Aw -<X !w?V-rXwVCC, D,!:w{, V!,-Aow,f:!{rX<VA?wo{,,wXHC :V V:E<o:,?{CCwX V-?,C<AoVCoCX-, :X-{ ,r{C -<!ww {-,w!o:{-VwR{- ?ro?r?<{C !!::r{r:-{- 6rX?w:AoXX{?osC-<X!VA 9r-??CoArA-!A?!-XX<r?X-ro?eCXAwA-!w?:{VA r?Xo!V<-C,A?X}r ?oC{XwVC<XCr:o?X{{rXw{?:{<V?<-X,!r<XCw,-A,!w? --AAV!5CC?A<??{- VrC?X-,,<wC<wC?!{::-{wrzA ,!??o:?9{ C!V:XC,X-VC?{CVAo-rX V,<?oo-V,XVA4< A,{V&{<orrw<m- Ar{X ,ro?r-j-oo:!e:w{< w{,owrX?wC--o !!,? {nXArr??,,!rw  rAor ?,-?ACrwooA!??-CAww-T,k--<XoVV<r,wV!{,-CA{V )?or!C: {< r!V::A?V,iw -!,,Vry_!C?VowA7? o!<?X-A!V:C{wrz<XC?,owrVV6:!r:<-,X?VoV ?:CXwr<p ,!??o:XFVor!A:-{! w!BCrowAAUw-:CG! wMXr!<{oowr-?,-?CCXrVV<:Cr,Cw,{X  r,?AC !w:{{r ?:-gV }rX?w:<{ ow!V:r{wVXw!<:CoArwV;w !!CorA!:,{?Xo X,Vwr{A -!!:w{kVrww<A,wr<w!{{ o! :wC{Xr%-{XC<, w:A?Vw8w -!,!:VTYXX:,Aw?{w <rA?{!,:--XXwV-r :X-CXXr{:<Aw,<w <woV,rww{Cwr<  ,!??o:?MVC1!A:XX,!::TCro r{:+-:A rr<-o{,:: zF,-! :rCCXXVA<AC?A {XoCro?r-&-C or{?o{< :<r>:oCArw!D,or!{{Vo<,X:A{! X!<?oC-A{wo6C {:XlwXorr?Q?-{A XrC:?- X,rwoX ,,C{,Cr  !V:?AXrr{3 or?<oCrCoX{!X?:-wV?<CCr,%!V?,Cr,C??{C ,,A:C{!  <XC ,owr7Q{ C,A?:{O oX!X:{v<wV{- ,!??o-rXSVX<wo{,,w?{o r!k_XV:C-VX?roo,rwmwr<A-w,Cw- o,X:t?VC,,r:CC? {r :!C{Xrr<?V,www{r ErX!!w:Door!V:w-!XC{r ,r,??CoC,oV!-:,-CXr<?{< A!aCoXXw-N,o?o<X-VV*CCAA?:C ?AV!w?r-:X?V!<oo!:o?{{AX{!Q??!XV?-oXrr0r-:A{XXC!?? -,XwdX-VC?:,?r{wX ?f{{-?A?;,{<o?:rwD-  rrA?!-!A-7rC<Vo< o-,,w?:{?,CV,-wC<?o <w{r,rwu{XJ6C:A-w!S,!rw<{{XwAAwo{X <wr?{CCAAw{<rX?, :oCF -ro?: ,A,VV<wo<,r<w{w X!<?X-XAAw{<rC : {?X-!r?lCXAwX<!o?:--Vr:?<{C,A?w!j. {?rJVoC,w{g Cr?<oCr-wX{!u?:-,X<V-<X,Sr-w:X-,Xw!QXAr!:V?%Vo!,XCwAowrRG Xo,A:Vwc!oo,Vw?{-rwV??!A?!<V-cAo-<rCX,,w?{ojAC,, w,JCo{:?<{{?XAr!<A!g?{-?AoVrr%:r-V !VC?wC{?,-!AXVw1-7o- X{VA<{Co,,-1X?V?*ooro:XAr?<wC<,A?o{!ow!?orA::,{?Xo ?,VV}{A X?,{!AoA<::-  Xr:{,-VXVVA<w {,<w XX!!<oCrAQArrA:wCCA-DoC,,N!V?,Cr,C??<: {!-?-{: Vr ?{,-VC}Q X!w!XwC<,o<,?{s  rwVASo X!<=r{+XAr:<XCXA<w W:o:,!-rX!V,<?oooAX,V ?ro{, VrD<o,<?C<,w:-{,{CC<A{20C{X!V-oX,,:o{r LX ,,w?-o :r-o,,X:X{wX-AoA,:Wo  Xw??A-wXXVAX-!!?RCXAwA<!!:?{VVr:w<:C!,<w!uw E?rKo-:X?VAXX!V<oCrAh,C!A:<-oX<VAorX ,::!{Ar,w{?<-AX:w 6 o:<XCr,owr#f?<CVA wCXwrw<rC},X,o!:?VC:AXVV*A -<r-!,,w?{oS?CVX3wA^X!,w:{-XrA :Czr :rA:r-VXoVV-XC<,!wr{r {,:-?XrVwL-o,C?X,r ?:C?,Cw:; !?V<<ACF:oN,X-r,??:f{  or{:w-CXXrroo X,{{X-  !!X?!Ao!,V{??rr?wC,A?woV<?V{:!Aw<{,rw?XCrA_wXw!?X-<X?w-<Vo<,o:,CXXArw?<-?:?{ XwV-<,?r{< ?rV?X-:XjVoo? =,V{zCVXA!!C,X:?-{!XZVX<wa{-oXr:{??CAAXwrBC A,w:}C?X<Vo<ACX?,F:A-Vr<toXCr:-{, ?rC?r-DAXrrAro,,?:o{  arX?w{k-oV?2oorC :X{wX-,-V+CoArVg<+ow!{:,:-XorXoOCXAww-z-o?!C:r{KC!rw<-C,A:wo%roR,o{w--X,r?!{CrAzwX<r<:!,::-o ?r%<XCwX1VVB? -!r !-XXwV-:,C:,ow,h* o!w!C-, wrX<rCw,XA!{- ,!??o-!XRVo<wC?,,w?{o r!V?X-VA-V,<?o-,rwyEC wr{?,-:AoV,<0-XAk:-{X ?rC?rVFAX,w?wo,,w:o!: +C:?w{uXVV?K-or+!:X{wX-,,r,CoA,VMkoow,T:,qw?{rr?wCX-Cw-k,o?!owC{qXorw??C,Awwo<,oC!X:!-- wr?<oCrX?V?iwo?!, A-oXrrY:XCo,-won?o1!r!{-X r!;<,C,,o!-4^ X!w?-{!X?rx<rCr,Xww{- ,,r?o-AXfVX<wC8,,w?Qr r!:?X-VA-VX<?ooA wk{- w!:?,-?AoVo<,oX,X:-?A ?rC?r-?AXVwXCo,,?:o{  =rX?wC-:!V?4oor,w:X{wX-r-?XCoACVa:-ow!{:,{wXorr {CXAww-.oo?!o:r{4wArw<-C,A!wo%rov,oCV-- Wr?X:CrAGwX?wo-!,:X-oX-rFAVCwX-wC6?ow!r:,-X{-V-:,-<,ow{Uuo?!wX{-,o?r?<rCX,XwC{-wP!??o-{XGrV<wCA,,w?{o r,0?X-AA-V,<?oo,rr+7A w!X?,-:Aoo?<7oX,A:-Fr ?ro?r-wAXVw<wo,A<:o{, krX?w{pV,V?<oor-!:X{wX-r,:oCoX!VPmXow!-:,{?wwrr?{CXXVw-hAo?,oVw{j ,rwrVC,X<wo*rr !Xw:--X,r?<CCrX?r?nwo-!,w!-oXrrx:XCX,-V,7?oo!rwo-X rrw<,-:,o wFq X!wwi-XX?r-<r:-,Xww{-oX,w?o{AXYo!<wo-,,w?fw r,U?X{!A-VX<?Co,!wm^A wo??,{?AorrrXoXA?:-:- ?! ?r{?XrVw<Co,A::o{r u,X:wC-X!V?< orA?:X<w or,:<CoXVVD<?ow,-V:{? Xrrw{CXX:w-:,o,!oww{So,rwwVC,A?A:Nroo!Xw?--XXr?:o-?AmV!TwoX!, V-o ,!V<X-:,-! n? o!r:=+zXwr-<,C?,ow!x^-X!o?-{,X?!X<r{!,Xww<U ,!{?o{rXuVo<w--Aow?1X r!C?X?<A-rXC?ooArwM0< wr-?,-?wrVr?<oX,w:-{A ?Ao: -HX Vw?oo,{,:o{r -rX:?C-XAV?m-orX=wo{w Cr,:GCoX:V_<oC,!-wA{??Vrr?_CXAr,:.,Cw!owV{7XXrw<-?-A?V UrC?!X:r--o,!?<o-rA0V,#wo !,ww{<Xr!?<Xwo,-w,d? -X :J{CXw,C<,C?,owrVr X,w?-{ X?V-<r{hA7wwT{ ,,1?o{:X_ro?!o-A w?w< r!c?X-rC:V,?roo -w.{X wr-r{-?XCVr?woX,r:-<,o!ro:,-WX!Vww o,Aww!{rowrXXwC-A,V?NoCw,5w{{wX-r,?:CoorV?1XCA!-Vr{???rr?c{rAwrmY,C!!o:,{4oX!C<-- A?V-IroC!XwrX-X,!!<ow{ATwXQwo9XC:?n?XrrA<XCw,-w,wA o,A:YJ7XwrU<,{?A?wr<w X,<?-?VX?r-?oC8Xcww!C ,!??o-rX{VX? o-,,w?{C rX_:o-w VV,:Boo{owH{Xo:r-:o-? :Vr<?oXXww<{,o!ro:X-_X!Vw?R,,,?V:{r?ArX?wC-AX,!WoC-,Ywo{wX-r,???:ArrVeXCo!-:X{?oo!-?6{hAwV k,{{!ow,YwXX!o<-?VA?wohroL,!:w_!X,r?<oC!AE!X<o -A<:?=XXrCr<XCwAow,<, o,{:z-oXw!-::C?X:wr<r X,<?-{Xr?Vo?{C)j:ww{- ,!wr<-r XVX?Xo-,,w?{o{C!dw<-w ,V,<wooXrVr{Xoor-:V-?CAVr??-<,wV,{,?<ro?r-aAXr_R--:,?:o{r <rXVw-VA,rC1o-w,R +{wX-!V??{wArr =Xor!-V,{AXo!{?7{?AwV K,Cw:o:r; XXCC<-C,A?w-: o.Ar:w<rX,r?<oCrC!wX<C -Aw:?--Xr,=<-CwX,w,W{ o ::P{oX V-:wC?iXwr%( X!wwX-, {Vo<rCY, ww?- A!?wA-r -VX,Xo-,,w{{oCR!&w!-wXhV,:?Cr,rV {Xo-r-:V-?X-<r<n-!,w !{, ?ro?,<VAX!?M-C{,?:o{r f <?w{AA,!;yoo,,RVXJ!X-,w??-AAr,C3XCr,o:,<NXoA:?SCXAww-<?o?A :r{FXXrV<-&,X,wo?Vo5A,:wrwX,r?:!CrXowX?: -!X:?boX!r%:!CwXXw,9{ o,,{)-Xo:V-A<C?,owr;?-{!ww--, {Vo<rCG,X, {-CV!?wo-rX?VX:w-A,,rH{oo:!4r!-w n!?<?-o,rr<{X wr-?,-VAo!!<hoX,w:{{,-?,A?rh<AX!?J-:-,?:o_r 0,,?w{{A,VwUo-r,A:X<:X-,r??-AArr?oXowA{:,{rXorr?HCooAw-?Xo?A-:r{1XXrw!wC, <wo?,o%!o:ws-o?r?:oCrX-wX<< -,Xw!-oo,rv!!Cw,-w,2w{<!rV:-X-<V-<,C?,oAo_9CX!wV<-,XwVo:r-V,XrV{-Cr!?:A-r ?r{<w{<,,Xo{o r!u?o<AA-!o<?o-,rw2{X wow?,d:Ao!X<goo,wV-<w ?,-?r{-AXr<p-CXAw:o<X 3AV?wC-A,Vww<orXV:X?XX-r,??Co-oV(?oowX::,{wXo,r:ACX !w-?ro?,A:rk? Xrww:C,{!wohro3!orA--o-r?wrCrAvwXtw<w!,VV-ooorx<oCwX-VAD?-;!rw--X <V-?XCV,oroU&::!w?--,XwA<<r{!,XrV{- ,!??o:oXy!-<w{V,,ww{oCr,p?X0AA-!r<?CA,rV?Qo wAV?,:wAoVr<2oo A:-?s ?Ax?r-EAXVwVVo,X!:o<- 6ro?w{-X-V?:?or,C:X:<X-!X: Co -Vz<Vow!-:,{? ?rrwACXAww-BAo?Xo:C{=C:rw:oC,d,wobro:!XVX--C<r?<-Cr 3wCRw-V!,V,-o :rF?oAw,-!<}?CV!r:&-XXrA:<,{o,oV!Hz X!w?-?{X?,:<r{X,Xwr{-C,,C?ob-X0r!<wI ,,Vw1? rAX?Xw?A-V,<?ooA{w;?V wr-?,-:Ao,r? oXX{:-<r ?-??r-OX:Vw:ro,XC:o{, z,X? C-o<V?:wor,C:X+rr-r,wCCoX{Vt>Xow,2rC{?C,rrrjCXAww-E,iA!oV{{^Crrw?_C, ?r!Hr-X!Xw<---Vr??-{?Ae!rGw?A!,:?-oXrr!<X}<,-w,_? C!rrq{AXw, <,{G,o o8a X,V?-<?X?,A<rC?,Xrw#! ,AC?o<LXzr!<w-Jw,w??A rC??X-wA-VXw!oo wwF?o wr-?,-?{?Vr: oX ?:-{X ?,o:X-NorVw:,o,,{:o9,o<rXV?C-AAV?=oor,?r{{wCCr,?XCoArVmNX<X!-rw{?C rr??CX wVXi,-{!orv{n !rw:2-rA?! Br-1!X:w--XXA!<oFrA_!!cw -!,:?w?Xr,C<XSw,-wXL?Co!{:%<,Xw,,<,C{,oV,u- XXw?-:pX?Vo<rC? {ww?{ ,AA?o-rXLVXV o- rw??C r!??X2wXXV,w<ooA:wN:! w,e:?-?oCVr::oX,w:-{,o<roV,-SAXVwO{o, ?V!{r-?rXw?C-h-V?foCC,mrA{w-Hr,?wCo rVC3X{w!-r!{? Arr:?AXAw,.;,e?!o:r{QXoAA<-y A?!o=roz!X:wwwX,A?<o2AAmwoIwC-, :?<CXr,{<X-<,-VX<V oXA:Ww{XwV-<,Cwo<wr:w XX-?--,X?VoroCu  ww:? ,!w?o9rXwVXwro- !w?}A r,?w?-wC?V,,Voo,rw_{o-Ar-VC-? wVr<7oX,wAw{,-wroV -pAoVw?-oo,?r{{rC{rX:<C-XXr!jo{ ,co,{wX-r,?w<<Ar,rZXC{!-:,{?Xo o?7cCAw,w9,ow!oVr2?XXA,<-H!A?VA;rC?,C:w?wX,,o<oCrA.wo:A -X{:?{:Xrre<XCw-ww,:r oXC:)-oXw!-?XC?o<wr?{ X,<?-{X  VowCCm-?ww{- ,!wr<-rC,VX?Ao-,,w?{o=o!#V{-wCrV,<wooXrVC{X-Xr-V!-?XAVr??C:,w!r{,o?ro?r-_Ao,A.-N<,?w1{r RrX?w:wA,,,bo{{,u:o{wo-r ??<:Ar!{+XC<!-wX{ XoA{?l?wAww-^,ow <:r?XXX,A<-C,A?wowCoB <:w?,X,rw<o{rX,wX:o -,V:??AXr!??oCwo,w,,  o!r:H-X -V-V:C?,owr9< XXw:!-,CCVo:wC+Kiww{-or!?rw-rC VX<ro-X,V {o-{!^r?-wX V,?w,o,r! {X{Wr-?,-?A-, <43r,ww {, ?ro?r:rAX,C4-*w,?:-{rC#! ?w<,A,,XIoC:,(wo9oX-Xw??<CArV^uXor ::,?{Xo!w?*CXAww-V-o? r:r?CXXrr<-{,A!wow<ou ?:w{ X,!w?XCroCwX?C -!,:?--C rqV,CwoVw,;? o!r,r-XC{V-VrC?,-wr?Fo !wrX-,CXVo?:CTAoV-{-{r!?w!-rXvVX<rq:,,,<{oCw!t?X-wA-X-<?=,,r!{{X rr-w,-!AoA:<I_?,ww {,ow,r?r<{AXoC4-o,,?:-?  IXX?w<CA,V?Wooro!:X:<X-X,??C-Ar!g<,ow o:,{{XoX:?H-oACw-w,o? -:r{QXXrw:?C,C:wo_ro%! :w<-o?r?VCCrX-wX!X -!,w:-o-wraV CwABw,??oC!rr{-X-?V-?VC?A-arxc{ !w:o-,X?Vo<,%V,X,r{--C!??o-rX= (<w2C,,,w{o ,!twX{:A-A,<?eX,rwC{Xor!X?,?wAoVo<xoX,wwL?C ?X{?r0:AXVw_-o,C,:o:r 3XC?w-JA,!?<?oro<:X:?X-!V??--XrVBwCow w:,{?Xor,VVCXC,w-?-o?!o:r{>OcrwV{C,CrwoW,o3AX:A---Xr?VXCrACwX<roX!,!r-o<{r*<XCwA_!Ck?;<!r:V-XXwV-<,<A,o,,Qb{{!w:K-,o?VC<r<:,XV<{-{V!?:-{:X*A{<w:r,,w?{o r,A?X?XA-V,<?oC,r!xpw w w?,.%Aooo<eoXA,:-:  ? ??r-?AX!w?:o,or:o:A &!!?w{NV,V?V?orXo:X{wX-rXV!CoCCVO?row!-:,{?&?rrrwCXC w-KXo?AoV?{Y-{rwr<C,A{wo<,oA!X! --::r?<oCrA?!{7w;r!,!Z-oXrry<X?X,-,Ct?3w!r:?-Xowrr<,<,,o,AHno!!wwJ-{X?Xw<r:V,Xww{- XX!?o?{X_rC<wo-,,w?V? r r?X?CA-VX<?-o, wEw< w <?,-{Aor,?VoXoC:-!< ?ro?r-?o{VwV,o,ow:o{r grXr C-C{V?Vror,?:X<w Cr,rXCoX:Vvw!owA(Vw{?{rrrAVCXAww-F,CX!o,<{bXXrw<{C,o?rVWrq !XV?--<-r?<oC A&A?vwbA!,:w-oor!r<X<C,-Ack?--!rw?XXXwXA<,Nr,owreJ X  ?-:<X?X!<rC?,Xrw<: , o?o{:XeA!<w-ZA w?w, rA,?X-wA-V,<oooC:wy{X wr{?,<?ACVrVCoXX?:-r- ?ro?C-=-wVwV o,,w:o<ro?rXr{C--?V?<AorA?{X{w{ r,A CoArVq8o{A!-,r{?oorr?#CXAwAV(,xC!o,w{4Xorw:--rA?A,yroo!X !-- Xr <o?wASA{5w -!,:?-CXrX{<XCw,-wA#?-o,o:^:AXw!o<,w,,owr<A Xo;?-:!X?V-<r{.X:www  , -?o?:X0roCwo-C!w?V: r!=?X-ww,V,r?oo,rw*{  wA-:A-?-oVr?-oX{X:-{,o<ro!:-Y-XVw<.o,X?V?{r{-rX!<C-XVV?<-o ,Q,X{wo,r,??CoA,,VcX<V!-r<{?Xorr?k:nAwAo0,<:!o:,{ioX!V<-?!A?AA7roC!Xwr{<X, :<oD ASwX>wow,2:?:-XrA:<XCV,-wAT? o<V:)-XXwr*<,C?,owr:: Xo:?-:XX?V-<r{lACwww- , {?o:wXNro<oo-CXw?V? r!N?X-wXrV,rVoo,rwz{o wA-: -?-{VrVAoX,C:-?, wro!A-s ,Vw,wo,,,ww{rYwrX?{C-AAV?Q-or,KCA{wX-r,?,CoArVlMXr:!-:,{? :rr?4CXAwXw=,<?!o,X{PXorw:---A?ACnrvC!Xw<-- XrC<o?AAkr!)w -!,:,{wXr w<Xp{,-wA6? C!r:y,AXwV-<,Co,owrkM X  ?-:AX? L<rC?,Xrw<: ,ow?o:?XDA!<w-8AZw?VB rC<?X-wA-V,<VooC wF{X wr{?,<?XdVrrVoXX?:-r- ?ro: -i-oVwr:o,,w:o<r XrX!!C--XV?VXorA?{X{wG:r,:,CoArVY4Xr{!-,-{?Xorr??CXow w),<,!o!{{Z-:rww-:-A?X?irC-!XXX--XXA!<o?CAlr:Ew -!,:?<{Xr :<X? ,-wXI?CoA<:0:-Xw E<,?&,oV,eX XoX?-rXX?Vo<rCWAXwwVV ,!??o-,Xz,X<Vo-C{w?wV r{o?X<w XV,rAooXww7!L w!HVC-?{wVr<ooX,w:-{,-Vro!X-j{?Vw<mo,X?wo{r6VrX!rC--rV?<-o{,_A<{w<{r,??CoArrXnX<o!-:,{?X-rrVG{?AwXrH,m !o!V{9CX!{<-:3A?rXkr:r!X:r?:X,  <o-LA^wX_w -X :?w<Xr A<XCr,-r,hV ooo:1:oXwXo<,-wX<wrV, X,:?--,X?Vo?:C6-:ww{- ,!w?o<rXrVXrCo-C<w?:! rXE:<-w{!V,:+oo{owS{o-Ar-,?-?C,Vr<DoX,w!<{,u,ro,0-zAoVw?--V,?A:{rH?rX!?C-XXVV6o<{,FV<{wX-r,??{:ArXXvXow!-:X{?Co!,?P:wAwA!8,oo!orrf<XX -<-{rA?o?0ro?X{:wwAX,!?<oCrA7wX:! -o{:?w!Xrr?<X{wXww,VX oo,:6:,Xw!c:wC?-rwr?V X!w?--, )Vo!<C9,Xww)7 ,X??C-r{ VXVCo--!w??oo!!x,V-w oV,,,oo,,!V{X<ir-Vw-?AoVr<j{C,wAr{,5-ro?,-y XVXp-?<,?,-{r{-rX:r{!A,XC#o:C,y:X{wX-r-??:,ArVDYXor!-r,{VXoo??q?:AwXCc,{?,w:rwoXX,?<-w-A?w-: o)C!:w<oX,r?<oCro:wXVC -CV:?--Xr,h< Cw-,w,Vw oow:={oX!V-!wC?<rwr>5 X!w:A-,{{Vo<rCn,oww?-oV!?,A-r-AVX!:o- ,V,{o<:!Sw,-w<wV,<w9<,rA-{X-Cr-?,-?AoAC<a?w,wAo{, wrowr{!AXX{;-<w,?!A{ro?!<?w: A,!<loor,&:X{,X-or??CoArV<1X{w,,:,VZXo,w?kVEAww-<<o?C!:rw-XXrr<-{,X wor?oDCV:w{ X,!wCoCr--wXw? -!,:?--C rz!ACwA<w,v? o!r!!-X)uV-!!C?,-wr?c C!w, -,X-VoAACbAoV-{-<!!?rr-rXEVX<w-w,,X?{o r!v? -wo-rC<??o,rV-{X?Xr-?,-AAo :<8?X,ww+{,C?,!?r:-AX <9-DV,?w- r =oX?ww?A,V?.oor?X:XVVX-r,??CCAr,(?<owC{:,<mXoCo?SCXXCw-rro?CC:r{?XX,w?!C,{<worwonXS:wi8XAr?!CCrX,wXdw -,XX:-ov,rv? Cw,-w,??Cw!rA?-XBrV-?XC?XoV?Bx<o!wA.-,XXVo<rCV,XX!{- ,!??{-rCb!!<w:<,,rr{o?o!4VX{{A-  <?-X,r r{X-w!r?,wVAoA{<m<X,www.n ?CQ?r{{AXVVd-oA,?:oAV 9rX?w-XA,V?joorCr:XV:X-oo??C-Ar!u<AowC-:,VQXoXA?&-oXAw-rXo?o!:r{xXXrwoAC,{VwoTro#! :wKIobr?,QCrXVwX0w -A,wV-ozXrx!-CwXXw,<w {!rAV-X<?V-<,C?A-wCgh?T!wAo-,X?Vo?,-C,XX {-?V!??o-rXjr!<w:?,,XA{o ,!O:X-!A-  <?o{,rXw{X X!r?,wrAoV!<3o ,w:{{, ?0 ?r-nAXrmH-o,,?:ow2 ToX?ww?A,Vw;o-rA::XVVX-oV??w?ArV4<rowC{:,{wXor!?a{XX?w-rAo?CA:r?CXX!r?qC,{Vwo!Xol!X:w--oVr?,cCrAJwXZV -X,w<-oyXrE:,Cw.ww,)?C<!rA<-X+,V-<XC?Xow Iz<o!w,{-,C_Vo<r-:,XX,{- X!??o-r ?<X<w::,,X?{o r!%:oXwA- -<?--,rwg{X wkr?,wrAo o<zo ,w:-:C ?o-?rwwAXVrO--,X :oVA 2o ?wNoA,V?tCor-V:X{rX-r,??--X<Vb!eowA?:,{?Xo!,?ACX{ w-,?o?!o:r{= Arw,:C,{Awoj!o9!X!A--+ r?,<CrA?wX?wBw!,Ar-o^:r^V!CwX(Y,=???!rXo-XXwV-<,!o,oXCkv X!w?{-,C?rt<r:!,Xr?{-?-!??o-!X5 -<w:V,,ww{oCr,<?XwAA- o<?V ,rV?aV wCV?,r!AoVr<Koo A:-ru ?XC?r-_AXVw:Xo,-!:oV- fro?w{HX-V?!<ormC:X{wX-,,:wCo{ V0r-owXo:,{? <rr,!CXArw-G,o?,-:-{u<?rwAXC,A?wo<,C<!XAC--?or?<oCrAPw qw?V!,A -oX!rx<X<A,-XCH??:!r:?-XXw<o<,:V,oX }# X!ww-g<X?o<<r:w,XV<{-oX!o?owCXyA<<wo-,,w,Sw rC,?X{-A-VA<?oC,rw5AA wr-?,-VAoVr<EoX,,:-VC ?Cw?r-?AXVw< o,C-:oV  arX?w{-XoV?!<or,o:X!!X-!X:VCo{CVP<Cow!-:,{?o:rr,,CXAww-aAo?XowV{N<?rw:oC,e,wo4rCX!XAA--<>r?<-Cr 2AQRw?w!,A!-o-:rv?oAw,- 9y?<,!r:1-XXw#,<,: ,owr%>  !wV--oX?oV<r--,X X{- ,,{?owoX&o:<wCN,,r?D? rC!?XwXA-rV<?C-X?w=r: w {?,-?AoV,wVoX--:-{- ?ro?r-P{*Vw!Vo,-o:o{, u,X?XC-PvV?!?or,C:Xqrorr,,oCo*,VOOXow,5rC{?<!rr:wCXAww-D,<,!oA-{7<Vrw?UC, ?r<0r?A!XAX--C,r??-CCA2 V%www!,:?-oXr1 <Xwq,-w,P? C!rrWV>XwoX<,<r,orCyG oXA?-VVX?Vo<rCy,XwwVw ,C ?oV:X0Vo<w--A w?rr rCr?X<wA-rX?woo{?wy?  wr-?,-?w!Vr!CoX,w:-{A ?Ao,o-K.!VwV?o,XA:o{o ,rXA?C-o:V?7Cor,?:X{wwCr,??CoA!VddXow!-C!{?Xorr?#CXAww-z,Vw!oXL{B<,rw?FC,A?w{eroe!X:V--X,r?V{CrABwX*, -!,:?--XXr2<XCw{VXAr{?<!,: -XXwV-rww<-{X!robX-=,{r<n!o-<,C!,Xww{-S,C-,CV{2Voo,!CK,ow?{o r  A:w!0AVA<Aoo,rw*0oVXr-?A-?ACVr<#oXXwV<{, :ro?!-DACVw?-Cr,?:C{r <rX?rC- ,VXeoo!,i: {w ?r,??-AArV:*Xow!-:,{?Xor{?cC AwV<p,o:!o:r0:XXrw<-CAA?woOroi!X:w--XAr?<oCrA?V:Ew -!,,VV<<XX<!C:!{: r!r C! :#-XXwV-!XC?,CwrWl X!w?-B, :Vo<!CB, ww{{ ,!?:!-rX:VX<wo-,,w?{o  !S? -wX<V,<:oo,rVX{X wr-?A-?AoVr<#oX,w:-lo ?ro?r-?X<Vws-o,C?X,V!?Ao{ArV<AA?A-:??XH::,(<<Xr?w-oArVcGXmo{:XVV:<XCV,A:--r C!!:rooA!r?<-rr??C,A?wo!C?<-:X,-{Vw?!o:Crr,{{XX!-!AArr<-o?T  w!{V,rhwo!!r:p-X{QoC! ::{,Arro< -CA:VXX:,{wA.: C!!:<,  <?--AXUVX<w:o-C A{CKw? w,,w?!wV4<, ,,wA{X wr-r wX{Co,!<?C{,X:rX :rA-?-VA,7X!:wVwx:C?C{wr:K: wwwo-oXo,,r:X{wX-X r,w-{! Cr{oV,X,{{A-ow?<<r,Cww{  oow,AVVAC!<VCCCAwVVrC?<{-:r<A{-!rw?_CrAqwXr <{-VA!-CXrrD<XCw,-w,{?{ !!-:AV!-CCorXA,o,rdn-,!w?--, w{V<rCq,XVr{- ,!?wo-XXUVX<wo-,,w:{oCr!,?X-wA-V,<?C:,rrR{C wr-?,-?Aor<<v-X,!:-{, ?ro?r-:AXrr<Co,,::o6w #rX?w{-XJV?DCor,<:X{CX-!X:ACoA,V><Aow!-:,gw ,rr?:CXX,w-F,o?,-:{{BX-rw?:C,A?wo<,CC!X:A-- ?r?<oCrX?VCIwow!,:{-oXrrd?o-w,-w{5?oo!r:h-X rr <,CX,oV?QN X!wwzX,X?rV<r-:,Xww{-oX:??o{8X;Vo<wo-,,Vw ! r! ?X{VA-V,<?C-,AwRPr w!w?,-?Aor,?XoXA<:-J? ?ro?r-(XXVw={o,,{:o{, x!X:rC-A,V?<Xor,<:X(r wr,??CoAXV8#XowAIww{?XCrr?,CXAww-p,r{!o:r{_Xorw<{C,Xw-V=roE!Xwr--X,r?:o-VAhwX)w -!,::-oorrr<XCw,-w,k?o:!rVa- XwV-<,C?,oV<IJCX,<?--,X?Vo<rC:,XVr<< ,!:?o{wXTVX<w--A?w?{C r!<?X-CA-rX?Aoo,,wEGA wr-?,{wX<Vr<:oXA,:-{, ?!-:r-)A-Vw<:o,,?:o), {rX?AC-X?V?QoorA?V?{w wr,?{CoArVN<ooA!-:{{? orr?gCXXrVdg,oX!ow?{xXXrw:fA,A?VVirC:!X:w-- X??<o-nAKwo>w -!,ww:wXrr <X-V,-w,(?o-!!:Y{rXwrw<,C?,oV,yV X,<?-{?X?Vo<rCU,-ww{{ ,!{?o-,XMrX<{o-,,w?OX r!<?X-wXrV,<?oo,!w1{X wr-?,-?Aor<<ZoX,wwn%? ?ro?r?!{{o,r<?C{w ?V{<:o{?r-:A,V?Go:r-<X:rr?<rX?rCoArV%!<?V- AC{w {rr?_CX{X !!X?!-oX,V{??oC, w<vroV!r:?-AX<V-<orw?iCrAxwXV?<{-VA!-- wr^<XCwCVXC!rmmC X:wC1Aoo!o::{X X!: o!C?--,X?A-, :A{rX,r!?rCAA{-,X{VX<wo-C, wr ?-CAA!wC<?C<r?:-{VXCrX?,!}:<-?AoVrr!:A{rXAr ??oC,AwVAoV M-o,,?,<rw<<ooA;w:{oVVcCorA!:X{wX-!X,LCoArVUMoow!-:,KwX{rr?<CXA!w-t,o?AowV{*X rw<{C,A:wo<,Cw!X:!-- <r?<oCrAFVAnw {!,:V-oX,r):X-{,-wAd? C!r:!-Xowr:<,C:,ow!0Doe!w?-{ X?VC<rC?,Xww{- ,,w?o-rX0VX<wC(,,wr{- r!#?X{,A-VA<?-owVwW{{ w!??,-!Ao!o<{oX,A:-#o ?rC?r-,AXV,X-o,,?:obX 2r ?w{-V!V?<<or,w:X{-X-,-V^CoA V*< ow!{:,{CXorXoECXAww-<Ao?!C:r{wwXrw<-C,Xrwo*!o6,o,,--XCr??0CrARwXNwC,!,:,-oXXr.<XCw,-{VP?o<!r:?-XXVV-<-<V,owr16ow!w?{-,XwVo<X!Y,Xww{-o?!??C-rX_,!<wo-,,w:{o r!}?X-wA-V,?roo,rwi{ ?<V^zorUX:RwXVqX,V:-{, ?ro?r-i,XA:<#o ,?:o{r<-o{A C{{wm!wX,r::c?:<-orX:?CoArVEV?:A- AAri< o{,w?o_: C!o<?CCX,rwXor{<-C,A?A,!V?:C XO:-<wo:AV: R?w !,r{:-<<,--VA C,CrAww,R? o A!rVo;Vo !CC:A-oX? VX,w< ro-?VCwAs: C!!:<- wVr -,X!VX<wo-C,X-VC?{CVAoV!A{?VC>-!?rX-{AX:?C?X- AoVr<OFC-oA{rX<:o{AXwV3oVV<wr! (< -ooo{?-:C{rV<Y?!rr--:A-:-CrX?rCoArVe!<?V- AC{:c-o,o? ACA::!?*m!C-A?oA--:??o,{o,Xk,ow!X:w--<{o:,VwXA<?:-{A A!!<?gw X*<Xe?,-w,z?o-5{:J-XXwr-<,C?,orr<, X!w?--,X?r!<r{qXrww{- ,!??o-oX7!X?-o-,,w?{o r!C?Xxw ?V,<?oo,rw_{{ w,):X-?ACVr<,oX,w:-<,orro?!-IA Vw<<o,AwV:{r ?rX?CC-A,V?<-oo,.:C{wX{r,??CoX,V!2Xo,!-wo{?Xorr:?-VAwV:R,CI!o:r{_ o,S<-C-A?V-trom!Xwr{-X,rA<o-?A5wX2wCB,o:?{wXrrw<XCw,-VXo? o!{:O-oXwV-<,-wwowruX X,V?--,X?r-C<CpAVwwtC ,!??o{,X,VX?}o-,{w?{o r,?:X-wX V,?+oo,rwx{X !r-?A-?XAVr<?oXAww?{, ?ro?--8A Vw?io{,?:o{ro:rX?wC-XXVCNoo!,Gww{wX-r,??,AArVqQXor!-:A{? -{{?sCXAwV-&,o?!oVr{-XXrw<-C,A?V!Sr-#Ar:w--X,r?<oCoAzrX<o -!,:?-oXrrC<X{wX!w,v? o!r:P-{Xw!b<oC?,Cwr5, X!w?-0,XAVo<!CS, ww0< ,,ww:-rX?VX<Co-,,w?s-o>!z?C-wA{V,<?ooA,V?{X ,r-:o-?AoVr??CA,ww:{,oGro?r-BXor!;-o-,?w-{r yrX:r{VA,VAjoC?,t:X{woU! ??-wArVwtXow!-wX ?Xor{?%CoAww-m,Cw:o:r{XXX!V<-C,A?V-w-ou,V:w{CX,r?<o-,A<wX<j -!{:?-oXr!?<oCwA w,<; o!r:_-X AV-<AC?AAwrJ? X,w:!-,X?Vo<-C+, ww{-o?!??o-rX<VX<wo-,,w?{o r,w?X-wA-VAA?X!XV?hrC<<?<r!-:o{,Aw:{C !!<o {<rC?-<ooXCwA-<!= !o{, :rX?wC-2r !,:o!<:?{<C,-p:rVwoVwV<!, -:<V!#  !0,riC ,w6??CH?v:<-C{rArV<-C,A?wogroRrX!:{y <r?<oCrC: ?rV:RCAAVreO C?< !ow:oC-?V&X!,<X,Xrr-<,C?,o,-!V?!CVAoV!1 obr,:{{A ,w-<A-wXQ-,X VX<wo-Cw <V{<!Co!XVN{{C<!!:-,,w!{X wr-!,w-{Co{!V:o{!:{AW-<A -rw-o{{!w-oA!XV)gV{M<VV<:wVrVw<Gor,=:Xr Q{C<ArCC C-<{eo:,XC r?-Xr,?wCXAww-r{?:-AA {? 9rw<-C,CVA?!,?<-!AA-{A,<rw<<r<!:?{:{C!,rP-oXrrJ?orC,-w,v?o-!r:t-XowrV<,C?,owrv8o!!ww-{wX?Vo<rCf,XVZ{-C,,V?o-rXbVX<wC!,,r?GT r!_?X-wA-r:<?C-,CwR{  w,<?,-?Ao!r?woX,V:-{A ?!&?r{? <Vw<(o,,,:o{r 3!o:,C-A V?.{or,g:Xhr ,r,?rCoXwVPvXowA.Vw{? <rr?<CXAww-<XC !o:o{s Arw<-C,Xwr<tro!!X: --X,r??-{:A4V?^wo{!,:?-o ,?0<XCC,-VSn? o!rw?XXXwr,<,Co,owrk8oo?{?-{:X?!B<rC*,XVrTw ,!-?o- X^VX<w-JAVw?6A r!<?X-wA-V,<ooo,!w07! w!3?,{? AVr<joXA!:-{A ?!-?,-8AXVw<-o,,?:oI,oVrX?VC-AXV?Noor,#-!{wX-r,?wCoA!V&<oVC!-:,{? -rr?>CX wV<1,o?!o:r{b !rw:-{wA?woZroF!XwI--o,rr<oCrAtwXUwo!!,V?{AXrrD<XCw,-V:K?o-!A:h- Xw!<<,C?,orrpC X!V?--AX?r7<r-?X<wwL7 ,!,?o-rXOro??o-, w?{{ r!h?X{rX:V,<rooAwwe{X w,Yw?-?X<Vr<<oX,w:-_X oro?o-.XAVw;-o,AwVV{r !rX? C-A,V?<-CX,3w?{w {r,??CoX,<u#XoC!-w>{?Xorr:?AXAwV,u,oo!o:r{l oXo<--:A?rdgrox!XwrOXX,r-<oC ApwXuwC%!A:?{AXrr<<XCw,-w,<{ o!!:;{!Xwrh<,-?AowrSI X,!?--AX?Vo?!CY,Xww{{ ,!??o-rXUVX<wC?,,w?{o ,!!?X-wA-Xa,rw%{r,!V{?,!t?o-?AoVr!!? {<X:{X{<ro?r-s&?o,,?:,{V!r?VC{Co,VVVor A!V:X-,X{Vr?:C ,!w-{A {!,:,-:XrrrCXoA,{w!o: -rC: {_XVV-CoA,VwQCo<A}r :,XAX<w{< Cr,<w, { A!A:?XrA-r<F!r??wCw,-w,r-? C!AwVC<,C%,<wv{:wru, X!w?-{XV<Vo<rCe,-ww{- ,,w:w-rX<VX<ro-,,w?<o X!)? -wA{V,<:ooA,V.{X !r-? -?AoVr<.-?,w:{{, Vro?r-pAXVXM-o,,?:o{r ?rX?w-wA,V?Zoo!,a: {wX-r-??CoArV<*Xow!-:,{?Xorr:VCXAww-iAwC:{{Xo{C:VX ?<!AwVVxrol!X!!VrDACw!C:A0wX{!r {?-?X=MXr8:o-rAo-wACCw V!o{Xr<CwCV!C:,A:o!VAXAgXV,o-?V-<ACU,Xwwro<C-A?CwoO ?:::-w!r0,   ,,i?X-wA-XP,!:A-!X-rA<CC?!XV<e oXr)? {r ?{A-!,ow{A{:?w:Cw&!,ww7{r 4rXA :{S<orf-C<,J:X{w{XC!,V:CQ?X>!r?V{!ACrwXC!<r{V ::wV-A{C: :!o<x?X!:-C!w- ooVo<wVAVw5o, !X!rXo{wod, -!,:?V:&!oC!{CrAww,0? o A!rVo3Vo !CC: {!A::-CX!r<  -<VCAA<CX owr!::r<r -,X!VX<wo-C,X-VC?{CVAoV!A{ VAC-??rrCA :,X-?A-!o <rr{<?,??C ! ?AX?r-}AXrrX!o,,?:o%V trX?w{-X!V?Koor,q:Xb!X-,,?-CoArV*JXow,A:,<?  rr?&CXAww-0Xo?Ao:X{FXXrw<-C,AXwo<,ow!X:V-- ,r?<oCr ^Vrzw {!,::-oXork?o- ,-wX%?Cy!r:}-X r!w<,CV,owAk+ X!ww7zwX?rG<rCV,Xww{-oX,C?o- XHV <wo-,,VwK? r!r?X- A-V,<?C-APwI*< w!??,-?Aor,<woX,o:-jw ?ro?r{?VXVw<!o,Aw:o{r f!o-wC-X?V?<Vor,}:XUrrAr,?CCoX V}7XowAlww{? ,rr?CCXAww-<XC!!ow:{L ,rw<-C,A?VoBro<!Xw<--XXr??oC!A%wXOwo-!,::-o ,! <XCw,-V?m? o!rw?SVXwV{<,-:,owr#u X?<?--,X?V-<rC<,XVrA! ,!??o{VXkVX<w--X4w?{o r!1?X{!A-!,?woo,rwE{X w!A?,k?ACVr<uoX,w:-{X ?,ow9-yAXVw9-o,,X:o4,owrX?VC-X,V?1oorX_V<{wX{r,?:CoAoVG<oC !-:X{?okrr?tCXXrrVT,oV!o:A{1XXrw:UCAA?VRKroV!X:w-- X!:<oC Afw *w -!,ww{VXrrr<XC ,-w,b?o-,N:F{<Xwr?<,C?,oV,9{ X!o?-{wX?Vo<r-?wXwwK! ,,w?o-rX5roCwo-A?w?aV r!s?X{r-rV,<CooA w_{X w,7?A-?X,Vr<CoX,w:-qXo ro::-eX,Vwv-o,,?w:{r <rX:<C-AXV?<o-:,P:X{w -r,?:CoArVXPXow!-:A{?Xorr?7CXAww-<oo?!o:r{<X-XC<-V,{:CX{V{{! :w--X,r?<oCr,g,ADro?!,:?-o<Co<,:w,AqV<9? o!r!:V?_VCW!A:V_uX !?  XrrrU<-?wa!,wUw,wVo{!? !,oX?V,oVV?o{,o, {o:rC< ,C:VCVX<,oo,rwh:C{X-U,Aw{=<V,?uoX,w:-wg?!CA,!w-)A C!?<X{<X rXsLo ArV?AA<o<A{--k-wXV<A?r?:AVX{ -oX^ ??CA ?XC{-C-XXV::wr!:?:X:,{!XXrw<-?,{-XC!{?V-oX!-{C AVw{9Ao:!CC!{C!X:C-oXrrUrrw:{<XAr-3o-?A<r:%AC_<XCr,owrj*?<CVA wCXwV{<rCN,X ?r:?{!:{XVCoX<AXwEowC&<{Cr,<-wV-wVArAr:,o,!IC{VV,-C<roC-w<r<*{,,w:-{,ow*V?r-kAXrw^-o,,?VoWy 8rX?wC-A,V{#o-rA::X{wX-r,??- Ar!(?:ow!-:,{?XorX?W{XAAw-U,o?!o:r{AXX!r?VC,A:woj-oE!X:w4-oMr?<CCrA<wX<V -,XwA-oX,r=?-Cw,-w,<wo-!r::-X !V-<,C?A-wX=% -!w:A-,X?Vo?,-,,XwA{-oX!??o-r ?rw<wCw,,wo{o r!h:o-XA-V{<?C:,rw5{Xor!A?,-XAoVo<.oX,wVs , ?!V?r-?AXVwh-CXw?:ot9 6!r?wC-A,rwo!or, :X{VX-r,??--X:Vh<row,::,{?Xo!,?oCXX<w-<Xo?!o:r{; orw<{C,A{woi,o.,X:{--X,r??wCrA<wX<ron!,:?-oXAr3<XCwXEVr;? C!r:--XXwV-<,!{,owrzJ o!w?{-, w{V<rCK,XVw{- ,!?wo-oXxVX<wo-,,w{{oCr!<?X-wA-V,<?C ,rr^G- wr-?,-?AoVX<i-XAC:-{, ?ro?r-AAXrr<Co,,::o{- GrX?w{-X:V?cCor,<:XfVX-!X:ACoA,VU<-ow!-:,hw Crr?:CXX!w-Y,o?,-w!{NX-rw?AC,A?wo<,o:!X:A-- Xr?<oCrX?rr1wow!,:o-oXrrz?oCV,-w{1?o:!r:*-X rrA<,CX,owoiM X!wwPX,X?rV<rC?,Xww{-oX:??o{UXLrr<wo-,,Vwww r! ?X-VA-V,<?C-A:w6Hr w!:?,-?Aor,<:oXA<:-cX ?ro?r-=X{Vw9{o,,{:o{, Z!X?rC-A,V?<wor,<:X{w Cr,??CoA!V)3Xow!-:,{?Xo!X?RCXAww{N,o?!o:r{RXXVwVCCA< roX?F8?:A?!X-!r:--:C !-XVr:V--!k--X{rW<XCwC< 1r:?-C!A:V-PAC&<XC,,owrg#{C XX.wAL{o<<!r:- ?,<C!!: X:?wX?r<<wo-,,A?r,<!-A,{Vr<<VAA -o??,&X:<?{X-!-:!,wX!!TAAr<:,,!?rCw -?r{A:<rV?CX{o{!-:ACV!<<o ,VC{TV,?:-{wX-r,,A:C>: V%oo!!-:,{?<Xo A!C  A!rC#r< AT?rr-,rr?-C,A?wow-:V-!AVVo<!o ,%?,{{ A!,Z-CAXwrxX,r <XCw,-Aw!<<{C!Ao:X<^ {A<:!{-w! ?Aw!1-C:?!:-wCrC<A{rC:rC,!wwrV-C-V V<,:oAY?:? VV{-A-rX?V,<?oo{CX<r:?,r-Vr-?AoVr??r:,w:-{, -ro?r-Z XrXc-o,,?:o{r !rXww{!A,V?Moor,5wX{wo-,:??CoArV}RXo,!-V,j{Xorr?3CXAwVCR,Cw, :r{<XXrA<-C,A?ro<Vo1! :w-{X,r{<o-,X!wX5r -,A:?-oXr!??<CwA<w,=o o!r:7{o wV-<oC?AVwrT= X,r:X-,X!Vo?ACP,Xww<* {!?:?-rXrVX<wo-AXVo{o C!h?o-wA-V,?wC<,rw,{Xorr-?,-?X-<r<LC:,w:{{, ?ro:,XJAXV-m-o ,?:o{ro??V?w-AA,VX^oor,(woa:X-!w??-XArVe=XCrA::,{{Xo!A?*CXAww-<oo?!C:r{CXXrr<--,A!woEroG!{:w-{X,!w?{CrA2wX<, -!,:?{- 8r=< CwAAw,7? o!rCC-XXwV-<XC?,Cwr<?V:!w?--,X-Vo<rCDXXVX{- ,!??o-rX!VX:wC?,,w?{o r!N:X-w -r{<?oo,rwL{X ,r-w,-{AoVr<%oX,wwC{,owr-?r-<AXVAM-o,,?Vo{  ar ?wC{A,V{boC,A!:X{rX-!A??CoArr?<?ow,<:,{oXorr?D-oXow-Ioo?,V:r{dXX!r??C,A!wo<AoE!X:wm5o?r???CrArwXSw -,Xw--oXCrv<oCw,-w,<wo{!r:,-X rV-<,C?A-Krp+o:!w?{-,X?Vo?,A6,Xw-{-  !??o-r ?X?<wCA,,wX{o r!y:o{wA-rw<?CX,rwz{Xor, ?,-{AorA<5oX,w:-{A ?rC?r-CAXVr*-C,A{:o{r Tr{?wC{A,V?<oor,v:X{VX-r,??CoArV*3X{w!-:,{?XCrr?PCXAww-N, ?  :,{-XXrw<-<{{!oawX?V-CA!V:<ror!CwwQw C=! {!A:?-oXrry<X w{C,,_woV!r:x-X{,o:ANwrC,X!r?<{-k:N{qX?Vo<r<?{{ ,!?{CoV!o<,X?r<<wo-,,A,r<<A-wAAVrC<VX<roo,rw}r<<VC ,C-wX?Vr<yoXCwA{rX<!CXAX-?XoVw#-o,oXXVVC<,Cr,CwV=QorVs? {_X-Vo{ C!,rw<A,Vr6Xow!-! r<<,CVA?eCArV:W,o?!o, :w<:C<V)CAA?wobrou!X:w---,rw?!CrA2wXwV?X-{A:rV<AX{,,?,{C ,Fwow!r:S-X-Aoo,o: K%X{rV?C!r::-,X?Vo,r:<{: r!< X!A?o-rX6ov,r:C{VAww:{,!?:<-wA-V,V::&{V ?r,<AC:?A-?AoVr<foX,w:-{, w!r?r-+AXX,!:w}{r!{rV<oCAAr<<AXVouoor,(,-VA?rCo!V:{{! or{?,,Lww{?Xorrr?w:kj XrX:<CCX,Vw{<CA,!CXAAwofroJo:A Vo<!Cw,<:XA?Vzmw -!,Awr<<XCw,Aw?AGwoe? o!r,:V:<-o:<XC!,owr0vy!-:A?wCn-VC<rCt,Xww{- ,  ro-, EVX<wo-o-X r,??owAowV%oo ,??C{,XVr,<!-!?X-rAoVr<)<,-VX VC w!V?r-7AXAC!o:o-!X-V!<:C-A!-=X:V?}oorC:X-rA<?C !<w?{oo:r{:,,k:{{?Xorrr?w{(,o?wC<Voo:,{AXXrw<-?{W< -!<::-XAVV<4Crw?NCrA*wXwA?o-CA{--XXre<XCw{oXAr{?<!,:!-XXwV-Vo:!{{ X!??A-C:s-oX?Vo<r?w-{ o!? X! ?o-rXhX?!C:V{PX-rV<CC,A--rX-V,<?ooo,X<VC<{CVAXV<<<ow!waC{:XXr!?wA{?,-:AXVw0-:r-! :{,orrX?wC-CX :r{:<-!Xor:?:Cr,r:GL, <!,:!--AArw<<Cw,:V:ArVAZ,o?!o!CVV<-X!,rw<{- K!,?V-,:r{XX,r?<o?V^V -!&?!-rA!?{<Voo,AwrA&V?W? o!r!!w{<, <!Cww.?X{r:<{!r:r-,X?VoV{:-{C ,V{?rCVA<-,XAVX<wo-ooX!ro?XC,!!V:T? C<wC,,rw({X{ACoAow <Fo{VV<CCw, r!<rr-?A-gAXVwV!: o::C!, brX?w{x?*V?_oorX{:X{wX-!X!rCoA!V1:Aow!-:,<,  rr?<CX{rw-nAo?!{:r{wwXrw<-C,{wwoS!o3,o,,--XAr??oCrAjwX<roo!,:w-oX-rO<XCwX-V,B? -!r:?-XCMV-?X- ,owXuUC !w?--,X?r{<rC?,Xw,{- X!?wo{ XSVo<wCu,,VA{oCr!X?X-rA-VX<?-X,rr7zC w!Y?,-wAo,K<voX,A:-{X ?r{?r-EAXVw<Co,,::o{r %rC?w-?XCV?boorC{:X{VX-,,r,CoAoV)1{owX-:,2wrorr?,CXX-w-k,o?!o! {x #rw?rC,AwwoZo-r!X:X--;!r?<CCrA_wXN,V-!,:?-ofVrT< CwX-l!n?o?!r:V-Xo!V-:--<,owoke<A!w?{-, XVo<X!J,Xww{-<!!??C-r ?X-<wCw,,r{{o r!#wX<,A-V-<?C?,rr,{Xor!!?,-AAoro<coX,w:-{A ?!??r-?AXVr1-CXAV:o{C ;A!?wC-A,!?<Xor,!:X{ X-A&??--XCVP<?ow,::,{?Xorr: CXA w-jXo?!-:r8?{-rw?rC, {wohro(AX, -- qr??wCr ,wX<rCw!,: -ooorf<XCw,-wX4?ow!r:?-XXrV-?,Cw,ow-)}o:!w::-,C?r <rC,,Xr<{-C,!?:o{?XUr?<w-Q,,w!{oo,!o?X-CA-!X<?oo,rr2 A w!!?,- Aor0<c-X{w:-n< ?!V?r--AXrw?Ho,,X:o?w f!:?w(- ?V?<worAo:X{VX-!X:oCoA{VB<Vow!-:,<?X{rr?ACXACw-<Ao?,-wV{; wrw:<C,A?wo<,CA!X:{--  r?<oCrX?orbwoX!,:r-oXrrp<XCA,-V<y?o,!r:?-X w!X<,CX,o!<>Ho:!w:-7rX?r?<rCA,XwA{--,C,?o-oXxr,<wC<,,Vw{C r!A?X{;A-V,<?-oX:wm7: w!!?,^XAor,? oX,-:-b  ?ro?r{?XAVw<Ao,AC:o{r 1!o: C-XwV?<{or,v:XBro!r,?{Co <Vq7Xow!-VV{? Vrr?CCXArw-<,-6!o:o{Io:rw?!C,XwrwGroA!X: --X,r?:oC AZV:=wo!!,VX-o ,r,<XC-,-V x? o!rw?>:XwrA<,C{,owrNvoo!X?-{wX?r{<rCk,Xww<A ,! ?o{?XBVo<wC-Ayw?h? r,{?X-CA-,,!,oo,ow5<! w!w?,{? XVr<!oX,C:-{- ?!-:--eX:Vw<Ao,,?:o<roArX?CC-X<V?:worA?wX{w ,r,?:CoArVp<oC-!-w:{?XCrr?(CXXrrwe,o-!o:!{3XXrw<--*A?VVfroo!X:r-- ,!o<oCCAu!<2wo!!,r?V?Xrr!<X{C,-wA*?o-!!:4{:XwrX<,C?,orrvw X!C?-{<X?,w<r-?AXww+, ,!:?o-rXBro?<o-A:w?2{ r!0?X{rXCV,<-oo,!wO{X w,H?A-?XAVr?:oX,w:-{,o,ro?{-gX!Vw<Uo,A?VX{r !rX:CC-X<V??o,V,pw:{w :r,:{CoXrr-jXo !-VC{? Vrr:?{?AwV!4,oC!o:r{loXrV<--<A?VVYr-,!Xwr{<X,ro<o-AA%wXiwCyAV:?{!Xr!:<XCw,-VXpr o,?:&--XwV-<,C?,-wrKA X,_?--XX?ro?!CeA<ww<? ,! ?o<r2rVX< o-ACw?{{ r!rrC-wA{V,?<oo,!wK{o w!?o,-?AoVr<{oX,V:-{oV?ro?r-u< Vwq{o,AwAl{r <rX:wC-A,V?<-,!,F:o{w rr,??Co rrAiXor!-:X{?oCrrwM-rAwV=T,ow!owV{BoXr-<-CXA?w-Hro?!X:wmAX,rw<oCAAIwXiw -! :?-CXrrS<XC!,-wocC o!r:GVAXwV{<,{?w wr6r X!A?-= X?,??VCZA&wwrC ,!:?o-oX)V- wo-,,w?r  r!<?Xew-wV,<,oo, wP<- wr-CV-?X?Vr<?oX,V:-{-{Vro?!-PiwVwD{o,,w:o{XV9rX?wC->?V?yCorA?,-{wX{r,:?CoArVh<o,V!-:X{? wrr?kCX wV?l,ow!o:,{_o rw:--,A?w-8ro?!Xw:--o,!V<oC,A%wo&wod!,:?>5Xrr?<XC!,-w,M? o,A:d- XwV-<,CV,owXB  X!w?-r!X?VC<r{gwAwwOw ,!!?o6AXk,0w?o-,-w?!A r!<?XQwA-Vo ?oo,rw%!! wr{?,-r:oVr<eoXT::-{A ?,oro-_XbVw<:o,Xr:o{rVCrX?XC-AXV?tCor,r!C{wX{r,A CoA!VN2oow,?C,{?XorrAACXAVw-Y,-{!o:r{JX rw<-C,A?woQroR! :w--X,rV<CC!A,wXKw -A-w<-oXrr*<{Cw,{w,d: o!XCn-XXwV-<CC?,Cwrxi<!!w?{-,X?Vo<rCM,Xrw{- A!??C-rX<VX<,r-,,w?{o C!7? -wA- V<?oC,rw<{X wr-?,)?AoV!<Yo ,w:{{, ?AA?r-dAXVV9-o,,?:o{r ^rXV#C-A,V?E-o ,9:X{w<-oA, w-(AV?<Vow!-:,:A<<CXr:w?{C Xro:w-<Xw{<XXrw<-C,A?wow{1R!o:---X,r?!#: F, -w!?C-wX<V-CAr?<-Cw,-w,!H<C-:AV-oX,V-<,C?CXX!rC<{!rw9-,X?VoV-:A{<XorX?<CAAwVX-w {,ww?{1,{r <XCV?o-,A-V,<?<{-{ XV{ r!V?,-?AoA!!w:A{rXoVC<!r-?o-NAXVwV<:!--X r,-:ro?XC-A,V?V!? {A!{w!{-rX?VCoArVa!V?A{!:X^,Xorr?P<o{V <!:?A--XVrV<,o,!?wX{: X!A:aC XrV:<roVAVC,AAwX^w - oA!Vo<Xo,r!w:{?XCgwoo!r:F-X-r {! :C{: ,r{?{-?A?? <<o,,Vw? CwrQ! ,!??o:CU{oo!{w<{,X:V{< !??--wA-V,V!:X{ XC{o Xr-?,-?-o !,??{{? ?{Xoqro?r-c-< A,?co-!X{VA<VC,,,:{&ror!{o,, :X{wX-  ArV<{Xo:VA?X-wX V!?yr,?ACXAww-V)? -:A-Vo<:o ,rwoAwVVQro_!X!CVo<oo!,-:!{: -!! {!,:?-oXrrO<XCw,-w j: -,r:+-XXwXw,<:-{,AX!?< -?X<V,c:o-! :--C C6Wo:!??o-r-<or, ?{G< Vw ?wowAAVwXLr<<?oo,rAwV{?o-?!ww:{-  !ooo,!:-{, ?CX, V!AoV t-o,,?,TV ?:C-ArwC<<Vw<,or,9:X:A<oCo, VT%{AVVC<wo X!VrX-rX?.CXAw VrA?{-<:!{_XXrw<-C,!?  wro?!{:w--X, !rf:{{C!oFroX!,:?-o{VCV,-w2{! rr!{{-VAoVA<rrc?tC?,owrw <{-C!:: {?Xw,?C<,Xww{- ,!??oCrC{Vo<oo-,,w?wV?w-:A-wVBo  !!o-A5wl{X wo?,CVX<JXA!:? {JX:Vo w!l?r-^AXX,!:w6{r:-{C ZrX?w:w{C V,0:V{?rC{r Xr,??CoC, A!r:+-JX!V:<-oXr!w{{CVmM{o?!o:rVr<oC:, ?XCA,-5,o!!X:w--{<oA,XwV&?X{r, {!,:?-oXrry<XCwo-wA,< o!r:a{o?oV-<,C?XXwrkf X,r,?-,X:Vo:wC},Xww?wo!!??C-r{oVX<Vo-XZw?KMVr!Y?X-w{XV,<:ooA,Aw{X Vr-?A-?AoVr??C-,ww#{,C<ro?r-Z Xr,e-oX,?:-{roLrXww-5A,Vweoo,,erV{wo-,V??C-ArV?mXCX!-V,g!Xor,?eCoAwVR2,o?,?:r{?XXr!<-C,A?wo<-oe! :w--X,rV<oCX:NwX&w -C<:?-CXr,GCACwAww,I! o!o:=<tC?V-<-C?ACwrD< X,W?--ow?Vo<rC4A ww{{ ,!roo-rX3VXrCo-,Aw?_-#X!8:d-wo:V,<?ooXr!w{X Xr-?--? ,Vr??-r,wwV{,C ro?r-NAXVC6-o-,?:-{r ?rX:r-<A,VApo- ,0:X{wo-rA??-:ArV!bX-Q!-wX7-Xor-?F{VAww-R,o?A,:r{!XXrr<-CXA?V-VXoK,?:w<:X,r?<o{r-!wXQo -,J:?%,Xr!??XCwA!w,<! o!r:H-XX!V-?tC?,-wrq? X,w:,-,XXVo?,CL,{ww?-o,!?:w-rXrVX:!o-A,Vw{o -!U::-wX:V,?w-<,rwA{XoVr-?,-? o<V<+C:,ww!{, ArowrV1AXVCP-C<,?Vr{rov,w?w-rA,rKsoo{,&rXm<X-!5??{VAr!w4XCrAV:,{ Xo!=?GCXAwr-<-o?,V:r{AXX,-<--XX,wo<koHA<:w--X,!w:rCrA wX?w -!,:?{-??r>?rCwXVw,%? o!rwo-XXCV-?wC?,-wr<co-!w:r-,owVo<{CzAXr?{- -!?:--rXVVXww:w,,w,{oC5!ew?-w 5VA<?CV,rr<{X wr-w,-:AoV{<UC:,wVX{,ow! ?r-XAXr 4-o,,?w-4X f!V?w-<A,V?3oC,AA:X6pX-!{??CoArr?d{ow, :,{VXorr?2CXXrw-<<o?,A:r{?XX!w:oC,A,wog-o_,::wvso8r??VCr ,wX6w -A,:X-oX{rZ?:CwXXw,<wo !r:X-X  V-<,C?A-VCdnoV!wVX-,X?Vo?,-X,XV){-o{!??o-rXer{<wC!,,w-{o ,!.:X{{A-V-<?-c,rwA{X-wCw?,-,AoVo<2CV,ww-<r ?!:?r{?AXVX^-CXAX:o{{ %!w?wC-A,!?<-or,A:X{CX-,w??--X:Vz<wowX?:,{?Xo!,:XCXA{w-?oo?!o:r^? ,rw?XC, rwoGro0!Xw:-- <r??,CrA?wX<wC,!,:A-o Vrk?:Cw -X-^?o:!r:C-Xo,V-?XC:,ow{5mC !w?--,o?!r<rCA,XwC{-Cw!?:-{oXQrw<w{?,,w?{oo,,??X-{A-r{<?oo,rV?<? w!X?,krAoVr<#CoA!:-TV ?,:?r-6AXVw<wo,, :oO: kro?w-- rV?<:or,,:X{CX-,,-<CoA{VP8{ow,w:,2?oXrr?!CX  w-<<o?,-w-{N :rw?,C,A?wo?ro-!X:C-- <r?:,CrX?rV.wo,!,wA-oXrrl?o--,-V:*?Co!r:Y-X r! <,C-,oVC(6 X!w?-{XX?rV<rCo,Xwr{-o,!{?o-CX4V-<wC!,,!?r? r!!?X*XA-!y<?C?oAw;{  w! ?,-:AoV,<6o-?w:-{, ?!A?r-<AXV,X-o,,?:o!w er ?w{2-oV?kCor,<:X{wX-!X:rCoA,VW?Aow!-:,<? Xrr??CXArw-<,o?Ao:{{HXorw?jC, Cwo?rC !X:r--XXr?:?Cr UVrdwoN!,:w-o ArW<X-:,-wX+? {!r:>-XXw!X<,C:,owr(( C!w:?,,X?Vo<r: ,XwV{-C,:<?o-oX9V{<wC:,,r,?X r!r?XwCA-VA<?C!,rwwAX wr-?,w AoV!<yo-?w:-{, ?C!?r-<AX!wVwo,,,:o{  p,!?wC-wVV?<?or,?:X{VX-r-rVCoA!V(r{ow!{:,{wXorXoLCXAww-rCo?!C:rY?{-rw<{C,A:wo&roa,ow,--XXr?: CrAkwX?wo<!,:w-oX,r+?XCwX-r:I? -!r:?-Xo{V-:,-V,ow,mk o!www-,o?r<<rC?,Xwr{-o !??o{VX+Vo<wC<,,w?{o r, ?X-VA-V,<?o{,rwwAX wr-?,V-AoV!<_-Xw::-{- ?!<?r-VAX!X:oo,,,:o!u =r ?w=<A,VrXoor,m:Xr-X-rA??-z:rV7*Xow{X:,{:Xo,rrrCXAXw-kCo?AA:r{PV!rw?wC,Awwo*!o.,3!!--XAr?A?CrA<wX_r -!oC?-oXrrkAkCw,{w,q?-A!r:j-XXVV-<,C?,owr3F X,,?--,X?V-<oCS,Xwww<{--w,CV:_VV <wo-,,w?{o rr%rA-VCV-<V:?ow:woXX{wr{{rC3 o{r<<C??:!C{X Cro?r-U-ro:!<?A--,or?<<-:,AVnAXVrloor,_ <VV<!Co?:rXr?!:,AAwr oA:?XC,:-A {C::?!orA o:,{AXXrw<-< {XXC!,?<CCX,V:<Xrw?NCrAnwXr <{-VA!-CC<!?_r{:C<ou!?!X!! oX?or{--Vwr{o1wB? C!w?--,<vo<,CC< C!!:<- XVV{ AC{V o XXrX?<:, ?V{-A-rX-V,<?ooo- Vr!<VCoA!w UPX,!{:A{,,-VA?w-}?!!r ErAw-?Co<r?:w <r{orXrC!V ?Xo{ -:o{ X-r,???oQ? <,:?A{BX {:!XVwwi!XAVVrX!,<!orw{*XXrw:L!<A?wo#roX!X:w--o,!<<oCrAJwXEwC<!,V?{oXrr4<XCw,-wC6?Co,V:0-XXwV-<,C ,orr<: X!w?--,X?ro<r-?AHww{{ ,!:?o-rXg!X?<o-,Aw?{C r!C?X{r VV,<woo,Awc{X w,I?A-?A{Vr<!oX,w:-6Xo{ro?X-0X?Vwz-o,AwVA{r VrX::C-A,V?<--%,dw1{w Ar,??CoX,r,9Xo !-:o{?Xorr:?{wAwVrg,o-!o:r{q o?w<--<A?w-+roD!XwrX-X,ro<o-!ADwX>wCg:::?{!Xr!w<XCw,-VX<! o,?:a{oXwV-<,-wA wrDC X,:?--,X?Vo?ACJ, wwi  ,!w?o{rX<VX<wo-,Aw?{C r,?w<-wA-V,<,oo,rwMIoo-r-?A-?XXVr<}oX,w- {, ?ro?,-EA Vw?.r<,?:o{r XrX?wC- ,r<uoor,7:X{wo<r,w?-VArV*}Xow!-:C{?oo!o?yCXAww-F,o !oVr{<XXrw<-C,A?VoNrC?,X:w-{X,r:<oCrAMrX<P -!A:?-CXrrC<X-rXVw,^w o!A:b-XXw!H<AC?,{wrv! X!w?-{X wVo<XCyA?ww{- ,,w:C-rXVVX?:o-,,w?M-ow!O:W-wXAV,<?ooA,wA{X  r-?o-?AoVr??CV,wwr{, -ro?r-dXo<wn-C<,?:-{r 5rX:rA-A,Vo6oC!,_:X{wol F??-!ArrwuXow!-wX{oXo!??F-oAww-x,Cw,<:r{CXX!:<-C,A?wosCon! :w{ X,rw<o-rAVwXRw -!A:?-CXrr+?wCw,-w,J: o!r:I-XXwV-<,-w,owr1e  ?rZVX:-<-XA:,voXwr5! ,!??o?A#,  ,r?{-  rr<?,!<C oV!!!!r,:PoA!-{  wr-?,-?AoVrx3,A,V,:X- V?o! wwCC<?<7C:,?:o{r{oCA,!:{_wX?!,?!{AA{rrX{r,??CoArVRJX w C:A?VC{AAV:}Co!?<w!o:wEwo-rwA- orw<C)w-LXoh!X:wrVpAo AWC,XbwX)w -ohX!VA&!o-,A:C{?AX!<? -X,iw <rC?<XCV,owrZW?,CAXV-A?VAC!oCg,Xr,rr!r!w::-rXcVXrw:X-A  r<?,-:? wor-?,V<wC d-A:X r!??,-?Ao C!<:!-A:{:Ar-<X,V 5,!-Vw-oX,,:o{r .XCrXV_{A {!<orX-:X{wX-!X  CoArV5<Xow!-:,<?o!rr?cCXAww-<ro?Ao:{{1XXrw<-C,A,wo?ro{!X:w--X,r?<-Cr 2VAtw -!,:?-o <rc?oCV,-wAx?o-!r:%-XowV{<,C:,ow!F3or!ww^{{X?V-<rC<,Xww{-oX,,?o-AXsr <wo-,,Vw<w r!w?X{:A-V,<?C-ACwe{{ w! ?,-?Aor,<CoX,X:-U< ?ro?r{?X Vw<Vo,,r:o{r B!o?-C-X=V?Q{or,+:Xprr-r,? CoACVOeXowAq{,{? rrr?ACXAww-<X!C!ow<{q <rw<-C,XwrA)roo!X:A--X,r??-CCA)V!ywo !,:?-oXr!r<XCV,-VVs? -!rwn{oXwV-<,-w,ow!g.oo,!?--,X?rr<rCS,XVr2* ,!:?o--XZVX<wo-:Vw?{o r!??X-VA-rXX oo,rwUTX wr-?,Q?ACVr<%oX,w:-br ?,o:<-)AXVw%-o,,,:o<r orX?wC-A,V?H-orXBwr{wX-r,??CoX<V+<oCw!-:A{? -rr?WCX wVCE,o:!o:!{4 rrw:e-{A?w-Zro<!X:w-- XrC<oCAAvV }w -!,ww{!Xrrw<X-:,-w,E?o-,::&-{Xwr <,C?,oV,<X X!X?-{<X?Vo<r-?A!wwzV ,!r?o-rXKro?:o-A*w?{{ r!l?X{rV-V,< oo,Cwq{X w,e-,-?XrVr<AoX,w:-;X{Xro:<-4X<Vw}-o,Aww:{r orX?AC-A,V?<-C-,Rw!{w  r,??CoArV,DXoV!-wV{?X-rr:dC Aww-N,Cw!o:!{vXX!w<-C,A?wCbro;!X:w--X,r?:iCrAcwXKroV!,:?-o{roo! wC{: X!V Cw:<!XV,:-{z?-roow,<a X!w?-:B<!oA!!:-{AXCr?EX-<A VX{c  ,rw?,Xw,{o r!frC?X<z A!{:<,,ww{X wr-A{w:aVoX<<,!-<?: !X,A,!CX9AoV{t-o,,?,,rV<:o AD?-=w :,V? {?:o{!X-r,??wX{ o!2 <XoX::A<CVrVu{<AArV!y,o?!o!AV,T Cr!{: 6r <!,o<CCoC?:-,-rr!?Xo-w oA-JohV?!, :oCV,CVArXow<<oXf<AVr-?V{VGA,  XVV-:<o!-o-XXrVo<rCn{<XVr <C!:V?:o:V!Xr,<V<V^<{CXw- {-w:,C?CAC,o,!ArwrX{_CV<-<, <V<<oX,w:-{, ?ro<r<{A ,!w<{  Vr{?A,:XA?w9oA,V?2oC,<A:X{wX-!!??CoAr!WSCow!-:,{?Xor!?6{XX?w-L,o?!o:r{!XX,w? C,A?wotroR,w:w0- gr?<oCrA9wXQ! -,Xwo-oX!rK<-Cw,-w,??or!r:<-XXVV-?9C?A-VCE} o!w:{-,X?Vo?,-V,Xw!{- X!??o-r ?r<<wC?,,w,{o r!N:o-oA-VC<?Co,rw_{Xor!w?,-,Aorw<&oX,wV=<w ?!:?r-AAXVwi-CX,X:o{- L!!?wC-A,rwooor,A:XG!X-r,??--VrV8<wow,A:,{?Xo!,C CXA{w-<Xo?!o:rI? ,rw?XC,A-wo)ros,ow?-- Vr??oCrAswX*wC !,::-o :r5<oCwA-V?#? o!r:w-XXVV-?X-V,owr*Y {!w?--, w!V<rC<,XV,{- ,!??oA:X&VX<wCa,,w:{oo,zA?X-wA-r!<?oo,rr+H  wr-?,-?AoV!<j-X,X:-{, ?ro?r-!AX!w?wo,,?:o{r R!w?w{-X!V?;oor,y:X{!X-!X?oCoA!V=Z-ow!-:,<? ,rr?<CXAVw-<4o?,-wC{DXorw?{C,A?wo<,C<!X:!--XXr?<oCrX?VX_wo?!,:,-oXrr>?oC,,-wC9?oo!r:a-X r!:<,C,,oVwY= X!wwO_VX?r:<rCA,Xww{-oX!r?o--XGr!<wo-,,Vw o r!A?X{!A-V,<?C-wrwRsw w!A?,-?Aor,V,oX,{:-aX ?ro?r{?XAVw<Xo,,-:o{r 9!o?AC-XVV?<oor,u:X{woAr,?:CoX:Vj%oow,-Vw{?Xorr?wCXAVw-O,ow!o:r{*X rw<-C,A?woarouXX:w--X,rw?:CrA*wXwV??-!XwVXM oV<oC,,-w,M?9{C{XXw{XVV-<,C?,owr77E: w:d{?X?Vo<r?w-{ o!?= CV,CV?2V -<rC?,,w?{o<CC<A!wAXZr?<?oo,rAwV{?o-?r V<#,oV,?{C,rw<{, ?roAwwV<<Vr<oo,,?:o:C<VC-r,w:4  V!<:w-wA r???C ?w-VArV).X<,-: zrr{,o!,?:{uUVR<:o?!o:rw:<-CA,?w -< ?ro::C{X,{3 Xr?<oCrC, :r ?r-wA V:f-CwV-:A{- orXJA-VAww{XrrV<,C?,oAorV<C-,ACVXCVV-?<Ct,XwwV<< -wA<VC-woo!Cww-C w{-  !%?X-w- o!!r:<{?w<?C-!X<V <Vo{?Aw{oo,,:-{, ?o:r{:!-:Vr<Ao,,?:o:!<o-<,VV!1 X<!X<X-{XX{rowr,??CoC, <rC?{-VXXr<?<Cw,w?-mrX{!r:V-oA!r?R{C?,<V<AwV,4rop!X!AVo<oo Aew{CVACVwO -!Ar--X{r><XCwC! r!r?<-,A<wC<,C<<AC?,owra( X!w?-?,Xwr?<rCM,X,!rC?w-<A-<AX<VX<wo-,,w?{o r!8?o{yA-V,<?< {  wrr<CCo,C?V0 o?!{:o,rw:{, ?roArw<k:or,<oX,C:o{r no<,CVz{CAV,<:X{wA{rr?<rX?!CoArVkr<1CCV,<?wXCrr?KCXAww--,:< o:,{AXXrw<-?_{  :r-?o-:A Vr<orw?:CrAcwXrX:g-!A{:--CX?<oC ,-w,k?pVCCA-VA<ro:!oCwAVwr=L X ,A:V,<rowr::{--XA2xow!??o-r-?o:,g:X-X <VC?,Cw!<VA=!VX<Voo,rwjw:?!X{?X-rAoVr<P<,-VX VC w!!?r-}AXA !::ooVXwV{<oo-Arw:7rVw<<or,K:XwA{?C<,{O-A,V,nXow!-,<r6<{CX,<w,{! :SXor!o:r{n<,oV, :CAwVNIroy!X!AVo<Co{<-CXA6wX&w<?CCXXryX,!u<XCw,-,Xr:<{-<A!Vo<:C:,r:ro{ Vro?A-rr<-XX,Vo<rCgCXXV!5<C-HX4-,X!VX<wo-ooX!r{?X-?AAVCA{V,<?oo,rwL{XXwXC?X- AoVr<T?<{: 3r:?VCo,!w:{{V!P{oXA?:o{r q l,CwX%wXr!-?!--XCrws{CX,!wX{AoAT Xr!-:,{? ---?UCXAwr<U,o?!ow,wwXXrV<-- A?wo4r-rX,:w-{X,r!<oC!A>!AWwo?<,:?-oXrrV<XCV,-woX? o!r:Ro XwV{<,-w-kwr=< X,C?--,X?r-?XCL,oww(: ,!??o}rXXVX<ro-,Xw??X rAew?-wXhV,<wooXVwy<Xo-r-?X-?A-Vr?woXXwwr{, wro?,-1 -Vw%-Cr,?:-{r :rX?wC-A,r<7oo!,e:X{w <r,?r!oArVzDX?:!-:A{?oo?V?v-SAwV:f,-V!oVo{{XXrX<-:!A?wCKrCX!X:,,-X,r?<o:VA+w JwC- -:?{?XrrV<X{r,-VXo? o!-:4{,XwV-<,C?C<wr)r X!o?--XX?r?AwCEAWww<V ,!:?o-!XdV- wo-,,w?<: r!<?X-,:-V,<?oo-VwP{  w,B!o-?X?Vr:roX,w:-<,-rro?o-yX)Vw<Vo,AwwX{r !rXwVC-A,V?yoCo,Rwi{w Or,?wCoX,VXdXo !-V-{?Xorrw}{gAwVVF,oA!o:C{i or{<--ZA?VV=rod!X:w{<X,rA<oC,Aswo1wCMoo:?{wXr,r<XCw,-r,VA o!-:2{?XwrV<,-wA?wr5A XA<?--,X?Vo<!CnA?wwK8 ,!w?o{rXoVX<oo- :w?%< rXl?C-wXrV,:VooArwvqXo:r-:%-?ACVr<VoXArwV{,  row--mAXVw?-,!,?wV{r ArX?{C- ,o?zoo{,xw:{w {r,:?{AArV,9X-w!-w<{?Co!r?R-?Aw!-d,C<!ow,{ XXrC<---A?wocr-7A?:w{!X,r <o{wAgVo<X -,?:?%,Xrrf<X-rA?w,)C oA?:U-XXw!3AwC?A,wr<! X!w?--, wVo<{CMArww72 ,,?:--rX,VX?oo-A<w?7oCw!_:*-woAV,<!oo rXr{X Xr-:A-?o Vr??o ,ww!{,C!ro?r-f X!S(-C<,?wV{r !rX:r-<A,VoSoCC,n:X{wol,<??-!ArV:qXow!-wX{oXo!??8{<Aww-5,CwAw:r{CXXr!<-C,A?wo??o3,::w{ X,rw<o-rX-wX#X -!X:?{VXr!?:?CwA!w,6- o!r:5NX CV-?<C?AVwr(! X,rwr-,XoVo?CCY,Xww<* A!?:!-r VVX<wo-AXV-{oo?!Uw<-wA-V,<?-V,rwA{XoDr-?X-?Xor<<cCW,ww,{,  roVrwrAXVXp-- ,?V!{ro2,,?w-VA,!Cyooo,mwoeoX-!<??{?ArVEcX-w,V:,{ Xor{?&-<Awr0<{o?,r:r<CXXrw<--XA:wo<<o^X!:w--X,!w<{CrAowX:< -!,:?-o :rq?:CwAXw,Rw o,r:?-XX V-w?C?AVwr:i?R!w:V-, wVow:CZAowV{-o<!?V<-rXEVX:wC,,,w {o {!H:<-w G!?<?Cr,rrC{X wr-:X--Aor<<k-<,w:-{,ow!!?r-oAX,<t-o,,?w-{{ h!!?w{VA,V?1oor,{:X{CX-!V??C-Arrk?,ow,V:,{wXor{?={XV:w-<<o?,<:r<:XX!w:oC,AAwo?{oi,::w_^otr??VCrXrwXiw -A,w!-oX{rt?:CwXow,<wo,!r:X-XomV-<,C?A-V cEoV!wwX-,X?Vo?,-A,XVb{-o{!??o-rX6V{<wC!,,w-{o ,!G:X-{A-V{<?C?,rwA{X-wCw?,-AAoVX<H{A,www:  ?rC?r--AXVVk-oX,?whAr ZrX?w-oA,V:BoC,Cw:X{VX-! ??CoAr!r<Aow!{:, ?Xor!?k4AAwV?X,o?!o:r pXXrV<--X-rwo_!oIA::w--X,!w:(CrA?wXpA -!,:?8oX{r2<oCwAkw,:) oAr:,-XXrV-<XC?X wr?b  !w:i-,XwVo?XCuXXVu{- X!??--rowVX<wC<,,ww{o A!M?X-wA-rC<?oC,rwh{X !r-?o,?AoVr<p,!,w:{{,C?? ?r-rAXVAa-- ,?r?DV i!K?wA A,V:+oC:,d:-AwX-r,??AAArV<BX-wow:,{,Xor ?0{oAwrMo,o?,w:r{-XXrw<-C,C!woboo4,?:w{%X,r,w?CrArwXo< -!A:?-oXrrw XCw,-w, { o!!:c{o{,V-<-C? ?wrxR XAwr?-,X,Vo<oCvA<ww<1oo!?::-ro<VX<wo-,,w,{o o!>?o-wX2V,?w-?,rw!{XCXr-?,-? oVX<6C<,wwV{, Aro:,-VAXVoK-C<,?:o{r }!A?w-VA,VwUoo,,3wow,X-!t??*?ArVO>X-wCV:,{XXor-?j-<Awrp?Vo?,V:r)CXXrw<-C,Arwo=-oz!o:w{1X,!?:ACrA,wX?{ -!C:?<oXor*??Cw <w,<? o,rw<-XXoV-<AC?A<wr<?o<!w:!-,oXVo<rC2XXT:{-o<!?:V-rX VX:w:-,,w {o {!K: -wX-V{<?Cw,rrl{X Cr-V,-{AoV-<={X,wwC{,ow,A?r-AAXrX3-o,,?VoIV 5!:?w-!A,!^4oC,,C:X{-X-,w??CoArr?<<ow,A:,u-Xorr?(-o<Qw-<wo?A::r{_XXrw? C,A wo<?o_!o:w{- ?r??wCrX,wXtC -,,Vl-oXorBwVCwA:w,:???!r:r-X VV-w!C?A-w!uOo:!wV:-,X?Vo:r-w,XwC{-o<!?::-r ?V <wC,,,VA{o r!b:o-!A-r:<?o{,rw9{Xor,X?,--AorC<eoX,wVn_, ?!A?r-:AXVwB-o,A{:o{{ M!!?w-SA,r??Xor,r:X{rX-!<??--X-VY<:ow,X:,{?Xo,r? CXACw-<<o?,::rY? Vrw?,C,XAwoerom,oww-- :r?:<CrAzwX<rC<!,:--o CrQ<XCw,-VoQ?oV!r:o-XXrV-?,-r,owo=xow!w:!-,C?o?<rCr,Xr!{-C:!?:oSwX9r<<w{A,,w,{oo,,,?X-CA-r-<?oo,rr3{{ w!!?,- AoVC<4Co,V:-&? ?AA?r-NAXrr?Ao,,C:o?: ;rX?w{.X-V?<,orXC:X{wX-r,? CoA{V4<row,8:,3?o<rr?!CX -w-<<o?XoAo{Q <rw:3C, {wo<,o<!X:C--oCr?<oCr KVoqwo!!,: -oXCre?oCA,-V?v?-A!r:W-X rrw<,CC,oVC_a X!wwt- X?r,<r{C,Xww{-oX,X?o{:Xd!<<wo-,,w?{- r!A?X{<A-VX<?CoXwwqk< w!&?,- Ao!ro{oX,C:-{C ?,{?r{T ,Vw<Vo,X :o{{ k!o:oC-X<V???or,=:X<wo<r,? CoA{VZ?,owAQwr{? rrr:oCXAww-<Xor!ow<{0orrw<-C,XwVwvroo!Xw --X,r?<o{_A_V:TwoX!,:w-o r!w<XC ,-w-P?oV!rrqVTXwrV<,Cr,o!VIaoe !?--AX?oA<rC<,Xwr{- o<??o-rXQo!<wo{,,wrAo r!%?XoVA-VA<?C-CXwL{  w,!?,-?Aor,?woX,r:-{C ?ro?rSpA-Vw<Wo,,w:o?w *,X:<C-AXV?1-orA{:X<wogr,?wCoA,V><-owA-wV{?X-rr??CXAow-.,or!o:,{IXCrw<-C,A?VVTro<!X:w--X r??i!rAzwX;w,o!,::-oor<{<XCX,-wC_?-:!rVr{AXwrw<,Xi,ow!gEoX!w:?,,X?Vo<rA-,XwV{-C, ,?o-oX7V{<w{X,,w?XA r!r?X-rA-VA<?C?oAwl{  w:!?,-:AoV,<Io-?w:-{, ?:V?r-<AXrrr?o,,::o8{ KrX?w{IXoV?k-or,V:X{wX-,,?,CoA,V6YoowXo:,<?o1rr??CXArw-?!o?AoV?{=Xorw?*C,Xrwo?rCT!X:r--XXr??wCrAyr<DwoE!,:V-oXrrR<X- ,-wAT? o!r::-XX,{-<,C?,o?VP3  !ww-X!X?r?<rCV,Xr {-C-Xd?o-oX(:!<wo{,,VC{o X<b?X-wA-:V<?oC,rwwAX wr-?,o<AoV!<R-XoX:-{- ?!<?r1oAXVw  o,,,:o{, &r ?w-wC V?aCorVA:X{VX-rX??-I:rVePXowV!:,{:XorrwCCXAww-aAo?!o:r{gXXrw<--oA?wokro<,?-oX:r!{w< --C(w X{!<o:!?X:-{orC,CV,-w,4? o!r:iCX-:V{-<r:VXkro,w:C{---ACV,{wAE: C!!C<{!!w:?-rX6VXV!<w{XX:rA< !?:X-wA-V,VXw<{:X<r,?:C!,o:wH oV,w<X-V iro w!!?r-+AXXm!C? -:X,wr<oo ACw:jXV:Aw:C,{!X!C4V<w-<CC{<<{{Aw:--? -<r r!? 4AA,X-C,{VX !w{? :rw<-C,CV wr!:?C A!r?2CCw<-CXAdwXEw?VCAA{V<X!w-r<-{-C!ACrC? w:<C:)wV  !XVV!--om o!,?--,X?C:!!:A{-wrlV ,!??o:rLo  ,C::{X V{- A!k?X-weo C,AoCw CAX{{:p,,ww,VXV!A,w<A:!-,<+A<,rV-4o,Vw6-o,AwCV{r MrX:<C-A,V??oCu,F:X{wX-r,::Co rVo}Xow!-:,{? wrrw}-,Aww-H,o?!ow?{IoXr <-C,A?woJro!!Xwr{ X,r:<oCoAGwX9wC-, :?-CXrr<<X-r,-VX<A o!,:Q{AXwV-<,-wX:wrl: X!V?--,X?r-<CC1,-wwb? ,!??o{, AVX<Ao-A?w?{o r,?:}-wXwV,?Voo,rw+Ro Vr-?{-? cVr<qoXArw-{, Xro?,-nAXVw?>,,,?wV{r :rX?wC-XX<?^oC2,4wV{wX-r,:wA!ArV hXoC!-:,{? -!A?9-rAwVo7,o?!ow,FrXX!<<--?A?wo0roD!{:w-{X,r{<oC,A+VX<w -!,:?{?Xrr<<X-rArw,c? o,r:y-XXw!v<oC?,CwrgV X!w?--,w{Vo<rCn,oww{{ ,,woV-rXTVX?<o-,,w?<o o!)?X-wA-V,?:ooXrw{{X wr-?,-?XwVr:Ro ,w:-{, ?ro:?-L XVrW-o,,?:o{r !rX:r-VA,V:vooo,a:X{wo-! ??CCArV<uXCr!-wX2AXor,?K-AAww-n,CwAw:r{:XXrV<-C,A?V-??o+!-:w{?X,r?<o-,A!wXGA -,?:?-oXr!??{CwAww,<V o!r:n{ooKV-<{C?X%wrGL X,r:V-,XXVo<,C8,Xww<>!,!?:V-rX:VX<wo-AXt?{ooK!J:V-wA-V,?w<w,rw {X Cr-?,-?X-!?<^Cr,wwo{, ?ro:,-VAXr<Y-C?,?:o{r =! ?wC{A,V{Joo,,.wX{oX-r,??-?ArV<gXow,V:,{?Xor!?4CXAww-3,o?!ow {PXXrw?8CoA?woWr?!C X<V:XAVjXo !,{!,:X,- !:w{VXrrK<X<!{rXA!w<CCAXww{<rV{wX? A:wro<-,:wrC-ACV,{wA): C!!C<{!!:Aw ! {<XVw,:!r,<{-or!R?X-w-roC!{?C{wX{r:<,o>A!V<<YXr!<:o{,:{:r:A,w?rX<X-?woCoAX ,A-,-{:C<,ooC!V:, wC??!XA:w<nX-?C-AAV%1Xow-oACrAX-rC?HCXAwA-!w?:{VA r?<Crr?AC,A?woV??{CCAVVX{,o-!Cw{{V oGVV rVr!roXV?C?XA:,{A ?CC{CrrX:,r:<C<XC,,owrj0{C XXYwA4{o<<!{-oV;,:CZw,? <XrX?V-<wo-,, AVC<{-w? XX{I!o!<CV,!X! X Vr? !<{<o{w!CrXo::{rXo Vo,V?wV,w:wCo, h:o{r d!o CC-A,V?jCor,_:X<wowr,??CoArVp<rowA-Vw{?Xorr?SCXX<w-?,C-!o:r{4XXrw?<C, ?VONroz!X:w--X{r??-CXA=w >wo-!,:?-oor!A<XCV,-wAI?o!!rw?&<XwrF<,-:,owrteoo, ?-- X?r{<rC0,XVr#X ,!r?o{qXJVX<w-IA{w?E< r!A?X-wA-rX?roo,owsP- wr-?,{wX{Vr<!oX,o:-{, ?!-:?-;X?Vw<oo,,?:o8,!krX?CC-XCV?)oorA?{X{w ,r,?rCoArV6<o!{!-w:{?X-rr?_CXXrw{g,o-!owV{dXXrw:Q--A?VAfror!X:w--X,rr<oC!AMV!iwoz!,w?{CXrrx<X-w,-wAe?o-,::n-XXw!a<,C?,oV,MX X!V?--CX?Vo<rC4:!ww{- ,!w?o-!X}roXCo-,,w?{C r!4?X5w  V,<?oo,rw%Or w,-:--?AoVr<+oXA<:-<,  ro?r-zAXVw<<o,X?w!{r 3rX?wC-A{V?<--<,3: {w -r,??Co rrI*XoV!-:A{? !rr:?{<AwVD%,C:!o:r{* o,h<-C A?V{lroP!Xwr^:X,rr<o-DAGwXmwCI, :?{<XrrA<XCw,-VXK, o!o:7{-XwV-<,-wATwr_! X!o?--,X?r-?wC>A?ww_o ,!??o{,rPVX<Co-ACw?{o r,?-X-wX,V,<roo,rw_Fo{or-::-?A-Vr<joXArVV{, -ro:V-^AXVw?bo-,?wA{r rrX?wC-A,rVcoo!,Yw!{w _r,:?-VArVjGXCw!-:A{?XorC?4CXAww{D,o?!o:r{(XXrw:?C,A?wok!ww?A?orCCwA<,!AwA?V:Bw -!,!VVwY!C?! :!P?XC!w -!A:#-XXwoo!CwA,C-,C?A{{::oAw<:AX<!-<{A-<!C :,hXw?rX<!-oVoAw!<::A? ?-? w!5rw-:<!!A A  , V-q<wX<  - VX wo::{rXA-? wV!V-w:-oCoX,r:o{r UC<,Vw {CVw<?or,J:X:!{wCX,:wA{ V?<Xow!-:,:X?<C:,<w,H: !ro<w- XVrw{XoVA7woA:?!O<{,:X<-? ,XX<<C-w{rVCrwCr!{ -XoX,rw<XCw,- {r:?V-X:?{<XwV-<,??{,X!!A<{-rX<-XXCVo<rCsCr :r<<AC-!oV?b<C:!Aw.,A!V?{-AX:VC<!!<A!<:oo,rwh{X wr-<,?<AC -{ XX-wXCwVGo?o?r(-AXVwO-CX< :o{r n!w?wC-A,!?<-or,l:X{wX-!,??{oXoV)KXow!-:,_:Xo,r: CXAww-x,o?!-:r<RX rw<-C,A?wo<?oB,o:!--XAr??!CrAswX?wow!,::-oX!rf<CCwX8V{J? -!r:--XXwV-?X-{,owA>P {!w?--, wrw<rCw,XV,{- ,!?:-{rXgV{<wC ,,w?{oo,,A?X-XA-Vo<?oo,rV?)- w!V?,-XAoVr<YCoX<:-*# ?!??r-GAXrro-o,, :oDA mrX?w{pV,V?<ror,!:X{wX-!XCCCoX<V3<:ow!-:,Lw Drr?oCXAVw-%,o?,-ww{4 !rw? C,A?wo8rCo!X:V-- Vr?<-CrX*w{.w -!,:C-oX!r;?oC{,-w,y?o !r:8-X r!r<,C:,oV,c1 X!w?-AVX?Vo<rC?,XwV{-oX) ?o-rX*rw<wo-,,r?D  r!U?X-wA-r,<?-oACwM{X wr-?,{:Ao!r?VoX,w:-{, ?r-?rd^X?Vwp-o,,?:oR? 1!o:!C-AAV?<!or,9:X<w ?r,?:CoA!V;2CowAUw{{?X-rr?-CXAww-<XC !o:A{bX{rw<-C,XwwCarow!Xw,--X,r??-{ZAtw{=wo !,:?-o ,!o<XCX,-wo;? o!rw?1rXwrV<,CX,owr%1oo!V?-{uX?r?<rCY,XVr - ,! ?o{AXmVX<w-Kw,w?vr r!!?X-wA-rXVXooA<wd9: wr-?,{wXrVr<ooX,V:-{, ?!-:?-nX!Vw< o,,?:o{ro rX?VC-XVV?%-orAyw {wX-r,?CCoA!Vh0Xo!!-:,{?XCrr?KCXAww-i,o?,z:r{_XXrr?,C,A?wo!??{C A,r<<oCw,Vww{!woa  -!,:?:w<XCw,X< {: oJwo;!r:T-XP  {,V:!,-,XU& X!wArVo<roo,A1X A!:!U<A-AVXwCWAo-!ow:-X !r{< -?,CV:Looo!!:X{Xr-VC?:C V!?!k0 C!V<:CCrCr<?iC?,{w-v:o,!:w<- X<r?<wAAA<:{; or!<:,X{XCr:?:CX,Vw<ArV,2Xow!-wXX<Xorr?_C Aww-W,Cw,-:r{<XXr!<-C,A?ro?1og! :w-{X,rw<o-,A{wXD! -!o:?-oXrrx? Cw,{w,_V o!r:z-X ?V-<,C?,owrU? X!w:V-,X?Vo<!Ch, ww{-oX!??o-rX<VX<wo-,,w?{o r,w?X-wA-VX<roo,rw_r<<VC ,C-:V{A C<-Ao,w,XV{<r-?X-BAXVw,V?A-  Y{!V!:owVC-r,ww{ _V,?wq{wX-r,rV??s, <!!?A,jw,{?Xorrr,w{R<X{!r:<-VAXw?<AC:A??,{: -!Xo<?,X?Xodr1V? ??o-wog{ -!,:?:,<Vo:! wcC- wr::VC X?-  {!? < <{w!{VV{,!VK!XoV-{ ,::oC,F?{{!  !-CnV-wrwo<,C,A!V?{-AX:VC<!!<A!<:{AowwV XooCooo??ACrwo:X,-:?-Vo5r?X?,-!AXVw*-<,--ACr{<VCoA!-SX<V?)ooro:X?VV?boA,VVL{ o?M ow!-:,{?Xorr<h<AAV{ o!-!!o!Vr ? Xw?>C A?woZr?-C{X -{<wr <V!rA!{,AA{-!,rS-oXrra?orC,-w,O? C!r:H-XowrV<,C?,owrk5oA!ww-{rX?Vo<rCq,Xwo{-C,!{?o-rX2VX<wC-,,r?{C r!k?X-wA-V-<?C-,Cw4{  w!:?,-?Ao!r?ooX,V:-{A ?!{?r{? <Vw<ko,Aw:o{r 0!o:CC-A V??Dor,m:X_rorr,?rCoX:VZDXowA6:C{? <rr?wCXAww-<XCC!o:o{. wrw<-C,Xwr<Zro!!X:r--X,r??--AAWV?&woV!,:?-o ,?d<XCC,-VA(? o!rw?XXXwr,<,C ,owrLmoo?{?-{:X?r!<rCy,XVr<? ,!-?o{wXEVX<w-8A{w?GA r!w?X-wA-V,?<oo,!w1n! w!O?,{?XwVr<4oX,A:-{A ?!-:w-vAXVw<<o,,?:o.,o:rX?VC-XwV?Foor,(-!{wX-r,?wCoA!V4<oVC!-:,{?XCrr?#CX wr e,o?!o:r{a Arw:-{:A?wozroL!X:o--o,rC<oCrAtwX5wo-!,V?irXrrl<XCw,-w->?o-!!:D- Xwr:<,C?,orr<? X!V?--AX?r{<r-?X<ww_G ,,w?o-rXfro?io-, w?<p r!(?X{r ,V,<rooA:w1{X w,S:?-?X<Vr<woX,w:-2X wro?o-_XwVw=-o,AwwC{r !rX?rC-A,V?<-C:,Kw?{w Vr,??CoX,<*IXoC!-wA{?Xorr:?AXAwV,3,o !o:r{+ oXo<--:A?V!croK!Xwr{AX,r-<o-wA3wX*wC2!-:?{AXrrw<XCw,-w,<{ o!!:%{!Xwr1<,-?A{wr1I X!A?--AX?Vo? C8,Xww{{ ,!??o-rXQVX<w-?,,w?{o !XDFAY<V-wXl!  wVw?{- wr-?,VA{C {,wo ,w:-{, ?ro?rC#CAVr<!o,,?:o:A<,o Ar:{{ or!<:,,?:C{wX-r,ATw<vCV<VV,?<V:!M?!<oVV-C d!-8zwr<:{<Aw{-,rV+XwwVX, <Ao{{C!w{YXor?<oCr{!X !<?:!Ar?o o:?>.ooA!C,!+:-rAA<CXX?V!!:?<j,CAw{ !!{:-!A  XAo<!3: C!!:<- XV{{?VX?rX<wo-,,,X!<?:C<A,V:R! orw: {V wwX<V-nAo-wX!Vr<_oXCIXCV <:C,!rwo{ oC!::X,:Xo:-A!,Aw,:Aw<A<sC !-rw!C?HVr !CAoA!IAAy!w:Cw<ACCV?w??-3Aww-H,4Vo?X,V<<!oA?HC{A?wohr<K-rAVr!8CCw,{Cr -wXxw -,Xo -oXrrf?:Cw,-w,??o!!r:1-XXwV-?oC?XoV{QY X!w?--, <Vo:rC?,Xww{- ,!?:}-ro7r!<wo-,,w?{oow!W:o-oA-VA<?C{,rw^{XCw!{?,-:AoV!<So{,wVF1{ ?r-?r-,AXVw^-CX,,:o{A E!r?wC-A,rw?wor,w:X>VX-r,??--X{V41{ow,-:,{?Xo!,?-CXAXw-<:o?!o:rB? Xrw?VC,Aowo>ro4,o:X-- Hr???CrAGwX<r!-!,: -oXAr9<XCwXs),H?or!rw?-XXwV-?X,C,oV<BW  !w?--, w!?<rCo,Xw {- ,!?:--CXNr!<wC-,,w?{o r,w?X-VA-rV<?o-,rVD<< wr-?,{VAoV!<HCo,X:-{, ?r-?r-%AXrr<!o,,::oZ: DrX?wC-wVV?qoor,?:X{VX-!X  CoArVJ<:ow!-:,<?owrr?#CXAww-<oo?AowX{dXXrw<-C,X<wo?row!X:w--X,r??SCr 8VAcw -!,:?-o wr>?o-w,-wA;?o{!r:&-Xow!A<,C:,ow!HK {!wwM{{X?V-<rC,,Xww{-oX!X?o-AXGrr<wo-,,Vw5o r!w?X{VA-V,<?C-AVwO{{ w!-?,-?Aor,<,oX,X:-3: ?ro?r{?X<Vw<Vo,,o:o{r *!o:<C-XfV?<?or,I:Xnrr-r,? CoAAVDtXowAG{,{? rrr:?CXAww-<XOX!ow<{)X rw<-C,XwVtProo!X: --X,r??-- AZV!7wo-!,:?-oXr!A<XCV,-VV3? -!rw(--XwV-<,-V,ow!h7 X!{?--,X?VC<rCa,Xww{- ,!?wf-rX8VX<VG<  !V?{-AX:{C?:X1Vo<?oo,r !V <C-??X-AAoVr<&<X{JA{!<<!C-AA-<{o???:r,wC:?C,-{ro?XC-A,V?w{Do{?A r<<:rAVAo {XCF-?V,-A{r{:CV,Aw-CXr<VV, ,?!-wr{jXXrwrrwC{{XC!w?{-:A,wG<!C<Al?r{< o!,o=,<:?-oXrX:,?:V5vXArV:eC X?- Jr?o?C!?V!:o-?!A!VC:w,!AAo<XC- ?,w{{A,-!?<BVwoX!,o,o,AC-w{Cw E-q-X<?<r<:r<AVo?!Xw: {Vl?nACVr<moX,w:-{,X?X ?! X,<??XCwjw,?V V <Zo,r!XV!X {&!<o}:o{!X-r,??wX{ o!^oo,!-:,{?<:o!,C:{ArVAp,o?!o,?V{)CoV,X?,{-XC!{?V-o:w<oX,r?<o-,?AwX_w -, :?-oXr,^?rCw,-w,s? o!A:HfX ,V-<,C?,owr<w XAw:B-,X?Vo<rCQA:ww<-o !??o-rXaVX<oo-AXw!{o !!=?{-wA-V,:?Cr,rw<{X Vr-:X-?X-rC<Qoo,wwV{, ?ro:,-VAXV!}-C:,?:o{ro?,r?w-?A,r:Boor,0wo= X-rC??-oArV;sXCrA,:,{,Xo!??.CXAwr7<wo?,::r{XXXrw<--XX!woy-oU,!:w--X,!wCoCrAAwX<: -!,:?{-rrrn?wCwAww,g? o,,- -XX{V-<oC?,owr<?C!!w:X-, sVo<rC9AoV-{-oV!?:o-rX&VX<wCC,,w:{oo:!_?o-wX-!V<?oo,rwV{X Vr-:X-CAoVr<&oo,w:-{,ow!<?r-<AXVV%-o,,?:oX: #rX?w-tA,V:*oC,<A:X{wX-! ??CoAr!&<Xow!-:,{?XorA?m{XArw-+,o?!o:rQwXX,w:?C,A?wo)ro=,::wi-X{r?<oCrABwXHo -,X: -oX!rG<{Cw,-w,?? C!r:<-XXVV-?XC?A-VCh( o!w:V-,X?Vo?,-X,Xw!{-o:!??o-r ?rV<wC?,,V:{o r!2:oi<A-VC<?Co,rwE{Xor!??,-,Aor?<boX,wVI{o ?!:?r-XAXVwj-CX,C:o{- z!!?wC-A,rwooor,A:X(:X-r,??--VrV+<wow,w:,{?Xo!,r,CXA{w-Poo?!o:rH? ?rw?XC,XvwoWron,o: -- Vr??oCrAuwX+wCw!,::-o :rc<oCwA-wX=? o!r:V-XXVV-<,-{,owrKv  !w?--,X?Vo<rCSACww{- ,!w:?-rXYVXV!<w{XX:rA< !??--wA-V,,A?C-{ w{o  r-?,-?-oo?!<w:-A 6r  w!o?r-jAXAo,::V-:XXrV<Ao-!rwCy!orVo?!{?X-{V! ,r:cCoV{rX,<7?!{ !mA r,r<{CAC!NosA{VX{rA?:CCA!{<<!Aww{Tro)!XX?V:<{r::? :A<eXn: C  {f--XXr*<XCw{VXAr{?<!!!:XCs:C-rCV?{AQwj?o:!w?--,-Vow!!w?- X!!?<C-w?CoroC-X w!r:V-V:o !:?!r {VCrXr<V<orw<:C!!oCX,:!<oo:w-oo,{:-{, ? ,AVw:{ oYV-:w-: VV ??r ?wC-A,V?Uoor!g{A{V{6Vwr-!CwA{oA{pw!{:,{?Xorr?^CX,w,Cx,{;!o:r{b o{C<-C,A?VrFroc!XVwsrX,r?<oCrANwC2wC-,<:?-oXrr)<X-w,-r,<: o!r:9-XXwrX<,{?,{wrQ9 X!w?--oX?r-?ACi, ww{{ ,!??olr CVX<Vo-,Aw?ew r,?w<-wXtV,?*oo,rw7Qooor-? -?X-Vr<5oXArw<{, rro::-MAXVw?k-?,?w<{r ArX?wC-XXr{3ooo,8wV{wX-r,:w-wArV!hXC!!-:,{? -r ?m-?AwV:},o?!ow, LXXrC<-- A?wo6rC?:X:w{,X,!<<oCrA&Vo { -,::?{CXrrc<X-rAnw,&- o! :Q-XXw!_?{C?AAwrvr X!w?--,X Vo<!CHA!wwMs ,,?w?-rX0VX<Vo-,Aw?N- {!&?X-wXhV,<?ooA,w {X Vr-?{-?AoVr<g!!,w:-{, wro?!-%Xo-CM-o,,?wr{r 9rXww--A,V?ioor,7:C{wo-!A??CoArVzJXCw!-V,{wXorr?uCXAwVXL,-?,::r{eXXrw<-CoA?V-<Co1! :w-{X,r?<o{rXXwX9V -!A:?{wXr!?:<CwA}w,<g o!r:x{o }V-< C?A-wrcq X,rww-,XrVo?:C#,Xww<1o,!?:<-rXAVX<wo-AXVo{o o!Z:V-wA-V,?wCo,rw!{Xo!r-?,-?X-r-<2C?,ww:{, ?ro:,XjAXVCZ-C ,?:o{ro??X?w-,A,r<noor,Bwo:oX-!:??-CArVEqXCrA<:,{-Xor ?BCXAwrm<wo?,A:r{rXXrw<-C,AVwog!o},!:w{.X,!???CrABwXhV -!A:?-oXCrE<XCw,{w,d? o!r:S-XXw,X<,C?,ow,EX X!w?-:oD!Cw,X<:{A urC?XXV?-{yX%VX<w??-C X!GnAC:, VHQ: o<:oo,rwa{X ww-A!??A-r?<zoX,w,CrC?rC,,{w-{{A!!C:w{<X-{, ArX?wC--v  !:?--oX:V <rCo?w-<ArVPLX<Ao?X<V{C-r,:=CXAww-w-? -,X?ww<ooV,ow j?XC!,?V-,A!r!XX!,<oCrAU,orV?<-:AAV-<VCV,,:,-? Xr:?X-AX^w <ro:,r:VWVw,x: X!w?-?C{VXo<,C!,Xww{-{oC!A{VX<?oA,CCN, w?{o rC-,{V Xsr<<?oo,rAwV{?o-?!ww:{-  !ooo,X:-{, ?X{AVwo(Aorw<oX,r:o{r W C,CV,{CVVnCo,,::X{wX- <AV<CA,V,qXow!-,<r(<{CX,<w,{! :6Ao?!o:r{eXXrwy-<!AwV1)roO!X,?w{<Vo!<--<AFwXKw{{-wXAwC<{C:rAw?-? !!? -!C:l-XXwA{!ow<{- wrV<{!r:r-,X?VoV :-{-XC!??<C!A{-,XoVX<wo-oC ^!T<{-wX:?A{<X,V{: -Xw?{- wr-?,wA{Co:!Voo,C:-{, ?o:AVV?yVo!!-?A-VX<{! PrX?wC-A,V?VVhr,?wV{wX-r,!VV_j  w!C<:-wA-rV<<CX??-qAww-N,<?CCX,VV<,C,?d-:A?wo(rG!C{X,:<<2o ,,:XF?X{!?ot,r:?-oXrX!!{w,C?XC!V<{C A-w-WVoo,owV,-V?0# X!w!#V<q-o,!,:{-  rr?{{-!AV-,X!VX<wo-C-X!V{?XC{Ao<!X%VC<?oo,r,CrA<,C:Aw-wX<Vr<DoXoAA<w,{X ,?,-wAXVwZ-:r-:XAV  ?r-?wC-A,Xr!<:-{w:o{ X-r,??w?G, {!!<roV!X{w orr?+CXCrX{r ?C-:X,V{<{C?,?< a< ,!V:?XC:r{?X,r?<o< {- {!<oE!C:?-oXrCh! :CsE  +wo-!r:_-X-oo!!{:X{,X{r!??-,!?wC<?C;!-<C{AX,r: X! ?o-rXJA-!A:-{oXXwA?VCw,{-VA-V,<?oo,rwm{X wr{?,-?AoVr<1oX,w!-{A?{ro?r-PXoCo=-o,,?V:{r 6rX:r:?A,V:.oCC,5:X{wCwAr??CCArVVSXoV!-w!{? Z8r?hCXAwV:t,o:!o:XA3XXrw<-:VA?wCmrC?o-:w-{X,,X<oCrA0VooV -!X:?RwXrr(<X{wArw,Jw o!,:BQ:Xw!-:?C?,-wrc? X,X?-6,  Vo<,C^,oww<  ,!?:?-rX?VX<!o-,,w?{o A!R? -wA-V,<Voo,XVV{X wr-,?-?ACVr:M<*,www{, !ro:r-jXo<w.-C^,?VC{r krX?w?:A,V,Eoo-,>:o{w w,-??-?ArXXFXoV!-:,{? xpr?eCXAwX,),o:!ow,wwXXrX<--AA?wo8r-&X-:w{wX,r,<o-<A>Vo4, -!{:?8 Xrr.<XCwXww,L, o!,:x-oXw!J? C?A:wr<< X!w?-g, oVo<CC3A<wwhA ,,w:V-rX,VX?+o-,,w?{o X!K:<-wXtV,<wooA,Aw{X or-:A-?AoVr:e?<,wwr{, Xro:<-EXoV{l-C<,?w<{r arX?w-oA,VXioo,,5:o{w -ro??-wArro8XoA!-r,t-Xor-?F-CAw!7*,C?A?:r{,XX!A<-CCA?V-m{oP,::w<VX,r?<o{rw{wXdC -,<:?<VXr,Q,XCwA!w,J  o,X:i{XXCV-?&C? rwrKA XXw:X-,XXVo<CCBAoww<_C:!?:V-rXCVX<wo-X,w-{o {!M::-wo:V,?wCo,rwX{X !r-?,-?X-rV<cCV,wrA{, ?ro:,VoAXrj8-{:,?:o{r tr ?w-!A,V-9oo,,8wX{CX-!P??-pArVAFXCwAo:,{,Xo,??.C{Aw!-r-o?,?:rKwXX!:<--XA:wod{o_,y:w--X,,?<{CrAAwXqC -,::?{- Vr(?wCw Aw,}? o,,:w-XX{V-:?C?,owr<? o!w:X-,oCVo<rC^AoV:{-oV!?wr-rX;VX<w-,,,w {oo:!G?o-wX-!r<?C?,rw-{X Cr-:X{XAoV{<k-X,w:-{,C?!V?r-AAXVC>-C:,?w-yo E!w?w0AA,V?4oC,Aw:X{{X-Aw??CoArr?<row,X:,<CXorr?tCX <w-<<o?,,:r{?XX!w:AC,A,wo?<oH,::w<-+-r???CrX:wXnC -,,Vt-oXCr):rCwAww,<wCw!r:A-X <V-<,C?Xow{xzo:!w:!-,XCVo?,-A,Xw-{-oX!??o-r ?r!<wCA,,Vw{o r!6:o{!A-rw<?C-,rw>{X w!!?,- Aor?<loo,ww-{o ?!:?r2rAXVC#-{,-,:o{C ;!??w{UA,rwmCor,A:X{XX-r,??{oAXVc<:ow,!:,{CXo!,:<CXA-w-<Xo?!o:r}?o:rw?AC, Cwo%roj,oVT-- wr??-CrAjwX<roo!,:{-oC<rE<XCw,-rwa?oV!r:C-XXrV-?,{_,owC%No,!w:!-,o?< <rCA,XwA{-o !?:o7wXEr<<w{?,,w {oo,,,?X-CA-rV<?oo,rrn6X w!!?,- Aor<<PCo,X:-e? ?!-?r-5AXrr<{o,,C:o?< #rX?w{#A V?<,orX :X{wX-r,:cCoA{Vl<row,^:,N? rrr?!CXAVw-<<o?XoAo{} <rw?cC,X<wo7oy:!X:V-- Vr?<CCrA?wXL,V-!,:?-o :r=< CwA?-,&? o!rXo-XXVV-?X?r,ow!;8-?!w?--, w<C<rC?,XVo{- ,!?wo{-X_Vo<wCY,,V {oCr,C?X-rA-VX<?-?,rrk{  w!G?,-wAo!w<ZoXA-:-{X ?r{?r-RAXVw<{o,,::o{r =rC?w-?XwV?eoor- :X{VX-,,-<CoAoVmT{owX<:,<,CXrr?rCX{Cw-dAo?,V:r{wwXrw<-C,{ wo7!oj!-Cw--X,r?,!CrA<wX?w(w!,:,-oX rJ?wCw,-{V)?o?!r:?-XXVV-<-<V,ow!J)<{!w?{-,XwVo<X!),Xww{-<C!??C-r ?X-<wo{,,rX{o r!3:oXVA-VX<?-w,rwP{XCwr{?,-wAoV,<4-:,wV-eX ?r-?r-?AXrX9--,,,:o{, 5ro?w{oA,V?<Vor,?:X{!X-r,??CoXwVd8 ow!-:,{VXorX?CCXAww-,?o?!C:r<trArw?wC,A!wo?AogXZw:--X-r?ArCrA<wX?r -!oC?-oXrr0AwCw,{w,??.?!r:r-XXAV-??C?,o{:N;oS!w:=-,X:Vo<o<:,XwV{-?C!??C-rX?VX<,r-,,w?{o? !%? -wA-,V<?oo,rw<{X wr-?,-?AoVr<VoX,w:-{Xo{ro?r-*b?o,,?:,{V!r?VC{o-,CV<{ o<!-?XX-X<V CCAoA,:Yo  Xw??A-wXXVAX-!w?3CXAwX<!_?:-}XVr!oX !,<wX{  o!X::!o:X--X,r?row,{{ !!w:?!X:r-oXrrD,,:V{ XCmwo?!r:J-XHCoo,-: TnX f>o<!w?--,X?,<<rC1,Xww{- ,!?wo-CX.VX<wo-,,wV{o r! ?X-VA-V,<?o-,r!#R? wr{?,-rAoV,<Z{X,{:-{A ?!<?r-<AXVw?<o,,?:o{, xr ?wC-X!V?8oor,<:X{wX-r,??CoArrVPXow!-:A:o rA?Xx?:wwo{w,o:?oo{{,-X<A::VoC<wC, !<{{Vw!VVV{!VoC,ArwXcw -  !,V-S!oC!{CV:!-oV&{o-Ar{,--wrS<oC?,owr!!< CCX?-AX:C!{,,{<-w:-C!!!w:T-rXsVX! ?{{VX!{- A!s?X-who C,AoCAXw-:C :qN-AX C V!w:{C !!<? -V:{rV-<Co-3oo-!,oAw-V-{r wC,<Sr<??:,!wA{A{r Vr,??Co-r or :C-:XXrVXC?r:?Ar!: -rb <  :,{ XXrw<-?wf<X{r!?ooXX0w{?<o!,-C,X^wX8w -onX!VAG!o-,A:C{?AX!<? -X,bw <rC?<AwoVC!<wGI?-Cr X!X:<Vw r!-X{<w<<o:<?--{XZVX<w<<{;X:r-<!C:A-wA<NVA!-roAAA{! rV{?r!-?oXVr<.oXArC!{, ?ro?--0AXVw?--+,?:o{r mrX:?C- ,Vw.oor,W:X{w -r,w?{rArVDfXow!-wo{?oor ?3CXAww-q,C:!ow,f?XXrV<-CoA?wo}r-u,?:w-{X,r:<oC{AtVo<  -!X:?-CXrr7<X-rAVw,hV o!A:a-XXw!x:VC?AFwrjV X!w?-{XXAVo< ClA{ww{- ,,w:,-rXrVX?<o-,,w?O-oo!J:<-wXXV,<?ooA,wV{X or-:X-?AoVr??,X,ww!{,o<ro?r-#Xo<wD-C?,?wr{r LrX:rAAA,VC}ooC,n:X{woe!D??-,Arr:+Xow!-wX;!Xo!:?(CoAww-#,o?, :r{<XX!<<-CXA?Vo?Yos!X:w{?X,r:<o-,XAwXRw -!-:?-oXr!?<-Cw,{w,+C o!r:t-XV<V-<,C?,-wrk< X,ro!-,X?Vo<-Cd,Xww<-oV!??o-rXxVX??o-X,wo{o r!x?X-wX-V,:?C!,rwt{X wr-:o-? oVX<GoX,w:-{,o:ro:,{VAXVV(-oo,?:o{rC_!w?wC{A,V:joo{,Uwo9 X-rX??CCArVgyXCr,X:,{VXorA?2CXAwrD<:o?,R:r{VXXrw<--XAAwox os,{:w--X,!w?oCrArwX<< -!,:?{-X,r)?<CwAXw,N? o,,:o-XXoV-?XC?,owr<?!X!w:!-, <Vo<rCaAoYw{-o?!?:r-rXkVX?r<r,,wC{o C!q?X-w dr!<?C,,rV:{X wr-:X{rAor:<foo,w:-{, ?,!?r-<AXr<d-oX,?wo5, krX?w-?A,V:LoorAB:X{wX-rA??CoArVMTXow!-wo{?Xorr??-uAww-v,}Vo?X,V<<!oA<{C,A?wo(rou!X?w?CXXrV<oCrAQ ,rA:V!ArV<{CAA:wCk!r<,!%:Aw{C,D-Xow<wrHA?,C)A2w,xV?C{C-?oA <,C!,Xww{-K,C-,CV{#Voo,!CqA:w?{o r oAAw!{{owr?:,-! AV{?r!b:<-?AoVrV::?-V eVA<V-0, V?A <,ro{J-?:!4w?,XX?r--A,V?+oD-{VX!VV<oC!, w5-, {!A:,o-AArw?pr!3o{?XA,-V?o<r !V{<,:w{{ {!o<&VAV,d! -!!-_Vw?w CV{oJ,Hro?!,:?-o<Co<,:w,,{,,{r?,{Vw<?V{,Ao<AAVA^aoC-r rX ,X!XwrM<rC.,XX V{?VC!?CwX {r <w,XrVX-:X !VwL{N: Cr<,X<{wwwJ?, wr-?,{w:VVr<yoXAr:-{, ?,o:r-(AXVwP-o,,A:o<r {rX?wC-A,V?<worX*w?{wX-r,??CoA{VJ?XC=!-:,{?Xorr? CXXrrrz,o:!o:!{8XXrw:--CA?wC}ro<!X:!-- X!A<oC,AFV!xw -!,ww{rXrr:<XC-,-w,}?o-, :+--Xwr:<,C?,oV,m, X!A?-{wX?Vo<r-?,-wwBw ,,8?o-rXQro?Xo-,{w?x? r!D?X{r  V,<XooAAw({X w,K-,-?XVVr<?oX,w:-qX!?ro:K-}XXVw3-o,Aw{!{r  rX:VC-A,V?<-o ,4wr{wo?r,??CoX,VC0XC<!-ww{?Xorr?5-XAww{G,o{!o:,{L X!,<-C,A?wCJro<!Xwr{?X,r?<o-VAfwXzwC_,.:?-CXrrw<XCw,-w,X{ o!r:9-oXwV{<,-w?Vwr3q X,r?--,X?!o<CCe,Xww{- ,!A?o+rXrVX<wo-,,w?Dw rA8?C-wA-V,<?oo,{w8<Xowr-?,-?AoVr< oXArV,{, :ro?!-qAXVw?-C?,?:C{r <rX?!C-XXrA#oo,,&w!{wX-r,:w-wArV:%Xo-!-:,{? -!??yC-AwV:3,o?!ow,{XXXrA<--wA?woprC?,,:w{wX,!g<oCrAIVo<? -!{:?{?Xrr_<X-rXAw,_X o,A:1-XXw!2C,C?AVwrp? X!w?-{Xr?Vo?HC(AXww{- ,,w!w-rX VX?Vo-,,w?I-o!!=:r-w ?V,<?ooA,VV{Xo<r-:w-?AoVr<hC{,w:{{, {ro?,-bXXrrf-o,,?:C{r <rX?w-XA,V?3oo!,4:X{wX-r,??CoXXVY2Xow,Ww:{?XorrrowA{!X{!w<?-,A!rAL{Cr?5C A?wofr?-C{X -{V V<Xr rr{, Xr!-!X:r-oXrriA<:V{! o=:oV-{eA-A ,{rorA<,C!rEXo2!w,X:{ !Ao<!C {w,QC-X,!:!CXwX?r:<wo-,,,Vrw<!-?, w!<? C,woC< !ww,{?<C???oVXV,<roX,w:-: {,C-,!wC{{VV<!w<V : ;Xw,<,r:C{{:o CVoV?wo<!X--rX:?CoArVyV?:A- AArp< o{,w?o^: C!o<?CCX,rwX oA-C?:!?<::w?C ,:V:A{ ?V  VA:: !w? {!,:?-oXrr1<XowoCwA{bfXwVo{wrAVwCC!CwA:wr5c XowAXwA< o<,,w:,ow,{- ,!?A:w!mC {<VN<  !V?{-AX:{C?:A-,r<?oo,rV?A: wr-?,{VAoVr<}-XX=:-{, ?ro?r{?AX!w??o,,?:o{r zr ?w{-X{V?joor,O:X{oX-,,:-CoArV}cXow, :,Gw wrr?<CXA-w-_,o?Ao:X{7X rw<{C,Awwo<,C!!X:r-- wr?<oCrX?V:)wo<!,:,-oXrrg?o-o,-wo^? {!r:D-X rr!<,C!,oV!be X!ww.s:X?r?<rC-,Xww{-oX,1?o-CXBV{<wo-,,VwEX r!,?X{:A-V,<?C-wrw0B: w!-?,-?Aor,CGoX,-:-H< ?ro?r{?VVVw<Ao,,C:o{r s!o:-C-XwV?<:or,5:Xjro<r,?{CoX!V;;Xow!-w:{?XCrr?CCXArw-<,o-!o:r{. wrw<{C,XwrVJro5!X:,--X,r??-C{Akw YwC?!,:?-oXrSC<XCw,-wXD? C!rw?,:XwV-<,-V,owr3KCX!o?--,X?Vo<r-?,Xrw<> ,!??o-rXBV <w--A{w?{o r!%?X-oA-!,?,oo,rwp{X w! ?,{wXVVr<<oX,-:-{, ?,o:<-zA Vw7{o,,w:o=,o!rX?rC-XwV?boorA?w{{w <r,?,CoArV6<oC!!-:o{?X{rr?ICXXrrVj,o!!ow!{sXXrw:S{wA?V?xro-!X:w-- XrC<oCCASw{kw -!,ww-{Xrr,<X-:,-w,}?o-:r:q{:Xwr-<,C?,oV,oF X!-?-{<X?Vo<r-?C?wwPA ,!C?o-rXpro?Co-Aww?&: r!8?X{rX!V,<{ooA!wG{X wr-:--?ACVr<CoX,r:-^,o-ro?r-8XwVwp{o,,?w?{r irX?VC-A,V?Toor,e:XD,X-r,??C-ACVm*Xowo-XwV:?Vo A?wCAVS? oAVV CC,o4 ??<{:X-rrw?rrVw,ArXoXA{-,!,?;{!,<G?< r::? {:r-{X:{<C{,w< -,r:N-XXwXr,C:{-C wr{?:C,,aV!<<CIrr:<{o ,{{<:--:rrrVA !owM-,XwC{o r!*!rV:;< A!-<o{?X<!:<A-F?X-,AoVr<SJCoX kVA<{C<?,-:AXVwk-:r-! :{, ArX?wC-C  XrC:,-<ACr,<:CX?:{,a?w?XA<:VoAA 0X-rX?LCXAwoVrA? {I:!?:CCA!V<0 oV<{wVo< ,-!<?-,r{or!oCbw VXA{AV ?o:Aww{CACrA?w,x? oCCA<V!7AV{r- :XAorC!X,r:rC-A-:<,ow?{VX:<,{{,!:?o-rXLVX<wo-!,,<{o-w!q?X-w b{<<?oo,rV<{X wr-w,{wAoVr<loX,w:{{,C?!w?r-)AXVwG-C=,?Vo<: }rX?wC-A,VC(o-rA,:X{wX-r,??-?Arr?<Vow!{:,{ Xorr?+{XA,w-vAo?!C:r{XXX!r:VC,Awwo;Cof!X:wSI wr?<{CrX:wXew -,X: -oXXrM?ACw,-w,<wC<!r:V-XXAV-<,C?A-w 8%of!w:&-,X?Vo?,C{,Xw {-o,!??o-r ?V <wCr,,w-{o r!b:oXwA-r<<?->,rwq{Xor?-?,-oAoVA<(oX,wV> : ?!!?r{?AXVw&-CX,C:oT? Tr-?wC-A,rw??or,C:X{AX-r,??CoXVV9n ow, :,{wXo!r:<CXAww-<<o?!C:rW?o<rw<-C,A{wofro#,o:,--XAr??XCrAzwXRwr !,:?-oX,rd< CwX8-<F? o!rw<-XXwV-:,-r,owr61 X!w?{-,o?!<<rC4,Xww{-o+!?wo=pXkVX<wo-,,wC{oCr!??X-wA-V,<?C?,rV?#r wr{?,- AoVr<J-X,A:-{A ?rC?r-XAXrr?Vo,,w:o{C vrX?w{nA V?_{orA::X{wX-!X?-CoAXV=<Aow!-:,PwoVrr?VCXAAw-4,o?,-w!{k yrw?tC,A?wo<,C !X: -- ,r?<oCrX?VAjwor!,:--oXrrz?oAw,-V<*?C+!r:s-X r<-<,Co,owAxZ X!wwz:}X?r!<r-?,Xww{-oX!r?o{?XGV-<wo-,,VwaX r!C?X-AA-V,<?ooArws{  w! ?,-wAorr<!oX,w:-3< ?rC?r-+A VwH-o,,::o{r vrX?wC-A,V:Zoor,g:o{XX-r,???{{ owVV?A{!:A{!Xorr?_CX{rw-PAo?!o:r{4XX,w:<C,A:wo*!oP! :w-- :r?<{CrA1wXuw -!,:C-oX!r8<CCw,{w,6?o !r:d-XXVV-<,C?,owrY) X,A?--,X?V-<XCl,Xww!V<AC XF-!tr<VswrC?4Z{::!w!<-CA C! ,?o ow,!{{ VC AM{?<<!:r{{kA,rw!{, ?rorAw,{ orr{? {rX<r, <{w{ ?,:r:oAAVH {: wooCV:?<{XorHroAor,A:,{?Xo ?,{:C{V XV,?-CCX{VV<orV:?r oA6oA?< Rr{w{g ,r?<oCrC, {!<<{-rX<VVIX ?,Aw:I?A,r:?--X:?--XwV-<,:A-C :rV  X!r<< CV,{wAX:oAwV- :r,!ho,<X{-<VwCa,-w?{o r :!LVr{{oV!!oC w!  -{:<X{Xr9CoV,<:oX,w:-rr<!-:?!ro{?: oCA{?!? :V ?!<?wC-A,X?!,?!{AA{rr?<rA{{CVVCAm!CX<w(!!{:wXoAN<:A-, C -,<!C? {o,rw:oAV-,<m Ir--!X:w-- X{ <oCrA8VVsw -!,V?{XXrrN<XCw,-VX_?Co,-:L-XXwV-<,CX,orr<: X!w?--,X?r<<r{pA{ww{- ,!??o{gXxro?+o-,Aw?3X r!v?XHw wV,<:oo,!weDX w,N:{-?A-Vr<{oX,w:-*X :ro?A-JX!Vwm-o,Awwr{r wrX?CC-A,V?<-oo,K:{{wo?r,??CoX,Vr8XoX!-w {?Xorr:?C-AwVVR,C!!o:r{T orV<--LA?w-2rob!XwrX-X,r <o-!A_wXBwCm:,:?{rXrr:<XCw,-VX C o,<:u--XwV-<,-wAwwr6o X!X?--,X?r-<!C0A!wwQV ,!??o-rX{VX<Vo-AVw?{- r,p?o-wA-V,?Ooo,!wiDoo!r-?,-?ACVr<>oXArVV{, :ro:?-)AXVwJ-!V,?:o{r ?rX?VC-XX- boor,awV{wX-r,w?{wArVDDXow!-wX{?oo,??lCXAww-q,oX!oVr{XXXrw<-C,A?V<_r-9, :w--X,r?<o-JA(VouC -!A:?{XXrr+<X{wAAw,c: o!!:8{XXw!d?{C?,-wr4{ X!w?-{X oVo<ACIA!ww{- ,,w:,-rXwVX<Co-,,w?Z-ow!Z?{-w ?V,<?ooA,VX{X Xr-: -?AoVr??CX,wwV{,o!ro?r-mXorXD-CQ,?:-{r &rX:rA-A,V yoC!,S:X{wo2?,??-rArV:#Xow!-wX:XXo!<?bC-Aww-U,Cw,!:r{oXXrX<-C,A?V-<,oQ,!:w{VX,r?<oCrXCwX3V -,V:?--Xr!>?XCw,-w,<M o!!:+-XXVV-<,C?,CwruN X!w?--,X?!^<rC%,XwVVC:X!<w XaA{wAV:C),-w?{o r :!RVr{{oV!!oC< wroo{:!{{rwMCXV! !{!rrACA6r,-orV-?X:VwO-o,oVXwV!??o ,!V?{Cow;-oA,j:X{w<ooCAACCw:,-{r,:? P{{?-or!<:,VoC,-,,o!?:{r{?X-rw<-C,{AXC!:?V! C < ,Xo< w,o<s=ATV{oV<A!,o JVA,VA?A.w{i? o!r,cVr}VC!!Cww{{w,#w X!w?-V{R:oV,XC<,Xww{- ,!??oCrC{V -RrVA{X?{ <,.?rX-VA-<VACXo!?A,V,!?!u::-?AoVrVo:A-!A{rwu?C,,!VA{{or<QC,,?:o{r{,C{A<:{Uro<!V?XC?XAr:?? ,,:w-tXV<!V,{VA!!-CowC?V-C o!,<: {VX{rAo:-ArwwoC,A?wo<,VA!X:w-- <r?<oCr ^VClw -!,:?-o ?r3:XC!,-w,I? o!rw<-Xow!?<,C?,owr*U {!ww-lwX?Vo<rCZ,XVr{-oX,A?o-!XaVo<wo-,,r?&- r!<?X-VA-V-<?C-ACw#{o w!C?,-?Aor,?,oX,!:-{{ ?ro?r{? rVw<?o,,X:o{r *!o::C-ACV?xCor,l:Xyr Cr,?,CoXrVnbXowAOwC{? :rr?wCXAww-<XoA!o:-{TXCrw<-C,Xw2o+roA!Xw?--X,r??-ArA4VwZwoA!,:?-o ,< <XC{,-V?a? o!rw?{-XwrX<,-V,owr)loo,A?-{VX?VC<rCl,Xwwhr ,!:?o{:X&Vo<wC-X?w?{o r!??X-VA-rX?Voo,rwqG! wr-?,{wACVr<<oXA,:-{, ?roC:-3AXVw<io,,::o*,wArX?wC-X<V?MoorXZwo{wX-r,??CoX?Vi?XCw!-:,{?Xorr:<CX wV,2,o?!o:r{bX{rw:--oA?wofroj!Xwr-- XrC<oC!A_woLw -!,V?{{Xrr<<XCV,-w-z?o-,C:m-oXwrC<,C?,oV,1C X!!?--{X?Vo<r-?A:wwU? ,!X?o-rXkro?Ao-,Cw?{C r!f?X{r rV,<,ooArwT{X w,Mw?-?X:Vr<woX,w:-LX {ro?--}ACVwR-o,Aw{o{r ArX:?C-A,V?<-,r,sww{w Ar,??CoX,A,BXo{!-w?{?Xorr:?{<AwVXR,CV!o:r{G orX<--VA?wCDroH!X:w{oX,r:<o-:Afwo#wo-,V:?-oXrr?<XCV,-w,<< o!r:=- XwV-<,C?,owruto-!w?--,X:<ro,=-rA,D-<mC m?C<!Aw?:A:o{  {:   ,! ?X-wA-Xw,<?{-!XowX?mo{X<w!i-V,<AoX,w:-: <XoCA,w<{Co,!::X,:?{ocC:r A<!A<r<qu-oX,B:X{w?VoA, V_A!rrA<{!:CA?? :oXr??C-Aww-n,?ACCX:VVX rw<-C,A?woar = A:V<{Ao? A C!o:{ w:o(! :?-oXro-!{w ,{! :V-{XAr:<C!!AC<AV?o,r{F?A?o?Xo?rXwr?<rC.,X,!ww?XC:AAw X<- !<.ArA:!V-f<?-?  wVro,:?a3,r-! X VoXwo?XAo-,{ooXoww8{{ ?ro?r:FIr V,!?C{wX{{,o2rX?wC--io!!A?!--XAVC<? XA<w YXXfr :r{?:A?A r, oNV!,<:Cw!o?XX:r{0XX!r !C,A?wof-o1!X:wc-X-r?<oCrAywX<r -A,:w-oXrrU<XCwA<w,?? -!r:g-XXwV-<oC?Xow,7^ X!w?--, VVo?,-:,XwV{-or!??o-ro(rC<wo{,,w:{oo<!g:o{ A-VX<?C:,rwz{Xor!!?,-VAor!<moX,wVSMX ?!b?r{gAXVwq-CXAo:o{  M!-?wC-A,rw<ror,r:X{VX-r,??--AoV%<<ow,,:,{?Xo!,:wCXAow-<!o?!o:r.?rXrw?!C,A wosro.,o{w-- ?r??<CrAUwX<r!A!,:C-oX,r%<XCwX8VoM?o,!r:C-XXwV-?XCV,oV:1=o-!w?--,X?!A<rC<,XV<{- X!?:o-oXvVX<wCo,,w:{oo,,C?X-wA-V-<?oo,rV?<< wr{?,--AoVr<poX:<:-{, ?r-?r-<AXrrX!o,,?:o{- GrX?w{-XAV?5oor,z:XurX-,,?!CoArVv=Xow,<:,<?  rr?2CXAww-eoo?AoV:{dXXrw<-C,XVwo<,ow!X:V-- rr?<oCr YVrOw {!,::-o <rt?o- ,-wX8?o:!r:0-X rV{<,CV,oV!;I X!wwx{:X?r*<r-9,Xww{-oX,V?o- XZr-<wo-,,Vw4X r!r?X-VA-V,<?C-AXwNW< w!,?,-?Aor,< oX,o:-_! ?ro?r{?VXVw<!o,, :o{r H!o-wC-X?V?<<or,s:Xnr{rr,?CCoA,VU4XowA_:-{? ,rr?CCXAww-<XC?!ow:{h -rw<-C,A?r<uro<!Xw<--XXr??oCAAzwXLwoo!,::-oXr!w<XCw,-wAK? o!r:g-XXwV-?oC?,owr5<E-ACws?,?C<A!Y,-, !!:<- XVV{<A!:AA<V?w-A!V o: A{ :?wA{V<!o-{,rCC-V<VXo?A<,! :X?{<Ak? ? r w!!?r-.AXXn!C? -:X,wr<oo ACw:jXVw<:or,z:Xww<XoAA w<t,o:( ?<<CUo <<A:<&{<AArV!Y,o?!o!AV,z Cr!{: 6r <!,o<!X:w--X,r?<ooro{w :?<<-BA?ACAX<oVACV- -!Cr! -:{ CAr:rF< C?,owrr-<{- :e-oX?Vo<r:!-  <r: X!,?o-rX_ACVXwI-AX{r< !-ow!-,:-rAXC:{www?{- wr-?,VA{C {,wooAw:-{, ? wA wC{ o?!C:<-r,-rV<{C-!w:{OXorYCr-5o AA:w{ ,or<oA!{?,w?{C-b:!-VmXr?7T,Aww-k,Cw<V:r{zXX!?<-C,A?ro<oo_!X:w--X,rA<o{rXVwXWw -!,:?{?Xr,z::Cw,-w,F? o!{:W)XXAV-<,C?,owr<? X,r:?-,X:Vo?VCU,Xww<-o-!??C-rX<VX?<o-AXVA{o ,!O:--wA-V,?w-V,rw:{X !r-?,-?X-rA<mo-,wV<{, ?ro:,-VAXVA5-C:,?:o{ro?,<?w-wA,Vrfoor,uwoc:X-r{??-wArVWWXCrAw:,{XXor ?=CXAwrSo,o?,V:r{XXXrw<--XV?wo<Roc! :w--X,!wC!CrA wX<y -!,:?{-o<rm?rCwA-w,F? o,,:V-X <V-?:C?,owrmSo<!w?{-,X{Vo<,CSAXV {- ,!?: -rX<VX?r-A,,w?{oo!!W?X-w >r,<?oC,rw?{X wr-?,,{AoVr<joo,w:{{,ow7V?r-_AXr?)-o,,?Vo{o _rX?wC-A,VA1o-rAC:X{wX-r,??-?Ar!0?:ow!-:,{?Xor{?z{XAVw-a,o?!o:rt?XX!r:eC,A:wo<Vo3!X:wE- ,r?<CCrA<wX<< -,XwA-oX,rR?-Cw,-w,<woo!r::-XX!V-<,C?A-r:qi -!ww<-,X?Vo?,C:,XwA{-o:!??o-r ?Vo<wCw,,wr{o r!5:o-CA-V{<?Cw,rwO{Xor!C?,-XAoV <zoX,wVt , ?!V?r-XAXVw4-CXw?:oIY Br ?wC-A,rwVwor, :XI9X-r,??--AAV4<row,-:,{?Xo!,:oCXX<w-<:o?!o:r{*o!rw<{C,A{wo7,o1,X: --X,r?? CrA<wXHwow!,:?-oX!r><XCw,-w,0? o,X:*-XXwV{C?!CX-rr?<,:o!ro-A!!Ah:oAWorr?!H!r!:<AV{!?CAAr?X{X,u{- {!c?X-w-<oy!::--!X:r-<A-c?X-CAoVr<7<r{:X<VA<- oA?w<<: A,8oA,,o-!V?{<!{ C-C,V::{{A :rC?!-<: r<C-ACVSUXowo-XwV:?Vo A?wCArVwQ,o?!o!A:r<ooV, :CA:wrC CoAXCo_ww-??<--rAHwXfwmr-CA{wC<wo{,::,-z !!<:8orA<Vo<,V{s!VX,VXVVr V<{-C-AX?Vo<rCg,Xww--{!!:,<V_ArAX{{CX<X,?{- X!F?X-wUV A!{:<,!A <<w wCVC!A- <w<?o-,w:-{,?AoC,{VwA w:Aro<-<A?{<V XA?V<3o!:{o ,!!:?A:: gr ??CoAr -r{: !-rr{?Xorr:?!:Aww-M,C<!o:r{#oXrV<-C,A?wo6ro,!XVw{AX,r?<oCrAkw{swC-A::?-oXrrR<XC,,-r,yA o!r:2-XXwrA<,-w,{wrO< X!C?--,X?!o:<Ci, ww{{ ,,r?o{, !VX<ro-Arw?{o r,??C-wX<V,<,oo,rwJYo Vr-?o-?XrVr<)oXArVr{, !ro:A-yAXVw?yC!,?w?{r <rX?wC-XXV-NooC,#wr{wX-r,:w-wArV,mXCw!-:,{? -?r?%-:AwV t,o?!ow, 6XXr-<-C A?woirC?:V:w{AX,!w<oCrAxVoOr -,w:?--XrrJ<X-rA{w,K{ o,A:T-XXwV-??C?,CwrLC X!r?-{,X Vo<rCFA:ww{{ ,,w:,-rX0VX?Vo-,,w?P-C?!}? -wXVV,<?oo,r-C{X wr-?X-?ACVr??r:,w:-{,o<ro?r-L XV{=-o,,?:o{r ,rXww{<A,V?Loor,p:{{wo-!{??CoArVf%Xo,!-V,MrXorr?yCXAwVAa,CwAV:r{<XXrC<-C,A?ro<Con! :w-{X,!r<o-,X!wXfr -,r:?-oXr!?:wCwA<w,b, o!r:H{o :V-<oC?Arwr_E X,rwr-,X!Vo?AC},Xww<eor!?:?-rX<VX<wo-AXw!{o C!Y:r-wA-V,?wC{,rw,{Xowr-?,-?X-<r<#C:,ww {, ?ro:,XiAXV-Z-o ,?:o{ro? ??w-AA,rw(oor,uwo{ X-!w??C-ArVYUXCrAW:,{{Xo!A?LCXAww-Doo?!C:r{CXXrr<--,X:wo.roU,::w-{X,r??ACrAdwXIV -!,:?-oXrrL<X-,,-w,S? -!A:}-XXwoo!CwA,C,,rVoXVwX<CrA<A <!<?-{VwC-? r.< XVX< {C,C:?,C:r w? U? V!oCr-:?{ wV{# A r!-?,-?AoA-,V:!-VXor!< Cn!,w{7Ao,V-?A{w F{!A-,r!wV--!r-V ,w,<AoCC<oo,rC<V{-,-K :V? +V{<o-?{,,<,ArVwJ,o?!o!A:r<ooV, :CA:wCo:Xw:X{C <{XX_<-CXA#wX}w?VCAA{V<X!A:wCZ!o<! :V,{ V:?--XwV-<,wA-CX{!w o! ?--,X?Xo,?:<9:XA!O? !w:!-rXmVXrq:C- X:r,4rCo, VCz:oX<:<r,C? {AAuA,o-??ACVr<BoX,w:-{,X?X ?,-AAXVwF-4 -XACr,<<oCA,w:GXV:w- ?ooC X!VX{Cr?CoowV%iXowA4C<{?Xorr?oCXAww-?,C:!o:r{iXXrw?CC, ?V<_ro7!X:w-- ,r?:o-VABwX+w -!,wV-oorr <XCw,-w,}?o?!rw?{XXwV{<,Co,owr.RCX,{?--AX?VC<rC<,XVr<V ,!w?o-XXaVX<w-uA{w?{{ r,w?X-wA-rX?Xoo,Xw6&  wr-?,{wXTVr<VoX,A:-{, ?!-w7-3XYVw<ro,,?:oJ, CrX? C-A V?PoorA?ww{w rr,?ACoArVY<o,w!-w<{? -rr?=CXXrU-z,oo!o:{{7XXrw:yA:A?V!Rro?!X:w-- Xro<o-?ApVVRw -!,ww-CXrrC<XCA,-w,y? o!,:j- Xwr <,Cw,oVr<, X!w?-{?X?VC<r-?AAww{- ,,E?o-rXjro??o-,Aw?PA r!=?X-ww V,<?oo,,wL{  w,vo<-?AoVr<ooX,w:-<,o ro?r-1AXVw<Co,X?w{{r YrX?wC-X,V??oC{,e:X{wX-r,:VCo rVX9Xow!-:,{? ?rr:?{;Aww{N,oo!o:r{PoXrr<-CAA?wCpro<!XwrlVX,rw<oCXA3wXuwC%,6:?-{Xr!w<XCw,-VX<< o!X:F{ XwV-<,-wA!wrqV X!A?--,X?r-?{CvA5wwjr ,!??o{, XVX< o-, w?{o r,?wr-wXrV,<Aoo,rwdEo!wr-:<-?X-Vr<%oXAr{-{, oro?{-FAXVw?_<p,?w!{r ?rX?wC-XXVoOoC?,vwV{wX-r,:w-AArVCMXoA!-:,{?Xo!w?pC AwV (,ow!owr{XXXrw<--?A?wC}roW,>:w--X,r:<oCrA*wXGw -!,wr-oXrr2<oC,,-w,;?::C!AAV-XVA<w WV {!A::,C :?{o<,owQ V{,CA?, C A,AA{Co {UXo- ro!w:<:?ArrwAAwV,w8C<o-,{w#{X w <Aqw:&- !!::--A 9{X Aro?r-g-Xoxr{w<-!X-rA <A<:,vW!,A?CCrro9:o{!X-r,??wX{ o!6 <uA!!dA?:<AVXA<XAV?!{:A{A wVV:w-Xw?Y-:A?wo7rIo-AA!w{<w ?,,:!fAX{!r {!,:?-oXrrK<XowoCwA}Cw?TrI{V:<oo.VrC:!<{:--AAw?!XV,rzVC:?:raXf:worV---X-, UVX<wo-Cl !rA<!C-AAwC*?XX,<: {XAcV ?r-??X-rAoVr<H:<-VX VC w!??r-qAXA!Vw:X-:XAV  < Cr*{OA,Aor?:{:-:X??X-r,??--?{VDuXowAY:,{?Xo,r:GCXAww-&,o?,::r<MXCrw<-C,A?wo<?o*AXwy--X,r?<oCrArwX?wCw!,:?-oXrr;? CwXjV7M? C!rw:-XXwV-:,-C,ow!Ze  !w:!-, w!:<rC?,Xw{{- ,!?:-c<X^VC<wC,,,w?{oo,!V?X-,A-r7<?oo,rV?DV w!:?,-VAoVr<sCoX<:-{- ?,U?r-}AXrr?ro,,A:o{X ;rX?w{qX V?<worAI:X{wX-!X-?CoA{V_<!ow!-:,Rwrorr?XCXX?w-I,o?,-{<{3 Vrw?:C,A?wo<,C<!XwQ-- !r?<oCrX?r0%wo !,:V-oXrr.<X{<,-wAe?oA!r:?-X wr?<,C?,oVAPL  !wws{!X?Vo<rC<,Xww{-oX!,?o-!XUVo<wo-,,w?XA r!_?X-rA-VA<?C-<{wQ{X w,(?,-?Ao!r<XoX,w:-{, ?!:?r0dX-VwI-o,,?:oD? j,X?!C-A,V?Ooor,r:X<wowr,??CoArVO< owAc:{{?XCrr::CXAww-?,oA!o:!{&X rw?!C,Xwr:7ro?!X:{--X,r??--{AgwC#wo,!,:?-o ,r!<XC,,-V^a? o!rw?{?Xwr:<,CV,owrHSoo,w?---X?!4<rC>,XVr<: ,!A?o-XX)VX<w-f,{w?yw r,)?X-wA-rXC?oo,{wS;! wr-?,{wVoVr<XoXA?:-{, ?!-r--bXVVw<:o,,?:o8, wrX:LC-X!V?9oorA?w {w  r,?VCoArVT3Xo,!-:A{? Arr??CXXwrVl,o?!owA{yX rw<--oA?wopro<!X:w--X,r?<oCrXwwXWw -!AV:Cr-wrY!:- :rO,cw {!r:n-X<?o:,{C:,owrgu X!w?-C,-<VC,<rAA}-w!t!XoXrX-!,{,-:yXCwV!rVV!w!?:<-wA-V,r?:,-! AV{?r-<?X{?AoVr<z<?{AX VA?FC ,{ww-oo:!C:oC?ACr,?wro?XC-A,V?w{=o{?A r<<:rAVVt{oA,::C{!V<!!{:r!!?{,!AAVXX,_}=!CX?X-A--:,?A{hw, P!o1C?rA--VV rAw<wA<<wrw{!!,<o- AVA{< A---,<e?Xr!V<{XAXV<Hor-C,o8<<<L :w:O-oX?Vo<r:!-  <r: Ak V,CwC{ro,oV:o,wwq> r!m?XV {{o<,ro-,{w({X w <A^w:(- !!::--A 8{X Cro?r-S-ro:!<?A--,or?<<-:,AVfA,,+4oor,gwo,CX-r,??-oArVLHX-wA :,{?Xorr?G-xAwr-<?o?!o:r{1XX!,<-{,ACwoGros!X:wh<X,,??XCrAYwX}w -!{:?{- {r+< CwArw,y? oAr::-XXVV-<AC?,-wr<?C<!w:J-, :Vo<rCNAorJ{-  !?: -rXeVX?r-r,,wr{o !!5?X-w +!:<?C<,rw {X wr-:X--AoVo<vo-,w:-{,ow!!?r-!AXr<.-o,,?w-{! +!??w-XA,V?yoC,wq:X{CX-r ??CoArr?oXow,,:,{!Xorr?p-ow{w-<:o?,X:r{mXX!r?XC,A-wo<fox!X:wRIowr??ACrA wXtw -!,w(-oX!r.?!CwA)w,<?or!r:I-XXoV-<AC?A-woG} X!wws-,X?Vo?,C!,XwV{-o<!??o-rXNK!<wo-,,ww{o !!n:o!CA-V,<?Co,rwj{XCw!-?,-?AoVr<gCD,wV-<w ?ro?r-iAXr,9--,,C:o{r jrX?w{<A,!?<Vor,u:X{wX-r{??--XVV2i ow,r:,{?Xo,r?:CXAVw-#Ao?!-:rJ?o<rw?WC,X:woxro6,ow?--X r?? CrAWwX<rCr!,:r-oX!rb<XCwXEw-n?o<!r: -XXwV-?X- ,owo*D -!w?--, wrA<rC!,XV<{- ,!?:--{Xjr?<wCX,,w?{oo,:+?X-CA-V <?oo,rV? X w!,?,-!AoVr<SCooo:-z: ?!X?r-5AXrr?:o,,-:o&f 4rX?w{6A-V?<Aor, :X{wX-r,? CoA!VD<!ow,+:,g?  rr?tCXAow-.Ao?!o:A{FXXrw<{C,A?woRroQ!X:w}?X,r?<oC!A6wXyw -!,:?Co-Vr<:w!o<Xo!?<CrC{!7-oX{V-<,C?C, Vr:< -a!-Vwg:CV! w?,oVw{- ,!?!wV LC  ,?:C{<Xrw-?VC{A-:w{{oX,ro-,{wT{X w <Aaw:I- !!::--A M{ACC{::!6pX{V:{Cb!,:<rV-:!?,,A-<-_A&}C oo,-:{: wAr,VAXA!Arr,X<<C ?e,n{?w??-<Aww-I,<?-,A!rAf{CrA<CXArwo9roj{<AVV!<or:?,:#C,qXro:#-A{?--XArE<XCw{oXC!A CXAr:<CC!A<w XVo w!? w<,Vw-{CX<w CVC<- w:VX!r<9Vw?{V-V rC<d-!,<C-V {--A-rX?V,<?oo-CX<r!<Ar{?A<?:XA!V:,A-f{-{X ,ro?r-vCCAX,x?A-{X<{rC-rX?wC-XX- >oor,#wo{wX-r,w?{!ArVIsXow!-w?{?oorX?SCXAww-P,oV!oVr*XXXrw<-C,A?V<Rr-6,&:w--X,r?<oCXASVo<! -!A:?jTXrr.<X{wXAw,&: o!!:j{!Xw!*?{C?,-wrno X!w?-{XX!Vo<ACl,oww{- ,,w:C-rXwVX?!o-,,w?^-oV!l?{-wX{V,<?ooA,VX{X Xr-:,-?AoVr??o-,wwV{, ,ro?r-}Xor{q-C^,?ww{r ^rX:rA-A,V poo!,>:X{woc?,??-rArV!_Xow!-wXXCXo!<?Q-AAww-y,Cw,C:r{oXXrC<-C,A?V-3 oe,!:w{{X,r?<oCrX wXxV -,V:?--Xr!8:rCw,-w,<r o!!:h{o AV-<,C?A!wr(Y X,rw<-,X:Vo?wC8,Xww{-rV!??o-rX?VX<Vo-AXC {o r!f:o-wA-V,:?-,,rwl{X wr-:?-? oV-<*oX,w:-{, Vrowr- AXVwQ-o,,?w<{rCQ!v?wC-A,V?0ooX,vwo{CX-rA??{tArV6pX-wAV:,{:Xor!?i-!Awr)<{o?!-:r{oXXrw<--XXVwo4AoP!o:w--X,!w?oCrAwwX<! -!,:?{- -r9<{CwA{w,2? o,,ww-XXXV-?,C?,owr<?C:!w:V-,X,Vo<rC_AoV{{-oM!?:w-rXYVX?r,-,,w {o !!W?X-w J<,<?Cr,rw!{X wr-:X?XAor<<ECA,w:-{,ow,Z?r-oAXVCL-o,,?w-J- H!!?w-{A,V?8oorA :X{VX-!V??C-Arrq?:ow!-:,&rXor!?UCXXrw-v,o?!C:r{aXXrw<-C,A?V:dro*!X:r{,X,r?<o<C{V -V!?:-XX,VVUAoV<o-:,-w,f??:C XwVonVCV,V:!GzX!!w< CrAXwCXwrr<rC^,XX:VC?rC:AAw +:  ,_:X,Xwr{o r!gA<wVY  C<wC-,rwk{Xg<o{AXwC.<oX,Y:r-VX<VClVC<A,Vr6: !!:oX,C:o{r WCC,AV?5X !rC?X-{X,r0?!rX:KCoArVG!!?V-AACV<?:C,,Aw-{AX{rX?--<:rZVXXrw<--Xwrwoyro(!o:w--X,!w?wCrA<wX+, -!,:?-o -rB<XCwA=w,jw oArwA-XXVV-<,C?,{wr<?C<!w:f-,X,Vo<rCTA+Vo{- X!?:w-rX<VX<Vo-,o-?{o r!&:?-wA{V,?w?Y,rw?{X  r-?,-?X-XX<qoC,ww?{, ?rowr:{AXV!3-o ,?:C{ro?!A?w-:A,V!+oor,I:X8,X-r ??-<ArV?xXow,C:,{rXor,?ZCXAww-<Ho?,<:r{(XXrw<-C,X,woyoot!X:w--X,r??sCrAwwXsX -!A:?{?X-rF<-Cw,-w,U: o!,:=-Xw:V-<,C?,{wrN4 X!woC-,X?Vo<!Cd,Xwwa-Cr!??o-rX:VX<,o-,,r{{o r!F? -wA-V,<:oo,rwp{C wr-?,-wX<Vr<%oX{,A{VX<-C<?,-rAXVw9-:X-!XArV?ro{?r-:A,V?Oo:r{?X:r???rA:!CoArV&LXr{!-:X{?Xorr?_CXAwCoY,oV!o:r{mXXrw<-X A?w-NroZ!X:V-- X r<oCAAvw Bw -!,V?{{Xrr:<XC!,-wX+? o!-:E--Xwrv<,C?,owrE- X!!?--XX?V-<rCaX:wwF? ,!??o-rXkr>?Co-,,w?+  r!<?X-,A-Vo ?oo,rwT1A wr{?,{w{RVr<woX,!:-{, ?rowQ-4A{Vw<<o,,?:o{rVCrX?,C-AXV?fCor,z,o{w ?r,?:CoArVUQX!A!-:o{?X-rr?WCXAwX Q,or!o:!{&XXrw<-:<A?V<_roi!X:w--X,!?<oCoAFwX;w -!,:?j!Xrrw<XCw,-w,N? oA?:%--XwV-<,C?,owr8{ X!w?--AX?Vo<rCx,Xww{-oo!??o-rX?rV<wo-,,,-r <AC<Ar:wvX A, :<{,w?n: wr-?,?V}w !,?? -! ?VC?wrCr{<{?X :AC!:C!!X{! !<{XAV- < VrO,w,<:X{wX-r,??Co,r,{( {! <r ?VC{AA{:<AArVV4,o?!o,rVom CC,:wXkVwC<V -,{<w,{rXFwV C!!r,AX,ACAr<CA<rrr<V{oArwK,C,!X7V!Z-oXXV-<,C?o{,o!?< -<A:-AC{wVr {c!C{VV{!r!:,V<:ho XV-<C-A85{- X!z?X-w<V A! wU,!wr,o::-CCV AAoAr<?CX,w:-{,{X-<A:w<O,o:!!?oCwX rV?w X,VVt_oV:?X-?!r{A!:X,V!-<C-AXVhpXow-VAAV{<<r,?:CXAww-!r?!{::!}-orVXCCV!,o: wVo=X,:w--X,!w VCrA_wX<r -!,:?jo !rZ<XCw,-w,EA oArw6-XXwV-<,C?,Cwr?*o{!w?--,X?Vo<,CbXXwr{- ,!??o-r &VX?r-V,,w:{oo<!b?X-w -Vo<?oC,rw<{Xo!r-:X{AAoV,<7Cw,w:-{,ow,r?r-:AXr:U-o,,?w-<: Ir-?w-!A,V?)oC,,?:X{AX-!y??CoArr?<,ow,w:,{{Xorr?l-oX:w-_{o?,C:r{gXX!r?,C,AXwoMXo&!X:wz8r,r??VCrAVwXEw -,X{?-o *rI?rCw,-w,<w!!!r: -X ,V-<,C?A-w *=or!w:<-,X?Vo?,Co,XV<{-oy!??o-rXpV-<wo{,,w{{o ,!#:X{CA-V,<?C!,rw<{Xor!:?,-?Aorw<QoX,wV9u, ?rC?r-rAXVw;-o,?{:o{r Fro?wC{A,rwXVor,#:XMrX-r,??{o ZVBOXow!-:,{AXo,r:ACXAww-D,o?!C:r<G !rw<-C,A?wo=,o.AX:X--X,r?<oCrXywX<ro?!,::-o <rY<XCwX-woW? C!r:<-X !V-?X-A,ow,Wzow!w?--, wrV<rC:,XV:{- ,!?:-{:XsV-<wC!,,w?{oo,,r?X-AA-rk<?oo,rV?<? w!w?,-{AoVr<PCo,,:-{{ ?!C?r-EAXrr??o,,X:o{X xrX?w{UV,V?<Vor,V:X{wX-!X-?CoXMVc<row!-:,aw{wrr? CXX,w-e,o?,-w {O rrw?<C,A?wo<,o:!Xw<-- ur?<oCrAZVryw {!,:{-oX,r=?XCr,-w,#?o!!r:<-XXwrr<,C?,ow!.a X!w?--,X?Vo?OCt,Xwwpm o!??o-r<w {,ow?,Xw:{o r!tVC-VA-V,<?oo,rwY{X w!y:9-?AoVr!w:{{rA{ro< C Aw-?A{VwD-o,{rXVrX<oo{?r-VA,V?po?o{?XAr<RZX{rwC-AoV2bXowo<X!V-< C,V:C Aww-x,o?!o<rV{-Xrr?wC,A?woVw?{--ACVw?<rw?<CrA^wXr!?C-wX<V-X!!=<XCw,-w,rC o!!:G-XXwV-<,{?XAwr)< X!V?-{<X?Vo?CCL,Cww{- ,!r?o-rX:VX<,o-,Aw?{o r,+?{-wX<V,<!oo,Xwb*Xo-r-? -?ACVr<YoX ww,{, Vro?X-vAoVw?U-q,?wx{r !rX?wC- ,VV.ooX,Q:-{w wr,:w-?ArVV;Xoo!-:,{? -!{?1-iAwVry,o?!ow,_oXXr <-C A?wofroq!-:w{?X,rA<oC,A)VX6r -! :?{rXrrw<XCwVCw,3: o!A:f- XwV-wVC?,owrl< X!w?--,X?Vo<r{{,Xww{- X!!?o-rX(X{V,:!{V!w{C r!T?X-wA-V,=?K ,,V?{X wr-!9w e: -!o::- Xrro{rC<ArVw^?X<!C?o-!:-{o *rX?w?-{Aow!<:w{w:o{-X-r,??:g{ o,!-<!-<AAV-<<oX??-,Aww-i,5A-<XX:ws{C!,<:CTe lr!?---X!{F :r?<oCr-: -!A??- ,<V?3oC:!{w,APw-c? o!r!:VA<_oC,XeV,-w{pl X!w!wV<W-o,VA:{{r :!R X!-?o-rX%XA,Aw?{wX rX<  :AAVT5CoX<wC<,rwH{X?Xo{AwV,0<V,<!oX,w:-w<<ACXAVV?{{ ,I{o,,?:o{r +wXA:<-AAV?goor,I:X{wU!X,?w-xArVH_X<?C{XVV!X-rX?bCXAwA:!r:!-A:,;OXXrw<-<X{:X{!<?!-oX:r:<rorV{wV{o A!r{<!A:?-oXrr4<XCw,-,,ewoM!r:#-X{,o:A(wr,-w JZ X!w,<:o-:X-w!C?AVww{- , :A,VC4<C:,!<C{rArr ?r!?:<-wA-V,Vr:<{A wro?:-!?X- AoVr<m?<{: %r:?VCo,!w:{{Vr<-o,,?:o:o<ACrAW:?JX :!X:A{RA rr<:Cr,VVVA,Vo6Xow!-!CrK?ho{AwV:CAX<V,x{- AX{? :rw<-C,CX VrC?,-rACVV<7Cr<-C AhwXLw?-CAA V-<Ar<<XCw,-w,S? o {!l-oX V-<,C?{? ,r{?!or!V?XXwrV<rCg,X,,r:?,-rAw::K{ -!ACl,{w?{o r <,-V:<2or!!:<,,ww{X wr-Arw:>A  <?o-,w:-{,OVCVX(wVAoV!2-o,,?XXV ?!ro?-C-A,V?rl? {,X-:!<CCwA<w-oAV??eow!-:,:wcCoA, w<ur C!C:6-4,Xr?m C?A<w,{: -r ?-CCXC-{X,r?<oCrATwXJw -!X: -oXrryr:w?_?XC!w<CCAXwVCXrr?<,C?,oXCr<?!CA:1{wX?Vo<r<?{: urX<X-<,CV,ewX<,A:!,XwX{o r!6!:V?<<oo!::X-AXV{o Xr-?,-?-{XXV<<o Vr{{A-VA{VA<:oC,!-<t!,V:C{,  rX?wC-C{ !,_WA-,X:r}<?CX,!wXA,VA6Xow!-,oV!?wCXro: {r :!wow,::r{kXX X,:: Gr  !,{:!  ,--X,r??-V-A9wXawC!!,:?-o , w<XCV,-r<(? o!rVr<,XwV{<,C!,ow!^&-r!w:?,,X?Vo<rCV,XwV{- o<??o-rXq C<wo{,,VwVD r!<?X{{A-V,<?C-AXw%{o wAV?,-?Ao!r<CoX,r:-{X ?,:?rFqXwVw<yo,,w:ob? O,X?{C-AXV?f-orXr:X<w :r,?wCoA,Vl:!ow!-w {?X-rr?:CXAww-g,o-!o:!{;XXrw?<C,Ar-oUro+!XAw--XAr?:oAVA&Vm7wo:!,w<-ooor{<XCX,-X,%? C!r: -XX,{-<,C?,oXrD3  !ww9:oX?r?<r{A,Xww{-C,Xr?o-oXTr5<w{l,,Vw<V r!!?XmoA-V,<?ooXJwMNU w!1?,-wAor,?XoX, :-?< ?ro?r2dX{Vw<Vo,,A:o<, h!owuC-XfV?:Xor,%:X{wo!r,?ACoA,V+WoowAK,o{? wrrwACXAww-?,<A!o:-{+ ?rwwNC,XwrrIroA!Xw---X,r?<o-?ANV?*woQ!,:w-o rro<XCo,-woE?o<!rrzj<Xwrr<,-<,oVXvioXA<?-{2X?! <rCV,XVr<V ,! ?o{rXTVX<w--w!w?eV r!A?X-!A-!,,?oo,{wBS: w,:?,{?XCVr<,oXX?:-P< ?Ao?{-KX?Vw?ro,XC:oO, XrX?CC-XiV?EoorXv:{{w !r,? Co :VH<oC<!-w?{?C<rr?1CXXrr,h,oC!oww{uXXrw:.VwA?V,FroC!X:w--X,!s<oC{AWVr0woK!,w?{:Xrr,<XCC,-V<L?o-,-:u{:Xwrr<,C?,orr)< X!C?-{<X?!A<r-?A?wwj, ,A!?o-rXUro?:o-A:w??< r!N?X{rXVV,<-ooA:wq{X wr-?C-?XVVr<ooX,r:-N,o,ro?-->XwVw<!o,A?VX{r rrX?,C-ACV?:o?o,jwE{wo:r,w-CoX,V<sXoC!-:A{?Xorrws-?AwV!;,o !oV,{E oro<--?A?!<troT!Xwr{AX,rC<o{?AWwXSwCu,<:?{,Xr,V<XCw,-VX<? o,::pkrXwV-<,C?X?wr9A X,<?--XX?ro:wCcA6ww<{ ,! ?o{, ,VX<Co- !w?{o rAU:Q-wX!V,< ooX,wSWoo?r-:?-?o<Vr<^oXArw<{, Cro:,-1AXVw?MC<,?w,{rCVrX?wC-A,V coo{,Iwr{w vr,:?-CArVrdXo !-w<{?Cooo?j-mAwVCq,-o!owr%-XXr <-CoA?V?QrC?A?:w{!X,rX<oCrA+rX<  -,<:?{VXr,?<X-r,{w,lo o!,:i-XXw!*?:C?A!wrf? X!w?-{X  Vo??CG,oww{- ,!??C-rXAVX?go-,Xw?Do ,!^:<-wX{V,< oo rXr{X  r-wo-?A-Vr??o ,ww!{, :ro?r-q XV &-C<,?wV{rC?rX:r--A,VoMoo,,^:X{woc!C??-!Ar!VsXow!-wX{-Xo!??4CoAww-Q,CwAy:r{CXX,A<-C,A?wo<;oh,::w{ X,rw<o-rX-wXb  -AA:?{VXr,kCACwA!w,e! o,V:k{Xo?V-<{C?A{wrSA X,rwr-,X Vo<-C},Xww<-oo!?:V-rXAVX:<o-AXwo{ooN!I:!-wA-V,?wC ,rw {Xo<r-?,-?X-ro<eCr,wr:{, ?ro?r{:AXVC=-Cw,?:-{ro5!??w-VA,!Vdoo{,)rXVXX-r{??-<Ar!oSXoXo<:,{:Xo!w?cC AwV0_,or<o:r{WXX!?<-CAA?VNXro=!X:w!<X,r:<o-,-wwXeV -A::?-oXr!??-CwA0w,?A o!r:FJX XV-<XC?,-wr<! XAw: -,XwVo<,CeArww<-o-!??--rX?VX:Xo-X,ww{o ,!0?o-wXwV,<?CC,rw?{X !r-?,-?Aor,<Oo ,w:-{, Vro?X,tAXVw4-:A,?:C{rCk?A?w-wA,V!^o-r,jreY:X-r-??wCArV<3XC,!-:oA?Xorr?Yw Aww{6,-?o?:r{rXXrA<---A?wo :o>,y:w{xX,r:<oCoC:wX_V --w:?-CXrr?<XC,?-w,Z? o-?:T- Xw!*roC?,Cwr<  X!w?-{X rVo<,C5 <ww{- ,A?w,-rX?VX<ro-A{w?<ooC!R?o-wX=V,<-ooXrw:{X rr-?X-?o?Vr:5C;,wwd{, wro?o-qAXr,;-oX,?:{{r vrX?w{VA,V:7oor,8:C{w ?v,??CoArC<IXoV!-V, <Xoro?EC{Awr-6,-,, :r{rXX-V<-CAA?!rSrow<X:w--X,-:<oC!AdrXwX -!-:?{<Xr!r<XCw: w,O, o!,:E- XwrwV C?,Cwr!o X!V?--XX?r_ rC6,Xww!X ,!:?o-roCVX<wo-,Aw?{o r!_?X-wA-ro<?oo,rw?t: wr-?,?Vdw !,?? -! ?VC?wr-?X-HAXVw,V?A-  ({!-:ACV!<<o ,VC{_V,< X#ACrr,-oAohA,-z CV,Cw:!?XX?AA:A,AV!A:C:C<o! ,,w ?w?.-,A?wobrQ,-{X<w{<rC<,V:X-? A!::?o,A:V-<Xr<XoM{?C-rAIwA,or--oX!V-<,C?{XX !!  ?XV rJX?o,A!rroAwV 7rr,C?oX< <X CwCR,-w?{o r :!tVr{{oV!!oC{{A!:!<w-or r!CoV,<woX,w:-V{<:CA, -<VZ,<,ro,-- C,or{r :!X!?7C<C^{?XA{,{r Ar,??Co-? {rC?V-X,,V-(CC{,VwoAV?!CCow{o: --AAX:?3C{A?wovr<K-rAVr!>CCw,{C!AOwX(w -!,:?Co-Vrmw,Cw,-w,<wVV!r:3-X ?V-<,C?XoV:fi X!w?--, VVo:rC{,Xww{- ,!?:C-roKr<<wo-,,w?{o !!+wX{AA-V,<?oo,rw!{Xor!A?,-:Aor?<hoX,wV-{{ ?rC?r-<AXVCd-CXAA:o{, U!!?wC-A,rw<Cor,::X{{X-r,??--A-Vc9-ow,w:,{?Xo!,?!CXAAw-<Xo?!o:rv? orw?wC,X?wouroF,o:!--X{r?? CrA2wX<rCA!,:X-oX-r8<XCwXF#,^?oV!rww-XXwV-?XA?,oV}nL {!w?--, w<!<rC ,Xw-{- ,!?:--XX+rr<wC?,,w?{oo,,:?X{<A-rX<?oo,rwcN_ wr{?,-{AoV,<jCX,-:-{, ?!,?r-<AXrr?:o,,?:o{, *rX?w{9XrV?_Cor,::X{wX-r,o{CoArV2=oow!{:,fwwVrr?5CXX?w-%,o?Ao:!{dXXrw<-C,XVwo?rC<!X:w--X,r??CCr Hru%w -!,:?-oX!r#:XC{,-w,j? o!r:!-X rrw<,C:,oV?fT X!ww--AX?VC<rC<,XwC{-oX,A?o-,X7r!<wo-,,Vw{C r!:?X-{A-V,<?C-,{w3{- w!w?,-?Aor,?XoX,A:-fX ?ro?r{?X:Vw<wo,A?:o{r _!o:VC-A{V?< or,8:X%ro!r,?XCoA-V*ZXowAF{,{? Vrr:wCXAww-<X,?!owe{HX{rw<-C,XwAwvro !X:---X,r??--XA&Vriwo?!,:?-o ,!,<X-<,-VX_? o!r:n%!XwV{<,C{,ow,YaoX,:?--,X?r,<rC<,Xwwyr ,!??o-!XJVX<wo-,,w?{o-V!z?X-wXpr<<?oo,r,,r:< CrAww 7: -,woo,-:-{, ? {AXw<9oAr,::o{rX rw ?r-?wC-A,X(rC::-V:oFmX-r,???<Qwow!::,{!!CwV{o :,{:-ArVo7,o?!o!CVV<-X,,:w {V <!w?wC X?r?< rw?oCrA&wXwX?!-wA-wJ<,o<,,w!{-XA!w?<-wA:r:Xrrw<,C?,oAAVw{ orV{<AXwrV<rC8,XA rC?XCCA{Vr5< C!Ao{,,w?{o r!S?XCwCCV <:o-A<wa{X w V,CVrC{ -!A:r-, nVC?=r-?A-eAXVw!o?C{A:-6, urX?w?rt< A!w:?-AX<Vo??Xo,!wosX ,V!::-?AC{w <rr?SCXJwX{!<:w-{:,{wXXrw<-?o{!ow!Xo?!-:w--X,X!,Xw {Cw Jw -!,:?-oXrXAVXCV,-w,.? o!r:7-XXwrN??C?,owrVw<{-oX?: NV C,?:V--wr0r ,!??o?{c-oC,,?{{rXVr< ,!V?X-wA-XCVr:V{:!?{o ,r-?,-?_X !!C?{,V:-{, ?ro?ro8=AAw<So{,?:o{r<rCoA:w -XAAw-o,,!:X{wX-XA,rw ^, -r{?A,u: {?XorrrAwCCVw{: {VX{rA?:CC:!VCCXArwoNrok-<AVV 9Crw?!CrAmwXV!:?-CArV{{Vor,kw!{: oIwoo!r:f-X-r {! :C{: ,r{?{-?A?? <<o,,Vw? Cwr1? ,!??o:AgACw!ACMA-w?{o r ?, w!WA {,w: { X-V-T,-0,AV}x{or!<:o-AXoV ? r-:?-jAXVwVC:C{rX,V{<-o{r!wC.wo<!-o,,X:X{wX- o,!VwQXA:!A:1-CXX?VX-!??ECXAwAn!<?--,A,V{W Cr,?<{=! VI,o !X:w---Ao-A::!FA CV:?oooX<VoX,r!<XCw,-A-r!<{-XA{VoC!rS<{C?,owrww<{-!X?VX<<CV<,CA,Xww{-6oC!XwVX-o  !r::{wwwnV r!Z?X?C0ooo!!:--!X:r-?!!y?--?AoVrr0? {rX:rr?rr-?o-UAXVwV<:!--X r,-:ro?AC-A,V?VA:V-wA{rpX{r,??CoArV8_Xow -:X{ Xorr?#<-{A -!o?XoAXVVwB{rr?:C,A?woVA<w  ,r<{XXrA<oCrA*A:r ?o-!XwV<NXr<ACCw,-w,<www!r:c-XX,V-<,C?A-AXKs  !w:?-,X?Vo:oC{,XwV{-<A!??C-rXXVX<,r-,,w?{o<!!y? -w LXo<?oC,rw-{X wr-:X{rAoV,<p-r,w:-{,C?!w?r-?AXVrB-C4,?Vo{  1ro?w-KA,,<9o-r,o:X{rX-rX??vwAr!Fg{ow,N:,{wXo!<?jCXX,w-aXo?!{:r{YXXrw??C,A:woNroT!C:w{?w,r?<oCr--wXQV -A,{<-oXor(<{CwA<w,?,o !r:r-Xj?V-<AC?,-wrgwVX!w?--,OWVo<!C.XX,X{- -!?:<-r XVX?r,-,,wX{o-<!N?X-wA-AC<?C?,rw,{X rr-?-r+AoVo<Q-d,w:{{, :ro?X,pAXVwY-C-,?:C{r wkX?wC-A, 6^oo!,9wow,X-r-??{FArV>mX-w ?:,{,Xoro?>-rAwr2<-o?,::r<:XXrw<-C,XVwoboo7!o:w{(X,!w:rCrA!wX<, -!,:?Moogrl?<CwAVw,Q- o,,:C-XXoV-:{C?,owr&T  !w:V-,XwVo<,CxAoA,{-o.!?wz-rXjVX:w?V,,wX{o -!Y:r-w sVo<?CV,rw<{X wr-?,{wAoV-<2oo,wwP{,o?!C?r-,AX!C8-oC,?rolA ;!??w-<A,,lToCr,A:X{oX-,<??-<Arr?<<ow,!:,h?Xorr?={XV:w-<<o?,V:r{CXX,w,-C,A wo({obA-:w{- Xr??wCr CwXuC -X,wV-oX-r#?9CwXAw,<wCw!r:A-Xo-V-<,C?XoV:GOo:!w:!-, XVo?,C-,Xw-{-o{!??o-r ?V <wCA,,VA{o r!g:orIA-rw<?C-,rwn{X w,w?,- Aor?<boo,ww-tX ?!w?rb<AXVC+-C,Xy:o{o SA:?w-:A,,?!?or,r:X<,X-!???--A!Vj<:owA::,{?Xo,r:CCXACw-<<o?,,:r.?  rw?,C,Xwwo#ro},ow<-- :r??CCrAkwX<ro !,:--o ,re<XCwX.w-Y?oA!rw<-XXwV-<,Cr,ow{m6o!!w:5-, ?!X<rCr,Xr:{-o<!?:-{-X%r:<w{:,,w?{oCr,o?X-CA-r<<?C,,rV?{- w!,?,{wAoVr<iCoA::->: ?A,?r-_AXrr? o,,-:o=, ^rX?wC-X{V?<Vor,o:X{rX-!,: CoAoV>?!ow,!:,??<?rr?rCXA!w-_{o?,oVw{( <rww!C,A,wo<,C,!X:C--C?r?<oCr 3w-Rwo!!,: -o ?rD?o-V,-V?&?oV!r:^-X rrC<,CC,ow{G^ X!ww%7<X?r,<rCA,Xww{- ,!,?o-{Xerr<wCP,,V?_o r!!?X}?A-r<<?{o-owTD< w,-?,- Aor,<<oX,C:-jC ?ro?rIaXVVw<!o,, :oK? D!o:VC-X?V?<Vor,m:XJr wr,?CCoX,VW2XowAPwo{? ,rr?ACXAww-<XC<!ow:{B orw<-C,A?VC6roA!Xw<--XXr??o{wALV<HwCC!,: -oor<{<XCC,-wCT? {!rwzQ,XwrV<,-<,ow{_foo,o?-{<X?,r<rCG,XrwNV ,! ?o-{Xk!?<w-7,ow?8r r,!?X-wA-rX?AooA<wO<< wr-?,{w AVr<ooXAr:-{, ?ro?!-aX:Vw<Xo,,w:o9rowrX? C- XV?<Vor bXh{w Vr,:VCoXWVh<_F!!-:A{? Arr?<CXArw-lor?!o:r{R !rw<{C,Ar-ofron!X r--XAr??-?XAdw uwoo!,:?-o ,!w<XCr,-rwc? o!rVx2wXwrH<,Cw,ow-l4CX,r?--XX?V-<r{{,XrwO< ,!w?o-,Xt,?<w--X:w?{- r!??X-AA-V,?too,,wU{C wr-?,-? AVr<<oX,w:-{  ?!_or-9AXVw!Co,,::o<rr{rX?XC-ACV???orXrwA{w wr,A<CoA!V):,ow,?C,{?Xorr,{CXAVw-?,P,!o:o{&X{rwwwC,A?{A#ror!X:r--XAr???<AA0w Qw?,!,::-oX,rp<-!w,-w,3??r!r:<-X r ?<,C:,oVwdf X!wwi{oX?V-<r-o,Xww{-C,!!?o-,XyVo<wCr,,r?<< r!??X-rA-,!<?-o,,wY{o w!g?,&XAo!r?,oX,r:-{X ?!<?r-x <Vw<ao,,V:o{r qrX:!C-AAV?ioor,::X{,w-r,??Co<rV}q owA-{!{? ?rr?VCXXXw-?-{D!o:o{*?,rw<{C,AAwojXrS!X:w--?rr?<CCrAw-XPw -!, ?-oX!r(:X<X,-w-4?o<!rVr-XXw0 <,C,,ow,t>  !w:w? X?VC<rwX,XwV{- X!?:(,rXEVX<ww,,,w:{o rAC?X-wA-VA<?oo,rwa{X wr-:o-?AoVr<<  -<r{ ,w:Vr:X?cAoV,h-o,,? :V!<AC-?V% CrV!ooA-X{o: wX{V!{wow<VAAVV!r C:A{?Xorr?hCXAw:-w!o:XC E{ rX:Co-wVC&wC w!rCo :o!wro{CoC,A wXuw -owX<w{h!oorXw)-{o<r!?-!!<{ o,oCCr<<C:-6Vt< %:rwXX,!8wX,!}-, C<rXA<{<:-<<<i<,<rC!,,w?{o{AC,, Vr{{  ,r:<{,w?{C wr-?,Vy^<oC<?C<,w:-{,2?C,,!VA{{or,<oA:rVX-ww{ww?-V<VrV::{{A :rC?!-<: r<CC<,:VsC?w,o?:-<- r,?rCXAww-w (,--A!VC;{rr??C,A?worC?<-!AA{t ,r?<oCrC, {!<<{-rX<VVFX ?,Aw:I?A,r:?--X:p<,XwV-<,-w?VwrxP X,!?--,X?!o?rCe,Xww{- ,,2?oqrX<VX<wo-,,w?sw rAs:r-wA-V,<?ooA?wF<Xotr-?,-?AoVr?woXArw?{, :ro:,-_AXVw?--Y,?:C{r <rX:<C-XXrAUoo,,5w<{wX-r,:w{,ArV:KXoV!-:,{? -! ?zC-AwV<S,o?!ow,&oXXrA<--AA?wo%rC?,!:w{wX,!<<oCrA%Vo7! -!{:?{VXrr)<X-rA!w,WX o,*:&-XXw!+C,C?AVwrzV X!w?-{Xr?Vo?}CRAVww{- ,,w-!-rX VX<,o-,,w?K-oV!z:r-wXwV,<?ooA,wA{Xo<r-:A-?AoVr<pC-,w:{{, {ro?,-OXXr k-o,,?w-{r <rX:r--A,V?4oo,,8:X{wop,w??CCArr3lXow!-:,A{Xorr?SCoAww{Z,Cw<V:r{+XX!!<-C,A?roqXo}!X:w--X,!2<o{rXwwXHw -!,:?{wXr,L<{Cw,-w,Z? o,?:c.X ?V-<,C?,owr<w X,rwX-,X:Vo?,Cq,Xww<- C!??C-rX<VX?<o-AXVA{o ,!9:<-wA-V,?w-A,rw:{X Vr-?,-?X-rs<(o-,ww<{, ?ro:,-?AXVAm-CA,?:o{ro?!r?w-wA,r<soor,_woFrX-r{??-VArVgiXCr,r:,{XXo!M?vCXAwr%o,o?,V:r{VXXrw<--XV?wo<3o_,V:w--X,!wrwCrA wXH, -!,:?{- !r#?rCwAww,g? o,,w!-X <V-?AC?,owr0Eow!w?{-,X{Vo<,C9AXVH{- ,!?:--rX<VX<wC-,,w?{o !!P?X-wA-V,<?ooAXw7{X wr{--w{C6Cr?!!A?r!-{Aj!Xo:o-ZYC<X,=yr,:-r<r <wX-,CCyCAKTC:-w{,{:w:Vowo:A A!o,CA<A - {w-wCXV?<:!Vo<,T!W !!?V?{Xor,<-C,A? :r!?CC{:V--X,r?<oCrAl:Xw:o=,,:?-oXrX,,{w<-{ r!<?VCX,?VA<:C?r,::{- XZ<?{XCV:_,,,AoX:<S, <o<X uA<C:r,<:<,<rCV,,w?{oYrCo, VCZ:oX,VoCr1,--V<:{X,<V!VXV!C,?,!::oA#V g<rr-?XVVw;-o,o-X VA<<Cr!wwX{Ao !<:,,<rC?!-<A VV7{rA,{qoo!!-:,{?<Xo A!CoAXw-a,o? {!or?D C<,:CXArwogroS{<AVV!<orw?VCrA=wXw!?rCAXwwC%ACw!{wr,-!rQ? o!rw?,:XwV-<,CA,owrRpCX,!?--,X?Vo<rCo,XrwNV ,!??o-rXtrA<w--Aww?{o r!L?X{,A-!,?aoo,rw_{X w!!?,{w ,Vr<<oXAr:-{, ?,o:r-8A Vw1{o,A::o9,o!rX?rC-X?V?=oorA?wo{w <r,:hCoArVU<oCA!-:o{?XCrr?YCXXrVAM,o!!o:o{uXXrw:R- A?V?hroC!X:w-- Xr <oCCAgw-Ow -!,ww--Xrr,<XC!,-w,*?o-:r:O{:Xwrr<,C?,oV,oe X!-?--XX?Vo<r-?wVww_A ,!!?o-rXjro?<o-Aww?K! r!c?X{rXAV,<{oo,owT{X wr-?A-?ACVr<CoX,r:-Q, ,ro?r-=XoVw_{o,Aww!{r KrX:!C-A,V?<-o!,D: {w -r,??CoAr{C0Xow!-:X{?XCrr:?!:Aww-Z,oA!o:r{JoX!:<-C,A?wo.roo!XVwP X,r?<oCrA6VA&wC-,C:?-oXrrB<X-,,-r,<: o!r:L-XXwr!<,-wX!wr;< X,r?--,X?!o?oC^, ww{{ ,,:?o{, !VX<ro-A?w?{o r,?:--wX<V,?voo,rwDYooXr-?o-?ACVr<OoXArww{, !ro?o-IAXVw?E-_,?w?{r CrX?wC-XXVVbooC,I:-{wX-r,:wCCArV,pXo!!-:,{? -?r?U-:AwVr},o?!ow, 5XXr-<-CXA?wo.rC?o?:w{AX,r!<oCrA_Vo;- -,w:?{!Xrr><X-rA{w,l{ o!o:J-XXwV-:?C?,Cwr9C X!r?-{,XoVo<rCpAoww{{ ,!?w,-rXlVX<Vo-,,w?{o r!O?X-AA-V,<?o-AYw+{X wo8ACVp-{  ,?w_-CX<VC w!y?r-mAX  r{:V-!:-{C %rX?w:<go !!o:r-VA-{r ,r,??CoCC V!-<!-:XXr,<VoA,VCoA w-O,o? {XVV-<,oA,<woA?VXsroa!X:wwIX,r?<oCrA5wX^w -w<:?-oXrr#<XCw,-w-.X o!r:6-XXwV{<,C:,owr:  X!w?--,X?Vo<r-??Vww{{ ,!w?o-rXQ!X< o-,Aw?{C r!w?X{r  V,<Voo,!w3{X wr-::-?ACVr<:oX,r:-<, Vro?!-mA Vw<<o,X?wn{r <rX?VC-ACV?_oC ,I:C{wX-r,??CoArVA0XoV!-: {?X-rr?DC{Aww{7,o:!o:r{=XX!A<-C,A?wCWro>!X:V--X,r?? CrA(wXIroV!,:?-o{roo! wC{: X!V -!{:t-XXwX<,8::{-X!r:?-CAX;-XXrVo<rCM{<XVr <C!w:m-rXkVXr??{{VX!{-  !)?X-wp- A! :-{Aw?{C wr-?,? 8{A!<?C,,w:-{,{AC<AX?w{{o!!<?C{xXkV!<-C-A!-sX<V?Soor-rXrr:P{Co!f:C_: Vq XV{,woXg{:w!-X<AAwVG<?o?!o:r::2 C?r<w!{- ,r{?wC{:!--XXrr<oCrABo<rV?!-o:w{!Xrry<X?8{CX r:?,orAow <Co:,XCwAwwr71 X r,{V T!Xo!!w?{-ww?! ,!??o-r{CVX<wo-,,w?{o rAr:A-wA-V,:!oo,!wpur w!?o,-?AoVr:VoX,V:-5XUrro?r-dACVwd-o,X?{ {r SrX?wC-AAV??o,V,M:X{wX-r,:yCo rn{6Xow!-:,{?X-rrwr-AAww-1,oo!o:!{W wrw??!,A?woDroX!X:V--Xou?<oCrApr{}w {!,www4Xrry<XCA,-w,n?o-,X:(- Xwr<<,C?,orrxo X!V?--AX?VC<r{zAuww{{ ,!:?o{wXZ!X:yo-,Aw?{C r!??Xhw wV,<:oo,!w++< wr-:--?ACVr<?oX,w:-{, !ro?r-.AXVw<;o,,rCo{r =rXw!C-AAV??oNo,*:{{w ?r,?,CoX,<1GXo !-w!{?Xorr?q<{AwV:U,oA!o:,{4 *-?<-CCA?rVLro<!X:V--Xo#?<oCrAvr:(w {!,:r,oXrr+<X{!,-wA9?Co:V:^-{Xwr?<,CC,owo!- X!A?->VX?VC<rC<,Xw,A- ,!??o+:XRV <wC??,w?{o rA:?X-VA-!,C<oo, wk{- w!??,{w{4Vr<roX,o:-{, ?!?::-*A{Vw:Uo,,::o{o Gr-owC-A,V??-or,<:X{,w-r,??Co AV&+ owX-A-{? )rr? CXX%w-9-2V!o:r{_ Crw<{C,Awwo#Xru!X:w--  r?<CCrX?A-mw -!,:{-oXrry?oAw,-wAk?oV!r:I-XXwG <,C?,ow,T5  !w?-<VX?Vo<rC<,Xww{- ,!??o-r wVX<wo-,XV?{o r!a!?VA0  A,k: -{Xwwo?:CCAo:?{Co,,wo  !!<? -VA{VA :CAVV?%-?A- oV-C- <-w-_A{V?.oorCEXrVV?!oCAww{A!C-V <,:o,C,{?,?w?<!ro {Vo,V A-!{?-X CrxC {{<o-,{<< ,:r{wX,r?<o<ACr orV? CC::A?Pr!,!,:!x<owod -!X:;-XXwCV!A: gSw,}  X!w?-:w<< {!!:oCX .V{:<C!A--!oy?o,:?Cw{VXXw!r!??C-wA-V,,p:<{Cw<,AA{r{t,rX-w{oo{o ,w:-{, ?ro?rC&CAVr<!o,,?:o:A<,o Ar:{{ or!<:,,<-oX?oAr,CC-C-!<jSoo,!-:,{?<:o!,C:{AVCC{:o:Vo -:,V*X:<{X!oXV<-r{o!??:XCX,A=<oCrADVoAC -!,:?{-Xrr;<X{wACw,u? o!r:c--Xw!-??C?,owrL) X!{?-i, jVo<rCh,Xwwb- ,A?w=-rX3VX<wo-,Aw?H-o<!Z? -wXrV,<?ooXrVw{X Vr-?A-?XAVr??-<,wwN{, Vro?r-(Xorog-o ,?wC{r QrX:r-iA,VrBoC?,D:X{wo_!C??-<ArrwJXow!-wX{-Xoro?W-<Aww-R,Cw!-:r{!XX!!<-C,A?V-iCo4,?:w{wX,r?<o-,VdwXWC -,!:?-oXr!?CXCwA,w,G! o!r:_{oV{V-?:C?AXwrJ6 X,r:w-,X-Vo<{Ca,Xww<8ow!?:A-r wVX<wo-,,w:{o !!_:!-wXNV,??o{,rw7{X or-?A-?X-r?<MoX,ww,{, ?ro:,-AAXVVZ-oX,?:o{r e<!?wC-A,Vw3oo!,Dwo,CX-r,??--ArV(%X-w,=:,{?Xorr?gC-Awr-?wo?!o:r{nXXr{<-{,Xowomrog!X:w{-X,,??VCrAYwX^w -!A:?{-X{rW< CwArw,e? oAr:r-XXVV-<AC?AAwr<?C<!w:t-,XVVo<rC_AoV!{-  !?:C-rXsVX?rCS,,wr{oo?!=?X-w xVA<?C<,rVw{X wr-:X{:AoVo<^C<,w:-{,ow!C?r-!AXr!=-o,,?w-<M P!??w-wA,V?KoC,wl:X{CX-!!??CoArr?oXow,,:,{!Xorr?>-oCow-<:o?,X:r{hXX!r:<C,A-woL{o(!X:w7uoDr??ACrXwwXWw -!,w--oX!rI?!CwAHw,<?o<!r:u-XXoV-<AC?,oV?MH X!w?{-,X?Vo<rCK,Xww_P ,!??o-,X!VX<wo-o  <rX?wCV,CV,X(rC<?oo,rAyro?:C A,VrC-o ,w:-{:Xow9?<C,,X??{{  r{:r,?w:{r ;rX?w: A,V?qoor,*:X{wo-?!??CoArVtfXor!-V,:,Xorr?YCXAww{3,ow <:r{?XXrw<-C,A?wow ou!X:w{xX,rw<o-,<,wX*w -!X:?-oXrrjw!Cw,-w,k: o!r:6- XwV-<,C:,owriI o,!?--,X?o?!{w?-{ w!*?!-XAVV:1Ao-,C:-{X <rA?r-w? -,A-V,<?C-CXw%{  wr{?,-?AoVr?XoX,r:-{, ?ro?r-Pw!Vwu{o,,w:o{! drXV<C-A,V?6Cor,;:X{wX-r,??CCArVORXor,,:,{?XoXX,AwC{! C!r:O-<AArwXXr-<-C,A?wor:oU!X:w--X,r?<oCo4-wXkw -!o:?-CXrr<<XC,?-w,Q? o!X:y- Xwr? ,C?,owr1! X!V?--,{{Vo<rCO,Xww{- ,A?!?-rXQVX<wo-,Aw?{or:!J?X-wX7V,<:oo,rA?{X wr-?A-?AoVr<2A:,w:-{, :ro?r-7AX,<h-o,,?:C{r grX?wC-A,V??3or,;:X{V<!Xfrr:or !-CCI:,gw<{?Xorrr:w?{VocrA?V{8A r?X !!rwwU:?<{V,-?:,:Vr::o?C: 5  VXXw? {!,:?-oXrrD<XowoCwX=r o!r:MV<kVo !CCwA!wr._ Xo_ACw q:o,rr:o-  Cr:?X!w:?-rXdVXV!<w{XX:rA< !<-A?!-{{,C<H ?A,Z{ {o,{AAw<{C<!,o,,,rw?{, ?roACw<.:o,;{-<:#wX!r?,AoXC<-AXr?_oor,S,?rA< oAAkw {{ wVo::-CXow?HCC,AwCoA!w-P,o?-XA r!Xor <-C,A?Ao!??<{:AArI< r:Q !,A:rXV{wVrr{<-CCAA:wC)!o<! CV{ !!XAX,C!Vo{wro_!Twg<?:Xo!?w,!!,X-A,{, X?A <  ?{?<-w?AX<w{o,,w?{oo,qA?X-wA-V-<?oo,rrdM{ wr-?,-?AorV<v-XX<:-{, ?ro?r-!AX!w<,o,,?:o{r jro?w{-AoV?8oor,m:X0<X-!X: CoA!V.<?ow!-:,<? Arr?<CXAVw-<ro?,-wC{YXorw:?C,A?wo<,CX!X:!-- wr?<oCrX?VXIwo?!,: -oXrrv?o-B,-wCL?oo!r:G-X r!r<,C,,oVZ#D X!wwn{UX?r:<rC<,Xww{-oX!:?o--Xfro<wo-,,Vw o r!A?X-AA-V,<?C-wrw43w w!??,-?Aor,o oX,{:-c  ?ro?r{? wVw<Xo,,V:o{r (!o:VC-XVV?<oor,3:X{wo!r,?:CoX:VZEoow,-w{{?Xorr?,CXAVw-<XC.!o:r{O Vrw<-C,XwVC%ro<!XwV--X,r?<o,:A.wXlwo>!,::-o ,{A<XCw,-w-%? o!rVn8<XwV-<,C?,oVVS3CX,o?--,X?Vo<rC!,XrwY? ,!??o-rXkVo<w--A:w?{o r!.?X{<A-rX?-oo,!w0c? wr-?,f? !Vr<<oX,V:-gr ?!-:C-EAoVw??o,,?:o2,oVrX?!C-XwV?*oorA?w {w ?r,? CoArV%<oCw!-:C{? orr?RCXXrrVt,o,!owm{>XXrw:.- A?V:5ro<!X:w-- X!<<oC-AhVoaw -!,wwXoXrrA<XCA,-w,U?o-:r:p{wXwr?<,C?,oV,w, X!{?-{ X?Vo<r-?AwwwzX ,!V?o-rX>ro?Vo-AVw?2o r!z?X-w wV,<:ooA:wS{o w!-:C-?AoVr<,oX,V:-{, !ro?r-OA Vwt-o,,?:o{r _!-?wC-A,Vw<oor,_:X:o?:CV,:wXpV Ar-<r-CX!rr{oo!A?w-ArV!P,o?!o!AV,p Cr!{: Hr <!,o<!X:w--X,r?<ooro{w oVV? oC??CX:w{CACV:{C:!<Ao r:,V<r?r_?:C?,owrwo?AC!,{Vw{?o,!!wA-{ rgs o!??o-r<!  !Cw?,XwV{o r!3A,wA<VVAw-rCVCC{ -rA{or,-:o{,Aw:{C !!<o {<rCoV:AXo{w wVr?,{o{!wV-X-C< {X A,,,w,< ??-wA,!C{rC{ ,-K ?-?w oV6? ,:AoA,ArVVY,o?!o,rVoY CC,:wXFVw-Iooq!X:w:<--Cw!Cw:{Vw oVV? oC??CX:w{VACVw<{:Co: ?w5!-X-wV{{AC<w,?r: :XJ--C-XXrVo<rCR{<XVr <C!?VX-rXjVX?rr!,,w?{ooX!.?X-w -rV<?oo,rwB{Xo:r-w,-!AoVr<eoX,www{,C?!C?r-NAXVwe-oX,?Vo^X erX?wC-A,V:hoC,A<:X{VX-!,??CoAr!#?Vow!{:,{:Xor-?K-oX w-FXo?,V:r{SXX!r:XC,AVwo<,o8!X:wDl Xr??FCrA wXiw -,Xw -oX rh?CCw,-w,<woA!r:r-X ?V-<,C?A-w,EYo<!w:?-,X?Vo?,C<,Xwo{-oV!??o-r ?<X<wC!,,wV{o r!J:oXwA-r?<?C,,rwK{Xor?A?,-CAor!<2oX,wVHjX ?!,?r-VAXVw0-CX,w:oF: G!C?wC-A,V?z{or,<:X)<X-rX??-oXXVg4Xow,-:,{:Xo!,:XCXAww-5{o?!o:r=?orrw<{C,Aowo^ro3!X-<--X,r?<-CrA<wX<rV!!,:?-o Xr4<XCwX-V&4? o!r:&-X :V-:,-A,owrZ0 X!w:w-,o?rX<rCc,Xww{- X!?wo{-XvVX<wo-,,w:{oo,!o?X-VA-r,<?oo,rr#aV wr{?,-:AoV-<bCoA :-{X ?!V?r-%AXrr<no,,V:o=, *rX?w{MX-V?<qor, :X{wX-!X?-CoA V><Cow!-:,Lw wrr?rCXX?w-s,o?,-V?{S <rw??C,A?wo<,C !X:o-- Vr?<oCrX?WXQwo!!,:V-oXrrq?oAw,-V?8?o,!r:W-X rXr<,CC,oV!*4 X!wwf{?X?r,<rCV,Xww{-oX,w?o{:XLrC<wo-,,w?J! r!<?X{<A-VX<?CoXiw_{X w!-?,-:AoVr?roX,w:-{A ?ro?r-uAXVwL-Co,?:o{r <!A?!:X !w{<:?! {: ,oCCA!-?VXCAaiwXoVw!or!{-o-?A?,<CwVH<:o?!o:r:o<Ao!!{ww-? ,r!:AC{Xr-{-A<-oX:Vr+:!AV{-!Xw?-oXrrKr?wA{ XA!p? C{Aw:o<:oC,o??-C ,!w  {:?{o,?<V!<V {oAwV<{r,:V?o--rrX{C?o{P!w:Co:Vr ?AC:VCVA,<r<DwV{:?:- {-r-wA{Vr<*oX{?X:r{ w!I?r-(AX  r{:V-!:Cw?<,:?pw:-r!X!wXo,,!:X{wX- ,,-:CW{ V!o:!!{-<>C<,XV{<r{-VRo*Ao?!o:r{7XXrwk-<!AwV?nrof!X!!:w<Xo:,A: A?w-Iw -!,XAwCa{Cw<oCC,-w,_?{{C-A<VoZVo<,o:!{-w!::-CX!r<< CV?{VVCl ,ww{- ,,woV-rX6VX?do-,,w?<ooo!6?X-wA-V,?dooXrwr{X wr-?,-?XDVr:u-:,w:-{, ?ro:A-* XVAp-o,,?:o{r rrX:r{AA,V:koC!,Y:X{wo-,w??CCArV<UXo{!-wXQAXor,?qCoAww-.,Cw,A:r{:XXrA<-C,A?V-8Xo7!-:w{<X,r?<o-,AowX_A -!A:?-oXr!??CCwAww,U{ o!r:I{o :V-<{C?A:wrlk X,r:!-,XXVo?VCb,Xww<6!,!?:V-r ^VX<wo-AXD?{ooT!>:?-wA-V,?w,!,rw {X Cr-?,-?X-!m<)Cr,ww,{, ?ro:,{ AXr<3-oA,?:o{r 0rC?wC{A,V{goo,,}wX{!X-r,??-CArV<IXCr,C:,{?Xo!,?YCXAwr=<,o?!C:rEwXXrw<-C,:{wozrou!o:w-{X,!w VCrAawX<# -!,:?;o <rp<XCw,-w,<c oAr:--XXwV-<,C?A>wr?bow!w?--,X?Vo?AC>XXVV{- ,!??o-rXrVX?rC?,,w:{oo!!h?X-w -!<<?oC,rw<{X {r-:X{AAoV,<doo,w:-{,ow,:?r-:AXVAi-o,,?w-M? _r-?w-<A,V?doC,,{:X{AX-rA??CoArr?< ow,w:,{{Xorr?Q-oA,w-.{o?,::r{HXX!r?:C,AXwo<Vol!X:whLr,r??VCrXtwXlw -,X{?-o mrs??Cw,-w,<wuw!r: -XXCV-<,C?A-V-Ylor!w:,-,X?Vo?,-Y,XV<{- A!??o-rXIr?<wo{,,w{{o ,!b:X{:A-V,<?CC,rw<{X w!{?,-?AoV!<ioX,w:-{, ?ro:A-PAXVwv{oaw,,CAru < ,<AoAA{?!rw A{{:r-o-X!?w-oArVgkXyo{:XVV:<XCV,A:--r C!!:rooA!r?<-rV<-C,A?woGro%rX!:-{X,r?<oCrAkwX{w!C!X: -oXrrIVC:o-{ Xr:<{-XAVVoXrrw<,C?,o,Awr?oCVA wCX:- Ao--?XV!:G:?:8?C<:C-V{Cw,rrV r o ,!:?X-wA-or!!w:,!,o<:-oH-jCCV?<<r<?o-,w:-{,<AoCA:wVA ,!w<{  Vr{?A,:XA?r-?A,V?uo:C-<X:r, .!:??CoArAo!A?!C{Xww?<,o!AA:{mrw{<?oCCC:rX V-o<VoCAoCVV-OA{oXrrr,rrrw?:CrA=wXVw?XCAX V<<,C:< {woo:XJ<wCruww?XXw,{<,C?,oV,AA X!w?-{wX?Vo<r{BA:ww{- ,!??o{,X1!X?-o-,,w?{o r!{?X8w QV,<?oo,rwK1( w,-:C-?AoVr<DoX,!:-=XoVro?!-xX<Vw&-o,X?V7{r <rX?VC-X?V?<-CC,P:o{w Ar,??CoX,r?aXo!!-w {?Xorr:?-<AwV?b,o !o:r{8 o!?<-CCA?w-eroS!Xwr{:X,r,<oC-AmwXUwCn,w:?{:XrrV<XCw,-VXsV o!-:O- XwV-<,-wwowrIA X!,?--,X?r-CrCdAwwwF{ ,!??o{,V VX<{o-,ow?{o r,?:r-wXXV,??oo,rw}do -r-:V-?A-Vr<koX,wwr{, :ro::-6AoVw<--w,?:o{r !rX?VC-XXV!.oor,Yw,{wX-r,:w{IArV<xXC<!-:,{?Xo<:?HCXAwVd6,o:!ow,,AXXrw<--wA?wo%r-KA!:w--X,r?<o-,AtrX<+ -!,:?-oXrr{<X{wX,w,9? o!r:z{yXw!-<AC?,owr+1 X!!?-{X 3Vo<!C_A<ww{- ,A??--rX<VX<Vo-A?w?M-oC!(?o-wXAV,<?ooA,Vo{X !r-: -?AoVr??CA,ww?{,  ro?r-hXoV{)-oC,?:-{r vrX:r-AA,V,6oo-,N:X{wox,V??-:ArVVbXow!-wX{:Xor-?YC Aww-q,Cw:o:r{AXXr,<-C,A?V-oro#,w:w{{X,r?<o-,w wX6{ -!o:?-oXr!???CwAXw,<? o!r:R{oX!V-?VC?,-wrb^ X!w: -,X:Vo?:Cc,owwg-CR!??o-rX!VX<Vo-AXwX{o r!i:,-wA-V,?w-<,rw<{Xo<r-?,-?AoF:<6oX,ww2{, :ro?rdCAXVw6-oA,?:o{r hrX?wC-o,V?Boor,?:{{wX-r,r{w {X V!ror,V:,{?Xo o,V:Cf, C!X{V!-:{{.XXrw!?:CcXoBV??<CoAAVXXXrX<oCrAfA:!?:<-oA:VXKAoV<oC,,-w,1?UXC!ACw{Xr!c<,C?,o,-rA?<CoAXV<_Aow,X<w-{ w!??7 {A wX8VVo<!o-,,w?rX< -!?o-,A-V,<??W-  ,r- Vr-?,-?AoVr{K:Aowwk{C ?ro?r:_TAor,?w<,ww:{r GrXrVw?G!ow!X? -V:o5hX-r,???<Fwow!::,{!!CwV{o :,{:-ArV:I,o?!oXrV<<:CrA<CXA,woMroEoXX:rW<oC w-C,A wX%w -o Xrr<iXC:rA:X{w  r!:G!,w%-XXwV-VX::-{ <r!?o-:X:Vr>rA{,V:o{A r:< X!V?o-rXMX:,!9{,Xw {o r!s,<V:<bo:,V:o-!X:V{ r,w?,-?AoA,!<?C-{XVrX?<-<Awww--orr{:r{VXoV!??o{A?w<<<Vw<vor,1:XV _{CV,!CCArV%gXow!-:,: -orA?<CoX5w->,o?o X rw<roC,o:CCV  !??{-o:r{VX,r?<o<X{V C!,:2-!X --X{r0<XCwC! r!r?<-,A<wC<,C<<AhV {!A::-CX!y<?!Xwr!<rC2,X,VrX?{C:XVVA-{o,r,:C{,wwO? r!b?X?!tCow,<:- Aw?W< wr-?,? J:ow!{:o-AX?{X  ro?r-c-? C!V:u--XVVC<,C-?r-XA,V?no<r-<Xor,?! ,,-V<KA ,!:?A,xwr{?Xorrr!:{K,A?rC:VC{A V-l-oV,owo+Vw-<?o^!X:w:^<<o-,,:,{{X !r?? {X!VVX,rw<XCw,- rr:?AC :?-{XwV-<,?!C)X{rC-o!r:?-,X?VorA:AIwXA{{ ,!??o-rX+VX<wo-,Xw {o r!f!.wCqXowVV: {?X{ro r!,?,-?AoXX!Vw?{,A<V <:C,, wwAoV-y-o,,?A%V ?,C-r!wC=wo<!-{A,?w:{wX-r,rrw<Zrow!?<<-CAoV!X-ro?&CXAwA-rA:w-<XwrwXor,<-C,A?A<!w:V-!:r{AX,r?<o<C{V -w!?r-<A-Vz<,oV,,CV,-w,0? o!r:dCX-:rH?,C?,owrwr?:-UAX:o<w C,ww:{XXV!Q<C-f,{V{X?r<<wo-,,X,r-?VCC!o? -nVA<?oo,rwp{X wr-r,-:?rVr<MoXAror{, ?ro:?-EAXVw?d<o,?:C{r orX?wC- -r<foo!,zX:{wX{r,:,CoAX{}=Xow!-X<{?XCrr:??-Aww{^,o{!o:r{1 o!,<-CXA?rxYro0!XVwEAX,rw<oC,AjVo5wC-,!:?--Xrr?<X{<,-r,n- o!,:t-oXw!!<,{?ACwr>? X!r?-<wX?Vo<ACu,oww=< ,!??o-r wVX<Vo-,,w?{{ r!woX-wA-V,!,oo,!wc<X!:r-?--?X<Vr<VoXXXro{, ,ro:!-OA Vw?Co,,rCo{r jrX:VC-AAV?<Brr,_:X{w<wr,?:Co rAr2XoX!-:C{? Crr:?AXAwVry,o:!o:r{8XXXA<-C-A?Vw>ro?!X:XroX,r,<o-CA%w qw {!,:r,oXrr*<X- ,-wAa?oU<r:1-XXwow<,C:,oV,Vw X!X?--oX?Vo<r{z -wwlw ,!,?o-CXEro:<o-,{w?<C r!#?X-wXrV,<,oo,,w3{o w,k:{-?X:Vr<woX,w:-<,orro?C-zX<Vw<Vo,Awwo{r ,rX?!C-A,V?^o-E,yw<{w &r,?wCoX,Xw(Xoo!-:o{?XorrwZ:<AwVrl,oX!o:C{u o,<<--<A?rXzroE!X:w8wX,rX<oC,AUwo%wo-!A:?{wXr,X<XCA,-!,<, o!-:y-{Xwr,<,-?A?wri, X!{?--CX?r-<{CIA:ww?A ,!??oRrV{VX<Co-A<w?d? rAZAX-wX!V,< ooX<wN%XC<r-:y-?oVVr<AoX ww {, XroVw-p wVw?K-w,?wV{roorX?wC- ,r!Koo{,#w:{wCCr,:w-oArVXlX-A!-:,{? -,D?u-VAw!:G,o?!ow,roXX!1<--<A?woqroKA::w{!X,r-<oC,A1VXM, -,M:?<?XrrA<X-rXrw,U  oA?:}-XXw!-?CC?AVwreA XX:?-{X -Vo?nC)A:ww{- ,,w:,-rX VX<Co-,,w?N-on!K:r-wX!V,<?oo,rV?{X Cr-:w-?A-Vr?_Cr,wwr{,oAro?{-^XX!?S-o-,?rr{r VrXVwwwA,V,+o-<,qVH{wo;rA??-VAr!:PXow!-V,fCXor{?W-:AwVVY,CwAA:r{XXX,A<-C,A?V-L-ok,V:wY:X,r?<o-,XXwX<u -AC:?-oXr!??wCwA w,<! o!r:*-XXCV-?<C?AAwrQ? X,wwo-,X,Vo:XCYA:ww<0CD!?:V-rX?VX<wo-X,V-{o {!W::-wXVV,?wC.,rwX{XCAr-?,-?X-!?<*CV,wr-{, ?ro:,-VAXr+v--C,?:o{r n,!?w-!A,V-0oo,,IwX{rX-r-??- ArVAeX{w-w:,{,Xor ?j-,AwV-?ro?,::r<XXXrX<--XXXwo){o5Ar:w--X,,??-CrAAwXBC -!{:?{- Or%?wCw  w,%? o,,:?-XX{V-wVC?,owr<?Cr!w:X-,o{Vo<rCi,Xw!{-o<!?:,-rX?VX?wCo,,wA{oor!b::-wo- -<?C:,rV:{X-<r-:X-:AoV{<U-C,w:-{,C?!C?r-AAXVCT-o{,?w-G- c!w?w+ A,V?9oC,,o:X{{X-,C??CoArr?Q-ow,X:,<{Xorr?e-oA,w-<Vo?X<:r{EXXrw:XC,A wo<:o1!o:w{-orr??:Cr wwXZC -A,{<-oX{rl<{CwA:w,<?CX!r:!-XXoV-?<C?A-V-.do:!wwX-,X?Vo:r-<,XwC{-o<!?V -r ?r,<wC,,,w {o r!B:o{<A-r:<?CV,rwZ{Xor!X?,--AoV{<qoX,w:-+: ?!V?r-oAXVr)-C,Aw:o{C =A??w-!A,,?!?or,!:X< X-!-??-?CAVxF ow, :,{:Xor,?HC-:ww-c,o?,A:r{<XXr, -C,A?wo,{ob! :w2L{or?<CCrACwXmw -,Xwr-oX,r)?-Cw,-w,??o?!r:?-XXrV-?XC?Xow!HS o!w:z-, {Vo:rCo,Xwr{- X!?wV-roDrC<wC3,,ww{oCr!.?X-,A-VX<?o{,rwm{X w,:?,-:AoVr<1oC,ww?A, ?ro?rV!AXVV5--,w<:o{o qr{?w_sA,!,< or,r:Xr X-rA??-rArVwXXow!-:,rAXor!?k{XCXw-}-o?,<:r;,XXrwo C,A,wo&,o*! :w{w- r?<CCrg?wXYV -!X:?{fwrr0<XCwn1w,#: o,,,w-XXVV-?VC?,owr<?o-!w:f-, rVo<rC2XXV({- X!??--r ?VX:w-A,,ww{o ,!(w!-w -VX<?o-,rw?{XoCr-w,{oAoV,<joo,wV-{, ?r-?r-?AXV!>-o,,?:oMo Rr ?wC-A,VV0ooX?j:X{wX--{??CCAr!%oAow,w:,{!Xo,,?gsYX:w-*-o?s::r{<XX!?<-Co:?wojroD4<:w-{X,,?r?CrArwXHA -A6:?-oV:rY?9CwANw,G: o!o!:-XXVV-AXC?,CwrY? X!,o--,X?VoA,CR, ww{--V!??o-rX<VX<wo-,,w?{o r,w?X-wA-VX<Voo,rwZr,<A-V?A!CCw4{-{- XV-<:, w!q?r-(AX  r{:V-!:CwA?{<Vi:Xw?X?Vw o,,A:X{wX-X ,X:CF, <rC:,-:XX{:Xorr?bCXAww-{,z<!-w<{0XXrwrXw!{VXC!?<8-rAVr!PCCw<C !X<,or:<Ao-w!XXX!:?<{X:wCX?-X{B w:<V{CC,::,!,{?C?w8 o! ?--,X?Xo,?:<a:XA!k? !:{www,{V,Xo!!<C,?{C-AX:VC<!C<, -Vd ,!A.wwA-rCX?VA,XAV<?o-,w:-{,?AoC,{VwAoVX6-o,,?!{:o??o A<w:AAXV, !<V{FE,r,<?!?:{?Xr?V,A?V?Xr{ zXC{C-Cw-!w,CX -X X:,zuXXrw<-?2h! Ar!?--AACV?{XC<, wX-xX !r:?!,rs-oXrr&?orC,-w,N? {!r:=-Xow! <,C?,owr7yoV!ww-{-X?Vo<rCS,Xw {-C,,n?o-rX3VX<wC:,,r?nC r!(?X-wA-ro<?C-Arwv{  w!-?,-?Ao!r<ooX,V:-{A ?rC?r{? <Vw<Lo,,o:o{r P!o:,C-A V?<,or,_:Xer Ar,?rCoA,V_iXowAG:-{? <rr?-CXAww-<XoV!o:o{> orw<-C,XwV<#ro!!X:,--X,r??-CAAhV?+wo!!,:?-o ,?u<XCC,-w-e? o!rw?XXXwr,<,-V,owrH.oo?{?-{:X?rC<rC3,XVr9: ,!-?o--XsVX<w-(A7w?IA r!-?X-wA-V,?roo,!w%d! w!I?,{? !Vr<PoXAw:-{A ?!-?,-7AXVw<Co,,?:o1,o,rX?VC-XVV?coor,1-!{wX-r,?wCoA!VG<oVC!-:,{?X{rr?fCX wrX^,o?!o:r{Q Vrw:-{VA?woYroQ!X: --o,r,<oCrA5wXOwo:!,V?uVXrrm<XCw,-Vo.?o-!C:s- Xwr-<,C?,orrf< X!V?--AX?VC<r-?X<wwn4 ,!o?o-rX1ro<,o-, w?U, r!Z?X{r VV,<roo,,wb{X w,u?o-?X<Vr<-oX,w:-GXooro?o-gXoVwF-o,Aww,{r !rX?,C-A,V?<-oC,Ow?{w !r,??CoX,<B&XoC!-:-{?Xorr:?AXAwV,_,CV!o:r{k oXo<--:A?VCdroY!Xwr_wX,r-<oC-AuwXjwC},!:?{AXrr-<XCw,-w,j! o!!:.{!Xwr1<,-?,-wrZP X,w?--AX?Vo?VCy,Xww{{ ,!??o-rX_VX<wCn,,w?{o ,!r?X-wA-X*!!?C{? wr? Vr-?,-?AoVr<)oX,w:-{  ?ro?r-={!VwB-o,,?:o{r lAX,XC-A,V?xCor,?:X{wC r,??CoA!VjYXow!-:,{?XoA<?3CXAwVzIoo?!o:rwwy{CoA?CXX,wosroa oAVV<<:oA,-wVLV ,r,<?-XA:VX<ACi! wr{: rrV:V!,: -XXwV-VA:-S:X!!A?Co:Ao:o<<oo<,CX,Xww{-?,-!XrrDGo {Vr?{{wX-{-o^!k?X-w{? C,XwHCAX:V ?HC:,o-wXoVr<NoXorA{V <CC:A,w{5{o?!?x {<X,rV??AC?r-:A,V?eo:r-<X:rr?<rX?,CoArV5wo0VoX,wwVC-r,?wCXAww-wC:+{<X:{?X-rw<-C,9lXC!:?V!o:X--X,r?V{wV{o A!r{<!X:--oXrrgV{w?p? <!r:V  ,::X{<oC!oC:,owrz+ X!w?-:<-?V-<CCD,Xww:{<o-<A-Vw0V {<rC!,,w?{o{XCVAXV,PrXV,<:c- w?{{ wr-?,?wCCX?Vo<C,rw:{, ?ro! ?w;:o<wMoA,?:o{r ErX?wo-C!Vw<Xor,v:X: <:Corrw<LA :r{:?-?AAr6?OCA?<CXAww-_,o?!o:r{aX rw<-C,A?wo^ro1 X:r{AX,r?<o?A=w {r,:<o!A,V?<AoV,-CrA-w,E? o oAAVr<6 ?,X::{X A!t< -rA:VrkVCV<AC<,owC{- ,!?,:VV<?oV,!:--AXVr< ,!o?X-wA-X!,!wu{?XAr,<A <A!w-8 o,<?CG,w:-{,(?oCA,wVi,o,<yC<,?:o{r{AC,A,w:TX :r{:X{::o{,X-r,???X{! Cr{or,!:,{?XoX-,Aw<{o X!<?A-wXX{?X{rw<-C,CV  !??{-o:r{?X,r?<o:C{< !rAoi!o:?-oXr :,:w-{:wXpA o!r:d?-)AC<,oww{  {8?ow!w?--,{ro<,-wwoC :rX?!-wV{-,X VX<wo-o{X!!.{AC,A:V^E?oX!!:X,,V?{X wr-!Sw 7: -!o::- Xrro{rC<ArVwk?X<!C?o-!:-{C +rX?w:w{C V,W:V{?rC{r !r,??Co-X V,?:,oXAAVw<<C???-rAww-q,lw-VX?VoqoC:!{wX{rA:! ?A!o:!--X,r?,X: ;!wo_o -!,:?:V<wC:,-:V{oX r! -!C:k-XXwX!!{wS{  ,rV<-!VX?-,X?Vo?,V,,Xww{-ow!??o-r ?X-<wo{,,w-{o r!uV^{:A-VA<?<C,rw<{Xoor-?o,?AoVr<l< ,w:{{,owoZ?r-<AXV u-o,,?w-3X 8ro?w{-A,V?Po-rAo:X{rX-rX??{VAr!O?!ow,d:,{wXoA<?B{XX<w-yXo?!-:r_oXX,w:,C,Awwop,ojA-:w--X r?<-CrA:wXyw -!,:!-oX!rh<XCwA<w,urVo!r:Q-X{?V-<AC?Xo*VUhog!w::-, {Vo:oC{,XwX{-Mr!??C-rXwVX<,r-,,w?{opw!j? -w FXo<?C?,rrX{X wr-w,<rAoVo<7C>,wr!{,ow!,?r-!AX!o>-o,,?:o{, F!4?w-#A,VwQoC,,,:X{ X-A???CoAr!d?:ow,V:,{AXo,{?v-oA w-<;o?X::r{OXXrw:GC,AAwo5,o(!o:wy*{or??wCr XwXzw -A,,A-oX-ra??Cw !w,<wo?!r:A-Xo?V-<,C?,or51lo?!w:)-,XwVo?rC?,Xwo{-C:!?:<-rC4!:<wCr,,V{{oor!&:X{,A-rM<?CX,rwV{Xor!f?,- AoV{<doX,wV- ! ?!V?r-AAX!Ae--,X::o{{ *!:?w-<A,r?<Eor,,:Xm:X-!<??EoXrV}<?owAV:,swXo,r:ACXACw-0Co?A :rKL Krw?rC,XowoG{op,Xw:--X-r?:!CrAVwX:wo{!,:,-oXArf:?CwX_wA(?oV!rw<-XXwV-:,C:,ow{yDo:!wV!-, w!:<rCX,XV,{- ,!?:-{{XTrV<wC ,,w?{oo,! ?X{xA-ro<?oo,rV?4r w! ?,-{AoVr<aoXA :-z< ?!A?r-?AXrw?oo,,,:o<! *!:?w{v eV?<VorXr:X{wX-,,?rCoA{Vl<:owX!:,nw Crr?XCXX,w-p,o?,-:C{_ Vrw::C,A?wo<,CC!Xw8-- or?<oCrA_VrZwo!!,:--oX,rL?X-r,-w-g?C?!r:A-XCwow<,C,,or:v_o?!w:-TrX?r:<r- ,XwX{-oX,X?o-{X6rV<wo-,,r?Z! r!A?X-CA-,<<?C-,,wS(w w,U?,-?Aor,<:oX,{:-hX ?ro?r{? :Vw<Xo,Aw:o{r BrX: C-X<V?<,or,?:XGw wr,?ACoAoV%<:owX-A-{? :rr??CXXrw-<Xo:!o:{{F  rw<-C, ?V{sroA!X:C--C<r??--,A1Vw(wC9!,:?-o ,!,<XC{,-Vol? o!rw?*!XwrX<,-w,owrj^oo!C?-{VX?!T<rCO,Xww2! ,! ?o{:XdVo<wC-<ww?G: rA<?X-CA-!,<Coo,{w_{{ w, ?,{? AVr<!oX,V:-N< ?,owZ-EX:Vw<:o,X<:oZr {rX? C-  V?<Vor #w-{w Vr,?!CoX-VL<0W!!-:A{? Arr?<CXArw-#or?!o:r{H !rw<{C,Ar-oLro_!XX!--XAr??-?XAGw ywoV!,:?-o ,!w<XCr,-r,^? o!rV5{!Xwrt<,Cw,oV{ZfCX,r?--XX?V-<r{ ,Xrw<: ,!w?o-,XY!r<w--AXw?{- r!??X{!A-V,?woo,,w7{C wr-?,-? VVr<<oX,w:-{  ?!ior-3AXVwr-o,,::o<rr{rX?XC-ACV?<rorXrr,{w wr,,.CoA!VJ<?ow,?C,{?Xorr!-CXAVw-^or?!o:r{dEXrw<{C, ?A?)ror!X:A--oXr?<o,:AfVWBwo3!,::-oXoX:<XCV,-X?+? C!r:?-XX,{-<,C?,oX6+_  !ww0:oX?VC<rC!,Xww{-oX,r?o-,XZ!X<wo-,,r?uw r!??X-rA-!<<?-oA:wF{o w!&?,5CAo!r<-oX,r:-{X ?,,?ruR :Vw<no,,w:olA 5rX:oC-AXV?;{or,n:X{w ?r,?:CoArVvhCow,?C,{?XorrA<CXAVw-?,,<!o:o{0X{rw?,C, ,!X8ror!XX:--XAr??oCrAw-X^w -!,X<-oX!rY<-!w,-w,F??C!r:<-XowXw<,C,,ow R6Co!w?-AVX?r?<rC?,XwV{- - V?o-!X9oV<wo{,,ww{o X<j?X-wA-o:<?oC,rwE?! wr-?,-:AoVr<PoX,w:-{,orro?r-LA Ao{C<{o<X{r<C?X,?V<{,r??- {?-ror::X{XA<eXo!V!o!)VB:C:X{VXorr?(w,{AoV6Xo,!o:r{.-CXXAh:A{{ <e,o!!X:w--{,o-!Cw{{V o!! {V<VCAw?VC  -CVo-wA0!w{X C8A <o?{CVC:X?oC::!AX-: !,-?V-?rC(,Xwwwr?CC{,CVwl{o:!,?q{! <!%mrC<AoV,A{, wV{{ A!:?C,!XC?A,yU?<{o{,!?A<! V w!V?r-kAXA!!r?A{wACVA?wo{ArC{A,V?Eoor,v:X-w-CrX?CCoArV_Vr::-<AAV-{oC?,<V:{AoyZA, *Xo::0,rV owA,AwVY9rok!XA w{<Vo!<C!A ?!?rw{w!!?<X X!,A-*{!P-<{r{C- w:?--XwV-<,wA-CX{!w XX??--,X?r-X{C},Xwwt{ ,!??oprX VX<wo-,,w?n? rA2?--wA-V,<?ooAVwJ<Xo r-?,-?AoVr<CoXXwwo{, ?ro?r-DXwVw?zC-,?:C{r VrX?wC- ,r!.oo!,1: {w ?r,:w{:ArV?eXoC!-:,{? -,??lCCAwVVh,o?!ow,=!XXr,<--,A?wolrC?,::w{:X,!w<oCrAUVo<w -!-:?{wXrrc<X-rXXw,&A o!A:4-XXw!=?wC?AwwrUo X!w?-{Xr?Vo<{C1A,ww{- ,,w-o-rXXVX<Vo-,,w?;-!<!y:V-wXSV,<?ooA,V?{Xo>r-: -?AoVr??-V,ww {,owro?r-9AXrV+-oA,?wA{r ?rX:w-<A,V?&oo ,Y: {wo%!,??CoArrw2Xow!-wX{AXor!?l-VAww-c,o??A:r{tXXrr<-CAA?V-A{oF!X:w{{X,r?<o{rAAwX0w -!,:?{?Xr,F?<Cw,-w,^? o,V:+QXX V-<,C?,owrtC XAww!-,X?Vo<rCjAwww<Wo,!??C-rXVVX<wo-X,w {o !!k? -wX?V,?w-:,rw?{X Cr-?,-?X-rw<JoC,wwV{, ?ro:,{<AXV,_-C,,?:o{ro?!:?w-:A,rw&oor,Hwo{,X-r-??-wArVnqXCr,,:,{AXorA?hCXAwry1 o?,w:r{oXXrw<--XV?wo2{o_,,:w--X,!wCoCrAXwXyV -!,:?{---r3?VCwASw,4? o,,:--X EV-? C?,owr<?or!w: -, wVo<rC),Xwr{- A!?:A-rX?VX?wCr,,w?{o  !T? -wA-rw<?oo,rw<{X wr-?,-?AoVr?woX,w:-{A<<:rVC,btrCV,<8r,ww0{r =rXA :{D<orU-Cr,Y:X{w{rCC,{:CDw {!:?,C3X!r<?l r,<woc,w{w!X?{C:!!wXw CC-CA{,xV:,,ZrV wr<-rr: wWV {}X,??!5:{?-- <r4<XCwCX !rV<C-?,hVreVC!!Cww,-wCcx X!w!-VwT:CV! w?{Cwr%w ,!??o?A-roo!V: -Cw:o CA:C-AwwAow!V<oC A!:?C-!X<V  VC V,<AoX,w:-: <XoCA,w<{Co,!::X,::o{r prX?wC-,,A<zCC!-{C!!:XA!rAX<oA,V:kXow!-XrV!?:r!-{{Cr<WCr,o>r {V{<:  w,<<,XCX{{-{C! C<, ,:w?,!AwX?,,.ro?!,:?-oZCo<,!:A,{?oA,:w:V:{wX:,<C<,gP,owrJ%oogC?--,X?r{<rC9,XrwJw ,!??o-rX0r?<w--A{w?{o r!9?X- A-!,?ooo,rw6{X w!X?,=? :Vr<boX,w:-{  ?!-:,-lA Vw<!o,,?:o<roXrX?VC-AAV?< orA?V<{w #r,?,CoArVP<oor!-: {? Xrr?KCXXrVCt,or!o:X{FXXrw:8-!A?V<JrCw!X:w-- Xro<oCoA0V iw -!,ww{,Xrr!<XC-,-w,S?o-!{:8{?Xwr:<,C?,oV,o3 X!C?-{VX?Vo<r-?wXwwJ, ,,w?o-rXhroo{o-A:w?No r!R?X{rX!V,<-oo,!wb{X w,5:<-?XAVr?woX,w:-{, !ro?!-OX!Vw<Zo,A?Vr{r grX?CC-AAV?<--?,#:X{w ^r,??CoX,VoZXoV!-w:{?Xorr?_,!Aww-y,ow!o:!{_ o{C<-C,A?V{bro4!XVw{qX,r?<oCrA4V?EwC-,<:?-oXrr#<XC ,-r,<- o!r:h-XXwrX<,{?A{wr=L X!w?-- X?r-<-CZ, ww6! ,!??o_rX?VX<Vo-,Aw?%  r,?w<-wXfV,<,oo,rwS6ooVr-? -?XXVr<=oXArVw{, rro?X-RAXVw?_-H,?w<{rowrX?wC-XXVw&ooo,)w {wX-r,:w{?ArV!WXo-!-:,{? -ro?F-?AwV:1,o?!ow, hXXrC<--VA?woDrC?:X:w{,X,!w<oCrA}Vowo -,::?{oXrr0<X-rAow,_- o!!:_-XXw!j?<C?AAwr<w X!w?--,X Vo<!CEA!wwfi ,,?w!-rX#VX<Co-,Aw?{o !!4?X-wA{V,<?oo,rwJ{X w,L?,-?AoV,<woX,w:-r{<:CVAX-?XXVw6-o,oX <r:<<C,A:w!{oXw! :V{w,XVV?aCo?wC{ArVcqX:?-:X{{:Xorr?_CXAww-{,d<!C,Cw V ?: X -w?,oj,ow!X:w--B{o:,A: A<,o<,C-C,-:{r-<A-<oCC,-w,c?{{C-A<VoOVo<,o:!{-w,(r X!w?-? -,o-!!:C-{wV!<!:V:r or*{ioC:o{X,o!o{ V-{VCC:C VX<Aoo,rw7wX?To{X<w!#-oA<<?<C{-{ !?-XCoC?YA ,Xr{, X<{r-UA{XA?V<{Vwm3r ArrCo :wX{A VVi{oA,::CA! C:X{CXorr?l?rs: <rA?-ooX?V<?:oAA=CAo,XCoAC{:w<-CCr!r?wXCrA+wX<rV!!,:?-oXor+<XCwX-w-+? o!r:h-X RV-:,-7,owrM1 X!w:{-,o?!<<rCp,Xww{-o_!?wo{FXgVX<wo-,,ww{oo,!??X-VA-r<<?oo,rrn{C wr{?,-:AoVA<ZCoA :-{X ?!<?r-DAXrr<so,,V:oZV TrX?w{gA V?<sor,C:X{wX-!X?wCoA V9<wow!-:,)wo<rr?rCXA w-G,o?,-w {e <rw:.C,A?wo<,o-!X:o-- :r?<oCrX?zXHwo!!,:r-oXrrz?oAw,-V?P?o:!r:P-X r<A<,CC,oVwc& X!ww0E:X?r,<rC ,Xww{-oX,:?o{:Xfrw<wo-,,w?{{ r!<?X{<A-VX<?CoAow>{X w!!?,-:Aor,?ooX,w:-{A ?ro?r{? !VwR{o,A?:o{r ;rXC<C-A,V?p-or,<:Xhrw!r,??CoAoV^%XowA-w?{?Xorr?FCXXgw-?,CC!o:r{cXXrw?{C, ?rriroE!X:w-- +r?:o-!A(wX7w -!,:w-o ,!?<XCV,-V<g? o!rVG{AXwV{<,C:,owA#;oo, ?--XX?r<<rCB,XVr#r ,!V?o{VXqVX<w-HAfw?qn r!C?X-wA-rX?-oo, wccw wr-?,{wX!Vr<roX, :-{, ?!-:C-KX<Vw?Eo,,?:o&,o<rX?oC-X:V?hoorA?{X{w !r,?rCoArV}<o,w!-w?{? :rr?cCXXrArZ,oC!oww{%XXrw:BC{A?V,gro !X:w-- X!{<o-:A0VwYw -!,:?{oXrr<<X-<,-wXg?ooA::y-XXwr!<,C:,owrzX X!w?--AX?Vo<rCB,Xww{-oo!??o-rX<ww B :(! %:w<,?-? -wA-V,<?oo,r:E:A V:{AAA,! <rVw?,w?:{<!,XVC,VEh,:o{o-oA-:,C rS{{-_0oCC!V:rC<!wNAA,,,XV!-<CC X--V<-w:!:<: -or,?!CXAww-V,?-CCX{VV<oC!?a-<A?wo+r(:-?AVrH6AoVA&: x?w v,C{C<{?w3VX^CVXCrA<w,U? o-wAVr<XV{Aw,X}w {-{r?X ?:I{,X?Vo<r<,{{ <V{?r-<AVwX{?oA,:w?C,X:r-?X!<VC<!C<, wV{{VA!{{o ,r-?,-?<: !!A:-,rww{, ?rorA?rvo V! ?C,::{{w-8wX??kCY,<z}-C<,n:X{w{XC!,V:Cn?XN!r?V{!ACrwX-rX?NCXAw VrA?{-<:! :! !o -AXVA_:wVoUX,:w--X,!w VCrAjwX<! -!,:?LoX r=<XCw,-w,_X oArww-XXwV-<,C?A-wr?do-!w?--,X?Vo<{CMXXVr{- ,!??o-rXCVX?rCo,,w:{oor!#?X-w -rX<?oC,rw<{X {r-:X{AAoV,<jCw,w:-{,ow,??r-:AXV e-o,,?w-2V *r-?w-?A,V?.oC,,-:X{AX-!o??CoArr?< ow,w:,5:Xorr?u-oA-w-e{o?,<:r{qXX!r?!C,AXwo)Ao9!X:wUyr,r??VCrA?wX+w -,X{?-o hrv?rCw,-w,<w!!!r: -XXXV-<,C?A-w zpor!w?{-,X?Vo?,- ,XV<{-oo!??o-rXZr,<wo{,,w{{o ,!s:X-AA-V,<?Co,rw<{Xor!w?,-?AorV<>oX,wVU<V ?rC?r--AXVwf-o,?{:o{r Pro?wC{A,rwXVor,3:X#!X-r,??{o ?V7+Xow!-:,{XXo,r?ACXAww-i,o?,-:r<W Crw<-C,A?woE{oSAXw:--X,r?<oCrACwX<ro2!,::-o rrP<XCwX-V?J? C!r:<-XX{V-?X-A,ow,czow!w?--, w!<<rC:,Xw {- ,!?:-{!XuV-<wC?,,w?{oo,,<?X-AA-ro<?oo,rV?h: w!w?,{:AoVr<mCo,r:-{{ ?!<?r-eAXrr<?o,,X:o{A MrX?w{hV,V?<Vor,?:X{wX-!X-?CoXUVK<row!-:,uw{wrr? CXAXw-D,o?,-wV{B rrw<{C,A?wo<,CA!Xw<-- or?<oCrA.V!uw {!,:{-oX,rR?X-r,-w,G?oo!r:<-XXw!<<,C?,ow!Ov X!w?--,X?Vo<!C.,XwwS&CV!??o-rb,o-,,:-{ !o? -VCwA:V!)<o!,w:1 wX!r<-:X?A-:rC<o.w,?{-X xV{ ?r{?r-}AXrro-o,,?:o{! HrX?wC-wCV?aoor,?:X{wX-r,w{CoArVcT ow!-:,{?Xorr?I--Aww-e,ow,::r{=XX w,X:A2  <!,::!o:C--X,r?V{:-{< orV?<-oA!V-X!!<,A!<tCw:<#:w r:<<CC!A<w kV {<A:{ o!!?--,X?oX! w!, r<VC ,C? Xwo<!A,<V?oyCCrA ?XX   XwXyr:<?oo,r,orA<!o{Aw:?j, !,A?{{r:{!!,wAV?ro,B.{,oCoAX!V!-!%{-,<CoCC!V:loor,s:X{wX-V,r<CC  r { ?:{o:<-<r r,:%CXAww-V1:!-AA!V-<AoC,??X.<  !X<%C Xrr?XXr,<oCrA8,CwX:PCAA{V<X,rw<XCw,- {r:?V-X:?--XwV-<,:A-C :rV  A!,C-!?<K? Xw<o,wVXC ?,w}oAYo<XAVwo{,{:<-:VVoXCoVwVoVA<?,r!!{{o}oA-rrr-?oXVr<doXArC!{, ?ro:r-kAXVw?-CV,?:o{r WrX?VC- ,V Moor,&:X{w rr,w?-?ArVKuXow!-:X{?oo,??iCXAww-H,o{!ow,{oXXrV<--rA?wo8r-IA6:w-{X,r:<oC AeVo<  -!X:?{:Xrrs<X-rX<w,SV o!A:f-XXw!p<AC?A_wr<? X!w?-{XXCVo< CbA:ww{- ,,w:<-rXrVX?Vo-,,w?7-o!!m:<-wX,V,<?ooA,wr{X or-:o-?AoVr??,X,ww!{, Cro?r-2Xo<wM-C?,?w{{r LrX:rAAA,VCYoC?,_:X{woGr ??-,ArVrRXow!-wXh{Xo!:?}-:Aww-#,o?,?:r{<XX!<<-CXA?Vo<oop!X:w{oX,r:<o-,ACwXdw -,!:?-oXr!?<oCw,{w,7r o!r:%-XV<V-<,C?,-wrG< X,ro!-,X?Vo?rCM,Xww<- C!??o-rXcVX<Vo-X,wX{o r!s?X-wXrV,:?-J,rwY{X wr-?X-? o!<<BoX,w:-{, {ro:,{rAXVVt-Cr,?:o{rC8,r?wC{A,V:Moo ,Zwo( X-rX??-:ArVK7XCrAr:,{VXorA?^CXAwra%Xo?,W:rn?XXrw<--XA:woQ og,::w--X,!w?CCrArwX<V -!,:?{-X-rW?<CwA,w,(? o,,wA-XXoV-?oC?,owr<?!X!w:!-,XCVo<rCiAo}w{-o?!?:{-rX#VX?r<r,,wC{oo?!G?X-w }V-<?C,,rwr{X wr-:X{wAor:<ZC:,w:-{, ?,??r-<AXr<t-oX,?wo<d NrX?w-oA,V:3oorA :X{wX-rA??CoArVE3Xow!-");local o=0;k.hhYFtKui(function()k.CpQMOchs()o=o+1 end)local function r(r,e)if e then return o end;o=r+o;end local e,o,a=f(0,f,r,h,k.iToVIsBc);local function t()local o,e=k.iToVIsBc(h,r(1,3),r(5,6)+2);r(2);return(e*256)+o;end;local c=true;local c=0 local function g()local n=o();local r=o();local d=1;local n=(e(r,1,20)*(2^32))+n;local o=e(r,21,31);local r=((-1)^e(r,32));if(o==0)then if(n==c)then return r*0;else o=1;d=0;end;elseif(o==2047)then return(n==0)and(r*(1/0))or(r*(0/0));end;return k.mJGHyXBF(r,o-1023)*(d+(n/(2^52)));end;local p=o;local function _(o)local e;if(not o)then o=p();if(o==0)then return'';end;end;e=k.bHFtcXVO(h,r(1,3),r(5,6)+o-1);r(o)local r=""for o=(1+c),#e do r=r..k.bHFtcXVO(e,o,o)end return r;end;local y=#k.sKUXMJys(u('\49.\48'))~=1 local r=o;local function dr(...)return{...},k.pwulF_Bf('#',...)end local function er()local c={};local r={};local p={};local u={p,c,nil,r};local r=o()local h={}for n=1,r do local e=a();local o;if(e==3)then o=(a()~=#{});elseif(e==1)then local r=g();if y and k.BBHwZkZm(k.sKUXMJys(r),'.(\48+)$')then r=k.tQxjpALf(r);end o=r;elseif(e==2)then o=_();end;h[n]=o;end;u[3]=a();for k=1,o()do local r=a();if(e(r,1,1)==0)then local f=e(r,2,3);local s=e(r,4,6);local r={t(),t(),nil,nil};if(f==0)then r[d]=t();r[l]=t();elseif(f==#{1})then r[d]=o();elseif(f==b[2])then r[d]=o()-(2^16)elseif(f==b[3])then r[d]=o()-(2^16)r[l]=t();end;if(e(s,1,1)==1)then r[n]=h[r[n]]end if(e(s,2,2)==1)then r[d]=h[r[d]]end if(e(s,3,3)==1)then r[l]=h[r[l]]end p[k]=r;end end;for r=1,o()do c[r-(#{1})]=er();end;return u;end;local function nr(e,r,o)local n=r;local n=o;return u(k.BBHwZkZm(k.BBHwZkZm(({k.hhYFtKui(e)})[2],r),o))end local function g(z,b,h)local function nr(...)local t,y,m,er,u,o,a,p,c,rr,_,e;local r=0;while-1<r do if r<3 then if r>=1 then if-2~=r then repeat if 2~=r then m=f(6,31,3,17,z);u=dr er=0;break;end;o=-41;a=-1;until true;else o=-41;a=-1;end else t=f(6,70,1,72,z);y=f(6,52,2,41,z);end else if 5<=r then if r>=4 then for o=23,97 do if 6>r then e=f(7);break;end;r=-2;break;end;else e=f(7);end else if 2<r then for o=27,65 do if 4>r then p={};c={...};break;end;rr=k.pwulF_Bf('#',...)-1;_={};break;end;else p={};c={...};end end end r=r+1;end;for r=0,rr do if(r>=m)then p[r-m]=c[r+1];else e[r]=c[r+1];end;end;local m=rr-m+1 local r;local f;local function c(...)while true do end end while true do if o<-40 then o=o+42 end r=t[o];f=r[j];if f>=107 then if f<=160 then if f<=133 then if f<120 then if 112>=f then if 110<=f then if 110>=f then for l=0,6 do if l<3 then if 0>=l then e(r[n],r[d]);o=o+1;r=t[o];else if l>-2 then repeat if l<2 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end else if l<=4 then if l>=0 then for f=22,54 do if 3~=l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end else if l==6 then e(r[n],r[d]);else e(r[n],r[d]);o=o+1;r=t[o];end end end end else if 112>f then local f,k,h,s,a,l;for l=0,6 do if 3<=l then if l>4 then if 6==l then e(r[n],r[d]);else l=0;while l>-1 do if 3>l then if l>=1 then if l>=0 then for r=19,58 do if l~=1 then h=d;break;end;k=n;break;end;else h=d;end else f=r;end else if l>=5 then if 2<l then repeat if l~=5 then l=-2;break;end;e(a,s);until true;else l=-2;end else if l~=4 then s=f[h];else a=f[k];end end end l=l+1 end o=o+1;r=t[o];end else if 3~=l then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end end else if 0<l then if l~=0 then repeat if 2>l then l=0;while l>-1 do if l>=3 then if l<5 then if 0<=l then for r=17,81 do if 4~=l then s=f[h];break;end;a=f[k];break;end;else s=f[h];end else if l>1 then repeat if l~=5 then l=-2;break;end;e(a,s);until true;else e(a,s);end end else if 0>=l then f=r;else if 1<l then h=d;else k=n;end end end l=l+1 end o=o+1;r=t[o];break;end;l=0;while l>-1 do if 3<=l then if l>4 then if l~=6 then e(a,s);else l=-2;end else if l==4 then a=f[k];else s=f[h];end end else if l>=1 then if l>-1 then repeat if l<2 then k=n;break;end;h=d;until true;else h=d;end else f=r;end end l=l+1 end o=o+1;r=t[o];until true;else l=0;while l>-1 do if 3<=l then if l>4 then if l~=6 then e(a,s);else l=-2;end else if l==4 then a=f[k];else s=f[h];end end else if l>=1 then if l>-1 then repeat if l<2 then k=n;break;end;h=d;until true;else h=d;end else f=r;end end l=l+1 end o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end end end else for f=0,6 do if 3>f then if f<=0 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else if 1~=f then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end else if f>4 then if 4<=f then repeat if 5<f then e(r[n],r[d]);break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);end else if 4>f then e[r[n]]=h[r[d]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end end end else if f<=107 then local h,s;for f=0,6 do if f>2 then if 4<f then if f==6 then e[r[n]][r[d]]=r[l];else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end else if f<4 then e[r[n]]=b[r[d]];o=o+1;r=t[o];else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end else if f>=1 then if f>-3 then repeat if 2>f then h=r[n];s=e[r[d]];e[h+1]=s;e[h]=s[r[l]];o=o+1;r=t[o];break;end;e[r[n]]={};o=o+1;r=t[o];until true;else h=r[n];s=e[r[d]];e[h+1]=s;e[h]=s[r[l]];o=o+1;r=t[o];end else e[r[n]]=b[r[d]];o=o+1;r=t[o];end end end else if 109>f then local a,k,u,c,p,_,b,f;for f=0,6 do if 3>f then if f>0 then if f~=-2 then for h=30,91 do if 1<f then e(r[n],r[d]);o=o+1;r=t[o];break;end;a=r[n];k=e[r[d]];e[a+1]=k;e[a]=k[r[l]];o=o+1;r=t[o];break;end;else a=r[n];k=e[r[d]];e[a+1]=k;e[a]=k[r[l]];o=o+1;r=t[o];end else a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];end else if 4>=f then if-1<f then for l=20,57 do if 3~=f then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]]={};o=o+1;r=t[o];break;end;else e[r[n]]={};o=o+1;r=t[o];end else if 2~=f then for h=26,92 do if 5<f then f=0;while f>-1 do if f>=3 then if 4<f then if 6==f then f=-2;else e(b,_);end else if f==4 then b=u[c];else _=u[p];end end else if f>0 then if f>1 then p=d;else c=n;end else u=r;end end f=f+1 end break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end else local a;for f=0,6 do if 2>=f then if 1>f then e(r[n],r[d]);o=o+1;r=t[o];else if-2<=f then for h=15,52 do if f>1 then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];break;end;else a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];end end else if 5<=f then if f==6 then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if 0<f then for h=22,95 do if 4~=f then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end end end end end end else if f<116 then if f<114 then e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];else if 112<f then repeat if 115>f then if(e[r[n]]~=r[l])then o=o+1;else o=r[d];end;break;end;local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;until true;else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;end end else if f>=118 then if f>=115 then repeat if f~=118 then local s,a,k,h,f,l;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];l=0;while l>-1 do if l>=3 then if l<=4 then if 4~=l then h=s[k];else f=s[a];end else if 1<l then repeat if 5<l then l=-2;break;end;e(f,h);until true;else e(f,h);end end else if 0<l then if l~=0 then repeat if 2~=l then a=n;break;end;k=d;until true;else a=n;end else s=r;end end l=l+1 end break;end;local k,u,p,c,b,f,a;f=0;while f>-1 do if 3>f then if f<1 then k=r;else if f~=2 then u=n;else p=d;end end else if 4>=f then if 0<f then repeat if 4~=f then c=k[p];break;end;b=k[u];until true;else b=k[u];end else if 5<f then f=-2;else e(b,c);end end end f=f+1 end o=o+1;r=t[o];a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];until true;else local a,b,p,c,u,f,k;f=0;while f>-1 do if 3>f then if f<1 then a=r;else if f~=2 then b=n;else p=d;end end else if 4>=f then if 0<f then repeat if 4~=f then c=a[p];break;end;u=a[b];until true;else u=a[b];end else if 5<f then f=-2;else e(u,c);end end end f=f+1 end o=o+1;r=t[o];k=r[n]e[k]=e[k](s(e,k+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end else if 115<=f then repeat if f<117 then local a,k,u,b,c,f,p;f=0;while f>-1 do if f>=3 then if f<5 then if 1<f then for r=19,92 do if f~=3 then c=a[k];break;end;b=a[u];break;end;else b=a[u];end else if 4<=f then repeat if f<6 then e(c,b);break;end;f=-2;until true;else e(c,b);end end else if f>0 then if f~=-2 then repeat if 1<f then u=d;break;end;k=n;until true;else k=n;end else a=r;end end f=f+1 end o=o+1;r=t[o];f=0;while f>-1 do if 2<f then if f<=4 then if 2~=f then repeat if f~=3 then c=a[k];break;end;b=a[u];until true;else b=a[u];end else if f>5 then f=-2;else e(c,b);end end else if f<1 then a=r;else if-2<f then for r=33,60 do if 2~=f then k=n;break;end;u=d;break;end;else u=d;end end end f=f+1 end o=o+1;r=t[o];f=0;while f>-1 do if f<=2 then if f>=1 then if f>=-1 then repeat if 2~=f then k=n;break;end;u=d;until true;else k=n;end else a=r;end else if 5>f then if 2<f then for r=32,56 do if f<4 then b=a[u];break;end;c=a[k];break;end;else c=a[k];end else if f>2 then for r=44,89 do if f>5 then f=-2;break;end;e(c,b);break;end;else f=-2;end end end f=f+1 end o=o+1;r=t[o];p=r[n]e[p]=e[p](s(e,p+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);break;end;local f,k,a,s,h,l;l=0;while l>-1 do if 3<=l then if 4>=l then if l>=-1 then repeat if l<4 then s=f[a];break;end;h=f[k];until true;else s=f[a];end else if 5==l then e(h,s);else l=-2;end end else if l<1 then f=r;else if l~=2 then k=n;else a=d;end end end l=l+1 end o=o+1;r=t[o];l=0;while l>-1 do if l<=2 then if l>=1 then if l>=0 then for r=29,91 do if l~=1 then a=d;break;end;k=n;break;end;else a=d;end else f=r;end else if l<=4 then if 3~=l then h=f[k];else s=f[a];end else if 3<=l then repeat if l<6 then e(h,s);break;end;l=-2;until true;else e(h,s);end end end l=l+1 end o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];l=0;while l>-1 do if l>2 then if 5>l then if 2<l then for r=10,96 do if l~=3 then h=f[k];break;end;s=f[a];break;end;else h=f[k];end else if l>=2 then repeat if l~=5 then l=-2;break;end;e(h,s);until true;else e(h,s);end end else if l>0 then if l>=-2 then for r=29,82 do if 2~=l then k=n;break;end;a=d;break;end;else a=d;end else f=r;end end l=l+1 end until true;else local f,k,s,a,h,l;l=0;while l>-1 do if 3<=l then if 4>=l then if l>=-1 then repeat if l<4 then a=f[s];break;end;h=f[k];until true;else a=f[s];end else if 5==l then e(h,a);else l=-2;end end else if l<1 then f=r;else if l~=2 then k=n;else s=d;end end end l=l+1 end o=o+1;r=t[o];l=0;while l>-1 do if l<=2 then if l>=1 then if l>=0 then for r=29,91 do if l~=1 then s=d;break;end;k=n;break;end;else s=d;end else f=r;end else if l<=4 then if 3~=l then h=f[k];else a=f[s];end else if 3<=l then repeat if l<6 then e(h,a);break;end;l=-2;until true;else e(h,a);end end end l=l+1 end o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];l=0;while l>-1 do if l>2 then if 5>l then if 2<l then for r=10,96 do if l~=3 then h=f[k];break;end;a=f[s];break;end;else h=f[k];end else if l>=2 then repeat if l~=5 then l=-2;break;end;e(h,a);until true;else e(h,a);end end else if l>0 then if l>=-2 then for r=29,82 do if 2~=l then k=n;break;end;s=d;break;end;else s=d;end else f=r;end end l=l+1 end end end end end else if 126>=f then if f>122 then if f>=125 then if 121<f then for t=33,75 do if f>125 then if not e[r[n]]then o=o+1;else o=r[d];end;break;end;e[r[n]]=(r[d]~=0);break;end;else if not e[r[n]]then o=o+1;else o=r[d];end;end else if 121<f then for h=21,90 do if f>123 then local f;for h=0,2 do if 0>=h then e(r[n],r[d]);o=o+1;r=t[o];else if 1==h then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else e[r[n]][r[d]]=e[r[l]];end end end break;end;e[r[n]][r[d]]=r[l];break;end;else e[r[n]][r[d]]=r[l];end end else if f>=121 then if f~=119 then for k=24,63 do if f~=121 then local r=r[n];do return s(e,r,a)end;break;end;local a;for f=0,6 do if 2>=f then if 1>f then a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];else if-3~=f then for h=27,58 do if 2~=f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end else if f<5 then if-1<=f then for s=10,69 do if f>3 then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if f~=1 then for h=16,65 do if 5~=f then e(r[n],r[d]);break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end break;end;else local a;for f=0,6 do if 2>=f then if 1>f then a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];else if-3~=f then for h=27,58 do if 2~=f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end else if f<5 then if-1<=f then for s=10,69 do if f>3 then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if f~=1 then for h=16,65 do if 5~=f then e(r[n],r[d]);break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end end else do return e[r[n]]end end end else if f>129 then if f>=132 then if 129<f then for k=43,68 do if 133>f then local o=r[n]local d={e[o](s(e,o+1,a))};local n=0;for r=o,r[l]do n=n+1;e[r]=d[n];end break;end;local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];break;end;else local n=r[n]local d={e[n](s(e,n+1,a))};local o=0;for r=n,r[l]do o=o+1;e[r]=d[o];end end else if f>=129 then repeat if f<131 then local n=r[n];local l=r[l];local t=n+2 local n={e[n](e[n+1],e[t])};for r=1,l do e[t+r]=n[r];end;local n=n[1]if n then e[t]=n o=r[d];else o=o+1;end;break;end;local f,c,p,_,b;for k=0,9 do if k>=5 then if 7<=k then if 8<=k then if k>6 then repeat if k~=9 then f=r[n]e[f]=e[f]()o=o+1;r=t[o];break;end;for r=r[n],r[d]do e[r]=nil;end;until true;else f=r[n]e[f]=e[f]()o=o+1;r=t[o];end else f=r[n]e[f]=e[f](s(e,f+1,a))o=o+1;r=t[o];end else if k==5 then e(r[n],r[d]);o=o+1;r=t[o];else f=r[n]p,_=u(e[f](s(e,f+1,r[d])))a=_+f-1 b=0;for r=f,a do b=b+1;e[r]=p[b];end;o=o+1;r=t[o];end end else if k<2 then if 1==k then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end else if k<3 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if 3~=k then f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end end until true;else local f,c,p,_,b;for k=0,9 do if k>=5 then if 7<=k then if 8<=k then if k>6 then repeat if k~=9 then f=r[n]e[f]=e[f]()o=o+1;r=t[o];break;end;for r=r[n],r[d]do e[r]=nil;end;until true;else f=r[n]e[f]=e[f]()o=o+1;r=t[o];end else f=r[n]e[f]=e[f](s(e,f+1,a))o=o+1;r=t[o];end else if k==5 then e(r[n],r[d]);o=o+1;r=t[o];else f=r[n]p,_=u(e[f](s(e,f+1,r[d])))a=_+f-1 b=0;for r=f,a do b=b+1;e[r]=p[b];end;o=o+1;r=t[o];end end else if k<2 then if 1==k then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end else if k<3 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if 3~=k then f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end end end end else if 128<=f then if f<129 then local o=r[n]local n,r=u(e[o](s(e,o+1,r[d])))a=r+o-1 local r=0;for o=o,a do r=r+1;e[o]=n[r];end;else for l=0,6 do if l<=2 then if l<1 then e(r[n],r[d]);o=o+1;r=t[o];else if-1<=l then repeat if 1~=l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end else if l<=4 then if 0<l then repeat if l>3 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end else if 1~=l then for f=42,69 do if l~=5 then e(r[n],r[d]);break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);end end end end end else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;end end end end else if f>146 then if f<154 then if 150<=f then if 152<=f then if f~=148 then for s=29,87 do if f~=153 then local o=r[n];local n=e[o];for r=o+1,r[d]do k.aKQtPZiV(n,e[r])end;break;end;for f=0,6 do if f>2 then if f<=4 then if f>-1 then for h=39,72 do if 3<f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 4<=f then for s=10,91 do if 5~=f then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];end end else if f<=0 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if 2>f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end break;end;else local o=r[n];local n=e[o];for r=o+1,r[d]do k.aKQtPZiV(n,e[r])end;end else if 151==f then local h,f,s,l,t;local o=0;while o>-1 do if 2<o then if o>=5 then if 2<=o then repeat if o~=6 then e(t,l);break;end;o=-2;until true;else e(t,l);end else if 4==o then t=h[f];else l=h[s];end end else if o<1 then h=r;else if o~=0 then for r=27,75 do if o~=1 then s=d;break;end;f=n;break;end;else f=n;end end end o=o+1 end else b[r[d]]=e[r[n]];end end else if 147>=f then for f=0,6 do if f<3 then if f>0 then if f>-1 then repeat if f>1 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if f>4 then if 5<f then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if f<4 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end else if f~=144 then for h=13,68 do if f~=148 then local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;break;end;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);break;end;else e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);end end end else if 156<f then if 159<=f then if 158<f then for t=46,60 do if f~=159 then o=r[d];break;end;e[r[n]]=e[r[d]];break;end;else o=r[d];end else if 158>f then local r=r[n]e[r]=e[r](e[r+1])else e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end end else if f>154 then if f~=155 then local f,h;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];else local f,a;e[r[n]]=h[r[d]];o=o+1;r=t[o];f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]];o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];b[r[d]]=e[r[n]];o=o+1;r=t[o];do return end;end else local a=y[r[d]];local s;local f={};s=k.ojuBenFI({},{__index=function(o,r)local r=f[r];return r[1][r[2]];end,__newindex=function(e,r,o)local r=f[r]r[1][r[2]]=o;end;});for n=1,r[l]do o=o+1;local r=t[o];if r[j]==159 then f[n-1]={e,r[d]};else f[n-1]={b,r[d]};end;_[#_+1]=f;end;e[r[n]]=g(a,s,h);end end end else if 139>=f then if 136>=f then if 134>=f then local r=r[n];a=r+m-1;for o=r,a do local r=p[o-r];e[o]=r;end;else if 133<=f then for s=16,79 do if 136~=f then for f=0,6 do if f>2 then if f<=4 then if 2~=f then for h=34,74 do if f~=4 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 4~=f then for s=26,88 do if f>5 then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if f<1 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if 0<f then for h=25,98 do if f~=2 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end break;end;h[r[d]]=e[r[n]];break;end;else for f=0,6 do if f>2 then if f<=4 then if 2~=f then for h=34,74 do if f~=4 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 4~=f then for s=26,88 do if f>5 then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if f<1 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if 0<f then for h=25,98 do if f~=2 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end end end else if 138>f then local f,a;for h=0,6 do if 3<=h then if 5<=h then if h~=2 then repeat if h~=6 then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];break;end;f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];until true;else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end else if-1~=h then repeat if 3<h then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]]={};o=o+1;r=t[o];until true;else e[r[n]]={};o=o+1;r=t[o];end end else if 1>h then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else if h>1 then e(r[n],r[d]);o=o+1;r=t[o];else f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];end end end end else if f~=139 then local r=r[n];local o=e[r];for r=r+1,a do k.aKQtPZiV(o,e[r])end;else local r=r[n]e[r]=e[r](e[r+1])end end end else if 142<f then if 145<=f then if f~=143 then for l=28,56 do if 145~=f then local l;l=r[n]e[l]=e[l](s(e,l+1,r[d]))o=o+1;r=t[o];do return end;break;end;local f,k,a,h,s,l;for l=0,6 do if 3>l then if 1>l then l=0;while l>-1 do if 3<=l then if l<=4 then if 2<=l then for r=32,79 do if l<4 then h=f[a];break;end;s=f[k];break;end;else h=f[a];end else if 5<l then l=-2;else e(s,h);end end else if 0<l then if l==2 then a=d;else k=n;end else f=r;end end l=l+1 end o=o+1;r=t[o];else if l<2 then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end end else if 5<=l then if l>=2 then repeat if l<6 then e(r[n],r[d]);o=o+1;r=t[o];break;end;l=0;while l>-1 do if l<3 then if 0<l then if 2>l then k=n;else a=d;end else f=r;end else if l>4 then if l>3 then for r=22,52 do if l<6 then e(s,h);break;end;l=-2;break;end;else l=-2;end else if 4~=l then h=f[a];else s=f[k];end end end l=l+1 end until true;else e(r[n],r[d]);o=o+1;r=t[o];end else if l==4 then l=0;while l>-1 do if 3<=l then if l>4 then if l>=1 then for r=13,96 do if 6>l then e(s,h);break;end;l=-2;break;end;else l=-2;end else if l>=2 then repeat if 4~=l then h=f[a];break;end;s=f[k];until true;else s=f[k];end end else if l<1 then f=r;else if l==2 then a=d;else k=n;end end end l=l+1 end o=o+1;r=t[o];else l=0;while l>-1 do if 3<=l then if l<=4 then if l==4 then s=f[k];else h=f[a];end else if 1<=l then for r=32,74 do if l~=6 then e(s,h);break;end;l=-2;break;end;else e(s,h);end end else if 1>l then f=r;else if 2~=l then k=n;else a=d;end end end l=l+1 end o=o+1;r=t[o];end end end end break;end;else local f,k,a,h,s,l;for l=0,6 do if 3>l then if 1>l then l=0;while l>-1 do if 3<=l then if l<=4 then if 2<=l then for r=32,79 do if l<4 then h=f[a];break;end;s=f[k];break;end;else h=f[a];end else if 5<l then l=-2;else e(s,h);end end else if 0<l then if l==2 then a=d;else k=n;end else f=r;end end l=l+1 end o=o+1;r=t[o];else if l<2 then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end end else if 5<=l then if l>=2 then repeat if l<6 then e(r[n],r[d]);o=o+1;r=t[o];break;end;l=0;while l>-1 do if l<3 then if 0<l then if 2>l then k=n;else a=d;end else f=r;end else if l>4 then if l>3 then for r=22,52 do if l<6 then e(s,h);break;end;l=-2;break;end;else l=-2;end else if 4~=l then h=f[a];else s=f[k];end end end l=l+1 end until true;else e(r[n],r[d]);o=o+1;r=t[o];end else if l==4 then l=0;while l>-1 do if 3<=l then if l>4 then if l>=1 then for r=13,96 do if 6>l then e(s,h);break;end;l=-2;break;end;else l=-2;end else if l>=2 then repeat if 4~=l then h=f[a];break;end;s=f[k];until true;else s=f[k];end end else if l<1 then f=r;else if l==2 then a=d;else k=n;end end end l=l+1 end o=o+1;r=t[o];else l=0;while l>-1 do if 3<=l then if l<=4 then if l==4 then s=f[k];else h=f[a];end else if 1<=l then for r=32,74 do if l~=6 then e(s,h);break;end;l=-2;break;end;else e(s,h);end end else if 1>l then f=r;else if 2~=l then k=n;else a=d;end end end l=l+1 end o=o+1;r=t[o];end end end end end else if 140~=f then for s=30,77 do if f>143 then e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);break;end;for f=0,6 do if 3<=f then if 5>f then if 0<=f then for h=30,94 do if 4>f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if f>4 then for s=32,70 do if 6>f then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if f>0 then if 0<f then for h=12,78 do if f~=1 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end break;end;else for f=0,6 do if 3<=f then if 5>f then if 0<=f then for h=30,94 do if 4>f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if f>4 then for s=32,70 do if 6>f then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if f>0 then if 0<f then for h=12,78 do if f~=1 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end end else if f<141 then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];else if 140~=f then for s=24,74 do if f~=142 then for f=0,6 do if 2<f then if f>=5 then if f>5 then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if-1~=f then repeat if 4~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end else if 1<=f then if 2==f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end break;end;local r=r[n];a=r+m-1;for o=r,a do local r=p[o-r];e[o]=r;end;break;end;else for f=0,6 do if 2<f then if f>=5 then if f>5 then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if-1~=f then repeat if 4~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end else if 1<=f then if 2==f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end end end end end end else if f<=187 then if f<=173 then if f<=166 then if 163>=f then if f<=161 then local a,s;for f=0,9 do if f>=5 then if f>=7 then if f>=8 then if f~=6 then repeat if f~=9 then e[r[n]]={};o=o+1;r=t[o];break;end;e[r[n]]={};until true;else e[r[n]]={};o=o+1;r=t[o];end else a=r[n];s=e[r[d]];e[a+1]=s;e[a]=s[r[l]];o=o+1;r=t[o];end else if f~=2 then repeat if f>5 then e[r[n]]=(r[d]~=0);o=o+1;r=t[o];break;end;for r=r[n],r[d]do e[r]=nil;end;o=o+1;r=t[o];until true;else e[r[n]]=(r[d]~=0);o=o+1;r=t[o];end end else if f>=2 then if f>2 then if-1~=f then repeat if f~=4 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if f~=-2 then for s=27,88 do if 1>f then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end else if 159<f then repeat if f<163 then local r=r[n]local n,o=u(e[r](e[r+1]))a=o+r-1 local o=0;for r=r,a do o=o+1;e[r]=n[o];end;break;end;local r=r[n]e[r](e[r+1])until true;else local r=r[n]local n,o=u(e[r](e[r+1]))a=o+r-1 local o=0;for r=r,a do o=o+1;e[r]=n[o];end;end end else if f>164 then if f>164 then repeat if f~=166 then local f,b,c,p,k;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]c,p=u(e[f](s(e,f+1,r[d])))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=c[k];end;o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,a))o=o+1;r=t[o];e[r[n]]();o=o+1;r=t[o];do return end;break;end;local f,a;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]];o=o+1;r=t[o];f=r[n]e[f](s(e,f+1,r[d]))o=o+1;r=t[o];do return end;until true;else local f,a;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]];o=o+1;r=t[o];f=r[n]e[f](s(e,f+1,r[d]))o=o+1;r=t[o];do return end;end else local f,k,h,a,s,l;for l=0,6 do if 3>l then if l<=0 then e(r[n],r[d]);o=o+1;r=t[o];else if l>-1 then repeat if 2~=l then l=0;while l>-1 do if 3<=l then if l>=5 then if 6==l then l=-2;else e(s,a);end else if l>2 then repeat if 4>l then a=f[h];break;end;s=f[k];until true;else a=f[h];end end else if 1<=l then if l>=-2 then repeat if 1~=l then h=d;break;end;k=n;until true;else h=d;end else f=r;end end l=l+1 end o=o+1;r=t[o];break;end;l=0;while l>-1 do if 2<l then if l>=5 then if l>=4 then for r=38,74 do if l>5 then l=-2;break;end;e(s,a);break;end;else e(s,a);end else if l==3 then a=f[h];else s=f[k];end end else if l<1 then f=r;else if 1==l then k=n;else h=d;end end end l=l+1 end o=o+1;r=t[o];until true;else l=0;while l>-1 do if 3<=l then if l>=5 then if 6==l then l=-2;else e(s,a);end else if l>2 then repeat if 4>l then a=f[h];break;end;s=f[k];until true;else a=f[h];end end else if 1<=l then if l>=-2 then repeat if 1~=l then h=d;break;end;k=n;until true;else h=d;end else f=r;end end l=l+1 end o=o+1;r=t[o];end end else if 5>l then if 1<=l then for u=49,87 do if l~=4 then e(r[n],r[d]);o=o+1;r=t[o];break;end;l=0;while l>-1 do if l>2 then if 4<l then if l>1 then repeat if 5<l then l=-2;break;end;e(s,a);until true;else l=-2;end else if 4>l then a=f[h];else s=f[k];end end else if l>=1 then if l==1 then k=n;else h=d;end else f=r;end end l=l+1 end o=o+1;r=t[o];break;end;else l=0;while l>-1 do if l>2 then if 4<l then if l>1 then repeat if 5<l then l=-2;break;end;e(s,a);until true;else l=-2;end else if 4>l then a=f[h];else s=f[k];end end else if l>=1 then if l==1 then k=n;else h=d;end else f=r;end end l=l+1 end o=o+1;r=t[o];end else if 2<l then for u=26,64 do if 5~=l then e(r[n],r[d]);break;end;l=0;while l>-1 do if 2>=l then if 1<=l then if l~=-1 then repeat if 1<l then h=d;break;end;k=n;until true;else h=d;end else f=r;end else if l<5 then if 1<=l then for r=41,91 do if 4~=l then a=f[h];break;end;s=f[k];break;end;else s=f[k];end else if l~=6 then e(s,a);else l=-2;end end end l=l+1 end o=o+1;r=t[o];break;end;else l=0;while l>-1 do if 2>=l then if 1<=l then if l~=-1 then repeat if 1<l then h=d;break;end;k=n;until true;else h=d;end else f=r;end else if l<5 then if 1<=l then for r=41,91 do if 4~=l then a=f[h];break;end;s=f[k];break;end;else s=f[k];end else if l~=6 then e(s,a);else l=-2;end end end l=l+1 end o=o+1;r=t[o];end end end end end end else if 169>=f then if 168>f then local f,h;for a=0,2 do if 0>=a then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else if a<2 then f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];else e(r[n],r[d]);end end end else if 168==f then local a,c,u,k,b,f,s;for f=0,6 do if 2>=f then if f>0 then if-2<f then repeat if f>1 then s=r[n]e[s]=e[s](e[s+1])o=o+1;r=t[o];break;end;f=0;while f>-1 do if f<3 then if 0>=f then a=r;else if-2<=f then repeat if 1<f then u=d;break;end;c=n;until true;else u=d;end end else if f>=5 then if 4<f then for r=22,54 do if 6~=f then e(b,k);break;end;f=-2;break;end;else e(b,k);end else if f~=2 then for r=24,85 do if 3~=f then b=a[c];break;end;k=a[u];break;end;else k=a[u];end end end f=f+1 end o=o+1;r=t[o];until true;else s=r[n]e[s]=e[s](e[s+1])o=o+1;r=t[o];end else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if f>4 then if f~=2 then for s=47,71 do if 5<f then e[r[n]]=h[r[d]];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];end else if 0~=f then for h=13,53 do if f~=3 then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end end end else for f=0,6 do if 3<=f then if 4>=f then if 2<=f then for h=45,78 do if 3~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 5~=f then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if 1>f then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if f>1 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end end end else if f<=171 then if f~=170 then e[r[n]]={};else local h,a,k,p,b,u,c,f;for f=0,4 do if 1>=f then if-4~=f then for h=46,89 do if 0~=f then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]]={};o=o+1;r=t[o];break;end;else e[r[n]]={};o=o+1;r=t[o];end else if f>2 then if-1~=f then for s=10,79 do if 4>f then h=r[n];a=e[r[d]];e[h+1]=a;e[h]=a[r[l]];o=o+1;r=t[o];break;end;f=0;while f>-1 do if 3<=f then if 4>=f then if 4>f then u=k[b];else c=k[p];end else if 1<f then repeat if f~=6 then e(c,u);break;end;f=-2;until true;else e(c,u);end end else if f>=1 then if f>=-3 then repeat if 2~=f then p=n;break;end;b=d;until true;else b=d;end else k=r;end end f=f+1 end break;end;else h=r[n];a=e[r[d]];e[h+1]=a;e[h]=a[r[l]];o=o+1;r=t[o];end else h=r[n]e[h]=e[h](s(e,h+1,r[d]))o=o+1;r=t[o];end end end end else if 171~=f then for k=32,54 do if f>172 then local r=r[n]e[r](e[r+1])break;end;local f,c,_,p,k,b;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];f=r[n]b,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=b[k];end;o=o+1;r=t[o];f=r[n]b={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=b[k];end break;end;else local r=r[n]e[r](e[r+1])end end end end else if 181<=f then if 183<f then if 185<f then if f==186 then local f,h;for a=0,2 do if 1<=a then if 2~=a then f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];else e(r[n],r[d]);end else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end end else local a;for f=0,6 do if 2<f then if 5>f then if 2<=f then for h=18,54 do if 3<f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];break;end;else a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];end else if 3~=f then repeat if 6>f then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e(r[n],r[d]);until true;else e(r[n],r[d]);end end else if f<1 then e(r[n],r[d]);o=o+1;r=t[o];else if 1==f then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end end end end end else if f>=180 then repeat if f<185 then for l=0,6 do if 3>l then if l>0 then if-2<l then for f=11,53 do if 1<l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end else if l>4 then if 2<l then repeat if 6~=l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);until true;else e(r[n],r[d]);end else if 2~=l then repeat if 4~=l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end end end break;end;for f=0,6 do if 3>f then if 0<f then if 1~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if 5<=f then if 2<=f then for s=49,93 do if f>5 then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];end else if 4~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end until true;else for f=0,6 do if 3>f then if 0<f then if 1~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if 5<=f then if 2<=f then for s=49,93 do if f>5 then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];end else if 4~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end end end else if 182<=f then if f>=178 then repeat if 183>f then local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];break;end;local r=r[n];do return e[r](s(e,r+1,a))end;until true;else local r=r[n];do return e[r](s(e,r+1,a))end;end else do return e[r[n]]end end end else if 177>f then if 174>=f then local r=r[n];do return e[r](s(e,r+1,a))end;else if 173<f then for k=22,60 do if 176>f then local f,b,p,c,k;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]p,c=u(e[f](s(e,f+1,r[d])))a=c+f-1 k=0;for r=f,a do k=k+1;e[r]=p[k];end;o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,a))o=o+1;r=t[o];e[r[n]]();o=o+1;r=t[o];do return end;break;end;if(e[r[n]]==e[r[l]])then o=o+1;else o=r[d];end;break;end;else if(e[r[n]]==e[r[l]])then o=o+1;else o=r[d];end;end end else if 179<=f then if 179<f then local f;for s=0,5 do if s>2 then if s>3 then if s==4 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if not e[r[n]]then o=o+1;else o=r[d];end;end else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if s>0 then if s>-3 then for l=13,70 do if 1~=s then f=r[n]e[f]=e[f](e[f+1])o=o+1;r=t[o];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else f=r[n]e[f]=e[f](e[f+1])o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end else local o=r[n]e[o]=e[o](s(e,o+1,r[d]))end else if 178>f then e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);else local f,c,_,p,k,b;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];f=r[n]b,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=b[k];end;o=o+1;r=t[o];f=r[n]b={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=b[k];end end end end end end else if f<=200 then if f>=194 then if 196<f then if f>=199 then if 200>f then local h,k,u,b,c,f,a;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=0;while f>-1 do if f>2 then if 4>=f then if-1~=f then for r=41,77 do if f>3 then c=h[k];break;end;b=h[u];break;end;else b=h[u];end else if f~=5 then f=-2;else e(c,b);end end else if f<1 then h=r;else if-2<=f then for r=32,56 do if f~=2 then k=n;break;end;u=d;break;end;else k=n;end end end f=f+1 end o=o+1;r=t[o];a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;else local f,h;for a=0,6 do if a<=2 then if 1>a then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else if a~=-3 then repeat if 2~=a then f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];end end else if a>=5 then if 1<=a then for k=48,70 do if 6~=a then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];break;end;f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];break;end;else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end else if-1<a then repeat if 3<a then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]]={};o=o+1;r=t[o];until true;else e[r[n]]={};o=o+1;r=t[o];end end end end end else if f~=196 then for h=16,90 do if f~=197 then local a,b,k,u,c,f,h;f=0;while f>-1 do if 3>f then if 0<f then if-1~=f then for r=47,68 do if 2~=f then b=n;break;end;k=d;break;end;else b=n;end else a=r;end else if f>4 then if 2~=f then repeat if f<6 then e(c,u);break;end;f=-2;until true;else f=-2;end else if f>0 then for r=38,75 do if 3~=f then c=a[b];break;end;u=a[k];break;end;else u=a[k];end end end f=f+1 end o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];h=r[n]e[h]=e[h](s(e,h+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;break;end;e[r[n]]();break;end;else e[r[n]]();end end else if 194<f then if f~=193 then for h=48,52 do if f<196 then local f,a;for h=0,4 do if 1<h then if h<=2 then e(r[n],r[d]);o=o+1;r=t[o];else if h<4 then e[r[n]]={};o=o+1;r=t[o];else e[r[n]][r[d]]=r[l];end end else if h>=-1 then repeat if 0<h then f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];break;end;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];until true;else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end end end break;end;local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;break;end;else local f,a;for h=0,4 do if 1<h then if h<=2 then e(r[n],r[d]);o=o+1;r=t[o];else if h<4 then e[r[n]]={};o=o+1;r=t[o];else e[r[n]][r[d]]=r[l];end end else if h>=-1 then repeat if 0<h then f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];break;end;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];until true;else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end end end end else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);end end else if 191>f then if f<189 then local r=r[n];do return s(e,r,a)end;else if 185<=f then repeat if 189~=f then local h,f;for s=0,2 do if 1<=s then if 2>s then h=r[n];f=e[r[d]];e[h+1]=f;e[h]=f[r[l]];o=o+1;r=t[o];else e(r[n],r[d]);end else e[r[n]]=e[r[d]];o=o+1;r=t[o];end end break;end;e[r[n]]=g(y[r[d]],nil,h);until true;else local f,h;for s=0,2 do if 1<=s then if 2>s then f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];else e(r[n],r[d]);end else e[r[n]]=e[r[d]];o=o+1;r=t[o];end end end end else if 192>f then e[r[n]]=e[r[d]][r[l]];else if 189~=f then for k=41,63 do if 192<f then local f,_,b,p,k,c;for b=0,6 do if b>=3 then if b>=5 then if b>1 then repeat if 6~=b then f=r[n]c={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=c[k];end o=o+1;r=t[o];break;end;o=r[d];until true;else o=r[d];end else if b>2 then for h=13,66 do if b>3 then f=r[n]c,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=c[k];end;o=o+1;r=t[o];break;end;f=r[n];_=e[r[d]];e[f+1]=_;e[f]=_[r[l]];o=o+1;r=t[o];break;end;else f=r[n]c,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=c[k];end;o=o+1;r=t[o];end end else if b<1 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else if b>-2 then for f=18,77 do if b~=2 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end break;end;local t,l,s,f,h;local o=0;while o>-1 do if 3<=o then if 4<o then if o>5 then o=-2;else e(h,f);end else if 3<o then h=t[l];else f=t[s];end end else if 0<o then if o~=-2 then repeat if o~=2 then l=n;break;end;s=d;until true;else l=n;end else t=r;end end o=o+1 end break;end;else local l,t,f,h,s;local o=0;while o>-1 do if 3<=o then if 4<o then if o>5 then o=-2;else e(s,h);end else if 3<o then s=l[t];else h=l[f];end end else if 0<o then if o~=-2 then repeat if o~=2 then t=n;break;end;f=d;until true;else t=n;end else l=r;end end o=o+1 end end end end end else if 208<=f then if f<=210 then if 209<=f then if 205~=f then repeat if f>209 then local k,p,a,h,b,c,u,f;for f=0,2 do if f<=0 then k=r[n]e[k]=e[k](s(e,k+1,r[d]))o=o+1;r=t[o];else if f>=-2 then repeat if 1<f then f=0;while f>-1 do if f>2 then if 4>=f then if 0<=f then for r=15,74 do if f~=4 then c=a[b];break;end;u=a[h];break;end;else u=a[h];end else if f>=1 then for r=22,95 do if f<6 then e(u,c);break;end;f=-2;break;end;else f=-2;end end else if f<1 then a=r;else if f>0 then repeat if f>1 then b=d;break;end;h=n;until true;else h=n;end end end f=f+1 end break;end;k=r[n];p=e[r[d]];e[k+1]=p;e[k]=p[r[l]];o=o+1;r=t[o];until true;else f=0;while f>-1 do if f>2 then if 4>=f then if 0<=f then for r=15,74 do if f~=4 then c=a[b];break;end;u=a[h];break;end;else u=a[h];end else if f>=1 then for r=22,95 do if f<6 then e(u,c);break;end;f=-2;break;end;else f=-2;end end else if f<1 then a=r;else if f>0 then repeat if f>1 then b=d;break;end;h=n;until true;else h=n;end end end f=f+1 end end end end break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];until true;else e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end else if not e[r[n]]then o=o+1;else o=r[d];end;end else if 213<=f then if f>=210 then for a=20,62 do if f<214 then e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);break;end;local a;for f=0,6 do if 2>=f then if f>=1 then if f<2 then a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end else if f<=4 then if f>=0 then for h=29,80 do if f>3 then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=r[l];o=o+1;r=t[o];end else if 5~=f then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end break;end;else local a;for f=0,6 do if 2>=f then if f>=1 then if f<2 then a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end else if f<=4 then if f>=0 then for h=29,80 do if f>3 then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=r[l];o=o+1;r=t[o];end else if 5~=f then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end end else if 209~=f then repeat if 211~=f then e[r[n]]={};break;end;local r=r[n];local o=e[r];for r=r+1,a do k.aKQtPZiV(o,e[r])end;until true;else local r=r[n];local o=e[r];for r=r+1,a do k.aKQtPZiV(o,e[r])end;end end end else if 203<f then if 205>=f then if f~=200 then repeat if f~=204 then if e[r[n]]then o=o+1;else o=r[d];end;break;end;if(e[r[n]]==r[l])then o=o+1;else o=r[d];end;until true;else if(e[r[n]]==r[l])then o=o+1;else o=r[d];end;end else if 206<f then local o=r[n]e[o](s(e,o+1,r[d]))else local f,h;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];end end else if 201<f then if 200~=f then repeat if f>202 then local f,c,_,p,k,b;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];f=r[n]b,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=b[k];end;o=o+1;r=t[o];f=r[n]b={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=b[k];end break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];until true;else local f,c,_,p,k,b;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];f=r[n]b,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=b[k];end;o=o+1;r=t[o];f=r[n]b={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=b[k];end end else b[r[d]]=e[r[n]];end end end end end end else if 53>f then if f<26 then if 13<=f then if f<=18 then if 15>=f then if f<14 then if(e[r[n]]==e[r[l]])then o=o+1;else o=r[d];end;else if f~=10 then for k=13,78 do if f~=15 then local f,b,_,p,k,c;e[r[n]]=h[r[d]];o=o+1;r=t[o];f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];f=r[n]c,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=c[k];end;o=o+1;r=t[o];f=r[n]c={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=c[k];end o=o+1;r=t[o];o=r[d];break;end;if(e[r[n]]==r[l])then o=o+1;else o=r[d];end;break;end;else local f,b,_,p,k,c;e[r[n]]=h[r[d]];o=o+1;r=t[o];f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];f=r[n]c,p=u(e[f](e[f+1]))a=p+f-1 k=0;for r=f,a do k=k+1;e[r]=c[k];end;o=o+1;r=t[o];f=r[n]c={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=c[k];end o=o+1;r=t[o];o=r[d];end end else if 17<=f then if 14<f then repeat if f~=17 then for r=r[n],r[d]do e[r]=nil;end;break;end;for f=0,6 do if 2<f then if f<=4 then if f~=4 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 5<f then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if 0<f then if-1<f then for h=16,81 do if 2~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end until true;else for r=r[n],r[d]do e[r]=nil;end;end else e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);end end else if f<22 then if f>19 then if 19<=f then repeat if 20<f then local a,u,p,k,c,b,f;a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=0;while f>-1 do if f<3 then if f>=1 then if f>=-2 then repeat if f~=2 then p=n;break;end;k=d;until true;else k=d;end else u=r;end else if 5>f then if f~=3 then b=u[p];else c=u[k];end else if f~=5 then f=-2;else e(b,c);end end end f=f+1 end break;end;local f,p,b,_,k,c;for b=0,6 do if b>2 then if b<=4 then if b>2 then repeat if 3<b then f=r[n];p=e[r[d]];e[f+1]=p;e[f]=p[r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else f=r[n];p=e[r[d]];e[f+1]=p;e[f]=p[r[l]];o=o+1;r=t[o];end else if 2<b then for d=39,83 do if 6~=b then f=r[n]c,_=u(e[f](e[f+1]))a=_+f-1 k=0;for r=f,a do k=k+1;e[r]=c[k];end;o=o+1;r=t[o];break;end;f=r[n]c={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=c[k];end break;end;else f=r[n]c={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=c[k];end end end else if 1<=b then if 2~=b then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end until true;else local f,c,b,_,k,p;for b=0,6 do if b>2 then if b<=4 then if b>2 then repeat if 3<b then f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else f=r[n];c=e[r[d]];e[f+1]=c;e[f]=c[r[l]];o=o+1;r=t[o];end else if 2<b then for d=39,83 do if 6~=b then f=r[n]p,_=u(e[f](e[f+1]))a=_+f-1 k=0;for r=f,a do k=k+1;e[r]=p[k];end;o=o+1;r=t[o];break;end;f=r[n]p={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=p[k];end break;end;else f=r[n]p={e[f](s(e,f+1,a))};k=0;for r=f,r[l]do k=k+1;e[r]=p[k];end end end else if 1<=b then if 2~=b then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end else local s,u,c,p,k,a,f,h;for f=0,4 do if 1<f then if f>=3 then if f>2 then for h=22,78 do if f>3 then if(e[r[n]]==e[r[l]])then o=o+1;else o=r[d];end;break;end;e[r[n]]=b[r[d]];o=o+1;r=t[o];break;end;else if(e[r[n]]==e[r[l]])then o=o+1;else o=r[d];end;end else h=r[n]e[h]=e[h](e[h+1])o=o+1;r=t[o];end else if 0==f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else f=0;while f>-1 do if 4>f then if 1<f then if f~=3 then c=d;else p=e;end else if f~=0 then u=n;else s=r;end end else if f<6 then if 4<f then a=s[u];else k=p[s[c]];end else if 3<f then repeat if f~=7 then e[a]=k;break;end;f=-2;until true;else e[a]=k;end end end f=f+1 end o=o+1;r=t[o];end end end end else if 23<f then if 21~=f then repeat if f<25 then local f;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];break;end;local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;until true;else local f;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];end else if 18<f then repeat if 23>f then local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;break;end;local f,s,a,k,h,l;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];l=0;while l>-1 do if 3<=l then if 4<l then if l~=1 then for r=23,71 do if l~=6 then e(h,k);break;end;l=-2;break;end;else e(h,k);end else if 0~=l then repeat if 3<l then h=f[s];break;end;k=f[a];until true;else h=f[s];end end else if 1>l then f=r;else if-2<l then for r=33,71 do if l>1 then a=d;break;end;s=n;break;end;else a=d;end end end l=l+1 end o=o+1;r=t[o];l=0;while l>-1 do if 3<=l then if 4>=l then if 3==l then k=f[a];else h=f[s];end else if l>2 then for r=43,52 do if l~=5 then l=-2;break;end;e(h,k);break;end;else l=-2;end end else if l<=0 then f=r;else if-3~=l then for r=49,59 do if 1<l then a=d;break;end;s=n;break;end;else a=d;end end end l=l+1 end o=o+1;r=t[o];l=0;while l>-1 do if l<3 then if 0>=l then f=r;else if-3~=l then for r=34,56 do if l~=2 then s=n;break;end;a=d;break;end;else s=n;end end else if 4>=l then if 2<l then repeat if l~=4 then k=f[a];break;end;h=f[s];until true;else h=f[s];end else if l~=6 then e(h,k);else l=-2;end end end l=l+1 end o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);until true;else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;end end end end else if f<=5 then if 2<f then if 4<=f then if f~=1 then for h=10,77 do if 4~=f then local f,h;for a=0,6 do if 2>=a then if a<=0 then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else if a>-3 then for s=39,64 do if 2>a then f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];end end else if 5<=a then if a>5 then f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end else if 4==a then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];else e[r[n]]={};o=o+1;r=t[o];end end end end break;end;local f,a;for h=0,6 do if 3<=h then if 5<=h then if h==6 then f=r[n]e[f]=e[f](s(e,f+1,r[d]))else e[r[n]][r[d]]=r[l];o=o+1;r=t[o];end else if-1<h then for l=42,53 do if 3<h then e[r[n]]={};o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e[r[n]]={};o=o+1;r=t[o];end end else if 1<=h then if h>=-1 then for s=32,89 do if 2~=h then e[r[n]]=e[r[d]];o=o+1;r=t[o];break;end;f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]];o=o+1;r=t[o];end else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end end end break;end;else local f,a;for h=0,6 do if 3<=h then if 5<=h then if h==6 then f=r[n]e[f]=e[f](s(e,f+1,r[d]))else e[r[n]][r[d]]=r[l];o=o+1;r=t[o];end else if-1<h then for l=42,53 do if 3<h then e[r[n]]={};o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e[r[n]]={};o=o+1;r=t[o];end end else if 1<=h then if h>=-1 then for s=32,89 do if 2~=h then e[r[n]]=e[r[d]];o=o+1;r=t[o];break;end;f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]];o=o+1;r=t[o];end else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end end end end else local f;e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end else if f<=0 then e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];else if f~=-1 then for a=36,66 do if f<2 then local f;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))break;end;h[r[d]]=e[r[n]];break;end;else h[r[d]]=e[r[n]];end end end else if 8<f then if f>=11 then if f==12 then for l=0,6 do if 3>l then if 1<=l then if l>-1 then for f=40,85 do if l>1 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end else if 4<l then if l>=1 then repeat if 5~=l then e(r[n],r[d]);break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);end else if l>=-1 then for f=26,53 do if l~=3 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end end end end else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);end else if f>=5 then repeat if f~=9 then e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];until true;else e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end end else if 7>f then local a;for f=0,6 do if f<3 then if 0>=f then e(r[n],r[d]);o=o+1;r=t[o];else if f~=-2 then for h=45,83 do if f~=1 then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end else if f>4 then if f>4 then repeat if f~=5 then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];until true;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if 1~=f then repeat if f~=4 then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];until true;else e[r[n]][r[d]]=r[l];o=o+1;r=t[o];end end end end else if f>4 then repeat if f~=8 then local f;for a=0,6 do if a<3 then if a>=1 then if 0<a then repeat if 2~=a then e(r[n],r[d]);o=o+1;r=t[o];break;end;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];until true;else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end else if 5>a then if 3~=a then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end else if a~=5 then e[r[n]]=e[r[d]][r[l]];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end break;end;local a=y[r[d]];local s;local f={};s=k.ojuBenFI({},{__index=function(o,r)local r=f[r];return r[1][r[2]];end,__newindex=function(e,r,o)local r=f[r]r[1][r[2]]=o;end;});for n=1,r[l]do o=o+1;local r=t[o];if r[j]==159 then f[n-1]={e,r[d]};else f[n-1]={b,r[d]};end;_[#_+1]=f;end;e[r[n]]=g(a,s,h);until true;else local a=y[r[d]];local s;local f={};s=k.ojuBenFI({},{__index=function(o,r)local r=f[r];return r[1][r[2]];end,__newindex=function(e,r,o)local r=f[r]r[1][r[2]]=o;end;});for n=1,r[l]do o=o+1;local r=t[o];if r[j]==159 then f[n-1]={e,r[d]};else f[n-1]={b,r[d]};end;_[#_+1]=f;end;e[r[n]]=g(a,s,h);end end end end end else if f<39 then if f<=31 then if 29>f then if 27<=f then if 25<=f then repeat if 27<f then for r=r[n],r[d]do e[r]=nil;end;break;end;local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);until true;else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);end else e[r[n]]=e[r[d]];end else if 29<f then if f>=29 then repeat if 30~=f then e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);break;end;e[r[n]][r[d]]=e[r[l]];until true;else e[r[n]][r[d]]=e[r[l]];end else local f,h;for a=0,2 do if 1<=a then if a~=1 then e(r[n],r[d]);else f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];end else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end end end end else if f<=34 then if f<33 then e[r[n]]();else if 34==f then local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;else for f=0,6 do if f<=2 then if 0<f then if f~=-3 then for h=18,54 do if 2~=f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=r[l];o=o+1;r=t[o];end else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if f<5 then if 0<f then repeat if f~=4 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];until true;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 3~=f then for h=36,53 do if f<6 then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=r[l];break;end;else e[r[n]][r[d]]=r[l];end end end end end end else if f<=36 then if 34~=f then repeat if 36~=f then local o=r[n];local n=e[o];for r=o+1,r[d]do k.aKQtPZiV(n,e[r])end;break;end;local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);until true;else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);end else if 33<=f then for h=12,95 do if 38~=f then local f;e[r[n]]=b[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];f=r[n]e[f](e[f+1])o=o+1;r=t[o];do return end;break;end;if e[r[n]]then o=o+1;else o=r[d];end;break;end;else if e[r[n]]then o=o+1;else o=r[d];end;end end end end else if 46<=f then if f>=49 then if f>=51 then if 51~=f then local f;for s=0,6 do if 2<s then if 5<=s then if 2~=s then repeat if s>5 then f=r[n]e[f]=e[f](e[f+1])break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end else if s>-1 then for f=44,65 do if 4~=s then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if s>=1 then if s>-3 then for l=48,87 do if 2~=s then e(r[n],r[d]);o=o+1;r=t[o];break;end;f=r[n]e[f]=e[f](e[f+1])o=o+1;r=t[o];break;end;else f=r[n]e[f]=e[f](e[f+1])o=o+1;r=t[o];end else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end else local f,a;for h=0,5 do if 2<h then if h<4 then e[r[n]]={};o=o+1;r=t[o];else if h>=0 then for f=42,53 do if h~=5 then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=r[l];break;end;else e[r[n]][r[d]]=r[l];end end else if 1>h then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else if 0<h then for s=37,55 do if 2>h then f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];end end end end end else if f==49 then local r=r[n]e[r]=e[r]()else local h,a,k,u,b,f,c;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];f=0;while f>-1 do if f<3 then if f>0 then if-1~=f then for r=25,82 do if f~=2 then a=n;break;end;k=d;break;end;else a=n;end else h=r;end else if f>=5 then if 5~=f then f=-2;else e(b,u);end else if f<4 then u=h[k];else b=h[a];end end end f=f+1 end o=o+1;r=t[o];f=0;while f>-1 do if f<=2 then if 0<f then if-1~=f then for r=16,94 do if f>1 then k=d;break;end;a=n;break;end;else a=n;end else h=r;end else if f>=5 then if 5~=f then f=-2;else e(b,u);end else if f<4 then u=h[k];else b=h[a];end end end f=f+1 end o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=0;while f>-1 do if f<3 then if 0>=f then h=r;else if 0<f then repeat if 1<f then k=d;break;end;a=n;until true;else k=d;end end else if 5>f then if 2~=f then repeat if 4>f then u=h[k];break;end;b=h[a];until true;else u=h[k];end else if 6==f then f=-2;else e(b,u);end end end f=f+1 end o=o+1;r=t[o];c=r[n]e[c]=e[c](s(e,c+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];end end else if f<=46 then if(e[r[n]]~=r[l])then o=o+1;else o=r[d];end;else if 48==f then for l=0,6 do if 3<=l then if l<5 then if l<4 then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end else if l~=2 then repeat if 5~=l then e(r[n],r[d]);break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end else if 0<l then if-1<l then for f=27,57 do if 1~=l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end end end else local r=r[n]e[r]=e[r](s(e,r+1,a))end end end else if f>=42 then if f<=43 then if f>=39 then repeat if 43>f then local r=r[n]e[r]=e[r]()break;end;for l=0,6 do if l<3 then if 1>l then e(r[n],r[d]);o=o+1;r=t[o];else if-1<=l then repeat if l~=2 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end else if 5<=l then if 2<=l then for f=28,68 do if 5<l then e(r[n],r[d]);break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);end else if l>3 then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end end end end until true;else for l=0,6 do if l<3 then if 1>l then e(r[n],r[d]);o=o+1;r=t[o];else if-1<=l then repeat if l~=2 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end else if 5<=l then if 2<=l then for f=28,68 do if 5<l then e(r[n],r[d]);break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);end else if l>3 then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end end end end end else if f>=42 then repeat if f~=45 then local f,a,u;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];h[r[d]]=e[r[n]];o=o+1;r=t[o];f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n];u=e[f];for r=f+1,r[d]do k.aKQtPZiV(u,e[r])end;break;end;do return end;until true;else do return end;end end else if 39<f then if 40~=f then local h,s,a,b,u,c,p,f,_;for f=0,4 do if 2<=f then if 3<=f then if 0<f then repeat if 4>f then e(r[n],r[d]);o=o+1;r=t[o];break;end;h=r[n];_=e[h];for r=h+1,r[d]do k.aKQtPZiV(_,e[r])end;until true;else e(r[n],r[d]);o=o+1;r=t[o];end else f=0;while f>-1 do if 3>f then if 1>f then a=r;else if f~=-1 then repeat if 2>f then b=n;break;end;u=d;until true;else u=d;end end else if 5>f then if f==4 then p=a[b];else c=a[u];end else if 1<=f then repeat if f>5 then f=-2;break;end;e(p,c);until true;else f=-2;end end end f=f+1 end o=o+1;r=t[o];end else if f==1 then e[r[n]]={};o=o+1;r=t[o];else h=r[n];s=e[r[d]];e[h+1]=s;e[h]=s[r[l]];o=o+1;r=t[o];end end end else e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);end else local a;for f=0,6 do if 3>f then if 0>=f then e(r[n],r[d]);o=o+1;r=t[o];else if 1==f then e(r[n],r[d]);o=o+1;r=t[o];else a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];end end else if f>=5 then if 3<=f then repeat if 6~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e(r[n],r[d]);until true;else e(r[n],r[d]);end else if 4~=f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end end end end end end else if 80<=f then if 93<=f then if f<100 then if f<=95 then if f<=93 then e[r[n]]=b[r[d]];else if f~=93 then repeat if 94<f then local a,_,h,c,k,b,u,p,f;for f=0,6 do if f>2 then if 4>=f then if f~=2 then repeat if f~=4 then f=0;while f>-1 do if 3>=f then if 1<f then if f~=1 then for r=44,53 do if f~=2 then b=e;break;end;k=d;break;end;else k=d;end else if f>-2 then for o=43,77 do if f~=1 then h=r;break;end;c=n;break;end;else h=r;end end else if f<6 then if f>=0 then repeat if 5~=f then u=b[h[k]];break;end;p=h[c];until true;else u=b[h[k]];end else if f~=7 then e[p]=u;else f=-2;end end end f=f+1 end o=o+1;r=t[o];break;end;f=0;while f>-1 do if 3<f then if 5<f then if 2<f then repeat if f~=6 then f=-2;break;end;e[p]=u;until true;else f=-2;end else if f>4 then p=h[c];else u=b[h[k]];end end else if 1<f then if 1<=f then for r=34,67 do if f>2 then b=e;break;end;k=d;break;end;else k=d;end else if f>-2 then repeat if f~=0 then c=n;break;end;h=r;until true;else h=r;end end end f=f+1 end o=o+1;r=t[o];until true;else f=0;while f>-1 do if 3<f then if 5<f then if 2<f then repeat if f~=6 then f=-2;break;end;e[p]=u;until true;else f=-2;end else if f>4 then p=h[c];else u=b[h[k]];end end else if 1<f then if 1<=f then for r=34,67 do if f>2 then b=e;break;end;k=d;break;end;else k=d;end else if f>-2 then repeat if f~=0 then c=n;break;end;h=r;until true;else h=r;end end end f=f+1 end o=o+1;r=t[o];end else if 1~=f then for l=31,53 do if f>5 then a=r[n]e[a](s(e,a+1,r[d]))break;end;e[r[n]]=(r[d]~=0);o=o+1;r=t[o];break;end;else a=r[n]e[a](s(e,a+1,r[d]))end end else if f>=1 then if f~=2 then e(r[n],r[d]);o=o+1;r=t[o];else a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];end else a=r[n];_=e[r[d]];e[a+1]=_;e[a]=_[r[l]];o=o+1;r=t[o];end end end break;end;local f,b,k,_,c,p;for k=0,9 do if k<=4 then if 2<=k then if k<=2 then f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];else if 3~=k then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end end else if-1<k then for l=21,72 do if 0<k then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if 7>k then if k~=1 then for h=34,97 do if k~=6 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];break;end;else f=r[n];b=e[r[d]];e[f+1]=b;e[f]=b[r[l]];o=o+1;r=t[o];end else if k<8 then f=r[n]p,_=u(e[f](e[f+1]))a=_+f-1 c=0;for r=f,a do c=c+1;e[r]=p[c];end;o=o+1;r=t[o];else if k>7 then for h=12,58 do if k~=9 then f=r[n]p={e[f](s(e,f+1,a))};c=0;for r=f,r[l]do c=c+1;e[r]=p[c];end o=o+1;r=t[o];break;end;o=r[d];break;end;else o=r[d];end end end end end until true;else local h,_,a,c,k,b,u,p,f;for f=0,6 do if f>2 then if 4>=f then if f~=2 then repeat if f~=4 then f=0;while f>-1 do if 3>=f then if 1<f then if f~=1 then for r=44,53 do if f~=2 then b=e;break;end;k=d;break;end;else k=d;end else if f>-2 then for o=43,77 do if f~=1 then a=r;break;end;c=n;break;end;else a=r;end end else if f<6 then if f>=0 then repeat if 5~=f then u=b[a[k]];break;end;p=a[c];until true;else u=b[a[k]];end else if f~=7 then e[p]=u;else f=-2;end end end f=f+1 end o=o+1;r=t[o];break;end;f=0;while f>-1 do if 3<f then if 5<f then if 2<f then repeat if f~=6 then f=-2;break;end;e[p]=u;until true;else f=-2;end else if f>4 then p=a[c];else u=b[a[k]];end end else if 1<f then if 1<=f then for r=34,67 do if f>2 then b=e;break;end;k=d;break;end;else k=d;end else if f>-2 then repeat if f~=0 then c=n;break;end;a=r;until true;else a=r;end end end f=f+1 end o=o+1;r=t[o];until true;else f=0;while f>-1 do if 3<f then if 5<f then if 2<f then repeat if f~=6 then f=-2;break;end;e[p]=u;until true;else f=-2;end else if f>4 then p=a[c];else u=b[a[k]];end end else if 1<f then if 1<=f then for r=34,67 do if f>2 then b=e;break;end;k=d;break;end;else k=d;end else if f>-2 then repeat if f~=0 then c=n;break;end;a=r;until true;else a=r;end end end f=f+1 end o=o+1;r=t[o];end else if 1~=f then for l=31,53 do if f>5 then h=r[n]e[h](s(e,h+1,r[d]))break;end;e[r[n]]=(r[d]~=0);o=o+1;r=t[o];break;end;else h=r[n]e[h](s(e,h+1,r[d]))end end else if f>=1 then if f~=2 then e(r[n],r[d]);o=o+1;r=t[o];else h=r[n]e[h]=e[h](s(e,h+1,r[d]))o=o+1;r=t[o];end else h=r[n];_=e[r[d]];e[h+1]=_;e[h]=_[r[l]];o=o+1;r=t[o];end end end end end else if 98>f then if f~=96 then for l=0,6 do if 3<=l then if l>=5 then if 6==l then e(r[n],r[d]);else e(r[n],r[d]);o=o+1;r=t[o];end else if-1~=l then repeat if 4~=l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end else if 0>=l then e(r[n],r[d]);o=o+1;r=t[o];else if l~=0 then for f=44,61 do if 2>l then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end end end end else do return end;end else if 99~=f then local f,h;e[r[n]]=b[r[d]];o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]];o=o+1;r=t[o];f=r[n]e[f](s(e,f+1,r[d]))o=o+1;r=t[o];do return end;else local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e(r[n],r[d]);end end end else if f>102 then if f>104 then if 103<=f then repeat if 105~=f then local r=r[n]local n,o=u(e[r](e[r+1]))a=o+r-1 local o=0;for r=r,a do o=o+1;e[r]=n[o];end;break;end;local a;for f=0,6 do if f<3 then if f<=0 then e(r[n],r[d]);o=o+1;r=t[o];else if-3~=f then repeat if f>1 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end else if f<=4 then if f~=1 then repeat if f<4 then a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];until true;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end else if 5~=f then e(r[n],r[d]);else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end until true;else local r=r[n]local n,o=u(e[r](e[r+1]))a=o+r-1 local o=0;for r=r,a do o=o+1;e[r]=n[o];end;end else if 100<f then repeat if f~=104 then local a;for f=0,6 do if 2<f then if 5>f then if 3<f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];else a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];end else if f==5 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else e(r[n],r[d]);end end else if 0>=f then e(r[n],r[d]);o=o+1;r=t[o];else if-2<=f then for l=12,77 do if f~=1 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end end end end break;end;e[r[n]][r[d]]=e[r[l]];until true;else local a;for f=0,6 do if 2<f then if 5>f then if 3<f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];else a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];end else if f==5 then e[r[n]]=h[r[d]];o=o+1;r=t[o];else e(r[n],r[d]);end end else if 0>=f then e(r[n],r[d]);o=o+1;r=t[o];else if-2<=f then for l=12,77 do if f~=1 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end end end end end end else if 100>=f then local a;for f=0,6 do if f>=3 then if 4<f then if 5~=f then e(r[n],r[d]);else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if 4>f then a=r[n]e[a]=e[a](s(e,a+1,r[d]))o=o+1;r=t[o];else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end else if 1>f then e(r[n],r[d]);o=o+1;r=t[o];else if-1<=f then repeat if 2~=f then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end end end else if 100~=f then repeat if 101~=f then e[r[n]][r[d]]=r[l];break;end;o=r[d];until true;else o=r[d];end end end end else if 86<=f then if f>88 then if 91<=f then if 88<=f then for l=33,54 do if 91<f then for l=0,6 do if 3<=l then if 4>=l then if-1~=l then for f=14,70 do if l~=3 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end else if l==5 then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);end end else if l>0 then if-2~=l then repeat if l>1 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end end end break;end;local r=r[n]e[r]=e[r](s(e,r+1,a))break;end;else for l=0,6 do if 3<=l then if 4>=l then if-1~=l then for f=14,70 do if l~=3 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];break;end;else e(r[n],r[d]);o=o+1;r=t[o];end else if l==5 then e(r[n],r[d]);o=o+1;r=t[o];else e(r[n],r[d]);end end else if l>0 then if-2~=l then repeat if l>1 then e(r[n],r[d]);o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end else e(r[n],r[d]);o=o+1;r=t[o];end end end end else if 87<f then for k=27,55 do if 89<f then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];break;end;local l,f;e[r[n]]=e[r[d]];o=o+1;r=t[o];l=r[n];a=l+m-1;for r=l,a do f=p[r-l];e[r]=f;end;o=o+1;r=t[o];l=r[n];do return e[l](s(e,l+1,a))end;o=o+1;r=t[o];l=r[n];do return s(e,l,a)end;o=o+1;r=t[o];do return end;break;end;else local l,f;e[r[n]]=e[r[d]];o=o+1;r=t[o];l=r[n];a=l+m-1;for r=l,a do f=p[r-l];e[r]=f;end;o=o+1;r=t[o];l=r[n];do return e[l](s(e,l+1,a))end;o=o+1;r=t[o];l=r[n];do return s(e,l,a)end;o=o+1;r=t[o];do return end;end end else if 87>f then local f,a;for h=0,2 do if 1>h then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else if h>=0 then repeat if h~=1 then e(r[n],r[d]);break;end;f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];until true;else e(r[n],r[d]);end end end else if 87~=f then local f;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];else local s;for f=0,6 do if 2<f then if 4<f then if 2<=f then repeat if f~=6 then e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;e[r[n]]=h[r[d]];until true;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end else if 1<=f then for h=36,97 do if f~=3 then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];break;end;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];end end else if f<1 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else if f~=0 then repeat if f>1 then s=r[n]e[s]=e[s](e[s+1])o=o+1;r=t[o];break;end;e(r[n],r[d]);o=o+1;r=t[o];until true;else e(r[n],r[d]);o=o+1;r=t[o];end end end end end end end else if f>=83 then if 84>f then e[r[n]]=e[r[d]][r[l]];else if 80~=f then for k=16,75 do if 84~=f then local k,_,b,p,y,j,g,f,m,z,c;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];k=r[n];_=e[r[d]];e[k+1]=_;e[k]=_[r[l]];o=o+1;r=t[o];f=0;while f>-1 do if f>2 then if 4<f then if 1~=f then repeat if 6>f then e(g,j);break;end;f=-2;until true;else f=-2;end else if f>1 then repeat if f~=3 then g=b[p];break;end;j=b[y];until true;else g=b[p];end end else if 1<=f then if-3<=f then repeat if 1~=f then y=d;break;end;p=n;until true;else y=d;end else b=r;end end f=f+1 end o=o+1;r=t[o];k=r[n]m,z=u(e[k](s(e,k+1,r[d])))a=z+k-1 c=0;for r=k,a do c=c+1;e[r]=m[c];end;o=o+1;r=t[o];k=r[n]e[k]=e[k](s(e,k+1,a))o=o+1;r=t[o];k=r[n]e[k]=e[k]()o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]]=h[r[d]];break;end;e[r[n]]=h[r[d]];break;end;else local k,g,b,y,_,j,p,f,z,m,c;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];k=r[n];g=e[r[d]];e[k+1]=g;e[k]=g[r[l]];o=o+1;r=t[o];f=0;while f>-1 do if f>2 then if 4<f then if 1~=f then repeat if 6>f then e(p,j);break;end;f=-2;until true;else f=-2;end else if f>1 then repeat if f~=3 then p=b[y];break;end;j=b[_];until true;else p=b[y];end end else if 1<=f then if-3<=f then repeat if 1~=f then _=d;break;end;y=n;until true;else _=d;end else b=r;end end f=f+1 end o=o+1;r=t[o];k=r[n]z,m=u(e[k](s(e,k+1,r[d])))a=m+k-1 c=0;for r=k,a do c=c+1;e[r]=z[c];end;o=o+1;r=t[o];k=r[n]e[k]=e[k](s(e,k+1,a))o=o+1;r=t[o];k=r[n]e[k]=e[k]()o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]]=h[r[d]];end end else if f<81 then local o=r[n]e[o](s(e,o+1,r[d]))else if 81~=f then e[r[n]]=(r[d]~=0);else e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);end end end end end else if f>=66 then if 73>f then if f<=68 then if f>66 then if 65~=f then repeat if 67~=f then local f,h;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];break;end;local n=r[n];local l=r[l];local t=n+2 local n={e[n](e[n+1],e[t])};for r=1,l do e[t+r]=n[r];end;local n=n[1]if n then e[t]=n o=r[d];else o=o+1;end;until true;else local t=r[n];local l=r[l];local n=t+2 local t={e[t](e[t+1],e[n])};for r=1,l do e[n+r]=t[r];end;local t=t[1]if t then e[n]=t o=r[d];else o=o+1;end;end else local f,h,a,k,s,l;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];l=0;while l>-1 do if 2>=l then if 0>=l then f=r;else if 2==l then a=d;else h=n;end end else if 5>l then if-1~=l then for r=14,71 do if 3<l then s=f[h];break;end;k=f[a];break;end;else s=f[h];end else if 6>l then e(s,k);else l=-2;end end end l=l+1 end o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);end else if f<=70 then if 69~=f then local o=r[n];local n=e[r[d]];e[o+1]=n;e[o]=n[r[l]];else local o=r[n]e[o]=e[o](s(e,o+1,r[d]))end else if 70<=f then repeat if f>71 then local a,k,c,b,u,f,h;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=0;while f>-1 do if 3<=f then if 5<=f then if 5~=f then f=-2;else e(u,b);end else if 3<f then u=a[k];else b=a[c];end end else if 1>f then a=r;else if f~=0 then for r=36,75 do if 1~=f then c=d;break;end;k=n;break;end;else k=n;end end end f=f+1 end o=o+1;r=t[o];h=r[n]e[h]=e[h](s(e,h+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;break;end;local f,a;for h=0,6 do if 2>=h then if h>=1 then if h~=2 then f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];o=o+1;r=t[o];else e(r[n],r[d]);o=o+1;r=t[o];end else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end else if h>=5 then if 2~=h then repeat if h~=5 then f=r[n];a=e[r[d]];e[f+1]=a;e[f]=a[r[l]];break;end;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];until true;else f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];end else if h>=0 then repeat if h>3 then e[r[n]][r[d]]=r[l];o=o+1;r=t[o];break;end;e[r[n]]={};o=o+1;r=t[o];until true;else e[r[n]]={};o=o+1;r=t[o];end end end end until true;else local k,a,u,c,b,f,h;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];f=0;while f>-1 do if 3<=f then if 5<=f then if 5~=f then f=-2;else e(b,c);end else if 3<f then b=k[a];else c=k[u];end end else if 1>f then k=r;else if f~=0 then for r=36,75 do if 1~=f then u=d;break;end;a=n;break;end;else a=n;end end end f=f+1 end o=o+1;r=t[o];h=r[n]e[h]=e[h](s(e,h+1,r[d]))o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];do return end;end end end else if 76<=f then if 78>f then if 77==f then e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);else local o=r[n]local n,r=u(e[o](s(e,o+1,r[d])))a=r+o-1 local r=0;for o=o,a do r=r+1;e[o]=n[r];end;end else if 74<f then repeat if f~=79 then local a,b,k,u,c,f,s;for f=0,6 do if 2>=f then if f>0 then if f~=1 then s=r[n]e[s]=e[s](e[s+1])o=o+1;r=t[o];else f=0;while f>-1 do if 2<f then if 5>f then if f~=2 then repeat if f<4 then u=a[k];break;end;c=a[b];until true;else u=a[k];end else if f>3 then repeat if 6~=f then e(c,u);break;end;f=-2;until true;else f=-2;end end else if f<=0 then a=r;else if f>0 then for r=16,73 do if 2>f then b=n;break;end;k=d;break;end;else b=n;end end end f=f+1 end o=o+1;r=t[o];end else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 5>f then if f>=1 then for s=34,71 do if f~=3 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if 4<=f then for l=11,66 do if f~=6 then f=0;while f>-1 do if f<=2 then if f<=0 then a=r;else if f~=0 then repeat if f~=2 then b=n;break;end;k=d;until true;else k=d;end end else if f>=5 then if 3~=f then repeat if f~=5 then f=-2;break;end;e(c,u);until true;else e(c,u);end else if f>-1 then repeat if f~=4 then u=a[k];break;end;c=a[b];until true;else u=a[k];end end end f=f+1 end o=o+1;r=t[o];break;end;s=r[n]e[s]=e[s](e[s+1])break;end;else s=r[n]e[s]=e[s](e[s+1])end end end end break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];until true;else e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end end else if f>=74 then if 72<f then repeat if 75>f then local f,h;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];f=r[n]e[f](e[f+1])o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e[r[n]]={};break;end;local f,h;for a=0,2 do if 0>=a then f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];else if a==2 then e(r[n],r[d]);else f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];end end end until true;else local f,h;f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];f=r[n]e[f](e[f+1])o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e[r[n]]={};o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];f=r[n]e[f]=e[f](s(e,f+1,r[d]))o=o+1;r=t[o];f=r[n];h=e[r[d]];e[f+1]=h;e[f]=h[r[l]];o=o+1;r=t[o];e[r[n]]={};end else local o=r[n];local n=e[r[d]];e[o+1]=n;e[o]=n[r[l]];end end end else if f<=58 then if f<56 then if 53<f then if 54<f then e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);else e[r[n]]=h[r[d]];end else e[r[n]]=g(y[r[d]],nil,h);end else if f>=57 then if 53~=f then repeat if 58~=f then e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);break;end;e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);until true;else e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);end else e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end end else if 62<=f then if f>=64 then if f~=62 then repeat if 65~=f then for f=0,6 do if 3<=f then if 5>f then if 2<f then for h=30,78 do if 4~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if f~=2 then for s=46,64 do if f~=5 then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if 0<f then if f<2 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end break;end;for f=0,6 do if 2>=f then if f>=1 then if 0<f then repeat if f>1 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if f>4 then if f~=4 then repeat if 5~=f then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];until true;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end else if f~=2 then for h=22,56 do if 3<f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end end end end until true;else for f=0,6 do if 3<=f then if 5>f then if 2<f then for h=30,78 do if 4~=f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if f~=2 then for s=46,64 do if f~=5 then e[r[n]]=e[r[d]][r[l]];break;end;e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if 0<f then if f<2 then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end end else if f~=58 then repeat if f<63 then e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];break;end;for f=0,6 do if 2<f then if 4>=f then if f~=0 then repeat if 3<f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];until true;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else if 2<f then repeat if f<6 then e[r[n]]=h[r[d]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];until true;else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end else if f>0 then if-2~=f then for h=12,91 do if 1<f then e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];break;end;else e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];end else e[r[n]]=h[r[d]];o=o+1;r=t[o];end end end until true;else e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];end end else if f<60 then e[r[n]]=b[r[d]];else if 56~=f then for k=40,97 do if 61>f then local n=r[n]local d={e[n](s(e,n+1,a))};local o=0;for r=n,r[l]do o=o+1;e[r]=d[o];end break;end;e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);break;end;else e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=e[r[l]];o=o+1;r=t[o];e[r[n]][r[d]]=r[l];o=o+1;r=t[o];e[r[n]]=h[r[d]];o=o+1;r=t[o];e[r[n]]=e[r[d]][r[l]];o=o+1;r=t[o];e(r[n],r[d]);o=o+1;r=t[o];e(r[n],r[d]);end end end end end end end end o=1+o;end;end;return nr end;local n=0xff;local h={};local l=(1);local d='';(function(o)local e=o local t=0x00 local r=0x00 e={(function(f)if t>0x1e then return f end t=t+1 r=(r+0xa69-f)%0x10 return(r%0x03==0x0 and(function(e)if not o[e]then r=r+0x01 o[e]=(0x4);n[2]=(n[2]*(nr(function()h()end,s(d))-nr(n[1],s(d))))+1;h[l]={};n=n[2];l=l+n;end return true end)'FoBQu'and e[0x3](0x3cf+f))or(r%0x03==0x2 and(function(e)if not o[e]then r=r+0x01 o[e]=(0x6b);end return true end)'inmSf'and e[0x1](f+0x1b8))or(r%0x03==0x1 and(function(e)if not o[e]then r=r+0x01 o[e]=(0x94);end return true end)'_CyvE'and e[0x2](f+0x140))or f end),(function(n)if t>0x29 then return n end t=t+1 r=(r+0x465-n)%0x3e return(r%0x03==0x0 and(function(e)if not o[e]then r=r+0x01 o[e]=(0xee);end return true end)'GreiH'and e[0x2](0x339+n))or(r%0x03==0x1 and(function(e)if not o[e]then r=r+0x01 o[e]=(0x48);end return true end)'JXHgX'and e[0x1](n+0x270))or(r%0x03==0x2 and(function(e)if not o[e]then r=r+0x01 o[e]=(0xbb);end return true end)'SCYps'and e[0x3](n+0x131))or n end),(function(f)if t>0x30 then return f end t=t+1 r=(r+0x754-f)%0x26 return(r%0x03==0x2 and(function(e)if not o[e]then r=r+0x01 o[e]=(0xa7);h[l]=tr();l=l+n;end return true end)'ZLbLp'and e[0x2](0x1a4+f))or(r%0x03==0x1 and(function(e)if not o[e]then r=r+0x01 o[e]=(0x8f);d={d..'\58 a',d};h[l]=er();l=l+((not k.EpwHLCEt)and 1 or 0);d[1]='\58'..d[1];n[2]=0xff;end return true end)'qwzxI'and e[0x1](f+0x1c0))or(r%0x03==0x0 and(function(e)if not o[e]then r=r+0x01 o[e]=(0x70);d='\37';n={function()n()end};d=d..'\100\43';end return true end)'XoTtQ'and e[0x3](f+0x10d))or f end)}e[0x3](0x2148)end){};local r=g(s(h));return r(...);end return er((function()local o={}local r=0x01;local e;if k.EpwHLCEt then e=k.EpwHLCEt(er)else e=''end if k.BBHwZkZm(e,k.ELAD_jRY)then r=r+0;else r=r+1;end o[r]=0x02;o[o[r]+0x01]=0x03;return o;end)(),...)end)((function(r,e,o,d,n,t)local t;if 3>=r then if r>1 then if 3>r then do return 16777216,65536,256 end;else do return e(1),e(4,n,d,o,e),e(5,n,d,o)end;end else if r~=1 then do return e(1),e(4,n,d,o,e),e(5,n,d,o)end;else do return function(o,r,e)if e then local r=(o/2^(r-1))%2^((e-1)-(r-1)+1);return r-r%1;else local r=2^(r-1);return(o%(r+r)>=r)and 1 or 0;end;end;end;end end else if r<6 then if r==4 then local r=d;local d,n,t=n(2);do return function()local l,f,e,o=e(o,r(r,r),r(r,r)+3);r(4);return(o*d)+(e*n)+(f*t)+l;end;end;else local r=d;do return function()local o=e(o,r(r,r),r(r,r));r(1);return o;end;end;end else if 6<r then if 3<=r then for e=26,98 do if r<8 then do return setmetatable({},{['__\99\97\108\108']=function(r,n,d,e,o)if o then return r[o]elseif e then return r else r[n]=d end end})end break;end;do return o(r,nil,o);end break;end;else do return o(r,nil,o);end end else do return n[o]end;end end end end),...)

