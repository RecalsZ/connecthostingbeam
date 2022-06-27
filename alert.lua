-- Copyright (c) 2022 Lion Kortlepel. Use allowed under MIT license.

local minutes = 10
local message = "This server is hosted for free by ConnectHosting. Join the discord discord.gg/Dz3zTMSeuy"

function discordReminder()
	MP.SendChatMessage(-1, message)
end

MP.CancelEventTimer("nMinTimer")

MP.CreateEventTimer("nMinTimer", 1000 * 60 * minutes)

MP.RegisterEvent("nMinTimer", "discordReminder")

