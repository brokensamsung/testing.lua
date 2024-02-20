local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetPosition1 = Vector3.new(-902, 9, -93)
local tweenInfo1 = TweenInfo.new(
    2, -- Duration (in seconds)
    Enum.EasingStyle.Linear, -- Easing style
    Enum.EasingDirection.InOut, -- Easing direction
    0, -- Number of times to repeat (0 for no repeat)
    false, -- Whether to reverse the tween
    0 -- Delay before tween starts (in seconds)
)

local tween1 = TweenService:Create(humanoidRootPart, tweenInfo1, {Position = targetPosition1})

tween1:Play()

wait(15)

local targetPosition2 = Vector3.new(-794, -18, -1199)
local tweenInfo2 = TweenInfo.new(
    2, -- Duration (in seconds)
    Enum.EasingStyle.Linear, -- Easing style
    Enum.EasingDirection.InOut, -- Easing direction
    0, -- Number of times to repeat (0 for no repeat)
    false, -- Whether to reverse the tween
    0 -- Delay before tween starts (in seconds)
)

local tween2 = TweenService:Create(humanoidRootPart, tweenInfo2, {Position = targetPosition2})

tween2:Play()
