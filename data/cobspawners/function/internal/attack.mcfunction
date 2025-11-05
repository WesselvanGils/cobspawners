# Do attack damage to the nearest player in range
$damage @p[distance=..1.5] $(damage) mob_attack by @s from @s

# Start attack cooldown
scoreboard players set @s cobspawners_attack_cooldown 20
