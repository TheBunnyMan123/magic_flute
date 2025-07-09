execute as @s run function magic_flute:set_look_segment
function magic_flute:flute/check_notes

execute at @s if score @s flute_look_segment matches 1 \
   run playsound block.note_block.flute record @a ~ ~ ~ 1.0 0.890899

execute at @s if score @s flute_look_segment matches 2 \
   run playsound block.note_block.flute record @a ~ ~ ~ 1.0 1.059463

execute at @s if score @s flute_look_segment matches 3 \
   run playsound block.note_block.flute record @a ~ ~ ~ 1.0 1.334840

execute at @s if score @s flute_look_segment matches 4 \
   run playsound block.note_block.flute record @a ~ ~ ~ 1.0 1.587401

execute at @s if score @s flute_look_segment matches 5 \
   run playsound block.note_block.flute record @a ~ ~ ~ 1.0 1.887749

execute if score @s flute_note_4 matches 1.. \
   if score @s flute_note_5 matches 0 \
   run function magic_flute:flute/set_note_5

execute if score @s flute_note_3 matches 1.. \
   if score @s flute_note_4 matches 0 \
   run function magic_flute:flute/set_note_4

execute if score @s flute_note_2 matches 1.. \
   if score @s flute_note_3 matches 0 \
   run function magic_flute:flute/set_note_3

execute if score @s flute_note_1 matches 1.. \
   if score @s flute_note_2 matches 0 \
   run function magic_flute:flute/set_note_2

execute if score @s flute_note_1 matches 0 \
   run function magic_flute:flute/set_note_1

title @s actionbar [{text:"ac",font:"magic_flute:ui"},{score:{name:"@s",objective:"flute_note_1"}},{score:{name:"@s",objective:"flute_note_2"}},{score:{name:"@s",objective:"flute_note_3"}},{score:{name:"@s",objective:"flute_note_4"}},{score:{name:"@s",objective:"flute_note_5"}},"b"]

execute at @s if score @s flute_note_5 matches 1..5 \
   unless score @s flute_magic_cooldown matches 1.. \
   run playsound block.beacon.deactivate player @a ~ ~ ~

execute if score @s flute_note_5 matches 1..5 \
   if score @s flute_magic_cooldown matches 1.. \
   run function magic_flute:flute/check_sequence

execute at @s if score @s flute_note_5 matches 1..5 \
   run function magic_flute:flute/clear_notes

