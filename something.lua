print("IF IT'S NOT WORKING, YOU REJOINED THE SAME SERVER")

local PathfindingService = game:GetService("PathfindingService")
local player = game.Players.LocalPlayer
local character = player.Character
local targetPosition = Vector3.new(32, 219, 142)

local maxAttempts = 10

if player and character then
    local humanoid = character:WaitForChild("Humanoid")
    local path = PathfindingService:CreatePath({
        AgentRadius = 2,
        AgentHeight = 5,
        AgentCanJump = true,
        AgentJumpHeight = 10,
    })

    local pathFound = false
    for attempt = 1, maxAttempts do
        path:ComputeAsync(character.Position, targetPosition)
        if path.Status == Enum.PathStatus.Complete then
            pathFound = true
            break
        end
        wait(1)  -- Wait for a moment before the next attempt
    end

    if not pathFound then
        print("Pathfinding failed")
    else
        path.PathCompleted:Connect(function()
            print("Pathfinding completed")
        end)

        path:MoveTo(targetPosition)

        humanoid.MoveToFinished:Wait()
    end
else
    warn("Player or character not found.")
end


