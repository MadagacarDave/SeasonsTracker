function d1_access_normal()
	return enter_d1()
end

function d1_access_hard()
	-- no difference
	return d1_access_normal()
end
function d2_access_normal()
	return (suburbs_from_south() and suburbs_to_fountain() and fountain_to_D2() and d2_A()) or 
	(sunken_city() and natzu_to_suburbs() and fountain_to_D2() and d2_A()) or
	(scent_tree() and natzu_to_moblin() and moblin_keep_to_sunken() and natzu_to_suburbs() and fountain_to_D2() and d2_A()) or
	(mount_cucco() and has("flippers") and cucco_to_sunken() and suburbs_natzu() and fountain_to_D2() and d2_A())
end

function d2_access_hard()
	return (suburbs_from_south_hard() and suburbs_to_fountain() and fountain_to_D2() and d2_A()) or 
	(sunken_city() and natzu_to_suburbs() and fountain_to_D2() and d2_A()) or
	(scent_tree_hard() and natzu_to_moblin_hard() and moblin_keep_to_sunken() and natzu_to_suburbs() and fountain_to_D2() and d2_A()) or
	(mount_cucco() and has("flippers") and cucco_to_sunken() and suburbs_natzu() and fountain_to_D2() and d2_A())
end
function d3_access_normal()
	return enter_d3()
end

function d3_access_hard()
	return enter_d3_hard()
end

function d4_access_normal()
	return enter_d4()
end
function d4_access_hard()
	return enter_d4_hard()
end
function d5_access_normal()
	return enter_d5()
end
function d5_access_hard()
	-- no difference
	return d5_access_normal()
end

function d6_access_normal()
	return enter_d6()
end
function d6_access_hard()
	return enter_d6_hard()
end
function d7_access_normal()
	return graveyard()
end
function d7_access_hard()
	return graveyard_hard()
end
function d8_access_normal()
	return scent_tree() and enter_remains() and
	portal_remains() and has("bombs") and portal_d8()
end
function d8_access_hard()
	return scent_tree() and enter_remains_hard() and
	portal_remains_hard() and has("bombs") and portal_d8_hard()
end

-- GENERIC SHUFFLE FUNCTION --
function dX_shuffle(prefix)
	if (has(prefix .. "_d1") and d1_access_normal()) or
	(has(prefix .. "_d2") and d2_access_normal()) or
	(has(prefix .. "_d3") and d3_access_normal()) or
	(has(prefix .. "_d4") and d4_access_normal()) or
	(has(prefix .. "_d5") and d5_access_normal()) or
	(has(prefix .. "_d6") and d6_access_normal()) or
	(has(prefix .. "_d7") and d7_access_normal()) or
	(has(prefix .. "_d8") and d8_access_normal())  then
		return true, AccessibilityLevel.Normal
	elseif (dX_shuffle_hard(prefix)) then
		return true, AccessibilityLevel.SequenceBreak
	else
		return false, AccessibilityLevel.None
	end		
end
function dX_shuffle_hard(prefix)
	return (has(prefix .. "_d1") and d1_access_hard()) or
	(has(prefix .. "_d2") and d2_access_hard()) or
	(has(prefix .. "_d3") and d3_access_hard()) or
	(has(prefix .. "_d4") and d4_access_hard()) or
	(has(prefix .. "_d5") and d5_access_hard()) or
	(has(prefix .. "_d6") and d6_access_hard()) or
	(has(prefix .. "_d7") and d7_access_hard()) or
	(has(prefix .. "_d8") and d8_access_hard())		
end

function d1_shuffle()
	return dX_shuffle("d1")		
end
function d1_shuffle_hard()
	return dX_shuffle_hard("d1")	
end

function d2_shuffle()
	return dX_shuffle("d2")		
end
function d2_shuffle_hard()
	return dX_shuffle_hard("d2")	
end

function d3_shuffle()
	return dX_shuffle("d3")		
end
function d3_shuffle_hard()
	return dX_shuffle_hard("d3")	
end

function d4_shuffle()
	return dX_shuffle("d4")		
end
function d4_shuffle_hard()
	return dX_shuffle_hard("d4")	
end

function d5_shuffle()
	return dX_shuffle("d5")		
end
function d5_shuffle_hard()
	return dX_shuffle_hard("d5")	
end
function d6_shuffle()
	return dX_shuffle("d6")		
end
function d6_shuffle_hard()
	return dX_shuffle_hard("d6")	
end
function d7_shuffle()
	return dX_shuffle("d7")		
end
function d7_shuffle_hard()
	return dX_shuffle_hard("d7")	
end

function d8_shuffle()
	return dX_shuffle("d8")		
end
function d8_shuffle_hard()
	return dX_shuffle_hard("d8")	
end


-- DUNGEON CHECK RULES --

function entrance_assigned(suffix) 
	return (has("d1_" .. suffix) or has("d2_" .. suffix) or has("d3_" .. suffix) or has("d4_" .. suffix) or has("d5_" .. suffix) or has("d6_" .. suffix) or has("d7_" .. suffix) or has("d8_" .. suffix))
end

function check_d1_entrance_normal()
	return d1_access_normal() and (not entrance_assigned("d1"))
end
function check_d1_entrance_hard()
	return d1_access_hard() and (not entrance_assigned("d1"))
end


function check_d2_entrance_normal()
	return d2_access_normal() and (not entrance_assigned("d2"))
end
function check_d2_entrance_hard()
	return d2_access_hard() and (not entrance_assigned("d2"))
end


function check_d3_entrance_normal()
	return d3_access_normal() and (not entrance_assigned("d3"))
end
function check_d3_entrance_hard()
	return d3_access_hard() and (not entrance_assigned("d3"))
end


function check_d4_entrance_normal()
	return d4_access_normal() and (not entrance_assigned("d4"))
end
function check_d4_entrance_hard()
	return d4_access_hard() and (not entrance_assigned("d4"))
end


function check_d5_entrance_normal()
	return d5_access_normal() and (not entrance_assigned("d5"))
end

function check_d5_entrance_hard()
	return d5_access_hard() and (not entrance_assigned("d5"))
end

function check_d6_entrance_normal()
	return d6_access_normal() and (not entrance_assigned("d6"))
end
function check_d6_entrance_hard()
	return d6_access_hard() and (not entrance_assigned("d6"))
end

function check_d7_entrance_normal()
	return d7_access_normal() and (not entrance_assigned("d7"))
end
function check_d7_entrance_hard()
	return d7_access_hard() and (not entrance_assigned("d7"))
end


function check_d8_entrance_normal()
	return d8_access_normal() and (not entrance_assigned("d8"))
end
function check_d8_entrance_hard()
	return d8_access_hard() and (not entrance_assigned("d8"))
end

local dungeon_index = {
	["d1"] = 1,
	["d2"] = 2,
	["d3"] = 3,
	["d4"] = 4,
	["d5"] = 5,
	["d6"] = 6,
	["d7"] = 7,
	["d8"] = 8
}

function update_dungeon_check(dungeon, entrance)
	-- Tracker progessive dungeon entrance item
	local entrance_item = Tracker:FindObjectForCode(dungeon .. "_ent")
	-- dummy item for blue checks
	local dummy_item = Tracker:FindObjectForCode(dungeon .. "_from_" .. entrance)
	-- disable the dummy items, so it won't trigger next time
	dummy_item.Active = false
	-- Set the entrance to the right dungeon
	entrance_item.CurrentStage = dungeon_index[entrance]
end

function tracker_on_accessibility_updated()
	for dungeon,_ in pairs(dungeon_index) do 
		for entrance,_ in pairs(dungeon_index) do 
			if has(dungeon .. "_" .. entrance) then
				update_dungeon_check(dungeon, entrance)
			end
		end
	end
	
end

