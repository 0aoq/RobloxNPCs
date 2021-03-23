-- Attributes: {Colorize, Wait_Max, Wait_Min}

local Messages = {
	"hi",
	"e",
	"who is u?",
	"wanna be friends?",
	"wow",
	"who u?",
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
	"*talks* ",
	"jk ",
	"hi ",
	"who ",
	"is ",
	"are ",
	"money ",
	"cash ",
	"vroom "
}

local MessageRemote = game.ReplicatedStorage.Assets.UserRemotes.ChatRemote

local WaitMin = script:GetAttribute("Wait_Min")
local WaitMax = script:GetAttribute("Wait_Max")

local color = Color3.fromRGB(math.random(100, 255), math.random(100, 255), math.random(100, 255))

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
		if not script:GetAttribute("Colorize") then
			MessageRemote:FireAllClients("[" .. script.Parent.Name .. "]: " .. msg)
		else
			MessageRemote:FireAllClients("[" .. script.Parent.Name .. "]: " .. msg, color)
		end
	end
end
