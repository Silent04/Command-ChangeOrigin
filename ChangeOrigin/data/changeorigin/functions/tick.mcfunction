# First time setup for individuals
execute as @a unless score @s changeorigin.origin_changes matches -2147483648..2147483647 run scoreboard players operation @s changeorigin.origin_changes = #CONFIG config.changeorigin.origin_changes
execute as @a unless score @s ChangeOrigin matches 1.. unless score @s changeorigin.origin_changes matches ..0 run scoreboard players enable @s ChangeOrigin

# Confirmation prompt
execute as @a[scores={ChangeOrigin=1}] if score @s changeorigin.origin_changes matches 1.. unless score @s changeorigin.combat_timer matches 1.. run function changeorigin:confirm_change

# Change origin when requested
execute as @a[scores={ChangeOrigin=2}] if score @s changeorigin.origin_changes matches 1.. unless score @s changeorigin.combat_timer matches 1.. run function changeorigin:change_origin

# Deny origin change when empty
execute as @a[scores={ChangeOrigin=1..}] if score @s changeorigin.origin_changes matches ..0 unless score @s changeorigin.combat_timer matches 1.. run function changeorigin:deny_change

# Combat Timer
scoreboard players remove @a changeorigin.combat_timer 1
execute as @a if score @s changeorigin.combat_timer.damage_taken matches 1.. run scoreboard players operation @s changeorigin.combat_timer = #CONFIG config.changeorigin.combat_timer
execute as @a if score @s changeorigin.combat_timer.damage_dealt matches 1.. run scoreboard players operation @s changeorigin.combat_timer = #CONFIG config.changeorigin.combat_timer
scoreboard players reset @a changeorigin.combat_timer.damage_taken
scoreboard players reset @a changeorigin.combat_timer.damage_dealt
execute as @a[scores={ChangeOrigin=1..}] unless score @s changeorigin.origin_changes matches ..0 if score @s changeorigin.combat_timer matches 1.. run function changeorigin:deny_change_combat

# Enable Change
scoreboard players enable @a ChangeOrigin

# Notice to New Players
execute as @a if score @s changeorigin.first_join matches 1 if score @s changeorigin.origin_changes matches 1.. run tellraw @s ["",{"text":"--------------","bold":true,"color":"gold"},"\n",{"text":"| Did you know you can change your origin with one command?","color":"light_purple"},"\n",{"text":"| ","color":"light_purple"},{"text":"/trigger ChangeOrigin","underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger ChangeOrigin"}},{"text":" will change your origin for free!","color":"light_purple"},"\n",{"text":"| Be careful, you can only use this ","color":"light_purple"},{"score":{"name":"@s","objective":"changeorigin.origin_changes"},"bold":true,"color":"dark_purple"},{"text":" times!","color":"light_purple"},"\n",{"text":"--------------","bold":true,"color":"gold"}]
execute if score #CONFIG config.changeorigin.disable_first_join matches 0 as @a unless score @s changeorigin.first_join matches 2.. run scoreboard players add @s changeorigin.first_join 1