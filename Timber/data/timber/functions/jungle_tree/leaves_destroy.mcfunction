### get leaf distance ###
function timber:jungle_tree/get_leaf_distance

### decide if leaf is closer to the current tree then destroy it ###
execute unless score drop_loot timber matches 1.. if score leaf_distance_old timber < leaf_distance timber run setblock ~ ~ ~ minecraft:air destroy
execute if score drop_loot timber matches 1.. if score leaf_distance_old timber < leaf_distance timber run loot give @s mine ~ ~ ~ mainhand
execute if score drop_loot timber matches 1.. if score leaf_distance_old timber < leaf_distance timber run setblock ~ ~ ~ minecraft:air replace

### search for next leaf ###
execute if score leaf_distance_old timber < leaf_distance timber run function timber:jungle_tree/leaves_search