tag @s add flute_caster
effect give @e[distance=..20,tag=!flute_caster] slowness 15 127 true
effect give @e[distance=..20,tag=!flute_caster] weakness 15 127 true
playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~
scoreboard players set @s flute_magic_cooldown -600
tag @s remove flute_caster

