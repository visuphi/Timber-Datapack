#> keep track of tree size
scoreboard players add tree_size timber 1

#> wear out tool with randomizer
execute as @e[type=minecraft:area_effect_cloud,tag=timber_randomizer,sort=random,limit=1] if entity @s[tag=1] run scoreboard players add durability timber 1

#> mark block that will get destroyed
summon area_effect_cloud ~ ~ ~ {Tags:["timber_destroy"],Duration:1}

#> search for next log
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~ if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~1 ~-1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~ if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~1 ~-1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~ if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~1 ~-1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check

execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~ ~ ~-1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~ if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~1 ~ ~-1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~ if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check
execute if score tree_size timber < max_tree_size timber positioned ~-1 ~ ~-1 if block ~ ~ ~ #timber:acacia unless entity @e[type=minecraft:area_effect_cloud,tag=timber_destroy,distance=...9,sort=arbitrary,limit=1] run function timber:acacia_tree/durability_check

#> destroy leaves
execute if score destroy_leaves timber matches 1.. run scoreboard players set leaf_distance timber 0
execute if score destroy_leaves timber matches 1.. run function timber:acacia_tree/leaves_search