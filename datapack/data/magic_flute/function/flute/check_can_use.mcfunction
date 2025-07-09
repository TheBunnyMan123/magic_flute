execute if score @s flute_use_cooldown matches 1.. \
   run function magic_flute:flute/used

scoreboard players set @s flute_use_cooldown -1
advancement revoke @s only magic_flute:flute_used

