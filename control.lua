local commandqueue = require("run")

local debugmode = commandqueue.settings.debugmode
local allowspeed = commandqueue.settings.allowspeed
local buildoffset = commandqueue.settings.buildoffset

local myplayer = nil
local curtick = 0
local walkstate = {walking = false}
local minestate = nil

local directions = {}
directions["STOP"] = {walking = false}
directions["N"] =  {walking = true, direction = defines.direction.north}
directions["E"] =  {walking = true, direction = defines.direction.east}
directions["S"] =  {walking = true, direction = defines.direction.south}
directions["W"] =  {walking = true, direction = defines.direction.west}
directions["NE"] = {walking = true, direction = defines.direction.northeast}
directions["NW"] = {walking = true, direction = defines.direction.northwest}
directions["SE"] = {walking = true, direction = defines.direction.southeast}
directions["SW"] = {walking = true, direction = defines.direction.southwest}

script.on_event(defines.events.on_tick, function(event)
    curtick = curtick + 1
    if commandqueue[curtick] then
        for k,v in pairs(commandqueue[curtick]) do
            if v[1] == "move" then
                if debugmode then myplayer.print("[" .. curtick .. "] Moving: " .. v[2]) end
                walkstate = directions[v[2]]
            elseif v[1] == "mine" then
                if debugmode then
                    if v[2] then
                        if v[2].x then myplayer.print("[" .. curtick .. "] Mining: Precise pos " .. v[2].x .. "x" .. v[2].y)
                        else myplayer.print("[" .. curtick .. "] Mining: Tile pos " .. v[2][1] .. "x" .. v[2][2]) end
                    else myplayer.print("[" .. curtick .. "] Mining: STOP") end
                end
                if not v[2] or v[2].x then minestate = v[2]
                else minestate = {v[2][1] + 0.5, v[2][2] + 0.5} end
            elseif v[1] == "craft" then
                if debugmode then myplayer.print("[" .. curtick .. "] Crafting: " .. v[2] .. " x" .. (v[3] or 1)) end
                myplayer.begin_crafting{recipe = v[2], count = v[3] or 1}
            elseif v[1] == "stopcraft" then
                if debugmode then myplayer.print("[" .. curtick .. "] Craft abort: Index " .. v[2] .. " x" .. (v[3] or 1)) end
                myplayer.cancel_crafting{index = v[2], count = v[3] or 1}
            elseif v[1] == "build" then
                if debugmode then myplayer.print("[" .. curtick .. "] Building: " .. v[3] .. " at screen pos " .. v[4][1] .. "x" .. v[4][2]) end
                v[4][1] = v[4][1] + buildoffset[1]
                v[4][2] = v[4][2] + buildoffset[2]
                
                myplayer.cursor_position = v[4]
                local num = myplayer.get_inventory(v[2]).remove{name=v[3], count=1}
                if num > 0 then
                    myplayer.cursor_stack.set_stack{name=v[3]}
                    local rot = v[5] or 0
                    while rot > 0 do
                        rot = rot - 1
                        myplayer.rotate_for_build()
                    end
                    if not myplayer.build_from_cursor() then myplayer.print("[" .. curtick .. "] Build failed: Invalid location") end
                    myplayer.clean_cursor()
                else myplayer.print("[" .. curtick .. "] Build failed: No item available") end
            elseif v[1] == "put" then
                if debugmode then myplayer.print("[" .. curtick .. "] Put: " .. v[3] .. " x" .. v[4] .. " into tile pos " .. v[2][1] .. "x" .. v[2][2]) end
                myplayer.update_selected_entity(v[2])
                
                if myplayer.selected then
                    local playerinv = myplayer.get_inventory(v[5])
                    local otherinv = myplayer.selected.get_inventory(v[6])
                    
                    if playerinv and otherinv then
                        local amt = v[4]
                        local avail = playerinv.get_item_count(v[3])
                        if avail < amt then amt = avail end
                        if avail > 0 then
                            local amt = otherinv.insert{name=v[3], count=amt}
                            if amt > 0 then
                                playerinv.remove{name=v[3], count=amt}
                                if amt < v[4] then myplayer.print("[" .. curtick .. "] Put sub-optimal: Only put " .. amt) end
                            else myplayer.print("[" .. curtick .. "] Put failed: No space") end
                        else myplayer.print("[" .. curtick .. "] Put failed: No items") end
                    else myplayer.print("[" .. curtick .. "] Put failed: Unable to access inventories") end
                else myplayer.print("[" .. curtick .. "] Put failed: No object at position") end
            elseif v[1] == "take" then
                if debugmode then myplayer.print("[" .. curtick .. "] Take: " .. v[3] .. " x" .. v[4] .. " from tile pos " .. v[2][1] .. "x" .. v[2][2]) end
                myplayer.update_selected_entity(v[2])
                
                if myplayer.selected then
                    local playerinv = myplayer.get_inventory(v[5])
                    local otherinv = myplayer.selected.get_inventory(v[6])
                    
                    if playerinv and otherinv then
                        local amt = v[4]
                        local avail = otherinv.get_item_count(v[3])
                        if avail < amt then amt = avail end
                        if avail > 0 then
                            local amt = playerinv.insert{name=v[3], count=amt}
                            if amt > 0 then
                                otherinv.remove{name=v[3], count=amt}
                                if amt < v[4] then myplayer.print("[" .. curtick .. "] Take sub-optimal: Only took " .. amt) end
                            else myplayer.print("[" .. curtick .. "] Take failed: No space") end
                        else myplayer.print("[" .. curtick .. "] Take failed: No items") end
                    else myplayer.print("[" .. curtick .. "] Take failed: Unable to access inventories") end
                else myplayer.print("[" .. curtick .. "] Take failed: No object at position") end
            elseif v[1] == "tech" then
                if debugmode then myplayer.print("[" .. curtick .. "] Research: " .. v[2]) end
                myplayer.force.current_research = v[2]
            elseif v[1] == "speed" then
                if debugmode then myplayer.print("[" .. curtick .. "] Speed: " .. v[2]) end
                if allowspeed then game.speed = v[2] end
            elseif v[1] == "recipe" then
                if debugmode then myplayer.print("[" .. curtick .. "] Recipe: " .. v[3] .. " at tile pos " .. v[2]) end
                myplayer.update_selected_entity(v[2])
                myplayer.selected.recipe = v[3]
            elseif v[1] == "print" then
                myplayer.print(v[2])
            end
        end
    end
    myplayer.walking_state = walkstate
    if not minestate then myplayer.mining_state = {mining = false}
    else
        myplayer.update_selected_entity(minestate)
        myplayer.mining_state = {mining = true, position = minestate}
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    myplayer = game.players[event.player_index]
    myplayer.game_view_settings.update_entity_selection = false
    myplayer.insert{name="iron-plate", count=8}
    myplayer.insert{name="pistol", count=1}
    myplayer.insert{name="firearm-magazine", count=10}
    myplayer.insert{name="burner-mining-drill", count = 1}
    myplayer.insert{name="stone-furnace", count = 1}
    myplayer.force.chart(myplayer.surface, {{myplayer.position.x - 200, myplayer.position.y - 200}, {myplayer.position.x + 200, myplayer.position.y + 200}})
end)