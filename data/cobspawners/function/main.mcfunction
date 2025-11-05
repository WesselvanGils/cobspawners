# Kill any riders that have lost their mount
kill @e[type=silverfish, tag=cobspawners_has_mount, predicate=!cobspawners:is_riding_cobblemon]

# Summon mount for rider if they don't have one
execute as @e[type=silverfish, tag=cobspawners_rider, predicate=!cobspawners:is_riding_cobblemon] at @s run function cobspawners:internal/summon_mount with entity @s ArmorItems[0].components."minecraft:custom_data"

# Do attack damage
execute as @e[type=cobblemon:pokemon, tag=cobspawners_mount, scores={cobspawners_attack_cooldown=0}] at @s run function cobspawners:internal/attack with entity @s Passengers[0].ArmorItems[0].components."minecraft:custom_data"

# Decrease attack cooldown
scoreboard players remove @e[type=cobblemon:pokemon, tag=cobspawners_mount] cobspawners_attack_cooldown 1


function cobspawners:internal/attack {key: {test: "x"}, otherkey: {othertest: "y"}}