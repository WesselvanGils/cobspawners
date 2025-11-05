# Store the incoming configs temporarily
$data modify storage cobspawners:temp normal_config set value $(normal_config)
$data modify storage cobspawners:temp ominous_config set value $(ominous_config)

# Flatten normal_config
data modify storage cobspawners:temp flat.normal_pokemon set from storage cobspawners:temp normal_config.pokemon
data modify storage cobspawners:temp flat.normal_level set from storage cobspawners:temp normal_config.level
data modify storage cobspawners:temp flat.normal_damage set from storage cobspawners:temp normal_config.damage
data modify storage cobspawners:temp flat.normal_attack_delay set from storage cobspawners:temp normal_config.attack_delay

# Flatten ominous_config
data modify storage cobspawners:temp flat.ominous_pokemon set from storage cobspawners:temp ominous_config.pokemon
data modify storage cobspawners:temp flat.ominous_level set from storage cobspawners:temp ominous_config.level
data modify storage cobspawners:temp flat.ominous_damage set from storage cobspawners:temp ominous_config.damage
data modify storage cobspawners:temp flat.ominous_attack_delay set from storage cobspawners:temp ominous_config.attack_delay

# Give the spawner
execute as @s run function cobspawners:internal/give_spawner with storage cobspawners:temp flat

# Example usage
# function cobspawners:get_spawner {normal_config: {pokemon: "Ekans", level: 10, damage: 4, attack_delay: 40}, ominous_config: {pokemon: "Arbok", level: 20, damage: 8, attack_delay: 20}}
