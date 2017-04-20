local commandqueue = require("run")

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
                walkstate = directions[v[2]]
            elseif v[1] == "mine" then
                minestate = v[2]
            elseif v[1] == "craft" then
                myplayer.begin_crafting{recipe = v[2], count = v[3] or 1}
            elseif v[1] == "stopcraft" then
                myplayer.cancel_crafting{index = v[2], count = v[3] or 1}
            elseif v[1] == "build" then
                myplayer.cursor_position = v[4]
                local num = myplayer.get_inventory(v[2]).remove{name=v[3], count=1}
                if num > 0 then
                    myplayer.cursor_stack.set_stack{name=v[3]}
                    local rot = v[5] or 0
                    while rot > 0 do
                        rot = rot - 1
                        myplayer.rotate_for_build()
                    end
                    myplayer.build_from_cursor()
                    myplayer.clean_cursor()
                end
            elseif v[1] == "put" then
                --myplayer.update_selected_entity(v[2])
                myplayer.cursor_position = v[2]
                
                local playerinv = myplayer.get_inventory(v[5])
                local otherinv = myplayer.selected.get_inventory(v[6])
                
                if playerinv and otherinv then
                    local amt = v[4]
                    local avail = playerinv.get_item_count(v[3])
                    if avail < amt then amt = avail end
                    local amt = otherinv.insert{name=v[3], count=amt}
                    playerinv.remove{name=v[3], count=amt}
                end
            elseif v[1] == "take" then
                --myplayer.update_selected_entity(v[2])
                myplayer.cursor_position = v[2]
                
                local playerinv = myplayer.get_inventory(v[5])
                local otherinv = myplayer.selected.get_inventory(v[6])
                
                if playerinv and otherinv then
                    local amt = v[4]
                    local avail = otherinv.get_item_count(v[3])
                    if avail < amt then amt = avail end
                    local amt = playerinv.insert{name=v[3], count=amt}
                    otherinv.remove{name=v[3], count=amt}
                end
            elseif v[1] == "tech" then
                myplayer.force.current_research = v[2]
            end
        end
    end
    myplayer.walking_state = walkstate
    if minestate == nil then myplayer.mining_state = {mining = false}
    else
        myplayer.mining_state = {mining = true, position = {0, 0}}
        myplayer.cursor_position = minestate
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    myplayer = game.players[event.player_index]
    myplayer.insert{name="iron-plate", count=8}
    myplayer.insert{name="pistol", count=1}
    myplayer.insert{name="firearm-magazine", count=10}
    myplayer.insert{name="burner-mining-drill", count = 1}
    myplayer.insert{name="stone-furnace", count = 1}
    myplayer.force.chart(myplayer.surface, {{myplayer.position.x - 200, myplayer.position.y - 200}, {myplayer.position.x + 200, myplayer.position.y + 200}})
end)