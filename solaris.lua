local URL = "https://solarishub.dev/games"

local games = {
    [1782832995] = "AUT",
    [3527629287] = "Big Paintball",
    [6494523288] = "Blade Quest",
    [6172932937] = "Energy Assault",
    [6381829480] = "Kings Legacy SS",
    [21532277] = "Notoriety",
    [5041144419] = "SCP Roleplay"
}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]

return loadstring(game:HttpGet(URL .. "/" .. (name or "Universal") .. ".lua", true))()
