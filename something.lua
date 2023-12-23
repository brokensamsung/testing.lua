-- Insert a pathfinding service
local pathfindingService = game:GetService("PathfindingService")

-- Define the target destination
local targetPosition = Vector3.new(32, 219, 142)

-- Get the player's character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Get the humanoid of the character
local humanoid = character:WaitForChild("Humanoid")

-- Create a path
local path = pathfindingService:CreatePath({
    AgentRadius = 2, -- Set the radius of the agent
    AgentHeight = 5, -- Set the height of the agent
    AgentCanJump = true, -- Allow the agent to jump
    AgentJumpHeight = 10, -- Set the jump height
    })

-- Set the path's waypoints
path:ComputeAsync(character.HumanoidRootPart.Position, targetPosition)

-- Move the character along the path
path:MoveTo(targetPosition)
