--Map: >>>AAAOABYAAAABAAYAAAAEAAAAY29hbAUDBQoAAABjb3BwZXItb3JlAQUFCQAAAGNydWRlLW9pbAUFBQoAAABlbmVteS1iYXNlBAMFCAAAAGlyb24tb3JlAQUFBQAAAHN0b25lBQEFSmXWRYCEHgBSAQAAAQHGdvJh<<<

local commandqueue = {}


commandqueue["settings"] = {
    debugmode = false,
    allowspeed = true,
    buildoffset = {0, 0}
}


commandqueue[1] = {
    {"craft", "iron-axe", 1},
    {"move", "SE"}
}
commandqueue[11] = {
    {"move", "E"}
}
commandqueue[12] = {
    {"speed", 10}
}
commandqueue[66] = {
    {"move", "STOP"},
    {"mine", {11, 3}}
}
commandqueue[120] = {
    {"mine", nil},
    {"move", "W"}
}
commandqueue[157] = {
    {"move", "SW"}
}
commandqueue[185] = {
    {"move", "S"}
}
commandqueue[222] = {
    {"move", "SE"}
}
commandqueue[240] = {
    {"move", "STOP"},
    {"mine", {5, 12}}
}
commandqueue[296] = {
    {"mine", nil},
    {"move", "NW"}
}
commandqueue[326] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[505] = {
    {"move", "N"}
}
commandqueue[517] = {
    {"move", "STOP"},
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {845, 527}}
}
commandqueue[518] = {
    {"put", {-23, -12}, "raw-wood", 1, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[519] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {845, 460}}
}
commandqueue[520] = {
    {"put", {-23, -14}, "raw-wood", 1, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[521] = {
    {"build", defines.inventory.player_quickbar, "wooden-chest", {1010, 450}}
}
commandqueue[522] = {
    {"mine", {-18, -12}}
}
commandqueue[676] = {
    {"tech", "automation"}
}
commandqueue[1026] = {
    {"mine", nil},
    {"put", {-23, -12}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[1027] = {
    {"mine", {-18, -12}}
}
commandqueue[1530] = {
    {"mine", nil},
    {"put", {-23, -14}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel},
    {"move", "S"}
}
commandqueue[1600] = {
    {"move", "STOP"},
    {"mine", {-20, 0}}
}
commandqueue[2085] = {
    {"mine", nil},
    {"craft", "stone-furnace", 1},
    {"move", "N"}
}
commandqueue[2086] = {
    {"craft", "iron-gear-wheel", 1}
}
commandqueue[2155] = {
    {"move", "STOP"},
    {"take", {-23, -14}, "iron-plate", 5, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[2156] = {
    {"craft", "burner-mining-drill", 1},
    {"mine", {-18, -13}}
}
commandqueue[2417] = {
    {"mine", nil},
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {1039, 502}}
}
commandqueue[2418] = {
    {"put", {-17, -13}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel},
    {"move", "NW"}
}
commandqueue[3038] = {
    {"move", "W"}
}
commandqueue[3138] = {
    {"move", "STOP"},
    {"mine", {-103, -80}}
}
commandqueue[3543] = {
    {"mine", nil},
    {"move", "SW"}
}
commandqueue[3713] = {
    {"move", "W"}
}
commandqueue[3783] = {
    {"move", "STOP"},
    {"mine", {-132, -59}}
}
commandqueue[4188] = {
    {"mine", nil},
    {"move", "S"}
}
commandqueue[4320] = {
    {"move", "STOP"},
    {"mine", {-129, -39}}
}
commandqueue[4372] = {
    {"mine", nil},
    {"move", "E"}
}
commandqueue[4432] = {
    {"move", "STOP"},
    {"mine", {-122, -42}}
}
commandqueue[4485] = {
    {"mine", nil},
    {"move", "S"}
}
commandqueue[4515] = {
    {"move", "STOP"},
    {"mine", {-118, -35}}
}
commandqueue[4568] = {
    {"mine", nil},
    {"craft", "stone-furnace", 8},
    {"move", "E"}
}
commandqueue[5067] = {
    {"move", "SE"}
}
commandqueue[5309] = {
    {"move", "STOP"},
    {"build", defines.inventory.player_quickbar, "stone-furnace", {770, 460}}
}
commandqueue[5310] = {
    {"take", {-23, -14}, "iron-plate", 16, defines.inventory.player_main, defines.inventory.furnace_result},
}
commandqueue[5311] = {
    {"take", {-18, -15}, "coal", 12, defines.inventory.player_main, defines.inventory.chest},
    {"craft", "burner-mining-drill", 1}
}
commandqueue[5312] = {
    {"mine", {-18, -12}},
    {"craft", "iron-gear-wheel", 3}
}
commandqueue[5531] = {
    {"mine", nil},
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {770, 500}}
}
commandqueue[5532] = {
    {"put", {-25, -12}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5533] = {
    {"put", {-25, -14}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5534] = {
    {"mine", {-18, -12}}
}
commandqueue[5706] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[5707] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[5858] = {
    {"mine", nil}
}
commandqueue[5860] = {
    {"take", {-18, -15}, "coal", 12, defines.inventory.player_main, defines.inventory.chest}
}
commandqueue[5861] = {
    {"put", {-17, -13}, "coal", 2, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5862] = {
    {"put", {-23, -12}, "coal", 2, defines.inventory.player_main, defines.inventory.fuel},
    {"move", "W"}
}
commandqueue[5872] = {
    {"move", "STOP"}
}
commandqueue[5873] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {760, 460}}
}
commandqueue[5874] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {760, 500}}
}
commandqueue[5875] = {
    {"move", "E"},
    {"put", {-27, -12}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5876] = {
    {"put", {-27, -14}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5885] = {
    {"move", "STOP"},
    {"mine", {-18, -12}}
}
commandqueue[6485] = {
    {"mine", nil},
    {"move", "W"}
}
commandqueue[6495] = {
    {"move", "STOP"},
    {"take", {-27, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[6494] = {
    {"take", {-25, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[6496] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[6497] = {
    {"craft", "iron-gear-wheel", 3},
    {"move", "E"}
}
commandqueue[6507] = {
    {"move", "STOP"},
    {"mine", {-18, -12}}
}
commandqueue[6582] = {
    {"mine", {-18, -15}}
}
commandqueue[6610] = {
    {"take", {-25, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[6611] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}, 
    {"craft", "burner-mining-drill", 1}
}
commandqueue[6732] = {
    {"build",  defines.inventory.player_quickbar, "burner-mining-drill", {1030, 420}, 2}
}
commandqueue[6703] = {
    {"mine", {-18, -12}}
}
commandqueue[7223] = {
    {"mine", nil},
    {"move", "W"}
}
commandqueue[7233] = {
    {"move", "STOP"},
    {"take", {-27, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7234] = {
    {"take", {-25, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7235] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7236] = {
    {"craft", "iron-gear-wheel", 3},
    {"move", "E"}
}
commandqueue[7246] = {
    {"move", "STOP"},
    {"mine", {-18, -12}}
}
commandqueue[7400] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7456] = {
    {"mine", nil},
    {"move", "S"}
}
commandqueue[7401] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[7526] = {
    {"move", "STOP"}
}
commandqueue[7527] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {1000, 600}, 1}
}
commandqueue[7528] = {
    {"put", {-18, 1}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[7529] = {
    {"build", defines.inventory.player_quickbar, "wooden-chest", {960, 600}},
    {"move", "N"}
}
commandqueue[7599] = {
    {"move", "STOP"},
    {"mine", {-18, -12}}
}
commandqueue[7749] = {
    {"mine", nil},
    {"move", "W"}
}
commandqueue[7759] = {
    {"move", "STOP"},
    {"take", {-27, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7760] = {
    {"take", {-25, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7761] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7762] = {
    {"craft", "iron-gear-wheel", 3},
}
commandqueue[7980] = {
    {"take", {-25, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7981] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7970] = {
    {"speed", 1}
}
commandqueue[7982] = {
    {"craft", "burner-mining-drill", 1}, 
    {"mine", nil},
    {"move", "S"}
}
commandqueue[8052] = {
    {"move", "STOP"},
    {"mine", {-20, 0}}
}
commandqueue[8192] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {956, 620}, 2}
}
commandqueue[8193] = {
    {"put", {-21, 2}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[8194] = {
    {"mine", nil},
    {"take", {-19.5, 1.5}, "stone", 4, defines.inventory.player_main, defines.inventory.chest}
}
commandqueue[8195] = {
    {"move", "N"},
    {"craft", "stone-furnace", 1}
}
commandqueue[8265] = {
    {"move", "S"}
}
commandqueue[8266] = {
    {"take", {-18, -15}, "coal", 10, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[8267] = {
    {"take", {-18, -13}, "coal", 10, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[8268] = {
    {"take", {-27, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[8269] = {
    {"take", {-25, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[8270] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[8275] = {
    {"move", "W"}
}
commandqueue[8295] = {
    {"move", "STOP"}
}

return commandqueue
