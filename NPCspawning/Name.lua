local Names = {
	"robloxcool63",
	"luiosplaysminecraft100",
	"noobmaster4000",
	"itslilmaster4324",
	"noobgaming36",
	"robloxmaster42432"
}

local Segments = { -- Randomly combined
	"roblox",
	"gamer",
	"gaming",
	"plays",
	"32",
	"48",
	"67",
	"minecaft",
	"minecraft",
	"52",
	"93",
	"79",
	"34",
	"lil",
	"noob",
	"pro",
	"cool",
	"master",
	"a",
	"b",
	"c",
	"d",
	"e",
	"f",
	"g",
	"h"
}

local function generateName(segments)
	local name = ""
	
	for i = 1, segments do
		local segment = Segments[math.random(i, #Segments)]
		name = name .. segment
	end
	
	wait(0.2)
	return name
end

local ChosenName = Names[math.random(1, #Names)]

if not workspace:FindFirstChild(ChosenName) then
	script.Parent.Name = ChosenName
else
	local name = generateName(math.random(2, 4))
	wait(0.5)
	script.Parent.Name = name
end
