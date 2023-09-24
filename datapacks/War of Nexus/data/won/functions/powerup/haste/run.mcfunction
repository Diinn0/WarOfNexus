execute as @e[name="§aHaste",type=item,limit=1,sort=nearest] run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":"'s team has earned ","color":"dark_green"},{"text":"Haste","color":"white"},{"text":" "},{"text":"for","color":"dark_green"},{"text":" "},{"text":"2","color":"dark_red"},{"text":" "},{"text":"minute.","color":"dark_green"}]
kill @e[name="§aHaste",type=item,limit=1,sort=nearest]

execute if entity @s[team=red] run effect give @a[team=red] haste 120 0 true
execute if entity @s[team=blue] run effect give @a[team=blue] haste 120 0 true
execute if entity @s[team=green] run effect give @a[team=green] haste 120 0 true
execute if entity @s[team=yellow] run effect give @a[team=yellow] haste 120 0 true