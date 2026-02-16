local ts = game:GetService("TweenService")
local lightning = game:GetService("Lighting")
local lp = game:GetService("Players").LocalPlayer

local dhid = 2788229376 

local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = lightning

local gui = Instance.new("ScreenGui")
gui.Name = "BunniLoader"
gui.IgnoreGuiInset = true
gui.Parent = lp:WaitForChild("PlayerGui")

local txt = Instance.new("TextLabel")
txt.Size = UDim2.new(0, 800, 0, 150)
txt.Position = UDim2.new(0.5, 0, 0.5, 0)
txt.AnchorPoint = Vector2.new(0.5, 0.5)
txt.BackgroundTransparency = 1
txt.Font = Enum.Font.GothamBold
txt.TextColor3 = Color3.fromRGB(255, 255, 255)
txt.TextSize = 120
txt.TextTransparency = 1
txt.Text = "Bunni"
txt.Parent = gui

local info = TweenInfo.new(1.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Bunni",
	Text = "Checking Game...",
	Duration = 4
})

ts:Create(blur, info, {Size = 25}):Play()
ts:Create(txt, info, {TextTransparency = 0}):Play()

task.wait(3)

local start = os.clock()
while os.clock() - start < 1 do 
    -- lag spike
end

if game.PlaceId == dhid then
	txt.Text = "Supported"
	txt.TextColor3 = Color3.fromRGB(0, 255, 120)
	txt.TextSize = 100
	task.wait(1.5)
else
	txt.Text = "Not Supported"
	txt.TextColor3 = Color3.fromRGB(255, 50, 50)
	txt.TextSize = 90
	task.wait(1.5)
end

ts:Create(txt, info, {TextTransparency = 1}):Play()
ts:Create(blur, info, {Size = 0}):Play()

task.wait(1.2)
gui:Destroy()
blur:Destroy()
