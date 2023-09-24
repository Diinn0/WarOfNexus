execute as @e[name="§3Resistance",type=item,limit=1,sort=nearest] run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":"'s team has earned ","color":"dark_green"},{"text":"Resistance","color":"white"},{"text":" "},{"text":"for","color":"dark_green"},{"text":" "},{"text":"1","color":"dark_red"},{"text":" "},{"text":"minute.","color":"dark_green"}]
kill @e[name="§3Resistance",type=item,limit=1,sort=nearest]

execute if entity @s[team=red] run effect give @a[team=red] resistance 60 0 true
execute if entity @s[team=blue] run effect give @a[team=blue] resistance 60 0 true
execute if entity @s[team=yellow] run effect give @a[team=yellow] resistance 60 0 true
execute if entity @s[team=green] run effect give @a[team=green] resistance 60 0 true

