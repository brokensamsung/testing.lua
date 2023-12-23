loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))

local PathFindingService = game:GetService("PathfindingService")

local human = script.Parent:WaitForChild("Humanoid")

local torso = script.Parent:WaitForChild("Torso")



local path = PathFindingService:CreatePath()  

path:ComputeAsync(torso.Position, game.Workspace.EndingPart.Position)

local Waypoints = path:GetWaypoints()

path.Blocked:Connect(function()

	

end)



for i, Waypoint in pairs(Waypoints) do

	local part = Instance.new("Part",workspace)

	part.Shape = "Ball"

	part.Material = "Neon"

	part.Size = Vector3.new(0.6, 0.6, 0.6)

	part.Position = Waypoint.Position + Vector3.new(0, 2, 0)

	part.Anchored = true

	part.CanCollide = false

	

	if Waypoint.Action == Enum.PathWaypointAction.Jump then

		human.Jump = true

	end

	human:MoveTo(Waypoint.Position)

	

	human.MoveToFinished:Wait()

end



human:MoveTo(game.Workspace.EndingPart.Position)
