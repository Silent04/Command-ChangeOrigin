scoreboard objectives add changeorigin.origin_changes dummy
scoreboard objectives add changeorigin.combat_timer dummy
scoreboard objectives add changeorigin.combat_timer.damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add changeorigin.combat_timer.damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add changeorigin.combat_timer_seconds dummy
scoreboard objectives add changeorigin.first_join dummy
scoreboard objectives add ChangeOrigin trigger

# Config
scoreboard objectives add config.changeorigin.origin_changes dummy
execute unless score #CONFIG config.changeorigin.origin_changes matches -2147483648..2147483647 run scoreboard players set #CONFIG config.changeorigin.origin_changes 1

scoreboard objectives add config.changeorigin.origin_changes dummy
execute unless score #CONFIG config.changeorigin.origin_changes matches -2147483648..2147483647 run scoreboard players set #CONFIG config.changeorigin.origin_changes 1

scoreboard objectives add config.changeorigin.combat_timer dummy
execute unless score #CONFIG config.changeorigin.combat_timer matches -2147483648..2147483647 run scoreboard players set #CONFIG config.changeorigin.combat_timer 600

scoreboard objectives add config.changeorigin.disable_first_join dummy
execute unless score #CONFIG config.changeorigin.disable_first_join matches -2147483648..2147483647 run scoreboard players set #CONFIG config.changeorigin.disable_first_join 0