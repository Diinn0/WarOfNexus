execute as @a at @s positioned ~ ~ ~ run tag @e[name="§eJumpBoost",type=item,distance=..1] add active
execute as @e[name="§eJumpBoost",type=item,tag=active] at @s positioned ~ ~ ~ run tag @p[distance=..2] add actived
execute as @e[name="§eJumpBoost",type=item,tag=active] at @s positioned ~ ~ ~ run tellraw @a ["",{"selector":"@p[distance=..2,tag=actived]","color":"dark_green"},{"text":"'s team has earned ","color":"dark_green"},{"text":"Jump Boost","color":"white"},{"text":" "},{"text":"for","color":"dark_green"},{"text":" "},{"text":"1","color":"dark_red"},{"text":" "},{"text":"minute.","color":"dark_green"}]
execute as @a[tag=actived,team=red] at @s positioned ~ ~ ~ run effect give @a[team=red] jump_boost 60 1
execute as @a[tag=actived,team=blue] at @s positioned ~ ~ ~ run effect give @a[team=blue] jump_boost 60 1
execute as @a[tag=actived,team=green] at @s positioned ~ ~ ~ run effect give @a[team=green] jump_boost 60 1
execute as @a[tag=actived,team=yellow] at @s positioned ~ ~ ~ run effect give @a[team=yellow] jump_boost 60 1
execute as @e[name="§eJumpBoost",type=item,tag=active] at @s positioned ~ ~ ~ run kill @e[name="§eJumpBoost",type=item]
execute as @a[tag=actived] at @s positioned ~ ~ ~ run tag @a[tag=actived] remove actived