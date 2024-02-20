--local TweenService = game:GetService("TweenService")
--local Players = game:GetService("Players")

--local player = Players.LocalPlayer
--local character = player.Character or player.CharacterAdded:Wait()
--local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

--local targetPosition = Vector3.new(-902, 9, -93)
--local tweenInfo = TweenInfo.new(
    --2, -- Duration (in seconds)
    --Enum.EasingStyle.Linear, -- Easing style
    --Enum.EasingDirection.InOut, -- Easing direction
    --0, -- Number of times to repeat (0 for no repeat)
    --false, -- Whether to reverse the tween
    --0 -- Delay before tween starts (in seconds)
)

--l--ocal tween = TweenService:Create(humanoidRootPart, tweenInfo, {Position = targetPosition})

--tween:Play()

--w---ait(10)

local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Wait for 15 seconds
wait(15)

local targetPosition = Vector3.new(-794, -18, -1199)
local tweenInfo = TweenInfo.new(
    2, -- Duration (in seconds)
    Enum.EasingStyle.Linear, -- Easing style
    Enum.EasingDirection.InOut, -- Easing direction
    0, -- Number of times to repeat (0 for no repeat)
    false, -- Whether to reverse the tween
    0 -- Delay before tween starts (in seconds)
)

local tween = TweenService:Create(humanoidRootPart, tweenInfo, {Position = targetPosition})

tween:Play()

