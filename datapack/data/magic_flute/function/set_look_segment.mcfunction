execute store result score @s flute_look_dir run data get entity @s Rotation[1]

execute if score @s flute_look_dir matches -90.. run scoreboard players set @s flute_look_segment 5
execute if score @s flute_look_dir matches -54.. run scoreboard players set @s flute_look_segment 4
execute if score @s flute_look_dir matches -18.. run scoreboard players set @s flute_look_segment 3
execute if score @s flute_look_dir matches 18.. run scoreboard players set @s flute_look_segment 2
execute if score @s flute_look_dir matches 54.. run scoreboard players set @s flute_look_segment 1

