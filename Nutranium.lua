local MainLinorix = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("ImageLabel")
local Shadow = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local OpenMenu = Instance.new("ImageButton")
local CloseGUI = Instance.new("ImageButton")
local Background = Instance.new("ImageLabel")
local Shadow_2 = Instance.new("ImageLabel")
local Bottom = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Menu = Instance.new("Frame")
local CloseMenu = Instance.new("ImageButton")
local HoverOne = Instance.new("Frame")
local HomeBtn = Instance.new("TextButton")
local DB = Instance.new("ImageLabel")
local HoverTwo = Instance.new("Frame")
local CMDListBtn = Instance.new("TextButton")
local DB_2 = Instance.new("ImageLabel")
local HoverThree = Instance.new("Frame")
local OptionsBtn = Instance.new("TextButton")
local DB_3 = Instance.new("ImageLabel")
local HoverFour = Instance.new("Frame")
local DiscordBtn = Instance.new("TextButton")
local DB_4 = Instance.new("ImageLabel")
local CMDs = Instance.new("Frame")
local CMDScroll = Instance.new("ScrollingFrame")
local CommandName = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local CommandName_2 = Instance.new("TextLabel")
local CommandName_3 = Instance.new("TextLabel")
local TitleCmd = Instance.new("TextLabel")
local Home = Instance.new("Frame")
local Pfp = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local User = Instance.new("TextLabel")
local Rank = Instance.new("TextLabel")
local Discord = Instance.new("Frame")
local DiscordServer = Instance.new("TextBox")
local Options = Instance.new("Frame")
local Kb = Instance.new("TextLabel")
local Tp = Instance.new("TextLabel")
local OT = Instance.new("TextLabel")
local AdminBar = Instance.new("ImageLabel")
local Shadow_3 = Instance.new("ImageLabel")
local Bar = Instance.new("Frame")
local CMDBox = Instance.new("TextBox")
local Run = Instance.new("TextButton")

--Properties:

MainLinorix.Name = "MainLinorix"
MainLinorix.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = MainLinorix
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.Position = UDim2.new(0.40144521, 0, 0.33134684, 0)
Main.Size = UDim2.new(0, 320, 0, 310)
Main.Image = "rbxassetid://2851929490"
Main.ImageColor3 = Color3.fromRGB(55, 61, 72)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(4, 4, 4, 4)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.Position = UDim2.new(0, 0, -0.00198645634, 0)
Top.Size = UDim2.new(0, 320, 0, 34)
Top.ZIndex = 2
Top.Image = "rbxassetid://2851929490"
Top.ImageColor3 = Color3.fromRGB(36, 40, 47)
Top.ScaleType = Enum.ScaleType.Slice
Top.SliceCenter = Rect.new(4, 4, 4, 4)

Shadow.Name = "Shadow"
Shadow.Parent = Top
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(-0.0231248848, 0, 0, 0)
Shadow.Size = UDim2.new(1.07187498, 0, 0.996835709, 0)
Shadow.Image = "rbxassetid://297694300"
Shadow.ImageTransparency = 0.450

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.324798018, 0, 0.176470593, 0)
Title.Size = UDim2.new(0, 117, 0, 21)
Title.ZIndex = 3
Title.Font = Enum.Font.Nunito
Title.Text = "Nutranium"
Title.TextColor3 = Color3.fromRGB(79, 79, 79)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(188, 188, 188)
Title.TextStrokeTransparency = 0.940
Title.TextWrapped = true

OpenMenu.Name = "OpenMenu"
OpenMenu.Parent = Top
OpenMenu.BackgroundTransparency = 1.000
OpenMenu.Position = UDim2.new(0.028125003, 0, 0.235294119, 0)
OpenMenu.Size = UDim2.new(0, 19, 0, 17)
OpenMenu.ZIndex = 2
OpenMenu.Image = "rbxassetid://3926305904"
OpenMenu.ImageColor3 = Color3.fromRGB(156, 156, 156)
OpenMenu.ImageRectOffset = Vector2.new(604, 684)
OpenMenu.ImageRectSize = Vector2.new(36, 36)

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = Top
CloseGUI.BackgroundTransparency = 1.000
CloseGUI.Position = UDim2.new(0.90625, 0, 0.205882356, 0)
CloseGUI.Size = UDim2.new(0, 19, 0, 19)
CloseGUI.ZIndex = 2
CloseGUI.Image = "rbxassetid://3926305904"
CloseGUI.ImageColor3 = Color3.fromRGB(156, 156, 156)
CloseGUI.ImageRectOffset = Vector2.new(284, 4)
CloseGUI.ImageRectSize = Vector2.new(24, 24)

Background.Name = "Background"
Background.Parent = Main
Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Background.BackgroundTransparency = 1.000
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0, 0, 0.10734386, 0)
Background.Size = UDim2.new(0, 320, 0, 120)
Background.Image = "http://www.roblox.com/asset/?id=7267168431"
Background.ImageColor3 = Color3.fromRGB(198, 198, 198)
Background.ImageTransparency = 0.750

Shadow_2.Name = "Shadow"
Shadow_2.Parent = Main
Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow_2.BackgroundTransparency = 1.000
Shadow_2.BorderSizePixel = 0
Shadow_2.Position = UDim2.new(-0.113749884, 0, -0.123548351, 0)
Shadow_2.Size = UDim2.new(1.24062502, 0, 1.25, 0)
Shadow_2.ZIndex = 0
Shadow_2.Image = "rbxassetid://297694300"
Shadow_2.ImageTransparency = 0.550

Bottom.Name = "Bottom"
Bottom.Parent = Main
Bottom.AnchorPoint = Vector2.new(0, 1)
Bottom.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
Bottom.BackgroundTransparency = 0.350
Bottom.BorderSizePixel = 0
Bottom.Position = UDim2.new(0, 0, 1.00584841, 0)
Bottom.Size = UDim2.new(1, 0, 0.224584028, 60)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(44, 44, 44)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(22, 22, 22))}
UIGradient.Rotation = 90
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
UIGradient.Parent = Bottom

Menu.Name = "Menu"
Menu.Parent = Main
Menu.BackgroundColor3 = Color3.fromRGB(55, 61, 72)
Menu.BorderSizePixel = 0
Menu.Position = UDim2.new(0, 0, 0.107690923, 0)
Menu.Size = UDim2.new(0, 0, 0, 278)

CloseMenu.Name = "CloseMenu"
CloseMenu.Parent = Menu
CloseMenu.BackgroundTransparency = 1.000
CloseMenu.Position = UDim2.new(0.0281249881, 0, 0.0224291198, 0)
CloseMenu.Size = UDim2.new(0, 19, 0, 19)
CloseMenu.Visible = false
CloseMenu.ZIndex = 2
CloseMenu.Image = "rbxassetid://3926305904"
CloseMenu.ImageColor3 = Color3.fromRGB(156, 156, 156)
CloseMenu.ImageRectOffset = Vector2.new(284, 4)
CloseMenu.ImageRectSize = Vector2.new(24, 24)

HoverOne.Name = "HoverOne"
HoverOne.Parent = Menu
HoverOne.BackgroundColor3 = Color3.fromRGB(111, 123, 145)
HoverOne.BackgroundTransparency = 0.600
HoverOne.BorderSizePixel = 0
HoverOne.Position = UDim2.new(0, 0, 0.129496396, 0)
HoverOne.Size = UDim2.new(0, 320, 0, 39)
HoverOne.Visible = false

HomeBtn.Name = "HomeBtn"
HomeBtn.Parent = HoverOne
HomeBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HomeBtn.BackgroundTransparency = 1.000
HomeBtn.BorderSizePixel = 0
HomeBtn.Position = UDim2.new(0.0280000009, 0, 0.153999999, 0)
HomeBtn.Size = UDim2.new(0, 62, 0, 26)
HomeBtn.ZIndex = 2
HomeBtn.Font = Enum.Font.SourceSansLight
HomeBtn.Text = "Home"
HomeBtn.TextColor3 = Color3.fromRGB(0, 170, 255)
HomeBtn.TextScaled = true
HomeBtn.TextSize = 14.000
HomeBtn.TextStrokeColor3 = Color3.fromRGB(0, 136, 204)
HomeBtn.TextStrokeTransparency = 0.850
HomeBtn.TextWrapped = true

DB.Name = "DB"
DB.Parent = HomeBtn
DB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DB.BackgroundTransparency = 1.000
DB.Position = UDim2.new(-0.144516483, 0, -0.230769232, 0)
DB.Size = UDim2.new(0, 319, 0, 39)
DB.Image = "rbxassetid://2851920938"
DB.ImageColor3 = Color3.fromRGB(0, 170, 255)
DB.ImageTransparency = 0.950
DB.ScaleType = Enum.ScaleType.Slice
DB.SliceCenter = Rect.new(25, 25, 25, 25)

HoverTwo.Name = "HoverTwo"
HoverTwo.Parent = Menu
HoverTwo.BackgroundColor3 = Color3.fromRGB(111, 123, 145)
HoverTwo.BackgroundTransparency = 1.000
HoverTwo.BorderSizePixel = 0
HoverTwo.Position = UDim2.new(0, 0, 0.269784153, 0)
HoverTwo.Size = UDim2.new(0, 320, 0, 39)
HoverTwo.Visible = false

CMDListBtn.Name = "CMDListBtn"
CMDListBtn.Parent = HoverTwo
CMDListBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CMDListBtn.BackgroundTransparency = 1.000
CMDListBtn.BorderSizePixel = 0
CMDListBtn.Position = UDim2.new(0.0467500687, 0, 0.154000312, 0)
CMDListBtn.Size = UDim2.new(0, 124, 0, 26)
CMDListBtn.ZIndex = 2
CMDListBtn.Font = Enum.Font.SourceSansLight
CMDListBtn.Text = "Command List"
CMDListBtn.TextColor3 = Color3.fromRGB(97, 97, 97)
CMDListBtn.TextScaled = true
CMDListBtn.TextSize = 14.000
CMDListBtn.TextStrokeColor3 = Color3.fromRGB(0, 136, 204)
CMDListBtn.TextWrapped = true

DB_2.Name = "DB"
DB_2.Parent = CMDListBtn
DB_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DB_2.BackgroundTransparency = 1.000
DB_2.Position = UDim2.new(-0.112258419, 0, -0.269230783, 0)
DB_2.Size = UDim2.new(0, 319, 0, 39)
DB_2.Visible = false
DB_2.Image = "rbxassetid://2851920938"
DB_2.ImageColor3 = Color3.fromRGB(0, 170, 255)
DB_2.ImageTransparency = 0.950
DB_2.ScaleType = Enum.ScaleType.Slice
DB_2.SliceCenter = Rect.new(25, 25, 25, 25)

HoverThree.Name = "HoverThree"
HoverThree.Parent = Menu
HoverThree.BackgroundColor3 = Color3.fromRGB(111, 123, 145)
HoverThree.BackgroundTransparency = 1.000
HoverThree.BorderSizePixel = 0
HoverThree.Position = UDim2.new(0, 0, 0.410071909, 0)
HoverThree.Size = UDim2.new(0, 320, 0, 39)
HoverThree.Visible = false

OptionsBtn.Name = "OptionsBtn"
OptionsBtn.Parent = HoverThree
OptionsBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OptionsBtn.BackgroundTransparency = 1.000
OptionsBtn.BorderSizePixel = 0
OptionsBtn.Position = UDim2.new(0.0467500687, 0, 0.128359288, 0)
OptionsBtn.Size = UDim2.new(0, 71, 0, 26)
OptionsBtn.ZIndex = 2
OptionsBtn.Font = Enum.Font.SourceSansLight
OptionsBtn.Text = "Options"
OptionsBtn.TextColor3 = Color3.fromRGB(97, 97, 97)
OptionsBtn.TextScaled = true
OptionsBtn.TextSize = 14.000
OptionsBtn.TextStrokeColor3 = Color3.fromRGB(0, 136, 204)
OptionsBtn.TextWrapped = true

DB_3.Name = "DB"
DB_3.Parent = OptionsBtn
DB_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DB_3.BackgroundTransparency = 1.000
DB_3.Position = UDim2.new(-0.207016483, 0, -0.230769247, 0)
DB_3.Size = UDim2.new(0, 319, 0, 39)
DB_3.Visible = false
DB_3.Image = "rbxassetid://2851920938"
DB_3.ImageColor3 = Color3.fromRGB(0, 170, 255)
DB_3.ImageTransparency = 0.950
DB_3.ScaleType = Enum.ScaleType.Slice
DB_3.SliceCenter = Rect.new(25, 25, 25, 25)

HoverFour.Name = "HoverFour"
HoverFour.Parent = Menu
HoverFour.BackgroundColor3 = Color3.fromRGB(111, 123, 145)
HoverFour.BackgroundTransparency = 1.000
HoverFour.BorderSizePixel = 0
HoverFour.Position = UDim2.new(0, 0, 0.550359666, 0)
HoverFour.Size = UDim2.new(0, 320, 0, 39)
HoverFour.Visible = false

DiscordBtn.Name = "DiscordBtn"
DiscordBtn.Parent = HoverFour
DiscordBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiscordBtn.BackgroundTransparency = 1.000
DiscordBtn.BorderSizePixel = 0
DiscordBtn.Position = UDim2.new(0.0467500687, 0, 0.154000312, 0)
DiscordBtn.Size = UDim2.new(0, 64, 0, 26)
DiscordBtn.ZIndex = 2
DiscordBtn.Font = Enum.Font.SourceSansLight
DiscordBtn.Text = "Discord"
DiscordBtn.TextColor3 = Color3.fromRGB(97, 97, 97)
DiscordBtn.TextScaled = true
DiscordBtn.TextSize = 14.000
DiscordBtn.TextStrokeColor3 = Color3.fromRGB(0, 136, 204)
DiscordBtn.TextWrapped = true

DB_4.Name = "DB"
DB_4.Parent = DiscordBtn
DB_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DB_4.BackgroundTransparency = 1.000
DB_4.Position = UDim2.new(-0.144516483, 0, -0.230769232, 0)
DB_4.Size = UDim2.new(0, 319, 0, 39)
DB_4.Visible = false
DB_4.Image = "rbxassetid://2851920938"
DB_4.ImageColor3 = Color3.fromRGB(0, 170, 255)
DB_4.ImageTransparency = 0.950
DB_4.ScaleType = Enum.ScaleType.Slice
DB_4.SliceCenter = Rect.new(25, 25, 25, 25)

CMDs.Name = "CMDs"
CMDs.Parent = Main
CMDs.BackgroundColor3 = Color3.fromRGB(55, 61, 72)
CMDs.BackgroundTransparency = 1.000
CMDs.Position = UDim2.new(0, 0, 0.106451616, 0)
CMDs.Size = UDim2.new(0, 320, 0, 277)
CMDs.Visible = false

CMDScroll.Name = "CMDScroll"
CMDScroll.Parent = CMDs
CMDScroll.Active = true
CMDScroll.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
CMDScroll.BackgroundTransparency = 1.000
CMDScroll.BorderColor3 = Color3.fromRGB(0, 170, 255)
CMDScroll.BorderSizePixel = 0
CMDScroll.Position = UDim2.new(0.0374999978, 0, 0.209386289, 0)
CMDScroll.Size = UDim2.new(0, 296, 0, 205)
CMDScroll.ScrollBarThickness = 3

CommandName.Name = "CommandName"
CommandName.Parent = CMDScroll
CommandName.BackgroundTransparency = 1.000
CommandName.Size = UDim2.new(0, 297, 0, 21)
CommandName.Font = Enum.Font.SourceSansLight
CommandName.Text = ".among us"
CommandName.TextColor3 = Color3.fromRGB(159, 159, 159)
CommandName.TextScaled = true
CommandName.TextSize = 14.000
CommandName.TextWrapped = true
CommandName.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout.Parent = CMDScroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

CommandName_2.Name = "CommandName"
CommandName_2.Parent = CMDScroll
CommandName_2.BackgroundTransparency = 1.000
CommandName_2.Size = UDim2.new(0, 297, 0, 21)
CommandName_2.Font = Enum.Font.SourceSansLight
CommandName_2.Text = ".scp"
CommandName_2.TextColor3 = Color3.fromRGB(159, 159, 159)
CommandName_2.TextScaled = true
CommandName_2.TextSize = 14.000
CommandName_2.TextWrapped = true
CommandName_2.TextXAlignment = Enum.TextXAlignment.Left

CommandName_3.Name = "CommandName"
CommandName_3.Parent = CMDScroll
CommandName_3.BackgroundTransparency = 1.000
CommandName_3.Size = UDim2.new(0, 297, 0, 21)
CommandName_3.Font = Enum.Font.SourceSansLight
CommandName_3.Text = ".skateboard"
CommandName_3.TextColor3 = Color3.fromRGB(159, 159, 159)
CommandName_3.TextScaled = true
CommandName_3.TextSize = 14.000
CommandName_3.TextWrapped = true
CommandName_3.TextXAlignment = Enum.TextXAlignment.Left

TitleCmd.Name = "TitleCmd"
TitleCmd.Parent = CMDs
TitleCmd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleCmd.BackgroundTransparency = 1.000
TitleCmd.Position = UDim2.new(0.0261730198, 0, 0.0758122727, 0)
TitleCmd.Size = UDim2.new(0, 229, 0, 24)
TitleCmd.Font = Enum.Font.Nunito
TitleCmd.Text = "Commands (100+ in pastebin)"
TitleCmd.TextColor3 = Color3.fromRGB(182, 182, 182)
TitleCmd.TextScaled = true
TitleCmd.TextSize = 14.000
TitleCmd.TextStrokeTransparency = 0.870
TitleCmd.TextWrapped = true

Home.Name = "Home"
Home.Parent = Main
Home.BackgroundColor3 = Color3.fromRGB(55, 61, 72)
Home.BackgroundTransparency = 1.000
Home.Position = UDim2.new(0, 0, 0.106451616, 0)
Home.Size = UDim2.new(0, 320, 0, 277)

Pfp.Name = "Pfp"
Pfp.Parent = Home
Pfp.BackgroundColor3 = Color3.fromRGB(43, 48, 57)
Pfp.BackgroundTransparency = 0.500
Pfp.Position = UDim2.new(0.358849317, 0, 0.0552879274, 0)
Pfp.Size = UDim2.new(0, 92, 0, 88)
Pfp.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = Pfp

User.Name = "User"
User.Parent = Home
User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
User.BackgroundTransparency = 1.000
User.Position = UDim2.new(0.154825404, 0, 0.395274907, 0)
User.Size = UDim2.new(0, 221, 0, 28)
User.Font = Enum.Font.Gotham
User.Text = "Username"
User.TextColor3 = Color3.fromRGB(234, 234, 234)
User.TextSize = 18.000
User.TextStrokeTransparency = 0.850
User.TextWrapped = true

Rank.Name = "Rank"
Rank.Parent = Home
Rank.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Rank.BackgroundTransparency = 1.000
Rank.Position = UDim2.new(0.332950413, 0, 0.496357948, 0)
Rank.Size = UDim2.new(0, 111, 0, 19)
Rank.Font = Enum.Font.Gotham
Rank.Text = "Administrator"
Rank.TextColor3 = Color3.fromRGB(172, 172, 172)
Rank.TextScaled = true
Rank.TextSize = 18.000
Rank.TextStrokeTransparency = 0.940
Rank.TextWrapped = true

Discord.Name = "Discord"
Discord.Parent = Main
Discord.BackgroundColor3 = Color3.fromRGB(55, 61, 72)
Discord.BackgroundTransparency = 1.000
Discord.Position = UDim2.new(0, 0, 0.106451616, 0)
Discord.Size = UDim2.new(0, 320, 0, 277)
Discord.Visible = false

DiscordServer.Name = "DiscordServer"
DiscordServer.Parent = Discord
DiscordServer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DiscordServer.BackgroundTransparency = 1.000
DiscordServer.Size = UDim2.new(0, 320, 0, 73)
DiscordServer.Font = Enum.Font.Gotham
DiscordServer.Text = "https://discord.gg/wPyz4DWY6Z"
DiscordServer.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordServer.TextSize = 20.000
DiscordServer.TextWrapped = true

Options.Name = "Options"
Options.Parent = Main
Options.BackgroundColor3 = Color3.fromRGB(55, 61, 72)
Options.BackgroundTransparency = 1.000
Options.Position = UDim2.new(0, 0, 0.106451616, 0)
Options.Size = UDim2.new(0, 320, 0, 277)
Options.Visible = false

Kb.Name = "Kb"
Kb.Parent = Options
Kb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Kb.BackgroundTransparency = 1.000
Kb.Position = UDim2.new(0.0480480194, 0, 0.0902527049, 0)
Kb.Size = UDim2.new(0, 293, 0, 25)
Kb.Font = Enum.Font.SourceSansLight
Kb.Text = "Press 'Insert'  to open the command bar"
Kb.TextColor3 = Color3.fromRGB(182, 182, 182)
Kb.TextScaled = true
Kb.TextSize = 14.000
Kb.TextStrokeTransparency = 0.870
Kb.TextWrapped = true
Kb.TextXAlignment = Enum.TextXAlignment.Left

Tp.Name = "Tp"
Tp.Parent = Options
Tp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tp.BackgroundTransparency = 1.000
Tp.Position = UDim2.new(0.0480480194, 0, 0.202166066, 0)
Tp.Size = UDim2.new(0, 293, 0, 25)
Tp.Font = Enum.Font.SourceSansLight
Tp.Text = "Join the discord server for more scripts"
Tp.TextColor3 = Color3.fromRGB(182, 182, 182)
Tp.TextScaled = true
Tp.TextSize = 14.000
Tp.TextStrokeTransparency = 0.870
Tp.TextWrapped = true
Tp.TextXAlignment = Enum.TextXAlignment.Left

OT.Name = "OT"
OT.Parent = Options
OT.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OT.BackgroundTransparency = 1.000
OT.Position = UDim2.new(0.0480480194, 0, 0.314079434, 0)
OT.Size = UDim2.new(0, 293, 0, 25)
OT.Font = Enum.Font.SourceSansLight
OT.Text = "Options coming soon"
OT.TextColor3 = Color3.fromRGB(182, 182, 182)
OT.TextScaled = true
OT.TextSize = 14.000
OT.TextStrokeTransparency = 0.870
OT.TextWrapped = true
OT.TextXAlignment = Enum.TextXAlignment.Left

AdminBar.Name = "AdminBar"
AdminBar.Parent = MainLinorix
AdminBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AdminBar.BackgroundTransparency = 1.000
AdminBar.Position = UDim2.new(0.2681292, 0, 0.904648364, 0)
AdminBar.Size = UDim2.new(0, 757, 0, 41)
AdminBar.Image = "rbxassetid://2851920938"
AdminBar.ImageColor3 = Color3.fromRGB(55, 61, 72)
AdminBar.ScaleType = Enum.ScaleType.Slice
AdminBar.SliceCenter = Rect.new(25, 25, 25, 25)

local ab = AdminBar
local Open = false
 
local PositionClosed = UDim2.new(0.291, 0,2, 0)
local PositionOpened = UDim2.new(0.2681292, 0, 0.904648364, 0)
 
local UserInputService = game:GetService("UserInputService")
 
UserInputService.InputBegan:Connect(function(keyCode)
	if keyCode.keyCode == Enum.KeyCode.Insert then
		if Open then
			ab:TweenPosition((PositionClosed),'Out','Linear',.25)
			Open = false
		else
			Open = true
			ab:TweenPosition((PositionOpened),'Out','Linear',.25)
		end
	end
end)

Shadow_3.Name = "Shadow"
Shadow_3.Parent = AdminBar
Shadow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow_3.BackgroundTransparency = 1.000
Shadow_3.BorderSizePixel = 0
Shadow_3.Position = UDim2.new(-0.026563637, 0, -0.123548552, 0)
Shadow_3.Size = UDim2.new(1.07417881, 0, 1.25, 0)
Shadow_3.ZIndex = 0
Shadow_3.Image = "rbxassetid://297694300"
Shadow_3.ImageTransparency = 0.550

Bar.Name = "Bar"
Bar.Parent = AdminBar
Bar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0.0290620867, 0, 0.975609779, 0)
Bar.Size = UDim2.new(0, 714, 0, 1)

CMDBox.Name = "CMDBox"
CMDBox.Parent = AdminBar
CMDBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CMDBox.BackgroundTransparency = 1.000
CMDBox.Position = UDim2.new(0.0383091159, 0, 0, 0)
CMDBox.Size = UDim2.new(0, 690, 0, 40)
CMDBox.Font = Enum.Font.Nunito
CMDBox.MultiLine = true
CMDBox.Text = ".Welcome to Linorix"
CMDBox.TextColor3 = Color3.fromRGB(0, 170, 255)
CMDBox.TextSize = 24.000
CMDBox.TextWrapped = true
CMDBox.TextXAlignment = Enum.TextXAlignment.Left

Run.Name = "Run"
Run.Parent = AdminBar
Run.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Run.BackgroundTransparency = 1.000
Run.Position = UDim2.new(0.949801862, 0, 0.146341458, 0)
Run.Size = UDim2.new(0, 30, 0, 27)
Run.Font = Enum.Font.Nunito
Run.Text = ">"
Run.TextColor3 = Color3.fromRGB(0, 170, 255)
Run.TextScaled = true
Run.TextSize = 14.000
Run.TextWrapped = true

-- Scripts:

local function GHPWIE_fake_script() -- OpenMenu.LocalScript 
	local script = Instance.new('LocalScript', OpenMenu)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Menu:TweenSize(UDim2.new(0, 320,0, 278), "Out", "Sine", .50, true)
		local main = script.Parent.Parent.Parent.Parent.Main
	
		main.Home.Visible = false
		main.CMDs.Visible = false
		main.Options.Visible = false
		main.Discord.Visible = false
		
		local menu = script.Parent.Parent.Parent.Menu
		wait(.50)
		menu.HoverOne.Visible = true
		menu.HoverTwo.Visible = true
		menu.HoverThree.Visible = true
		menu.HoverFour.Visible = true
		menu.CloseMenu.Visible = true
		
	end)
end
coroutine.wrap(GHPWIE_fake_script)()
local function JRRQ_fake_script() -- CloseGUI.LocalScript 
	local script = Instance.new('LocalScript', CloseGUI)

	script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.Parent:TweenPosition(UDim2.new(0.427, 0,-0.9, 100), "Out", "Sine", .50, true)
	end)
end
coroutine.wrap(JRRQ_fake_script)()
local function KBXJZ_fake_script() -- CloseMenu.LocalScript 
	local script = Instance.new('LocalScript', CloseMenu)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Menu:TweenSize(UDim2.new(0, 0,0, 278), "Out", "Sine", .50, true)
		local menu = script.Parent.Parent.Parent.Menu
		menu.HoverOne.Visible = false
		menu.HoverTwo.Visible = false
		menu.HoverThree.Visible = false
		menu.HoverFour.Visible = false
		menu.CloseMenu.Visible = false
	end)
end
coroutine.wrap(KBXJZ_fake_script)()
local function NVNEMHU_fake_script() -- HoverOne.Hover 
	local script = Instance.new('LocalScript', HoverOne)

	script.Parent.MouseEnter:Connect(function()
	script.Parent.BackgroundTransparency = 0.6
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundTransparency = 1
	end)
end
coroutine.wrap(NVNEMHU_fake_script)()
local function CLMTMR_fake_script() -- HoverTwo.Hover 
	local script = Instance.new('LocalScript', HoverTwo)

	script.Parent.MouseEnter:Connect(function()
	script.Parent.BackgroundTransparency = 0.6
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundTransparency = 1
	end)
end
coroutine.wrap(CLMTMR_fake_script)()
local function SXEUCQ_fake_script() -- HoverThree.Hover 
	local script = Instance.new('LocalScript', HoverThree)

	script.Parent.MouseEnter:Connect(function()
	script.Parent.BackgroundTransparency = 0.6
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundTransparency = 1
	end)
end
coroutine.wrap(SXEUCQ_fake_script)()
local function CESEC_fake_script() -- HoverFour.Hover 
	local script = Instance.new('LocalScript', HoverFour)

	script.Parent.MouseEnter:Connect(function()
	script.Parent.BackgroundTransparency = 0.6
	end)
	
	script.Parent.MouseLeave:Connect(function()
		script.Parent.BackgroundTransparency = 1
	end)
end
coroutine.wrap(CESEC_fake_script)()
local function QQKRNR_fake_script() -- Menu.Functioner 
	local script = Instance.new('LocalScript', Menu)

	local menu = script.Parent
	local H1 = script.Parent.HoverOne
	local H2 = script.Parent.HoverTwo
	local H3 = script.Parent.HoverThree
	local H4 = script.Parent.HoverFour
	
	H1.HomeBtn.MouseButton1Down:Connect(function()
		H1.HomeBtn.DB.Visible = true
		H1.HomeBtn.TextColor3 = Color3.new(0, 0.666667, 1)
		H1.HomeBtn.TextStrokeTransparency = 0.85
		
		H2.CMDListBtn.DB.Visible = false
		H2.CMDListBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H2.CMDListBtn.TextStrokeTransparency = 1
		
		H3.OptionsBtn.DB.Visible = false
		H3.OptionsBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H3.OptionsBtn.TextStrokeTransparency = 1
		
		H4.DiscordBtn.DB.Visible = false
		H4.DiscordBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H4.DiscordBtn.TextStrokeTransparency = 1
		
		script.Parent:TweenSize(UDim2.new(0, 0,0, 278), "Out", "Sine", .50, true)
		menu.HoverOne.Visible = false
		menu.HoverTwo.Visible = false
		menu.HoverThree.Visible = false
		menu.HoverFour.Visible = false
		menu.CloseMenu.Visible = false
		wait(.50)
		
		script.Parent.Parent.Home.Visible = true
		script.Parent.Parent.CMDs.Visible = false
		script.Parent.Parent.Options.Visible = false
		script.Parent.Parent.Discord.Visible = false
	end)
	
	H2.CMDListBtn.MouseButton1Down:Connect(function()
		H1.HomeBtn.DB.Visible = false
		H1.HomeBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H1.HomeBtn.TextStrokeTransparency = 1
	
		H2.CMDListBtn.DB.Visible = true
		H2.CMDListBtn.TextColor3 = Color3.new(0, 0.666667, 1)
		H2.CMDListBtn.TextStrokeTransparency = 0.85
	
		H3.OptionsBtn.DB.Visible = false
		H3.OptionsBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H3.OptionsBtn.TextStrokeTransparency = 1
	
		H4.DiscordBtn.DB.Visible = false
		H4.DiscordBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H4.DiscordBtn.TextStrokeTransparency = 1
		
		script.Parent:TweenSize(UDim2.new(0, 0,0, 278), "Out", "Sine", .50, true)
		menu.HoverOne.Visible = false
		menu.HoverTwo.Visible = false
		menu.HoverThree.Visible = false
		menu.HoverFour.Visible = false
		menu.CloseMenu.Visible = false
		wait(.50)
		script.Parent.Parent.Home.Visible = false
		script.Parent.Parent.CMDs.Visible = true
		script.Parent.Parent.Options.Visible = false
		script.Parent.Parent.Discord.Visible = false
	end)
	
	H3.OptionsBtn.MouseButton1Down:Connect(function()
		H1.HomeBtn.DB.Visible = false
		H1.HomeBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H1.HomeBtn.TextStrokeTransparency = 1
	
		H2.CMDListBtn.DB.Visible = false
		H2.CMDListBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H2.CMDListBtn.TextStrokeTransparency = 1
	
		H3.OptionsBtn.DB.Visible = true
		H3.OptionsBtn.TextColor3 = Color3.new(0, 0.666667, 19)
		H3.OptionsBtn.TextStrokeTransparency = 0.85
	
		H4.DiscordBtn.DB.Visible = false
		H4.DiscordBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H4.DiscordBtn.TextStrokeTransparency = 1
		
		script.Parent:TweenSize(UDim2.new(0, 0,0, 278), "Out", "Sine", .50, true)
		menu.HoverOne.Visible = false
		menu.HoverTwo.Visible = false
		menu.HoverThree.Visible = false
		menu.HoverFour.Visible = false
		menu.CloseMenu.Visible = false
		wait(.50)
		script.Parent.Parent.Home.Visible = false
		script.Parent.Parent.CMDs.Visible = false
		script.Parent.Parent.Options.Visible = true
		script.Parent.Parent.Discord.Visible = false
	end)
	
	H4.DiscordBtn.MouseButton1Down:Connect(function()
		H1.HomeBtn.DB.Visible = false
		H1.HomeBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H1.HomeBtn.TextStrokeTransparency = 1
	
		H2.CMDListBtn.DB.Visible = false
		H2.CMDListBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H2.CMDListBtn.TextStrokeTransparency = 1
	
		H3.OptionsBtn.DB.Visible = false
		H3.OptionsBtn.TextColor3 = Color3.new(0.372549, 0.372549, 0.372549)
		H3.OptionsBtn.TextStrokeTransparency = 1
	
		H4.DiscordBtn.DB.Visible = true
		H4.DiscordBtn.TextColor3 = Color3.new(0, 0.666667, 1)
		H4.DiscordBtn.TextStrokeTransparency = 0.85
		
		script.Parent:TweenSize(UDim2.new(0, 0,0, 278), "Out", "Sine", .50, true)
		menu.HoverOne.Visible = false
		menu.HoverTwo.Visible = false
		menu.HoverThree.Visible = false
		menu.HoverFour.Visible = false
		menu.CloseMenu.Visible = false
		wait(.50)
		script.Parent.Parent.Home.Visible = false
		script.Parent.Parent.CMDs.Visible = false
		script.Parent.Parent.Options.Visible = false
		script.Parent.Parent.Discord.Visible = true
	end)
end
coroutine.wrap(QQKRNR_fake_script)()
local function DVJOX_fake_script() -- Pfp.ProfilePicture 
	local script = Instance.new('LocalScript', Pfp)

	local Player = game.Players.LocalPlayer
	local userid = Player.UserId
	local image = game.Players:GetUserThumbnailAsync(userid, Enum.ThumbnailType.AvatarThumbnail, Enum.ThumbnailSize.Size420x420)
	script.Parent.Image = image
	
end
coroutine.wrap(DVJOX_fake_script)()
local function FQWGH_fake_script() -- User.LocalScript 
	local script = Instance.new('LocalScript', User)

	script.Parent.Text = game.Players.LocalPlayer.Name
end
coroutine.wrap(FQWGH_fake_script)()
local function BXOOAE_fake_script() -- DiscordServer.LocalScript 
	local script = Instance.new('LocalScript', DiscordServer)

	while true do
		wait(0.00001)
		script.Parent.Text = "https://discord.gg/wPyz4DWY6Z"
	end
end
coroutine.wrap(BXOOAE_fake_script)()
local function WLRNUYM_fake_script() -- Main.Dragify 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0.1
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(WLRNUYM_fake_script)()

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".spider" then
loadstring(game:HttpGet(('https://pastebin.com/raw/pNcCrv0H'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".head pet" then
loadstring(game:HttpGet(('https://pastebin.com/raw/PHvfbtBg'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".ragicide" then
loadstring(game:HttpGet(('https://pastebin.com/raw/qM5NWjLH'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".scp" then
loadstring(game:HttpGet(('https://pastebin.com/raw/dckmm3pR'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".among us" then
loadstring(game:HttpGet(('https://pastebin.com/raw/cF2W3CSa'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".part mover" then
loadstring(game:HttpGet(('https://ghostbin.com/M5Jso/partmover/raw'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".big head" then
loadstring(game:HttpGet("https://raw.githubusercontent.com/sysGhost-aka-BiKode/BigHeadV2/main/BigHeadV2-r15", true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".book reader" then
loadstring(game:HttpGet(('https://pastebin.com/raw/0h0Adi4x'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".hoverboard" then
loadstring(game:GetObjects('rbxassetid://7339698872')[1].Source)()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".gravity gun" then
loadstring(game:HttpGet(('https://pastebin.com/raw/KduE9A6z'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".slenderman" then
loadstring(game:HttpGet(('https://pastebin.com/raw/P4Kd4fcg'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".skateboard" then
loadstring(game:HttpGet(('https://pastebin.com/raw/dU9jyyF0'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".pumpkin titan" then
loadstring(game:HttpGet(('https://pastebin.com/raw/jvUsGe2g'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".starglitcher" then
loadstring(game:HttpGet(('https://pastebin.com/raw/KqcTFiad'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".fallen anger" then
loadstring(game:HttpGet(('https://pastebin.com/raw/28BYAwg8'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".car" then
loadstring(game:HttpGet('https://raw.githubusercontent.com/MonkoTubeYT/carscript/master/!carscript.lua',true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".bag" then
loadstring(game:HttpGet(('https://pastebin.com/raw/GL0TnDix'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".bag" then
loadstring(game:HttpGet(('https://pastebin.com/raw/GL0TnDix'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".fake lag" then
loadstring(game:HttpGet(('https://pastebin.com/raw/Zs59GbzY'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".net fix" then
loadstring(game:HttpGet(('https://pastebin.com/raw/azbm0pps'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".gale" then
loadstring(game:HttpGet(('https://pastebin.com/raw/PjJNLaFa'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".sonic" then
loadstring(game:HttpGetAsync("https://pastebin.com/raw/SyF5t70A"))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".gale" then
loadstring(game:HttpGet(('https://pastebin.com/raw/PjJNLaFa'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".dog pet" then
loadstring(game:HttpGet(('https://pastebin.com/raw/VUDCu8UF'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".showcase dummy" then
loadstring(game:HttpGet(('https://ghostbin.com/xDPQv/aaaaa/raw'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".strong boi" then
loadstring(game:HttpGet(('https://pastebin.com/raw/QVhihqi6'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".cat pet" then
loadstring(game:HttpGet(('https://pastebin.com/raw/RJWB0Nx7'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".soldier ai" then
loadstring(game:HttpGet(('https://pastebin.com/raw/ZSqewmXu'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".nullion" then
loadstring(game:HttpGet(('https://pastebin.com/raw/YfJCG0J8'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".neko" then
loadstring(game:HttpGet(('https://pastebin.com/raw/7bT5VLiu'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".hamster ball" then
loadstring(game:HttpGet(('https://www.toptal.com/developers/hastebin/raw/yoqotaqoja'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".combine soldier" then
loadstring(game:HttpGet(('https://www.toptal.com/developers/hastebin/raw/batavumupe'),true))()
end
end)

Run.MouseButton1Down:Connect(function()
if CMDBox.Text == ".attack cat" then
loadstring(game:HttpGet(('https://www.toptal.com/developers/hastebin/raw/upeciribif'),true))()
end
end)
