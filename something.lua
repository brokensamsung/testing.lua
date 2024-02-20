local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer -- Assuming you want to tween the local player

local targetPosition = Vector3.new(-902, 9, -93)
local tweenInfo = TweenInfo.new(
    2, -- Duration (in seconds)
    Enum.EasingStyle.Linear, -- Easing style
    Enum.EasingDirection.InOut, -- Easing direction
    -1, -- Number of times to repeat (-1 for infinite)
    true, -- Whether to reverse the tween
    0 -- Delay before tween starts (in seconds)
)

local tween = TweenService:Create(player.Character:WaitForChild("HumanoidRootPart"), tweenInfo, {Position = targetPosition})

tween:Play()
