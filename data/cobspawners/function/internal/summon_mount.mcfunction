# Summon mount
$pokespawn $(mount_name) level=$(mount_level) uncatchable
tag @n[type=cobblemon:pokemon, distance=..1] add cobspawners_mount
scoreboard players set @n[type=cobblemon:pokemon, tag=cobspawners_mount, distance=..1] cobspawners_attack_cooldown 0

# Set rider for mount
ride @s mount @n[type=cobblemon:pokemon, tag=cobspawners_mount, distance=..1]
tag @s add cobspawners_has_mount