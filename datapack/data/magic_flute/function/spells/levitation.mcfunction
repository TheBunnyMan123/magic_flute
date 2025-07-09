tag @s add flute_caster
effect give @e[distance=..10,tag=!flute_caster] levitation 10 1 true
playsound minecraft:entity.breeze.idle_ground player @a ~ ~ ~
scoreboard players set @s flute_magic_cooldown -600
tag @s remove flute_caster

