origin gui @s
scoreboard players remove @s[tag=!InfChanges] changeorigin.origin_changes 1
scoreboard players reset @s ChangeOrigin
tellraw @s ["",{"text":"Confirmed! You now have: ","color":"green"},{"score":{"name":"@s","objective":"changeorigin.origin_changes"},"bold":true,"color":"dark_purple"},{"text":"/","color":"dark_purple"},{"score":{"name":"#CONFIG","objective":"config.changeorigin.origin_changes"},"bold":true,"color":"dark_purple"},{"text":" remaining change(s)!","color":"green"}]
execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.8