-- Load scripts required by this pack
ScriptHost:LoadScript("scripts/access.lua")
ScriptHost:LoadScript("scripts/area.lua")

-- Load items
-- Hosted items don't work without this??
Tracker:AddItems("items.json")

-- Load maps
Tracker:AddMaps("maps/maps.json")

if Tracker.ActiveVariantUID == "dungeon_shuffle_hard" then
	ScriptHost:LoadScript("scripts/shuffle.lua")
	Tracker:AddLocations("maps/hard/holodrum.json")
	Tracker:AddLocations("maps/hard/subrosia.json")
	Tracker:AddLocations("maps/dungeon_shuffle/hard.json")
end

if Tracker.ActiveVariantUID == "dungeon_shuffle" then
	ScriptHost:LoadScript("scripts/shuffle.lua")
	Tracker:AddLocations("maps/normal/holodrum.json")
	Tracker:AddLocations("maps/normal/subrosia.json")
	Tracker:AddLocations("maps/dungeon_shuffle/normal.json")
end

if Tracker.ActiveVariantUID == "hard" then
	Tracker:AddLocations("maps/hard/holodrum.json")
	Tracker:AddLocations("maps/hard/subrosia.json")
	Tracker:AddLocations("maps/hard/dungeons.json")
end 

if Tracker.ActiveVariantUID == "standard" then
	Tracker:AddLocations("maps/normal/holodrum.json")
	Tracker:AddLocations("maps/normal/subrosia.json")
	Tracker:AddLocations("maps/normal/dungeons.json")
end
