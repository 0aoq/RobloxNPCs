--[[

"name": "NPCspawning",
"description": "NPC spawnlocation handling",
"version": "1.0"

]]

local JoinWait_Min = script:GetAttribute("MinWait")
local JoinWait_Max = script:GetAttribute("MaxWait")

local NPCspawn = workspace:WaitForChild("NPCspawn")

local UsersFolder = script:WaitForChild("Users", 1)

local Users = UsersFolder:GetChildren()
local UsersCount = #Users

local function ChooseCharacter()
	local choosen = math.random(1, UsersCount)
	
	for _,v in pairs(Users) do
		if v.Name == "choice/" .. choosen then
			return v
		end
	end
end

while true do
	wait(math.random(JoinWait_Min, JoinWait_Max))
	
	local character = ChooseCharacter():Clone()
	character.Parent = workspace
			
	character.HumanoidRootPart.CFrame = NPCspawn.CFrame + script:GetAttribute("SpawnOffset")
	
	local npc_chat = script:FindFirstChild("Chat"):Clone()
	npc_chat.Parent = character
	npc_chat.Disabled = false
	
	local npc_name = script:FindFirstChild("Name"):Clone()
	npc_name.Parent = character
	npc_name.Disabled = false
	
	local ff = Instance.new("ForceField", character)
	delay(NPCspawn:GetAttribute("FF_Duration"), function()
		ff:Destroy()
	end)
end
