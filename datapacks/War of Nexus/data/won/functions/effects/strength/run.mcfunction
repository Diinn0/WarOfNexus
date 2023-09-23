execute as @e[name="§cStrength",type=item,limit=1,sort=nearest] run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":"'s team has earned ","color":"dark_green"},{"text":"Strength","color":"white"},{"text":" "},{"text":"for","color":"dark_green"},{"text":" "},{"text":"1","color":"dark_red"},{"text":" "},{"text":"minute.","color":"dark_green"}]
kill @e[name="§cStrength",type=item,limit=1,sort=nearest]

execute if entity @s[team=red] run effect give @a[team=red] strength 60 0
execute if entity @s[team=blue] run effect give @a[team=blue] strength 60 0
execute if entity @s[team=green] run effect give @a[team=green] strength 60 0
execute if entity @s[team=yellow] run effect give @a[team=yellow] strength 60 0