--Map: >>>AAAOABYAAAABAAYAAAAEAAAAY29hbAUDBQoAAABjb3BwZXItb3JlAQUFCQAAAGNydWRlLW9pbAUFBQoAAABlbmVteS1iYXNlBAMFCAAAAGlyb24tb3JlAQUFBQAAAHN0b25lBQEFSmXWRYCEHgBSAQAAAQHGdvJh<<<

local commandqueue = {}
commandqueue[1] = {
    {"craft", "iron-axe", 2}
}
commandqueue[10] = {
    {"move", "SW"}
}
commandqueue[45] = {
    {"stopcraft", 1, 2}
}
commandqueue[300] = {
    {"move", "STOP"},
    {"mine", {900, 500}}
}
commandqueue[600] = {
    {"mine", nil}
}
commandqueue[650] = {
    {"build", defines.inventory.player_quickbar, "wooden-chest", {900, 400}}
}
commandqueue[710] = {
    {"put", {900, 400}, "iron-plate", 3, defines.inventory.player_main, defines.inventory.chest}
}
commandqueue[800] = {
    {"take", {900, 400}, "iron-plate", 2, defines.inventory.player_main, defines.inventory.chest}
}
commandqueue[900] = {
    {"tech", "automation"}
}
return commandqueue