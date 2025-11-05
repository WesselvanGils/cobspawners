# [BETA] Cobblemon Hostile Spawners

The current state of the project is Beta. The bsic logic is in place and spawners can be obtained with: 
```js
/function cobspawners:get_spawner {normal_config: {pokemon: "Ekans", level: 10, damage: 4, attack_delay: 40}, ominous_config: {pokemon: "Arbok", level: 20, damage: 8, attack_delay: 20}}
```

Where
- `normal_config`: The config applied when the trial spawner is activated in regular mode
    - `pokemon`: The pokemon spawned
    - `level`: The level of the spawned pokemon
    - `damage`: The hit damage of the spawned pokemon
    - `attack_delay`: The delay between attacks (in ticks)
- `ominous_config`: The config applied when the trial spawner is activated in ominous mode
    - `pokemon`: The pokemon spawned
    - `level`: The level of the spawned pokemon
    - `damage`: The hit damage of the spawned pokemon
    - `attack_delay`: The delay between attacks (in ticks)