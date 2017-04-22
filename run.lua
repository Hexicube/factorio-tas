--Map: >>>AAAOABYAAAABAAYAAAAEAAAAY29hbAUDBQoAAABjb3BwZXItb3JlAQUFCQAAAGNydWRlLW9pbAUFBQoAAABlbmVteS1iYXNlBAMFCAAAAGlyb24tb3JlAQUFBQAAAHN0b25lBQEFSmXWRYCEHgBSAQAAAQHGdvJh<<<

local commandqueue = {}


commandqueue["settings"] = {
    debugmode = false,
    allowspeed = true,
    buildoffset = {0, 0}
}


commandqueue[1] = {
    {"craft", "iron-axe", 1}
}
commandqueue[2] = {
    {"move", "SE"}
}
commandqueue[12] = {
    {"move", "E"}
}
commandqueue[66] = {
    {"move", "STOP"}
}
commandqueue[67] = {
    {"mine", {11, 3}}
}
commandqueue[120] = {
    {"mine", nil}
}
commandqueue[121] = {
    {"move", "W"}
}
commandqueue[180] = {
    {"move", "S"}
}
commandqueue[232] = {
    {"move", "SE"}
}
commandqueue[260] = {
    {"move", "STOP"}
}
commandqueue[261] = {
    {"mine", {5, 12}}
}
commandqueue[316] = {
    {"mine", nil}
}
commandqueue[317] = {
    {"move", "NW"}
}
commandqueue[326] = {
    {"craft", "wooden-chest", 1}
}
commandqueue[532] = {
    {"move", "N"}
}
commandqueue[542] = {
    {"move", "STOP"}
}
commandqueue[543] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {845, 527}}
}
commandqueue[544] = {
    {"put", {-23, -12}, "raw-wood", 1, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[545] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {845, 460}}
}
commandqueue[546] = {
    {"put", {-23, -14}, "raw-wood", 1, defines.inventory.player_main, defines.inventory.fuel, }
}
commandqueue[547] = {
    {"build", defines.inventory.player_quickbar, "wooden-chest", {1010, 450}}
}
commandqueue[548] = {
    {"mine", {-18, -13}}
}
commandqueue[676] = {
    {"tech", "automation"}
}
commandqueue[1052] = {
    {"mine", nil}
}
commandqueue[1054] = {
    {"put", {-23, -12}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[1055] = {
    {"mine", {-18, -13}}
}
commandqueue[1558] = {
    {"mine", nil}
}
commandqueue[1560] = {
    {"put", {-23, -14}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[1561] = {
    {"move", "S"}
}
commandqueue[1630] = {
    {"move", "STOP"}
}
commandqueue[1631] = {
    {"mine", {-20, 0}}
}
commandqueue[2116] = {
    {"mine", nil}
}
commandqueue[2117] = {
    {"craft", "stone-furnace", 1}
}
commandqueue[2118] = {
    {"move", "N"}
}
commandqueue[2119] = {
    {"craft", "iron-gear-wheel", 1}
}
commandqueue[2187] = {
    {"move", "STOP"}
}
commandqueue[2189] = {
    {"take", {-23, -14}, "iron-plate", 5, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[2190] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[2191] = {
    {"mine", {-18, -13}}
}
commandqueue[2451] = {
    {"mine", nil}
}
commandqueue[2452] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {1039, 502}}
}
commandqueue[2453] = {
    {"put", {-17, -13}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[2454] = {
    {"move", "NW"}
}
commandqueue[3074] = {
    {"move", "W"}
}
commandqueue[3174] = {
    {"move", "STOP"}
}
commandqueue[3175] = {
    {"mine", {-103, -80}}
}
commandqueue[3580] = {
    {"mine", nil}
}
commandqueue[3581] = {
    {"move", "SW"}
}
commandqueue[3751] = {
    {"move", "W"}
}
commandqueue[3821] = {
    {"move", "STOP"}
}
commandqueue[3822] = {
    {"mine", {-132, -59}}
}
commandqueue[4227] = {
    {"mine", nil}
}
commandqueue[4228] = {
    {"move", "S"}
}
commandqueue[4360] = {
    {"move", "STOP"}
}
commandqueue[4361] = {
    {"mine", {-129, -39}}
}
commandqueue[4413] = {
    {"mine", nil}
}
commandqueue[4414] = {
    {"move", "E"}
}
commandqueue[4474] = {
    {"move", "STOP"}
}
commandqueue[4475] = {
    {"mine", {-122, -42}}
}
commandqueue[4528] = {
    {"mine", nil}
}
commandqueue[4529] = {
    {"move", "S"}
}
commandqueue[4559] = {
    {"move", "STOP"}
}
commandqueue[4560] = {
    {"mine", {-118, -35}}
}
commandqueue[4613] = {
    {"mine", nil}
}
commandqueue[4612] = {
    {"craft", "stone-furnace", 8}
}
commandqueue[4614] = {
    {"move", "E"}
}
commandqueue[5114] = {
    {"move", "SE"}
}
commandqueue[5356] = {
    {"move", "STOP"}
}
commandqueue[5357] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {770, 460}}
}
commandqueue[5359] = {
    {"take", {-23, -14}, "iron-plate", 15, defines.inventory.player_main, defines.inventory.furnace_result},
    {"take", {-18, -15}, "coal", 12, defines.inventory.player_main, defines.inventory.chest}
}
commandqueue[5362] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[5363] = {
    {"mine", {x=-18.05, y=-12.5}}
}
commandqueue[5364] = {
    {"craft", "iron-gear-wheel", 3}
}
commandqueue[5581] = {
    {"mine", nil}
}
commandqueue[5582] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {770, 500}}
}
commandqueue[5583] = {
    {"put", {-25, -12}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5585] = {
    {"put", {-25, -14}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5586] = {
    {"mine", {x=-18.05, y=-12.5}}
}
commandqueue[5704] = {
    {"mine", nil}
}
commandqueue[5706] = {
    {"take", {-23, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[5707] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[5708] = {
    {"mine", {x=-18.05, y=-12.5}}
}
commandqueue[5915] = {
    {"mine", nil}
}
commandqueue[5917] = {
    {"take", {-18, -15}, "coal", 12, defines.inventory.player_main, defines.inventory.chest}
}
commandqueue[5919] = {
    {"put", {-17, -13}, "coal", 2, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5921] = {
    {"put", {-23, -12}, "coal", 2, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5922] = {
    {"move", "W"}
}
commandqueue[5932] = {
    {"move", "STOP"}
}
commandqueue[5933] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {760, 500}}
}
commandqueue[5934] = {
    {"put", {-27, -12}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5935] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {760, 460}}
}
commandqueue[5936] = {
    {"put", {-27, -14}, "coal", 3, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[5937] = {
    {"move", "E"}
}
commandqueue[5947] = {
    {"move", "STOP"}
}
commandqueue[5948] = {
    {"mine", {x=-18.05, y=-12.5}}
}
commandqueue[6578] = {
    {"mine", nil}
}
commandqueue[6579] = {
    {"move", "W"}
}
commandqueue[6590] = {
    {"move", "STOP"}
}
commandqueue[6592] = {
    {"take", {-27, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[6594] = {
    {"take", {-25, -14}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[6596] = {
    {"take", {-23, -14}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[6597] = {
    {"craft", "burner-mining-drill", 1}
}
commandqueue[6598] = {
    {"move", "E"}
}
commandqueue[6608] = {
    {"move", "STOP"}
}
commandqueue[6609] = {
    {"mine", {x=-18.05, y=-12.5}}
}
commandqueue[6814] = {
    {"mine", nil}
}
commandqueue[6815] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {1030, 420}, 2}
}
commandqueue[6816] = {
    {"mine", {1004, 500}}
}
commandqueue[7326] = {
    {"mine", nil}
}
commandqueue[7327] = {
    {"move", "W"}
}
commandqueue[7337] = {
    {"move", "STOP"}
}
commandqueue[7338] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {760, 460}}
}
commandqueue[7339] = {
    {"take", {760, 460}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7340] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {830, 460}}
}
commandqueue[7341] = {
    {"take", {830, 460}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7342] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {900, 460}}
}
commandqueue[7343] = {
    {"take", {900, 460}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7344] = {
    {"craft", "burner-mining-drill", 1},
    {"move", "E"}
}
commandqueue[7354] = {
    {"move", "STOP"}
}
commandqueue[7355] = {
    {"mine", {1004, 500}}
}
commandqueue[7565] = {
    {"mine", nil},
    {"move", "S"}
}
commandqueue[7566] = {
    {"speed", 1}
}
commandqueue[7635] = {
    {"move", "STOP"}
}
commandqueue[7636] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {1000, 600}, 1}
}
commandqueue[7637] = {
    {"put", {900, 460}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}
commandqueue[7638] = {
    {"build", defines.inventory.player_quickbar, "wooden-chest", {960, 600}}
}
commandqueue[7639] = {
    {"move", "N"}
}
commandqueue[7709] = {
    {"move", "STOP"}
}
commandqueue[7710] = {
    {"mine", {1004, 500}}
}
commandqueue[7860] = {
    {"mine", nil},
    {"move", "W"}
}
commandqueue[7870] = {
    {"move", "STOP"}
}
commandqueue[7871] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {760, 460}}
}
commandqueue[7872] = {
    {"take", {760, 460}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7873] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {830, 460}}
}
commandqueue[7874] = {
    {"take", {830, 460}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7875] = {
    {"build", defines.inventory.player_quickbar, "stone-furnace", {900, 460}}
}
commandqueue[7876] = {
    {"take", {900, 460}, "iron-plate", 4, defines.inventory.player_main, defines.inventory.furnace_result}
}
commandqueue[7877] = {
    {"craft", "burner-mining-drill", 1},
    {"move", "E"}
}
commandqueue[7887] = {
    {"move", "S"}
}
commandqueue[7957] = {
    {"move", "STOP"}
}
commandqueue[7958] = {
    {"mine", {950, 570}}
}
commandqueue[8092] = {
    {"mine", nil}
}
commandqueue[8093] = {
    {"build", defines.inventory.player_quickbar, "burner-mining-drill", {910, 630}, 2}
}
commandqueue[8094] = {
    {"put", {910, 630}, "coal", 4, defines.inventory.player_main, defines.inventory.fuel}
}

return commandqueue
