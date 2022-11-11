# Usage
You can use the command to change your origin by running the command `/trigger ChangeOrigin`. Please be aware this will not work if you run out of the allotted uses determined by the server's configuration.
## Usage For Admins
You can change the uses of an individual player with the following:
* `/scoreboard players add/remove <Username> changeorigin.origin_changes <New Value>`

* `/scoreboard players set <Username> changeorigin.origin_changes <New Value>`

You can prevent someone from losing changes from swapping with the following:
* `/tag @s add InfChanges`
### Configuration
You can configure the amount of changes people can use by typing the following:
* `/scoreboard players set #CONFIG config.changeorigin.origin_changes <New Value>`
(Default 1)

To configure the amount of time someone needs to be out of combat for to use the command:
* `/scoreboard players set #CONFIG config.changeorigin.origin_changes <New Value>`
(Default 600)

Finally, you can disable the welcome message for new players with the following:
* `/scoreboard players set #CONFIG config.changeorigin.disable_first_join 1`
(Default 0)

# Changelog
- Updated README.md

# DISCLAIMER:
This is meant as an alternative to the otherwise manual "free origin changes" some servers have, but it can be used in singleplayer if you really feel like it.

If you were previously using this datapack before version 2.0, please run a full wipe of origin changes with the following:
 `/scoreboard objectives remove config.changeorigin.origin_changes`
 `/scoreboard objectives remove changeorigin.origin_changes`
 `/reload`
