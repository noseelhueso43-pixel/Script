local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local AvatarEditorService = game:GetService("AvatarEditorService")
local HttpService = game:GetService("HttpService")
Players.LocalPlayer.Character:WaitForChild("Humanoid")

Players.LocalPlayer.CharacterAdded:Connect(function(character)
	local Humanoid = character:WaitForChild("Humanoid")
	TextLabel.Text = "Gaze Emotes"
	TextButton2.Text = "Catalog"
	TextButton3.Visible = true
end)

-- isfile("GazeEmotes_NewNEWN3WSaved.json") -> false
RunService.RenderStepped:Connect(function(deltaTime)
	character:FindFirstChild("HumanoidRootPart")
end)

local CoreGui = game:GetService("CoreGui")
local GazeEmoteGUI = Instance.new("ScreenGui")
GazeEmoteGUI.Name = "GazeEmoteGUI"
GazeEmoteGUI.Parent = CoreGui
GazeEmoteGUI.Enabled = false
GazeEmoteGUI.DisplayOrder = 999
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 0, 0, 0)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
Frame.BackgroundTransparency = 0.15
Frame.Active = true
Frame.Draggable = true
Frame.Parent = GazeEmoteGUI
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(80, 80, 120)
UIStroke.Thickness = 1.5
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = Frame
local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0, 24, 0, 24)
TextButton.Position = UDim2.new(1, -24, 1, -24)
TextButton.BackgroundTransparency = 1
TextButton.Text = "◢"
TextButton.TextColor3 = Color3.fromRGB(100, 100, 140)
TextButton.TextSize = 18
TextButton.ZIndex = 10
TextButton.Parent = Frame

TextButton.InputBegan:Connect(function(input, gameProcessed)
end)

UserInputService.InputChanged:Connect(function(input2, gameProcessed2)
end)

UserInputService.InputEnded:Connect(function(input3, gameProcessed3)
end)

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0, 0)
TextLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
TextLabel.BackgroundTransparency = 0.5
TextLabel.Text = "Gaze Emotes"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextScaled = true
TextLabel.Parent = Frame
local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 8)
UICorner2.Parent = TextLabel
local TextButton2 = Instance.new("TextButton")
TextButton2.Size = UDim2.new(0.3, 0, 0, 0)
TextButton2.Position = UDim2.new(0.05, 0, 0, 0)
TextButton2.BackgroundColor3 = Color3.fromRGB(30, 30, 80)
TextButton2.BackgroundTransparency = 0.2
TextButton2.Text = "Catalog"
TextButton2.TextColor3 = Color3.new(1, 1, 1)
TextButton2.Font = Enum.Font.GothamBold
TextButton2.TextScaled = true
TextButton2.Parent = Frame
local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 4)
UICorner3.Parent = TextButton2
local TextButton3 = Instance.new("TextButton")
TextButton3.Size = UDim2.new(0.3, 0, 0, 0)
TextButton3.Position = UDim2.new(0.35, 0, 0, 0)
TextButton3.BackgroundColor3 = Color3.fromRGB(30, 80, 30)
TextButton3.BackgroundTransparency = 0.2
TextButton3.Text = "Saved"
TextButton3.TextColor3 = Color3.new(1, 1, 1)
TextButton3.Font = Enum.Font.GothamBold
TextButton3.TextScaled = true
TextButton3.Visible = true
TextButton3.Parent = Frame
local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 4)
UICorner4.Parent = TextButton3
local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(0, 0, 1, 0)
Frame2.Position = UDim2.new(0.6, 0, 0, 0)
Frame2.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
Frame2.BackgroundTransparency = 0.5
Frame2.Parent = Frame
local Frame3 = Instance.new("Frame")
Frame3.Size = UDim2.new(0.6, 0, 1, 0)
Frame3.Position = UDim2.new(0, 0, 0, 0)
Frame3.BackgroundTransparency = 1
Frame3.Visible = true
Frame3.Parent = Frame
local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.6, 0, 0, 0)
TextBox.Position = UDim2.new(0, 0, 0, 0)
TextBox.PlaceholderText = "Search..."
TextBox.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
TextBox.BackgroundTransparency = 0.3
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.Font = Enum.Font.Gotham
TextBox.TextScaled = true
TextBox.ClearTextOnFocus = false
TextBox.Text = ""
TextBox.Parent = Frame3
local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 4)
UICorner5.Parent = TextBox
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = Color3.fromRGB(50, 50, 70)
UIStroke2.Thickness = 1
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Parent = TextBox
local TextButton4 = Instance.new("TextButton")
TextButton4.Size = UDim2.new(0.2, 0, 0, 0)
TextButton4.Position = UDim2.new(0.6, 0, 0, 0)
TextButton4.BackgroundColor3 = Color3.fromRGB(0, 60, 150)
TextButton4.BackgroundTransparency = 0.2
TextButton4.Text = "Refresh"
TextButton4.Font = Enum.Font.GothamBold
TextButton4.TextScaled = true
TextButton4.TextColor3 = Color3.new(1, 1, 1)
TextButton4.Parent = Frame3
local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 4)
UICorner6.Parent = TextButton4
local TextButton5 = Instance.new("TextButton")
TextButton5.Size = UDim2.new(0.2, 0, 0, 0)
TextButton5.Position = UDim2.new(0.8, 0, 0, 0)
TextButton5.BackgroundColor3 = Color3.fromRGB(40, 40, 80)
TextButton5.BackgroundTransparency = 0.2
TextButton5.Text = "Sort: Relevance"
TextButton5.Font = Enum.Font.GothamBold
TextButton5.TextScaled = true
TextButton5.TextColor3 = Color3.new(1, 1, 1)
TextButton5.Parent = Frame3
local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(0, 4)
UICorner7.Parent = TextButton5
local Frame4 = Instance.new("Frame")
Frame4.Size = UDim2.new(0.6, 0, 1, 0)
Frame4.Position = UDim2.new(0, 0, 0, 0)
Frame4.BackgroundTransparency = 1
Frame4.Visible = false
Frame4.Parent = Frame
local TextBox2 = Instance.new("TextBox")
TextBox2.Size = UDim2.new(0.7, 0, 0, 0)
TextBox2.Position = UDim2.new(0, 0, 0, 0)
TextBox2.PlaceholderText = "Search Saved..."
TextBox2.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
TextBox2.BackgroundTransparency = 0.3
TextBox2.TextColor3 = Color3.new(1, 1, 1)
TextBox2.Font = Enum.Font.Gotham
TextBox2.TextScaled = true
TextBox2.ClearTextOnFocus = false
TextBox2.Text = ""
TextBox2.Parent = Frame4
local UICorner8 = Instance.new("UICorner")
UICorner8.CornerRadius = UDim.new(0, 4)
UICorner8.Parent = TextBox2
local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = Color3.fromRGB(50, 50, 70)
UIStroke3.Thickness = 1
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke3.Parent = TextBox2
local TextBox3 = Instance.new("TextBox")
TextBox3.Size = UDim2.new(0.2, 0, 0, 0)
TextBox3.Position = UDim2.new(0.7, 0, 0, 0)
TextBox3.PlaceholderText = "Emote ID"
TextBox3.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
TextBox3.BackgroundTransparency = 0.3
TextBox3.TextColor3 = Color3.new(1, 1, 1)
TextBox3.Font = Enum.Font.Gotham
TextBox3.TextScaled = true
TextBox3.ClearTextOnFocus = false
TextBox3.Text = ""
TextBox3.Parent = Frame4
local UICorner9 = Instance.new("UICorner")
UICorner9.CornerRadius = UDim.new(0, 4)
UICorner9.Parent = TextBox3
local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = Color3.fromRGB(50, 50, 70)
UIStroke4.Thickness = 1
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Parent = TextBox3
local TextButton6 = Instance.new("TextButton")
TextButton6.Size = UDim2.new(0.1, 0, 0, 0)
TextButton6.Position = UDim2.new(0.9, 0, 0, 0)
TextButton6.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
TextButton6.BackgroundTransparency = 0.2
TextButton6.Text = "+"
TextButton6.Font = Enum.Font.GothamBold
TextButton6.TextScaled = true
TextButton6.TextColor3 = Color3.new(1, 1, 1)
TextButton6.Parent = Frame4
local UICorner10 = Instance.new("UICorner")
UICorner10.CornerRadius = UDim.new(0, 4)
UICorner10.Parent = TextButton6
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 0
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Parent = Frame4
local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Size = UDim2.new(1, 0, 0, 0)
TextLabel2.Position = UDim2.new(0, 0, 0.5, 0)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Text = "Sorry I Was Changing Save Files Again 😅"
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.Font = Enum.Font.GothamBold
TextLabel2.TextScaled = true
TextLabel2.Visible = false
TextLabel2.Parent = ScrollingFrame
local UIGridLayout = Instance.new("UIGridLayout")
UIGridLayout.CellSize = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIGridLayout.Parent = ScrollingFrame
local Frame5 = Instance.new("Frame")
Frame5.Size = UDim2.new(0.4, 0, 1, 0)
Frame5.Position = UDim2.new(0.6, 0, 0, 0)
Frame5.BackgroundTransparency = 1
Frame5.Parent = Frame
local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Size = UDim2.new(1, 0, 0, 0)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Text = "Settings"
TextLabel3.TextColor3 = Color3.new(1, 1, 1)
TextLabel3.Font = Enum.Font.GothamBold
TextLabel3.TextScaled = true
TextLabel3.Parent = Frame5
local ScrollingFrame2 = Instance.new("ScrollingFrame")
ScrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame2.Position = UDim2.new(0, 0, 0, 0)
ScrollingFrame2.BackgroundTransparency = 1
ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame2.ScrollBarThickness = 4
ScrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 140)
ScrollingFrame2.Parent = Frame5
local changedSignal = ScrollingFrame2:GetPropertyChangedSignal("CanvasPosition")

changedSignal:Connect(function()
	ScrollingFrame2.CanvasPosition = Vector2.new(0, 0)
end)

local UIListLayout = Instance.new("UIListLayout", ScrollingFrame2)
UIListLayout.Padding = UDim.new(0, 8)
UIListLayout.FillDirection = Enum.FillDirection.Vertical
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
local changedSignal2 = UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize")

changedSignal2:Connect(function()
	ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 10)
end)

TextButton6.MouseButton1Click:Connect(function()
end)

local Frame6 = Instance.new("Frame")
Frame6.Size = UDim2.new(1, 0, 0, 0)
Frame6.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame6.BackgroundTransparency = 0.4
Frame6.Parent = ScrollingFrame2
local UICorner11 = Instance.new("UICorner")
UICorner11.CornerRadius = UDim.new(0, 6)
UICorner11.Parent = Frame6
local TextButton7 = Instance.new("TextButton")
TextButton7.Size = UDim2.new(1, 0, 1, 0)
TextButton7.Position = UDim2.new(0, 0, 0, 0)
TextButton7.BackgroundColor3 = Color3.fromRGB(30, 90, 180)
TextButton7.BackgroundTransparency = 0.2
TextButton7.Text = "Reset Settings"
TextButton7.TextColor3 = Color3.new(1, 1, 1)
TextButton7.Font = Enum.Font.GothamBold
TextButton7.TextScaled = true
TextButton7.Parent = Frame6
local UICorner12 = Instance.new("UICorner")
UICorner12.CornerRadius = UDim.new(0, 6)
UICorner12.Parent = TextButton7

TextButton7.MouseButton1Click:Connect(function()
end)

local Frame7 = Instance.new("Frame")
Frame7.Size = UDim2.new(1, 0, 0, 0)
Frame7.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame7.BackgroundTransparency = 0.4
Frame7.Parent = ScrollingFrame2
local UICorner13 = Instance.new("UICorner")
UICorner13.CornerRadius = UDim.new(0, 6)
UICorner13.Parent = Frame7
local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Color = Color3.fromRGB(60, 60, 90)
UIStroke5.Thickness = 1
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke5.Parent = Frame7
local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Size = UDim2.new(1, 0, 1, 0)
TextLabel4.Position = UDim2.new(0, 0, 0, 0)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Text = "Stop Emote When Moving"
TextLabel4.TextColor3 = Color3.new(1, 1, 1)
TextLabel4.Font = Enum.Font.Gotham
TextLabel4.TextScaled = true
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel4.Parent = Frame7
local TextButton8 = Instance.new("TextButton")
TextButton8.Size = UDim2.new(0, 0, 0, 0)
TextButton8.Position = UDim2.new(1, 0, 0.5, 0)
TextButton8.TextColor3 = Color3.new(1, 1, 1)
TextButton8.Font = Enum.Font.GothamBold
TextButton8.TextScaled = true
TextButton8.Parent = Frame7
local UICorner14 = Instance.new("UICorner")
UICorner14.CornerRadius = UDim.new(0, 4)
UICorner14.Parent = TextButton8

TextButton8.MouseButton1Click:Connect(function()
	TextButton8.Text = "OFF"
	TextButton8.BackgroundColor3 = Color3.fromRGB(150, 40, 40)
	TextButton8.BackgroundTransparency = 0.2
end)

TextButton8.Text = "ON"
TextButton8.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
TextButton8.BackgroundTransparency = 0.2
local Frame8 = Instance.new("Frame")
Frame8.Size = UDim2.new(1, 0, 0, 0)
Frame8.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame8.BackgroundTransparency = 0.4
Frame8.Parent = ScrollingFrame2
local UICorner15 = Instance.new("UICorner")
UICorner15.CornerRadius = UDim.new(0, 6)
UICorner15.Parent = Frame8
local UIStroke6 = Instance.new("UIStroke")
UIStroke6.Color = Color3.fromRGB(60, 60, 90)
UIStroke6.Thickness = 1
UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke6.Parent = Frame8
local TextLabel5 = Instance.new("TextLabel")
TextLabel5.Size = UDim2.new(1, 0, 1, 0)
TextLabel5.Position = UDim2.new(0, 0, 0, 0)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Text = "Looped"
TextLabel5.TextColor3 = Color3.new(1, 1, 1)
TextLabel5.Font = Enum.Font.Gotham
TextLabel5.TextScaled = true
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel5.Parent = Frame8
local TextButton9 = Instance.new("TextButton")
TextButton9.Size = UDim2.new(0, 0, 0, 0)
TextButton9.Position = UDim2.new(1, 0, 0.5, 0)
TextButton9.TextColor3 = Color3.new(1, 1, 1)
TextButton9.Font = Enum.Font.GothamBold
TextButton9.TextScaled = true
TextButton9.Parent = Frame8
local UICorner16 = Instance.new("UICorner")
UICorner16.CornerRadius = UDim.new(0, 4)
UICorner16.Parent = TextButton9

TextButton9.MouseButton1Click:Connect(function()
	TextButton9.Text = "OFF"
	TextButton9.BackgroundColor3 = Color3.fromRGB(150, 40, 40)
	TextButton9.BackgroundTransparency = 0.2
end)

TextButton9.Text = "ON"
TextButton9.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
TextButton9.BackgroundTransparency = 0.2
local Frame9 = Instance.new("Frame")
Frame9.Size = UDim2.new(1, 0, 0, 0)
Frame9.BackgroundTransparency = 1
Frame9.Parent = ScrollingFrame2
local Frame10 = Instance.new("Frame")
Frame10.Size = UDim2.new(1, 0, 1, 0)
Frame10.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame10.BackgroundTransparency = 0.4
Frame10.Parent = Frame9
local UICorner17 = Instance.new("UICorner")
UICorner17.CornerRadius = UDim.new(0, 6)
UICorner17.Parent = Frame10
local UIStroke7 = Instance.new("UIStroke")
UIStroke7.Color = Color3.fromRGB(60, 60, 90)
UIStroke7.Thickness = 1
UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke7.Parent = Frame10
local TextLabel6 = Instance.new("TextLabel")
TextLabel6.Size = UDim2.new(0.5, 0, 0, 0)
TextLabel6.Position = UDim2.new(0, 10, 0, 5)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Text = "Speed: 1.00"
TextLabel6.TextColor3 = Color3.new(1, 1, 1)
TextLabel6.Font = Enum.Font.Gotham
TextLabel6.TextScaled = true
TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel6.Parent = Frame10
local TextBox4 = Instance.new("TextBox")
TextBox4.Size = UDim2.new(0.5, 0, 0, 0)
TextBox4.Position = UDim2.new(0.5, 0, 0, 0)
TextBox4.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TextBox4.Text = "1"
TextBox4.TextColor3 = Color3.new(1, 1, 1)
TextBox4.Font = Enum.Font.Gotham
TextBox4.TextScaled = true
TextBox4.ClearTextOnFocus = false
TextBox4.Parent = Frame10
local UICorner18 = Instance.new("UICorner")
UICorner18.CornerRadius = UDim.new(0, 4)
UICorner18.Parent = TextBox4
local Frame11 = Instance.new("Frame")
Frame11.Size = UDim2.new(1, 0, 0, 0)
Frame11.Position = UDim2.new(0, 0, 0, 0)
Frame11.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Frame11.Parent = Frame10
local UICorner19 = Instance.new("UICorner")
UICorner19.CornerRadius = UDim.new(0, 6)
UICorner19.Parent = Frame11
local Frame12 = Instance.new("Frame")
Frame12.Size = UDim2.new(0, 0, 1, 0)
Frame12.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
Frame12.Parent = Frame11
local UICorner20 = Instance.new("UICorner")
UICorner20.CornerRadius = UDim.new(0, 6)
UICorner20.Parent = Frame12
local Frame13 = Instance.new("Frame")
Frame13.Size = UDim2.new(0, 0, 0, 0)
Frame13.AnchorPoint = Vector2.new(0.5, 0.5)
Frame13.Position = UDim2.new(0, 0, 0.5, 0)
Frame13.BackgroundColor3 = Color3.fromRGB(220, 220, 255)
Frame13.Parent = Frame11
local UICorner21 = Instance.new("UICorner")
UICorner21.CornerRadius = UDim.new(0, 10)
UICorner21.Parent = Frame13
local UIStroke8 = Instance.new("UIStroke")
UIStroke8.Color = Color3.fromRGB(0, 0, 0)
UIStroke8.Thickness = 1
UIStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke8.Parent = Frame13

Frame11.InputBegan:Connect(function(input4, gameProcessed4)
end)

Frame13.InputBegan:Connect(function(input5, gameProcessed5)
end)

UserInputService.InputChanged:Connect(function(input6, gameProcessed6)
end)

UserInputService.InputEnded:Connect(function(input7, gameProcessed7)
end)

TextBox4.FocusLost:Connect(function(enterPressed, inputObject)
	TextLabel6.Text = "Speed: 1.00"
	TextBox4.Text = "1"
	local tween12 = TweenService:Create(Frame12, TweenInfo.new(0.15), { Size = UDim2.new(0.2, 0, 1, 0) })
	tween12:Play()
	local tween13 = TweenService:Create(Frame13, TweenInfo.new(0.15), { Position = UDim2.new(0.2, 0, 0.5, 0) })
	tween13:Play()
end)

TextLabel6.Text = "Speed: 1.00"
TextBox4.Text = "1"
local tween = TweenService:Create(Frame12, TweenInfo.new(0.15), { Size = UDim2.new(0.2, 0, 1, 0) })
tween:Play()
local tween2 = TweenService:Create(Frame13, TweenInfo.new(0.15), { Position = UDim2.new(0.2, 0, 0.5, 0) })
tween2:Play()
local Frame14 = Instance.new("Frame")
Frame14.Size = UDim2.new(1, 0, 0, 0)
Frame14.BackgroundTransparency = 1
Frame14.Parent = ScrollingFrame2
local Frame15 = Instance.new("Frame")
Frame15.Size = UDim2.new(1, 0, 1, 0)
Frame15.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame15.BackgroundTransparency = 0.4
Frame15.Parent = Frame14
local UICorner22 = Instance.new("UICorner")
UICorner22.CornerRadius = UDim.new(0, 6)
UICorner22.Parent = Frame15
local UIStroke9 = Instance.new("UIStroke")
UIStroke9.Color = Color3.fromRGB(60, 60, 90)
UIStroke9.Thickness = 1
UIStroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke9.Parent = Frame15
local TextLabel7 = Instance.new("TextLabel")
TextLabel7.Size = UDim2.new(0.5, 0, 0, 0)
TextLabel7.Position = UDim2.new(0, 10, 0, 5)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Text = "Time Position: 0.00"
TextLabel7.TextColor3 = Color3.new(1, 1, 1)
TextLabel7.Font = Enum.Font.Gotham
TextLabel7.TextScaled = true
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
TextLabel7.Parent = Frame15
local TextBox5 = Instance.new("TextBox")
TextBox5.Size = UDim2.new(0.5, 0, 0, 0)
TextBox5.Position = UDim2.new(0.5, 0, 0, 0)
TextBox5.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TextBox5.Text = "0"
TextBox5.TextColor3 = Color3.new(1, 1, 1)
TextBox5.Font = Enum.Font.Gotham
TextBox5.TextScaled = true
TextBox5.ClearTextOnFocus = false
TextBox5.Parent = Frame15
local UICorner23 = Instance.new("UICorner")
UICorner23.CornerRadius = UDim.new(0, 4)
UICorner23.Parent = TextBox5
local Frame16 = Instance.new("Frame")
Frame16.Size = UDim2.new(1, 0, 0, 0)
Frame16.Position = UDim2.new(0, 0, 0, 0)
Frame16.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Frame16.Parent = Frame15
local UICorner24 = Instance.new("UICorner")
UICorner24.CornerRadius = UDim.new(0, 6)
UICorner24.Parent = Frame16
local Frame17 = Instance.new("Frame")
Frame17.Size = UDim2.new(0, 0, 1, 0)
Frame17.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
Frame17.Parent = Frame16
local UICorner25 = Instance.new("UICorner")
UICorner25.CornerRadius = UDim.new(0, 6)
UICorner25.Parent = Frame17
local Frame18 = Instance.new("Frame")
Frame18.Size = UDim2.new(0, 0, 0, 0)
Frame18.AnchorPoint = Vector2.new(0.5, 0.5)
Frame18.Position = UDim2.new(0, 0, 0.5, 0)
Frame18.BackgroundColor3 = Color3.fromRGB(220, 220, 255)
Frame18.Parent = Frame16
local UICorner26 = Instance.new("UICorner")
UICorner26.CornerRadius = UDim.new(0, 10)
UICorner26.Parent = Frame18
local UIStroke10 = Instance.new("UIStroke")
UIStroke10.Color = Color3.fromRGB(0, 0, 0)
UIStroke10.Thickness = 1
UIStroke10.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke10.Parent = Frame18

Frame16.InputBegan:Connect(function(input8, gameProcessed8)
end)

Frame18.InputBegan:Connect(function(input9, gameProcessed9)
end)

UserInputService.InputChanged:Connect(function(input10, gameProcessed10)
end)

UserInputService.InputEnded:Connect(function(input11, gameProcessed11)
end)

TextBox5.FocusLost:Connect(function(enterPressed2, inputObject2)
	TextLabel7.Text = "Time Position: 0.00"
	TextBox5.Text = "0"
	local tween14 = TweenService:Create(Frame17, TweenInfo.new(0.15), { Size = UDim2.new(0, 0, 1, 0) })
	tween14:Play()
	local tween15 = TweenService:Create(Frame18, TweenInfo.new(0.15), { Position = UDim2.new(0, 0, 0.5, 0) })
	tween15:Play()
end)

TextLabel7.Text = "Time Position: 0.00"
TextBox5.Text = "0"
local tween3 = TweenService:Create(Frame17, TweenInfo.new(0.15), { Size = UDim2.new(0, 0, 1, 0) })
tween3:Play()
local tween4 = TweenService:Create(Frame18, TweenInfo.new(0.15), { Position = UDim2.new(0, 0, 0.5, 0) })
tween4:Play()
local Frame19 = Instance.new("Frame")
Frame19.Size = UDim2.new(1, 0, 0, 0)
Frame19.BackgroundTransparency = 1
Frame19.Parent = ScrollingFrame2
local Frame20 = Instance.new("Frame")
Frame20.Size = UDim2.new(1, 0, 1, 0)
Frame20.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame20.BackgroundTransparency = 0.4
Frame20.Parent = Frame19
local UICorner27 = Instance.new("UICorner")
UICorner27.CornerRadius = UDim.new(0, 6)
UICorner27.Parent = Frame20
local UIStroke11 = Instance.new("UIStroke")
UIStroke11.Color = Color3.fromRGB(60, 60, 90)
UIStroke11.Thickness = 1
UIStroke11.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke11.Parent = Frame20
local TextLabel8 = Instance.new("TextLabel")
TextLabel8.Size = UDim2.new(0.5, 0, 0, 0)
TextLabel8.Position = UDim2.new(0, 10, 0, 5)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Text = "Weight: 1.00"
TextLabel8.TextColor3 = Color3.new(1, 1, 1)
TextLabel8.Font = Enum.Font.Gotham
TextLabel8.TextScaled = true
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
TextLabel8.Parent = Frame20
local TextBox6 = Instance.new("TextBox")
TextBox6.Size = UDim2.new(0.5, 0, 0, 0)
TextBox6.Position = UDim2.new(0.5, 0, 0, 0)
TextBox6.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TextBox6.Text = "1"
TextBox6.TextColor3 = Color3.new(1, 1, 1)
TextBox6.Font = Enum.Font.Gotham
TextBox6.TextScaled = true
TextBox6.ClearTextOnFocus = false
TextBox6.Parent = Frame20
local UICorner28 = Instance.new("UICorner")
UICorner28.CornerRadius = UDim.new(0, 4)
UICorner28.Parent = TextBox6
local Frame21 = Instance.new("Frame")
Frame21.Size = UDim2.new(1, 0, 0, 0)
Frame21.Position = UDim2.new(0, 0, 0, 0)
Frame21.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Frame21.Parent = Frame20
local UICorner29 = Instance.new("UICorner")
UICorner29.CornerRadius = UDim.new(0, 6)
UICorner29.Parent = Frame21
local Frame22 = Instance.new("Frame")
Frame22.Size = UDim2.new(0, 0, 1, 0)
Frame22.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
Frame22.Parent = Frame21
local UICorner30 = Instance.new("UICorner")
UICorner30.CornerRadius = UDim.new(0, 6)
UICorner30.Parent = Frame22
local Frame23 = Instance.new("Frame")
Frame23.Size = UDim2.new(0, 0, 0, 0)
Frame23.AnchorPoint = Vector2.new(0.5, 0.5)
Frame23.Position = UDim2.new(0, 0, 0.5, 0)
Frame23.BackgroundColor3 = Color3.fromRGB(220, 220, 255)
Frame23.Parent = Frame21
local UICorner31 = Instance.new("UICorner")
UICorner31.CornerRadius = UDim.new(0, 10)
UICorner31.Parent = Frame23
local UIStroke12 = Instance.new("UIStroke")
UIStroke12.Color = Color3.fromRGB(0, 0, 0)
UIStroke12.Thickness = 1
UIStroke12.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke12.Parent = Frame23

Frame21.InputBegan:Connect(function(input12, gameProcessed12)
end)

Frame23.InputBegan:Connect(function(input13, gameProcessed13)
end)

UserInputService.InputChanged:Connect(function(input14, gameProcessed14)
end)

UserInputService.InputEnded:Connect(function(input15, gameProcessed15)
end)

TextBox6.FocusLost:Connect(function(enterPressed3, inputObject3)
	TextLabel8.Text = "Weight: 1.00"
	TextBox6.Text = "1"
	local tween16 = TweenService:Create(Frame22, TweenInfo.new(0.15), { Size = UDim2.new(1, 0, 1, 0) })
	tween16:Play()
	local tween17 = TweenService:Create(Frame23, TweenInfo.new(0.15), { Position = UDim2.new(1, 0, 0.5, 0) })
	tween17:Play()
end)

TextLabel8.Text = "Weight: 1.00"
TextBox6.Text = "1"
local tween5 = TweenService:Create(Frame22, TweenInfo.new(0.15), { Size = UDim2.new(1, 0, 1, 0) })
tween5:Play()
local tween6 = TweenService:Create(Frame23, TweenInfo.new(0.15), { Position = UDim2.new(1, 0, 0.5, 0) })
tween6:Play()
local Frame24 = Instance.new("Frame")
Frame24.Size = UDim2.new(1, 0, 0, 0)
Frame24.BackgroundTransparency = 1
Frame24.Parent = ScrollingFrame2
local Frame25 = Instance.new("Frame")
Frame25.Size = UDim2.new(1, 0, 1, 0)
Frame25.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame25.BackgroundTransparency = 0.4
Frame25.Parent = Frame24
local UICorner32 = Instance.new("UICorner")
UICorner32.CornerRadius = UDim.new(0, 6)
UICorner32.Parent = Frame25
local UIStroke13 = Instance.new("UIStroke")
UIStroke13.Color = Color3.fromRGB(60, 60, 90)
UIStroke13.Thickness = 1
UIStroke13.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke13.Parent = Frame25
local TextLabel9 = Instance.new("TextLabel")
TextLabel9.Size = UDim2.new(0.5, 0, 0, 0)
TextLabel9.Position = UDim2.new(0, 10, 0, 5)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Text = "Fade In: 0.10"
TextLabel9.TextColor3 = Color3.new(1, 1, 1)
TextLabel9.Font = Enum.Font.Gotham
TextLabel9.TextScaled = true
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
TextLabel9.Parent = Frame25
local TextBox7 = Instance.new("TextBox")
TextBox7.Size = UDim2.new(0.5, 0, 0, 0)
TextBox7.Position = UDim2.new(0.5, 0, 0, 0)
TextBox7.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TextBox7.Text = "0.1"
TextBox7.TextColor3 = Color3.new(1, 1, 1)
TextBox7.Font = Enum.Font.Gotham
TextBox7.TextScaled = true
TextBox7.ClearTextOnFocus = false
TextBox7.Parent = Frame25
local UICorner33 = Instance.new("UICorner")
UICorner33.CornerRadius = UDim.new(0, 4)
UICorner33.Parent = TextBox7
local Frame26 = Instance.new("Frame")
Frame26.Size = UDim2.new(1, 0, 0, 0)
Frame26.Position = UDim2.new(0, 0, 0, 0)
Frame26.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Frame26.Parent = Frame25
local UICorner34 = Instance.new("UICorner")
UICorner34.CornerRadius = UDim.new(0, 6)
UICorner34.Parent = Frame26
local Frame27 = Instance.new("Frame")
Frame27.Size = UDim2.new(0, 0, 1, 0)
Frame27.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
Frame27.Parent = Frame26
local UICorner35 = Instance.new("UICorner")
UICorner35.CornerRadius = UDim.new(0, 6)
UICorner35.Parent = Frame27
local Frame28 = Instance.new("Frame")
Frame28.Size = UDim2.new(0, 0, 0, 0)
Frame28.AnchorPoint = Vector2.new(0.5, 0.5)
Frame28.Position = UDim2.new(0, 0, 0.5, 0)
Frame28.BackgroundColor3 = Color3.fromRGB(220, 220, 255)
Frame28.Parent = Frame26
local UICorner36 = Instance.new("UICorner")
UICorner36.CornerRadius = UDim.new(0, 10)
UICorner36.Parent = Frame28
local UIStroke14 = Instance.new("UIStroke")
UIStroke14.Color = Color3.fromRGB(0, 0, 0)
UIStroke14.Thickness = 1
UIStroke14.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke14.Parent = Frame28

Frame26.InputBegan:Connect(function(input16, gameProcessed16)
end)

Frame28.InputBegan:Connect(function(input17, gameProcessed17)
end)

UserInputService.InputChanged:Connect(function(input18, gameProcessed18)
end)

UserInputService.InputEnded:Connect(function(input19, gameProcessed19)
end)

TextBox7.FocusLost:Connect(function(enterPressed4, inputObject4)
	TextLabel9.Text = "Fade In: 0.10"
	TextBox7.Text = "0.1"
	local tween18 = TweenService:Create(Frame27, TweenInfo.new(0.15), { Size = UDim2.new(0.05, 0, 1, 0) })
	tween18:Play()
	local tween19 = TweenService:Create(Frame28, TweenInfo.new(0.15), { Position = UDim2.new(0.05, 0, 0.5, 0) })
	tween19:Play()
end)

TextLabel9.Text = "Fade In: 0.10"
TextBox7.Text = "0.1"
local tween7 = TweenService:Create(Frame27, TweenInfo.new(0.15), { Size = UDim2.new(0.05, 0, 1, 0) })
tween7:Play()
local tween8 = TweenService:Create(Frame28, TweenInfo.new(0.15), { Position = UDim2.new(0.05, 0, 0.5, 0) })
tween8:Play()
local Frame29 = Instance.new("Frame")
Frame29.Size = UDim2.new(1, 0, 0, 0)
Frame29.BackgroundTransparency = 1
Frame29.Parent = ScrollingFrame2
local Frame30 = Instance.new("Frame")
Frame30.Size = UDim2.new(1, 0, 1, 0)
Frame30.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame30.BackgroundTransparency = 0.4
Frame30.Parent = Frame29
local UICorner37 = Instance.new("UICorner")
UICorner37.CornerRadius = UDim.new(0, 6)
UICorner37.Parent = Frame30
local UIStroke15 = Instance.new("UIStroke")
UIStroke15.Color = Color3.fromRGB(60, 60, 90)
UIStroke15.Thickness = 1
UIStroke15.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke15.Parent = Frame30
local TextLabel10 = Instance.new("TextLabel")
TextLabel10.Size = UDim2.new(0.5, 0, 0, 0)
TextLabel10.Position = UDim2.new(0, 10, 0, 5)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Text = "Fade Out: 0.10"
TextLabel10.TextColor3 = Color3.new(1, 1, 1)
TextLabel10.Font = Enum.Font.Gotham
TextLabel10.TextScaled = true
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
TextLabel10.Parent = Frame30
local TextBox8 = Instance.new("TextBox")
TextBox8.Size = UDim2.new(0.5, 0, 0, 0)
TextBox8.Position = UDim2.new(0.5, 0, 0, 0)
TextBox8.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
TextBox8.Text = "0.1"
TextBox8.TextColor3 = Color3.new(1, 1, 1)
TextBox8.Font = Enum.Font.Gotham
TextBox8.TextScaled = true
TextBox8.ClearTextOnFocus = false
TextBox8.Parent = Frame30
local UICorner38 = Instance.new("UICorner")
UICorner38.CornerRadius = UDim.new(0, 4)
UICorner38.Parent = TextBox8
local Frame31 = Instance.new("Frame")
Frame31.Size = UDim2.new(1, 0, 0, 0)
Frame31.Position = UDim2.new(0, 0, 0, 0)
Frame31.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
Frame31.Parent = Frame30
local UICorner39 = Instance.new("UICorner")
UICorner39.CornerRadius = UDim.new(0, 6)
UICorner39.Parent = Frame31
local Frame32 = Instance.new("Frame")
Frame32.Size = UDim2.new(0, 0, 1, 0)
Frame32.BackgroundColor3 = Color3.fromRGB(0, 140, 255)
Frame32.Parent = Frame31
local UICorner40 = Instance.new("UICorner")
UICorner40.CornerRadius = UDim.new(0, 6)
UICorner40.Parent = Frame32
local Frame33 = Instance.new("Frame")
Frame33.Size = UDim2.new(0, 0, 0, 0)
Frame33.AnchorPoint = Vector2.new(0.5, 0.5)
Frame33.Position = UDim2.new(0, 0, 0.5, 0)
Frame33.BackgroundColor3 = Color3.fromRGB(220, 220, 255)
Frame33.Parent = Frame31
local UICorner41 = Instance.new("UICorner")
UICorner41.CornerRadius = UDim.new(0, 10)
UICorner41.Parent = Frame33
local UIStroke16 = Instance.new("UIStroke")
UIStroke16.Color = Color3.fromRGB(0, 0, 0)
UIStroke16.Thickness = 1
UIStroke16.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke16.Parent = Frame33

Frame31.InputBegan:Connect(function(input20, gameProcessed20)
end)

Frame33.InputBegan:Connect(function(input21, gameProcessed21)
end)

UserInputService.InputChanged:Connect(function(input22, gameProcessed22)
end)

UserInputService.InputEnded:Connect(function(input23, gameProcessed23)
end)

TextBox8.FocusLost:Connect(function(enterPressed5, inputObject5)
	TextLabel10.Text = "Fade Out: 0.10"
	TextBox8.Text = "0.1"
	local tween20 = TweenService:Create(Frame32, TweenInfo.new(0.15), { Size = UDim2.new(0.05, 0, 1, 0) })
	tween20:Play()
	local tween21 = TweenService:Create(Frame33, TweenInfo.new(0.15), { Position = UDim2.new(0.05, 0, 0.5, 0) })
	tween21:Play()
end)

TextLabel10.Text = "Fade Out: 0.10"
TextBox8.Text = "0.1"
local tween9 = TweenService:Create(Frame32, TweenInfo.new(0.15), { Size = UDim2.new(0.05, 0, 1, 0) })
tween9:Play()
local tween10 = TweenService:Create(Frame33, TweenInfo.new(0.15), { Position = UDim2.new(0.05, 0, 0.5, 0) })
tween10:Play()
local Frame34 = Instance.new("Frame")
Frame34.Size = UDim2.new(1, 0, 0, 0)
Frame34.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame34.BackgroundTransparency = 0.4
Frame34.Parent = ScrollingFrame2
local UICorner42 = Instance.new("UICorner")
UICorner42.CornerRadius = UDim.new(0, 6)
UICorner42.Parent = Frame34
local UIStroke17 = Instance.new("UIStroke")
UIStroke17.Color = Color3.fromRGB(60, 60, 90)
UIStroke17.Thickness = 1
UIStroke17.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke17.Parent = Frame34
local TextLabel11 = Instance.new("TextLabel")
TextLabel11.Size = UDim2.new(1, 0, 1, 0)
TextLabel11.Position = UDim2.new(0, 0, 0, 0)
TextLabel11.BackgroundTransparency = 1
TextLabel11.Text = "Stop Other Animations On Play"
TextLabel11.TextColor3 = Color3.new(1, 1, 1)
TextLabel11.Font = Enum.Font.Gotham
TextLabel11.TextScaled = true
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
TextLabel11.Parent = Frame34
local TextButton10 = Instance.new("TextButton")
TextButton10.Size = UDim2.new(0, 0, 0, 0)
TextButton10.Position = UDim2.new(1, 0, 0.5, 0)
TextButton10.TextColor3 = Color3.new(1, 1, 1)
TextButton10.Font = Enum.Font.GothamBold
TextButton10.TextScaled = true
TextButton10.Parent = Frame34
local UICorner43 = Instance.new("UICorner")
UICorner43.CornerRadius = UDim.new(0, 4)
UICorner43.Parent = TextButton10

TextButton10.MouseButton1Click:Connect(function()
	TextButton10.Text = "OFF"
	TextButton10.BackgroundColor3 = Color3.fromRGB(150, 40, 40)
	TextButton10.BackgroundTransparency = 0.2
end)

TextButton10.Text = "ON"
TextButton10.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
TextButton10.BackgroundTransparency = 0.2
local Frame35 = Instance.new("Frame")
Frame35.Size = UDim2.new(1, 0, 0, 0)
Frame35.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame35.BackgroundTransparency = 0.4
Frame35.Parent = ScrollingFrame2
local UICorner44 = Instance.new("UICorner")
UICorner44.CornerRadius = UDim.new(0, 6)
UICorner44.Parent = Frame35
local UIStroke18 = Instance.new("UIStroke")
UIStroke18.Color = Color3.fromRGB(60, 60, 90)
UIStroke18.Thickness = 1
UIStroke18.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke18.Parent = Frame35
local TextLabel12 = Instance.new("TextLabel")
TextLabel12.Size = UDim2.new(1, 0, 1, 0)
TextLabel12.Position = UDim2.new(0, 0, 0, 0)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Text = "High Priority"
TextLabel12.TextColor3 = Color3.new(1, 1, 1)
TextLabel12.Font = Enum.Font.Gotham
TextLabel12.TextScaled = true
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
TextLabel12.Parent = Frame35
local TextButton11 = Instance.new("TextButton")
TextButton11.Size = UDim2.new(0, 0, 0, 0)
TextButton11.Position = UDim2.new(1, 0, 0.5, 0)
TextButton11.TextColor3 = Color3.new(1, 1, 1)
TextButton11.Font = Enum.Font.GothamBold
TextButton11.TextScaled = true
TextButton11.Parent = Frame35
local UICorner45 = Instance.new("UICorner")
UICorner45.CornerRadius = UDim.new(0, 4)
UICorner45.Parent = TextButton11

TextButton11.MouseButton1Click:Connect(function()
	TextButton11.Text = "OFF"
	TextButton11.BackgroundColor3 = Color3.fromRGB(150, 40, 40)
	TextButton11.BackgroundTransparency = 0.2
end)

TextButton11.Text = "ON"
TextButton11.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
TextButton11.BackgroundTransparency = 0.2

TextButton7.MouseButton1Click:Connect(function()
	TextButton8.Text = "ON"
	TextButton8.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
	TextButton8.BackgroundTransparency = 0.2
	TextButton10.Text = "ON"
	TextButton10.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
	TextButton10.BackgroundTransparency = 0.2
	TextButton11.Text = "ON"
	TextButton11.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
	TextButton11.BackgroundTransparency = 0.2

	for _, item in ipairs({
		{ textLabel = TextLabel9, text = "Fade In: 0.10", textBox = TextBox7, text2 = "0.1", frame = Frame27, xScale = 0.05, frame2 = Frame28 },
		{ textLabel = TextLabel10, text = "Fade Out: 0.10", textBox = TextBox8, text2 = "0.1", frame = Frame32, xScale = 0.05, frame2 = Frame33 },
		{ textLabel = TextLabel8, text = "Weight: 1.00", textBox = TextBox6, text2 = "1", frame = Frame22, xScale = 1, frame2 = Frame23 },
		{ textLabel = TextLabel6, text = "Speed: 1.00", textBox = TextBox4, text2 = "1", frame = Frame12, xScale = 0.2, frame2 = Frame13 },
		{ textLabel = TextLabel7, text = "Time Position: 0.00", textBox = TextBox5, text2 = "0", frame = Frame17, xScale = 0, frame2 = Frame18 },
	}) do
		item.textLabel.Text = item.text
		item.textBox.Text = item.text2
		local tween22 = TweenService:Create(item.frame, TweenInfo.new(0.15), { Size = UDim2.new(item.xScale, 0, 1, 0) })
		tween22:Play()
		local tween23 = TweenService:Create(item.frame2, TweenInfo.new(0.15), { Position = UDim2.new(item.xScale, 0, 0.5, 0) })
		tween23:Play()
	end

	TextButton9.Text = "ON"
	TextButton9.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
	TextButton9.BackgroundTransparency = 0.2
end)

local ScrollingFrame3 = Instance.new("ScrollingFrame")
ScrollingFrame3.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame3.Position = UDim2.new(0, 0, 0, 0)
ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame3.ScrollBarThickness = 6
ScrollingFrame3.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 140)
ScrollingFrame3.BackgroundTransparency = 1
ScrollingFrame3.Parent = Frame3
local UIGridLayout2 = Instance.new("UIGridLayout", ScrollingFrame3)
UIGridLayout2.CellSize = UDim2.new(0, 0, 0, 0)
UIGridLayout2.CellPadding = UDim2.new(0, 0, 0, 0)
local TextLabel13 = Instance.new("TextLabel", ScrollingFrame3)
TextLabel13.Size = UDim2.new(1, 0, 0, 0)
TextLabel13.Position = UDim2.new(0, 0, 0.5, 0)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Text = "Nothing Silly Here :3 (except me)"
TextLabel13.TextColor3 = Color3.new(1, 1, 1)
TextLabel13.Font = Enum.Font.GothamBold
TextLabel13.TextScaled = true
TextLabel13.Visible = false
local TextButton12 = Instance.new("TextButton", Frame3)
TextButton12.Size = UDim2.new(0.4, 0, 0, 0)
TextButton12.Position = UDim2.new(0, 0, 1, 0)
TextButton12.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
TextButton12.BackgroundTransparency = 0.2
TextButton12.Text = "< Prev"
TextButton12.Font = Enum.Font.GothamBold
TextButton12.TextScaled = true
TextButton12.TextColor3 = Color3.new(1, 1, 1)
local UICorner46 = Instance.new("UICorner")
UICorner46.CornerRadius = UDim.new(0, 6)
UICorner46.Parent = TextButton12
local TextButton13 = Instance.new("TextButton", Frame3)
TextButton13.Size = UDim2.new(0.4, 0, 0, 0)
TextButton13.Position = UDim2.new(0.6, 0, 1, 0)
TextButton13.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
TextButton13.BackgroundTransparency = 0.2
TextButton13.Text = "Next >"
TextButton13.Font = Enum.Font.GothamBold
TextButton13.TextScaled = true
TextButton13.TextColor3 = Color3.new(1, 1, 1)
local UICorner47 = Instance.new("UICorner")
UICorner47.CornerRadius = UDim.new(0, 6)
UICorner47.Parent = TextButton13
local TextBox9 = Instance.new("TextBox", Frame3)
TextBox9.Size = UDim2.new(0.2, 0, 0, 0)
TextBox9.Position = UDim2.new(0.4, 0, 1, 0)
TextBox9.BackgroundTransparency = 1
TextBox9.Font = Enum.Font.Gotham
TextBox9.TextScaled = true
TextBox9.TextColor3 = Color3.new(1, 1, 1)
TextBox9.Text = "1 / Enter page"
local TextLabel14 = Instance.new("TextLabel", Frame3)
TextLabel14.Size = UDim2.new(0.3, 0, 0, 0)
TextLabel14.Position = UDim2.new(0.35, 0, 1, 0)
TextLabel14.BackgroundTransparency = 1
TextLabel14.TextColor3 = Color3.fromRGB(255, 100, 100)
TextLabel14.Font = Enum.Font.Gotham
TextLabel14.TextScaled = true
TextLabel14.Text = ""
TextLabel14.Visible = false

TextButton4.MouseButton1Click:Connect(function()
	TextBox9.Text = "Loading..."
	CatalogSearchParams.new().SearchKeyword = ""
	CatalogSearchParams.new().CategoryFilter = Enum.CatalogCategoryFilter.None
	CatalogSearchParams.new().SalesTypeFilter = Enum.SalesTypeFilter.All
	CatalogSearchParams.new().AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
	CatalogSearchParams.new().IncludeOffSale = true
	CatalogSearchParams.new().SortType = Enum.CatalogSortType.Relevance
	CatalogSearchParams.new().Limit = 10
	local result2 = AvatarEditorService:SearchCatalog(CatalogSearchParams.new())
	TextBox9.Text = "Loading..."
	ScrollingFrame3:GetChildren()
	Frame36:Destroy()
	local currentPage2 = result2:GetCurrentPage()
	TextLabel13.Visible = false

	for i2, v3 in ipairs(currentPage2) do
		local Frame37 = Instance.new("Frame")
		Frame37.Size = UDim2.new(0, 0, 0, 0)
		Frame37.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
		Frame37.BackgroundTransparency = 0.2
		local UICorner54 = Instance.new("UICorner")
		UICorner54.CornerRadius = UDim.new(0, 8)
		UICorner54.Parent = Frame37
		local UIStroke21 = Instance.new("UIStroke")
		UIStroke21.Color = Color3.fromRGB(60, 60, 90)
		UIStroke21.Thickness = 1
		UIStroke21.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke21.Parent = Frame37
		local ImageLabel2 = Instance.new("ImageLabel")
		ImageLabel2.Size = UDim2.new(1, 0, 0, 0)
		ImageLabel2.Position = UDim2.new(0, 0, 0, 0)
		ImageLabel2.BackgroundTransparency = 1
		ImageLabel2.ScaleType = Enum.ScaleType.Fit
		ImageLabel2.Image = "rbxthumb://type=Asset&id=" .. tonumber(v3.AssetId) .. "&w=150&h=150"
		ImageLabel2.Parent = Frame37
		local UICorner55 = Instance.new("UICorner")
		UICorner55.CornerRadius = UDim.new(0, 4)
		UICorner55.Parent = ImageLabel2
		local TextLabel16 = Instance.new("TextLabel")
		TextLabel16.Size = UDim2.new(1, 0, 0, 0)
		TextLabel16.Position = UDim2.new(0, 0, 0, 0)
		TextLabel16.BackgroundTransparency = 1
		TextLabel16.Text = v3.Name
		TextLabel16.TextScaled = true
		TextLabel16.TextWrapped = true
		TextLabel16.Font = Enum.Font.GothamBold
		TextLabel16.TextColor3 = Color3.new(1, 1, 1)
		TextLabel16.Parent = Frame37
		local TextButton18 = Instance.new("TextButton")
		TextButton18.Parent = Frame37
		TextButton18.Size = UDim2.new(0, 0, 0, 0)
		TextButton18.Position = UDim2.new(1, 0, 0, 0)
		TextButton18.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
		TextButton18.BackgroundTransparency = 0.2
		TextButton18.Text = "🛒🔗"
		TextButton18.Font = Enum.Font.GothamBold
		TextButton18.TextScaled = true
		TextButton18.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton18.AutoButtonColor = false
		local UICorner56 = Instance.new("UICorner")
		UICorner56.CornerRadius = UDim.new(0, 6)
		UICorner56.Parent = TextButton18

		TextButton18.MouseButton1Click:Connect(function()
			setclipboard("https://www.roblox.com/catalog/" .. tonumber(v3.Id))
			TextButton18.Text = "✅"
			TextButton18.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
			task.wait(0.7)
			TextButton18.Text = "🛒🔗"
			TextButton18.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
		end)

		local TextButton19 = Instance.new("TextButton")
		TextButton19.Size = UDim2.new(0.45, 0, 0, 0)
		TextButton19.Position = UDim2.new(0, 0, 1, 0)
		TextButton19.BackgroundColor3 = Color3.fromRGB(40, 140, 80)
		TextButton19.BackgroundTransparency = 0.2
		TextButton19.Text = "Play"
		TextButton19.Font = Enum.Font.GothamBold
		TextButton19.TextScaled = true
		TextButton19.TextColor3 = Color3.new(1, 1, 1)
		TextButton19.Parent = Frame37
		local UICorner57 = Instance.new("UICorner")
		UICorner57.CornerRadius = UDim.new(0, 4)
		UICorner57.Parent = TextButton19

		TextButton19.MouseButton1Click:Connect(function()
			track:Stop(0.1)
			local objects3 = game:GetObjects("rbxassetid://" .. tostring(v3.AssetId))
			local Animation2 = Instance.new("Animation")
			Animation2.AnimationId = objects3[1].AnimationId
			local track2 = Humanoid:LoadAnimation(Animation2)
			track2.Priority = Enum.AnimationPriority.Action4
			local tracks2 = Humanoid.Animator:GetPlayingAnimationTracks()

			for k4, v8 in pairs(tracks2) do
				v8:Stop()
			end

			track2:Play(0.1, 1, 1)
			track2.TimePosition = (0 * track2.Length)
			track2.Priority = Enum.AnimationPriority.Action4
			track2.Looped = true
		end)

		local TextButton20 = Instance.new("TextButton")
		TextButton20.Size = UDim2.new(0.45, 0, 0, 0)
		TextButton20.Position = UDim2.new(0.55, 0, 1, 0)
		TextButton20.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
		TextButton20.BackgroundTransparency = 0.2
		TextButton20.Text = "Save"
		TextButton20.Font = Enum.Font.GothamBold
		TextButton20.TextScaled = true
		TextButton20.TextColor3 = Color3.new(1, 1, 1)
		TextButton20.Parent = Frame37
		local UICorner58 = Instance.new("UICorner")
		UICorner58.CornerRadius = UDim.new(0, 4)
		UICorner58.Parent = TextButton20

		TextButton20.MouseButton1Click:Connect(function()
			local objects4 = game:GetObjects("rbxassetid://" .. tostring(v3.AssetId))
			local result6 = objects4[1].AnimationId:match("%d+")

			local json2 = HttpService:JSONEncode({
	{ Name = v.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result5)), AssetId = v.AssetId, Favorite = false, Id = v.Id },
	{ Name = v3.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result6)), AssetId = v3.AssetId, Favorite = false, Id = v3.Id }
})

			writefile("GazeEmotes_NewNEWN3WSaved.json", json2)
			TextButton20.Text = "Saved!"
			TextButton20.BackgroundColor3 = Color3.fromRGB(0, 160, 100)
			task.wait(1)
			TextButton20.Text = "Save"
			TextButton20.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
		end)

		local UIScale2 = Instance.new("UIScale")
		UIScale2.Scale = 0.5
		UIScale2.Parent = Frame37
		local tween32 = TweenService:Create(UIScale2, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Scale = 1 })
		tween32:Play()
		Frame37.Parent = ScrollingFrame3
	end

	ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 8)
	TextBox9.Text = "1 / Enter page"
	TextButton12.Visible = false
	TextButton13.Visible = true
end)

TextBox.FocusLost:Connect(function(enterPressed6, inputObject6)
	TextBox9.Text = "Loading..."
	CatalogSearchParams.new().SearchKeyword = ""
	CatalogSearchParams.new().CategoryFilter = Enum.CatalogCategoryFilter.None
	CatalogSearchParams.new().SalesTypeFilter = Enum.SalesTypeFilter.All
	CatalogSearchParams.new().AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
	CatalogSearchParams.new().IncludeOffSale = true
	CatalogSearchParams.new().SortType = Enum.CatalogSortType.Relevance
	CatalogSearchParams.new().Limit = 10
	local result3 = AvatarEditorService:SearchCatalog(CatalogSearchParams.new())
	TextBox9.Text = "Loading..."
	ScrollingFrame3:GetChildren()
	Frame37:Destroy()
	local currentPage3 = result3:GetCurrentPage()
	TextLabel13.Visible = false

	for i3, v4 in ipairs(currentPage3) do
		local Frame38 = Instance.new("Frame")
		Frame38.Size = UDim2.new(0, 0, 0, 0)
		Frame38.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
		Frame38.BackgroundTransparency = 0.2
		local UICorner59 = Instance.new("UICorner")
		UICorner59.CornerRadius = UDim.new(0, 8)
		UICorner59.Parent = Frame38
		local UIStroke22 = Instance.new("UIStroke")
		UIStroke22.Color = Color3.fromRGB(60, 60, 90)
		UIStroke22.Thickness = 1
		UIStroke22.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke22.Parent = Frame38
		local ImageLabel3 = Instance.new("ImageLabel")
		ImageLabel3.Size = UDim2.new(1, 0, 0, 0)
		ImageLabel3.Position = UDim2.new(0, 0, 0, 0)
		ImageLabel3.BackgroundTransparency = 1
		ImageLabel3.ScaleType = Enum.ScaleType.Fit
		ImageLabel3.Image = "rbxthumb://type=Asset&id=" .. tonumber(v4.AssetId) .. "&w=150&h=150"
		ImageLabel3.Parent = Frame38
		local UICorner60 = Instance.new("UICorner")
		UICorner60.CornerRadius = UDim.new(0, 4)
		UICorner60.Parent = ImageLabel3
		local TextLabel17 = Instance.new("TextLabel")
		TextLabel17.Size = UDim2.new(1, 0, 0, 0)
		TextLabel17.Position = UDim2.new(0, 0, 0, 0)
		TextLabel17.BackgroundTransparency = 1
		TextLabel17.Text = v4.Name
		TextLabel17.TextScaled = true
		TextLabel17.TextWrapped = true
		TextLabel17.Font = Enum.Font.GothamBold
		TextLabel17.TextColor3 = Color3.new(1, 1, 1)
		TextLabel17.Parent = Frame38
		local TextButton21 = Instance.new("TextButton")
		TextButton21.Parent = Frame38
		TextButton21.Size = UDim2.new(0, 0, 0, 0)
		TextButton21.Position = UDim2.new(1, 0, 0, 0)
		TextButton21.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
		TextButton21.BackgroundTransparency = 0.2
		TextButton21.Text = "🛒🔗"
		TextButton21.Font = Enum.Font.GothamBold
		TextButton21.TextScaled = true
		TextButton21.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton21.AutoButtonColor = false
		local UICorner61 = Instance.new("UICorner")
		UICorner61.CornerRadius = UDim.new(0, 6)
		UICorner61.Parent = TextButton21

		TextButton21.MouseButton1Click:Connect(function()
			setclipboard("https://www.roblox.com/catalog/" .. tonumber(v4.Id))
			TextButton21.Text = "✅"
			TextButton21.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
			task.wait(0.7)
			TextButton21.Text = "🛒🔗"
			TextButton21.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
		end)

		local TextButton22 = Instance.new("TextButton")
		TextButton22.Size = UDim2.new(0.45, 0, 0, 0)
		TextButton22.Position = UDim2.new(0, 0, 1, 0)
		TextButton22.BackgroundColor3 = Color3.fromRGB(40, 140, 80)
		TextButton22.BackgroundTransparency = 0.2
		TextButton22.Text = "Play"
		TextButton22.Font = Enum.Font.GothamBold
		TextButton22.TextScaled = true
		TextButton22.TextColor3 = Color3.new(1, 1, 1)
		TextButton22.Parent = Frame38
		local UICorner62 = Instance.new("UICorner")
		UICorner62.CornerRadius = UDim.new(0, 4)
		UICorner62.Parent = TextButton22

		TextButton22.MouseButton1Click:Connect(function()
			track2:Stop(0.1)
			local objects5 = game:GetObjects("rbxassetid://" .. tostring(v4.AssetId))
			local Animation3 = Instance.new("Animation")
			Animation3.AnimationId = objects5[1].AnimationId
			local track3 = Humanoid:LoadAnimation(Animation3)
			track3.Priority = Enum.AnimationPriority.Action4
			local tracks3 = Humanoid.Animator:GetPlayingAnimationTracks()

			for k5, v9 in pairs(tracks3) do
				v9:Stop()
			end

			track3:Play(0.1, 1, 1)
			track3.TimePosition = (0 * track3.Length)
			track3.Priority = Enum.AnimationPriority.Action4
			track3.Looped = true
		end)

		local TextButton23 = Instance.new("TextButton")
		TextButton23.Size = UDim2.new(0.45, 0, 0, 0)
		TextButton23.Position = UDim2.new(0.55, 0, 1, 0)
		TextButton23.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
		TextButton23.BackgroundTransparency = 0.2
		TextButton23.Text = "Save"
		TextButton23.Font = Enum.Font.GothamBold
		TextButton23.TextScaled = true
		TextButton23.TextColor3 = Color3.new(1, 1, 1)
		TextButton23.Parent = Frame38
		local UICorner63 = Instance.new("UICorner")
		UICorner63.CornerRadius = UDim.new(0, 4)
		UICorner63.Parent = TextButton23

		TextButton23.MouseButton1Click:Connect(function()
			local objects6 = game:GetObjects("rbxassetid://" .. tostring(v4.AssetId))
			local result7 = objects6[1].AnimationId:match("%d+")

			local json3 = HttpService:JSONEncode({
	{ Name = v.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result5)), AssetId = v.AssetId, Favorite = false, Id = v.Id },
	{ Name = v3.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result6)), AssetId = v3.AssetId, Favorite = false, Id = v3.Id },
	{ Name = v4.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result7)), AssetId = v4.AssetId, Favorite = false, Id = v4.Id }
})

			writefile("GazeEmotes_NewNEWN3WSaved.json", json3)
			TextButton23.Text = "Saved!"
			TextButton23.BackgroundColor3 = Color3.fromRGB(0, 160, 100)
			task.wait(1)
			TextButton23.Text = "Save"
			TextButton23.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
		end)

		local UIScale3 = Instance.new("UIScale")
		UIScale3.Scale = 0.5
		UIScale3.Parent = Frame38
		local tween33 = TweenService:Create(UIScale3, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Scale = 1 })
		tween33:Play()
		Frame38.Parent = ScrollingFrame3
	end

	ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 8)
	TextBox9.Text = "1 / Enter page"
	TextButton12.Visible = false
	TextButton13.Visible = true
end)

TextButton5.MouseButton1Click:Connect(function()
	TextButton5.Text = "Sort: Price High→Low"
	TextBox9.Text = "Loading..."
	CatalogSearchParams.new().SearchKeyword = ""
	CatalogSearchParams.new().CategoryFilter = Enum.CatalogCategoryFilter.None
	CatalogSearchParams.new().SalesTypeFilter = Enum.SalesTypeFilter.All
	CatalogSearchParams.new().AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
	CatalogSearchParams.new().IncludeOffSale = true
	CatalogSearchParams.new().SortType = Enum.CatalogSortType.PriceHighToLow
	CatalogSearchParams.new().Limit = 10
	local result4 = AvatarEditorService:SearchCatalog(CatalogSearchParams.new())
	TextBox9.Text = "Loading..."
	ScrollingFrame3:GetChildren()
	Frame38:Destroy()
	local currentPage4 = result4:GetCurrentPage()
	TextLabel13.Visible = false

	for i4, v5 in ipairs(currentPage4) do
		local Frame39 = Instance.new("Frame")
		Frame39.Size = UDim2.new(0, 0, 0, 0)
		Frame39.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
		Frame39.BackgroundTransparency = 0.2
		local UICorner64 = Instance.new("UICorner")
		UICorner64.CornerRadius = UDim.new(0, 8)
		UICorner64.Parent = Frame39
		local UIStroke23 = Instance.new("UIStroke")
		UIStroke23.Color = Color3.fromRGB(60, 60, 90)
		UIStroke23.Thickness = 1
		UIStroke23.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke23.Parent = Frame39
		local ImageLabel4 = Instance.new("ImageLabel")
		ImageLabel4.Size = UDim2.new(1, 0, 0, 0)
		ImageLabel4.Position = UDim2.new(0, 0, 0, 0)
		ImageLabel4.BackgroundTransparency = 1
		ImageLabel4.ScaleType = Enum.ScaleType.Fit
		ImageLabel4.Image = "rbxthumb://type=Asset&id=" .. tonumber(v5.AssetId) .. "&w=150&h=150"
		ImageLabel4.Parent = Frame39
		local UICorner65 = Instance.new("UICorner")
		UICorner65.CornerRadius = UDim.new(0, 4)
		UICorner65.Parent = ImageLabel4
		local TextLabel18 = Instance.new("TextLabel")
		TextLabel18.Size = UDim2.new(1, 0, 0, 0)
		TextLabel18.Position = UDim2.new(0, 0, 0, 0)
		TextLabel18.BackgroundTransparency = 1
		TextLabel18.Text = v5.Name
		TextLabel18.TextScaled = true
		TextLabel18.TextWrapped = true
		TextLabel18.Font = Enum.Font.GothamBold
		TextLabel18.TextColor3 = Color3.new(1, 1, 1)
		TextLabel18.Parent = Frame39
		local TextButton24 = Instance.new("TextButton")
		TextButton24.Parent = Frame39
		TextButton24.Size = UDim2.new(0, 0, 0, 0)
		TextButton24.Position = UDim2.new(1, 0, 0, 0)
		TextButton24.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
		TextButton24.BackgroundTransparency = 0.2
		TextButton24.Text = "🛒🔗"
		TextButton24.Font = Enum.Font.GothamBold
		TextButton24.TextScaled = true
		TextButton24.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton24.AutoButtonColor = false
		local UICorner66 = Instance.new("UICorner")
		UICorner66.CornerRadius = UDim.new(0, 6)
		UICorner66.Parent = TextButton24

		TextButton24.MouseButton1Click:Connect(function()
			setclipboard("https://www.roblox.com/catalog/" .. tonumber(v5.Id))
			TextButton24.Text = "✅"
			TextButton24.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
			task.wait(0.7)
			TextButton24.Text = "🛒🔗"
			TextButton24.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
		end)

		local TextButton25 = Instance.new("TextButton")
		TextButton25.Size = UDim2.new(0.45, 0, 0, 0)
		TextButton25.Position = UDim2.new(0, 0, 1, 0)
		TextButton25.BackgroundColor3 = Color3.fromRGB(40, 140, 80)
		TextButton25.BackgroundTransparency = 0.2
		TextButton25.Text = "Play"
		TextButton25.Font = Enum.Font.GothamBold
		TextButton25.TextScaled = true
		TextButton25.TextColor3 = Color3.new(1, 1, 1)
		TextButton25.Parent = Frame39
		local UICorner67 = Instance.new("UICorner")
		UICorner67.CornerRadius = UDim.new(0, 4)
		UICorner67.Parent = TextButton25

		TextButton25.MouseButton1Click:Connect(function()
			track3:Stop(0.1)
			local objects7 = game:GetObjects("rbxassetid://" .. tostring(v5.AssetId))
			local Animation4 = Instance.new("Animation")
			Animation4.AnimationId = objects7[1].AnimationId
			local track4 = Humanoid:LoadAnimation(Animation4)
			track4.Priority = Enum.AnimationPriority.Action4
			local tracks4 = Humanoid.Animator:GetPlayingAnimationTracks()

			for k6, v10 in pairs(tracks4) do
				v10:Stop()
			end

			track4:Play(0.1, 1, 1)
			track4.TimePosition = (0 * track4.Length)
			track4.Priority = Enum.AnimationPriority.Action4
			track4.Looped = true
		end)

		local TextButton26 = Instance.new("TextButton")
		TextButton26.Size = UDim2.new(0.45, 0, 0, 0)
		TextButton26.Position = UDim2.new(0.55, 0, 1, 0)
		TextButton26.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
		TextButton26.BackgroundTransparency = 0.2
		TextButton26.Text = "Save"
		TextButton26.Font = Enum.Font.GothamBold
		TextButton26.TextScaled = true
		TextButton26.TextColor3 = Color3.new(1, 1, 1)
		TextButton26.Parent = Frame39
		local UICorner68 = Instance.new("UICorner")
		UICorner68.CornerRadius = UDim.new(0, 4)
		UICorner68.Parent = TextButton26

		TextButton26.MouseButton1Click:Connect(function()
			local objects8 = game:GetObjects("rbxassetid://" .. tostring(v5.AssetId))
			local result8 = objects8[1].AnimationId:match("%d+")

			local json4 = HttpService:JSONEncode({
	{ Name = v.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result5)), AssetId = v.AssetId, Favorite = false, Id = v.Id },
	{ Name = v3.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result6)), AssetId = v3.AssetId, Favorite = false, Id = v3.Id },
	{ Name = v4.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result7)), AssetId = v4.AssetId, Favorite = false, Id = v4.Id },
	{ Name = v5.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result8)), AssetId = v5.AssetId, Favorite = false, Id = v5.Id }
})

			writefile("GazeEmotes_NewNEWN3WSaved.json", json4)
			TextButton26.Text = "Saved!"
			TextButton26.BackgroundColor3 = Color3.fromRGB(0, 160, 100)
			task.wait(1)
			TextButton26.Text = "Save"
			TextButton26.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
		end)

		local UIScale4 = Instance.new("UIScale")
		UIScale4.Scale = 0.5
		UIScale4.Parent = Frame39
		local tween34 = TweenService:Create(UIScale4, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Scale = 1 })
		tween34:Play()
		Frame39.Parent = ScrollingFrame3
	end

	ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 8)
	TextBox9.Text = "1 / Enter page"
	TextButton12.Visible = false
	TextButton13.Visible = true
end)

TextButton13.MouseButton1Click:Connect(function()
end)

TextButton12.MouseButton1Click:Connect(function()
end)

UserInputService.InputBegan:Connect(function(input24, gameProcessed24)
end)

TextBox9.FocusLost:Connect(function(enterPressed7, inputObject7)
	TextBox9.Text = "Page 1"
end)

TextButton2.MouseButton1Click:Connect(function()
	Frame3.Visible = true
	Frame4.Visible = false
	TextButton2.BackgroundColor3 = Color3.fromRGB(30, 30, 80)
	TextButton3.BackgroundColor3 = Color3.fromRGB(20, 50, 20)
end)

local changedSignal3 = TextBox2:GetPropertyChangedSignal("Text")

changedSignal3:Connect(function()
	ScrollingFrame:GetChildren()
	TextLabel2.Visible = true
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 8)
end)

TextButton3.MouseButton1Click:Connect(function()
	Frame3.Visible = false
	Frame4.Visible = true
	TextButton2.BackgroundColor3 = Color3.fromRGB(20, 20, 40)
	TextButton3.BackgroundColor3 = Color3.fromRGB(30, 80, 30)
	ScrollingFrame:GetChildren()
	TextLabel2.Visible = true
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 8)
end)

TextBox9.Text = "Loading..."
CatalogSearchParams.new().SearchKeyword = ""
CatalogSearchParams.new().CategoryFilter = Enum.CatalogCategoryFilter.None
CatalogSearchParams.new().SalesTypeFilter = Enum.SalesTypeFilter.All
CatalogSearchParams.new().AssetTypes = { Enum.AvatarAssetType.EmoteAnimation }
CatalogSearchParams.new().IncludeOffSale = true
CatalogSearchParams.new().SortType = Enum.CatalogSortType.Relevance
CatalogSearchParams.new().Limit = 10
local result = AvatarEditorService:SearchCatalog(CatalogSearchParams.new())
TextBox9.Text = "Loading..."
ScrollingFrame3:GetChildren()
local currentPage = result:GetCurrentPage()
TextLabel13.Visible = false

for i, v in ipairs(currentPage) do
	local Frame36 = Instance.new("Frame")
	Frame36.Size = UDim2.new(0, 0, 0, 0)
	Frame36.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
	Frame36.BackgroundTransparency = 0.2
	local UICorner48 = Instance.new("UICorner")
	UICorner48.CornerRadius = UDim.new(0, 8)
	UICorner48.Parent = Frame36
	local UIStroke19 = Instance.new("UIStroke")
	UIStroke19.Color = Color3.fromRGB(60, 60, 90)
	UIStroke19.Thickness = 1
	UIStroke19.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke19.Parent = Frame36
	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel.Size = UDim2.new(1, 0, 0, 0)
	ImageLabel.Position = UDim2.new(0, 0, 0, 0)
	ImageLabel.BackgroundTransparency = 1
	ImageLabel.ScaleType = Enum.ScaleType.Fit
	ImageLabel.Image = "rbxthumb://type=Asset&id=" .. tonumber(v.AssetId) .. "&w=150&h=150"
	ImageLabel.Parent = Frame36
	local UICorner49 = Instance.new("UICorner")
	UICorner49.CornerRadius = UDim.new(0, 4)
	UICorner49.Parent = ImageLabel
	local TextLabel15 = Instance.new("TextLabel")
	TextLabel15.Size = UDim2.new(1, 0, 0, 0)
	TextLabel15.Position = UDim2.new(0, 0, 0, 0)
	TextLabel15.BackgroundTransparency = 1
	TextLabel15.Text = v.Name
	TextLabel15.TextScaled = true
	TextLabel15.TextWrapped = true
	TextLabel15.Font = Enum.Font.GothamBold
	TextLabel15.TextColor3 = Color3.new(1, 1, 1)
	TextLabel15.Parent = Frame36
	local TextButton14 = Instance.new("TextButton")
	TextButton14.Parent = Frame36
	TextButton14.Size = UDim2.new(0, 0, 0, 0)
	TextButton14.Position = UDim2.new(1, 0, 0, 0)
	TextButton14.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
	TextButton14.BackgroundTransparency = 0.2
	TextButton14.Text = "🛒🔗"
	TextButton14.Font = Enum.Font.GothamBold
	TextButton14.TextScaled = true
	TextButton14.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton14.AutoButtonColor = false
	local UICorner50 = Instance.new("UICorner")
	UICorner50.CornerRadius = UDim.new(0, 6)
	UICorner50.Parent = TextButton14

	TextButton14.MouseButton1Click:Connect(function()
		setclipboard("https://www.roblox.com/catalog/" .. tonumber(v.Id))
		TextButton14.Text = "✅"
		TextButton14.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
		task.wait(0.7)
		TextButton14.Text = "🛒🔗"
		TextButton14.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
	end)

	local TextButton15 = Instance.new("TextButton")
	TextButton15.Size = UDim2.new(0.45, 0, 0, 0)
	TextButton15.Position = UDim2.new(0, 0, 1, 0)
	TextButton15.BackgroundColor3 = Color3.fromRGB(40, 140, 80)
	TextButton15.BackgroundTransparency = 0.2
	TextButton15.Text = "Play"
	TextButton15.Font = Enum.Font.GothamBold
	TextButton15.TextScaled = true
	TextButton15.TextColor3 = Color3.new(1, 1, 1)
	TextButton15.Parent = Frame36
	local UICorner51 = Instance.new("UICorner")
	UICorner51.CornerRadius = UDim.new(0, 4)
	UICorner51.Parent = TextButton15

	TextButton15.MouseButton1Click:Connect(function()
		local objects = game:GetObjects("rbxassetid://" .. tostring(v.AssetId))
		local Animation = Instance.new("Animation")
		Animation.AnimationId = objects[1].AnimationId
		local track = Humanoid:LoadAnimation(Animation)
		track.Priority = Enum.AnimationPriority.Action4
		local tracks = Humanoid.Animator:GetPlayingAnimationTracks()

		for k2, v6 in pairs(tracks) do
			v6:Stop()
		end

		track:Play(0.1, 1, 1)
		track.TimePosition = (0 * track.Length)
		track.Priority = Enum.AnimationPriority.Action4
		track.Looped = true
	end)

	local TextButton16 = Instance.new("TextButton")
	TextButton16.Size = UDim2.new(0.45, 0, 0, 0)
	TextButton16.Position = UDim2.new(0.55, 0, 1, 0)
	TextButton16.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
	TextButton16.BackgroundTransparency = 0.2
	TextButton16.Text = "Save"
	TextButton16.Font = Enum.Font.GothamBold
	TextButton16.TextScaled = true
	TextButton16.TextColor3 = Color3.new(1, 1, 1)
	TextButton16.Parent = Frame36
	local UICorner52 = Instance.new("UICorner")
	UICorner52.CornerRadius = UDim.new(0, 4)
	UICorner52.Parent = TextButton16

	TextButton16.MouseButton1Click:Connect(function()
		local objects2 = game:GetObjects("rbxassetid://" .. tostring(v.AssetId))
		local result5 = objects2[1].AnimationId:match("%d+")
		local json = HttpService:JSONEncode({ { Name = v.Name, AnimationId = "rbxassetid://" .. tostring(tonumber(result5)), AssetId = v.AssetId, Favorite = false, Id = v.Id } })
		writefile("GazeEmotes_NewNEWN3WSaved.json", json)
		TextButton16.Text = "Saved!"
		TextButton16.BackgroundColor3 = Color3.fromRGB(0, 160, 100)
		task.wait(1)
		TextButton16.Text = "Save"
		TextButton16.BackgroundColor3 = Color3.fromRGB(40, 100, 160)
	end)

	local UIScale = Instance.new("UIScale")
	UIScale.Scale = 0.5
	UIScale.Parent = Frame36
	local tween11 = TweenService:Create(UIScale, TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { Scale = 1 })
	tween11:Play()
	Frame36.Parent = ScrollingFrame3
end

ScrollingFrame3.CanvasSize = UDim2.new(0, 0, 0, 8)
TextBox9.Text = "1 / Enter page"
TextButton12.Visible = false
TextButton13.Visible = true
local ToggleButtonGui = Instance.new("ScreenGui")
ToggleButtonGui.Name = "ToggleButtonGui"
ToggleButtonGui.ResetOnSpawn = false
ToggleButtonGui.Parent = CoreGui
ToggleButtonGui.Enabled = true
local TextButton17 = Instance.new("TextButton")
TextButton17.Parent = ToggleButtonGui
TextButton17.Text = "G"
TextButton17.Font = Enum.Font.GothamSemibold
TextButton17.TextScaled = true
TextButton17.Size = UDim2.new(0, 50, 0, 50)
TextButton17.Position = UDim2.new(0, 20, 0.5, -50)
TextButton17.AnchorPoint = Vector2.new(0, 0.5)
TextButton17.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TextButton17.BackgroundTransparency = 0.2
TextButton17.TextColor3 = Color3.new(1, 1, 1)
TextButton17.Active = true
TextButton17.Draggable = true
local UICorner53 = Instance.new("UICorner")
UICorner53.CornerRadius = UDim.new(0, 12)
UICorner53.Parent = TextButton17
local UIStroke20 = Instance.new("UIStroke")
UIStroke20.Color = Color3.fromRGB(60, 60, 100)
UIStroke20.Thickness = 2
UIStroke20.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke20.Parent = TextButton17
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UIAspectRatioConstraint.Parent = TextButton17
UIAspectRatioConstraint.AspectRatio = 1

TextButton17.MouseButton1Click:Connect(function()
	GazeEmoteGUI.Enabled = false
end)

UserInputService.InputBegan:Connect(function(input25, gameProcessed25)
end)

GazeEmoteGUI.Enabled = true
ScrollingFrame:GetChildren()
TextLabel2.Visible = true
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 8)

task.spawn(function()
	local HumanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	HumanoidRootPart.CanCollide = true
	local descendants = game.Players.LocalPlayer.Character:GetDescendants()

	for k, v2 in pairs(descendants) do
	end

	game.Players.LocalPlayer.Character.DescendantAdded:Connect(function(descendant)
	end)

	RunService.Heartbeat:Connect(function(deltaTime2)
		v2.CanCollide = false
		descendant.CanCollide = false
	end)

	game.Players.LocalPlayer.CharacterAdded:Connect(function(character2)
		local HumanoidRootPart2 = character2:WaitForChild("HumanoidRootPart")
		HumanoidRootPart2.CanCollide = true
		local descendants2 = character2:GetDescendants()

		for k3, v7 in pairs(descendants2) do
		end

		character2.DescendantAdded:Connect(function(descendant2)
		end)

		RunService.Heartbeat:Connect(function(deltaTime3)
			v7.CanCollide = false
			descendant2.CanCollide = false
		end)
	end)
end)
