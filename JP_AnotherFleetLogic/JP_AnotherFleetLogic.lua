-- Powered by Right Click API
local ffi = require("ffi")
local C = ffi.C

local function initialize()
    DebugError("AnotherFleetLogic initialize()")
    capi.RegisterAssignAction(AnotherFleetLogic)
end

-- function AssignCommander_JP(assignment, menu)
-- 	local convertedComponent = ConvertStringTo64Bit(tostring(menu.componentSlot.component))
-- 	local isplayerownedtarget = GetComponentData(convertedComponent, "isplayerowned")
-- 
-- 	for _, ship in ipairs(menu.selectedplayerships) do
-- 		if (convertedComponent ~= ship) and isplayerownedtarget then
-- 			if C.IsComponentClass(menu.componentSlot.component, "controllable") then
-- 
-- 				local orderindex = C.CreateOrder(ship, "JP_AssignCommander", false)
-- 				-- COMMANDER
-- 				SetOrderParam(ship, orderindex, 1, nil, ConvertStringToLuaID(tostring(menu.componentSlot.component)))
-- 				-- ASSIGNMENT
-- 				SetOrderParam(ship, orderindex, 2, nil, assignment)
-- 
-- 				C.EnableOrder(ship, orderindex)
-- 
-- 			end
-- 		end
-- 	end
-- 
-- 	if not menu.shown then
-- 		Helper.resetUpdateHandler()
-- 		Helper.clearFrame(menu, 3)
-- 		Helper.returnFromInteractMenu(menu.currentOverTable, "refresh")
-- 		menu.cleanup()
-- 	end
-- 
-- end

function AnotherFleetLogic( menu )
	if menu.numassignableships > 0 then
		if (not C.IsComponentClass(menu.componentSlot.component, "station")) then
			-- menu.insertInteractionContent("selected_assignments", { type = actiontype, text = "AnotherExplorerFleet", script = function () AssignCommander_JP("JP_AnotherExplorer", menu) end })
		end 
	end
end

initialize()