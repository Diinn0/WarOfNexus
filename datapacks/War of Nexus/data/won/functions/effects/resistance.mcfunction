execute as @a at @s positioned ~ ~ ~ run tag @e[name="§3Resistance",type=item,distance=..1] add active
execute as @e[name="§3Resistance",type=item,tag=active] at @s positioned ~ ~ ~ run tag @p[distance=..2] add actived

execute as @e[name="§3Resistance",type=item,tag=active] at @s positioned ~ ~ ~ run tellraw @a ["",{"selector":"@p[distance=..2,tag=actived]","color":"dark_green"},{"text":"'s team has earned ","color":"dark_green"},{"text":"Resistance","color":"white"},{"text":" "},{"text":"for","color":"dark_green"},{"text":" "},{"text":"1","color":"dark_red"},{"text":" "},{"text":"minute.","color":"dark_green"}]
execute as @e[name="§3Resistance",type=item,tag=active] at @s positioned ~ ~ ~ run kill @e[name="§3Resistance",type=item]

execute as @a[tag=actived,team=red] at @s positioned ~ ~ ~ run effect give @a[team=red] resistance 60 0
execute as @a[tag=actived,team=blue] at @s positioned ~ ~ ~ run effect give @a[team=blue] resistance 60 0
execute as @a[tag=actived,team=yellow] at @s positioned ~ ~ ~ run effect give @a[team=yellow] resistance 60 0
execute as @a[tag=actived] at @s positioned ~ ~ ~ run tag @a[tag=actived] remove actived