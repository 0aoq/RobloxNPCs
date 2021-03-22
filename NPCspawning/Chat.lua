local Messages = {
	"hi",
	"e",
	"who is you?",
	"wanna be friends?",
	"wow",
	"who are you?",
	"IM NOT A NOOB!",
	"STOP",
	"how are you",
	"?",
	"OH NO",
	"*walks*"
}

local MsgSegments = {
	"um ",
	"you ",
	"is noob ",
	"NO ",
	"pro ",
	"gaming ",
	"not ",
	"hello ",
	"goodbye ",
	"*screams* ",
	"help ",
	"*talks* "
}

local MessageRemote = game.ReplicatedStorage.Assets.UserRemotes.ChatRemote

local WaitMin = script:GetAttribute("Wait_Min")
local WaitMax = script:GetAttribute("Wait_Max")

while true do
	wait(math.random(WaitMin, WaitMax))
	if math.random(1, 2) == 1 then
		local random_message = Messages[math.random(1, #Messages)]
		MessageRemote:FireAllClients("[" .. script.Parent.Name .. "]: " .. random_message)
	else
		local msg = ""

		for i = 1, math.random(2, 4) do
			local segment = MsgSegments[math.random(i, #MsgSegments)]
			if not string.find(msg, segment) then
				msg = msg .. segment
			end
		end
		
		wait(0.2)
		MessageRemote:FireAllClients("[" .. script.Parent.Name .. "]: " .. msg)
	end
end
