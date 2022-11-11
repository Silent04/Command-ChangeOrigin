scoreboard players set #MULTIPLIER changeorigin.combat_timer_seconds 20
scoreboard players operation @s changeorigin.combat_timer_seconds = @s changeorigin.combat_timer
scoreboard players operation @s changeorigin.combat_timer_seconds /= #MULTIPLIER changeorigin.combat_timer_seconds
tellraw @s ["",{"text":"Oops! ","color":"dark_red"},{"text":"It looks like you are trying to swap during combat. You still need to wait: ","color":"red"},{"score":{"name":"@s","objective":"changeorigin.combat_timer_seconds"},"bold":true,"color":"dark_purple"},{"text":" seconds before using this command.","color":"red"}]
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
scoreboard players reset @s ChangeOrigin