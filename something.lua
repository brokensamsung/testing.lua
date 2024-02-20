local Players = game:GetService("Players")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

local targetPosition1 = Vector3.new(-902, 9, -93)
humanoidRootPart.Position = targetPosition1

wait(5)

--local targetPosition2 = Vector3.new(-794, -18, -1199)
--humanoidRootPart.Position = targetPosition2
