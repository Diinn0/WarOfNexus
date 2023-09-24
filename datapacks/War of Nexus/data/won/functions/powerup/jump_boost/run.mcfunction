execute as @e[name="§eJumpBoost",type=item,limit=1,sort=nearest] run tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":"'s team has earned ","color":"dark_green"},{"text":"Jump Boost","color":"white"},{"text":" "},{"text":"for","color":"dark_green"},{"text":" "},{"text":"1","color":"dark_red"},{"text":" "},{"text":"minute.","color":"dark_green"}]
kill @e[name="§eJumpBoost",type=item,limit=1,sort=nearest]

execute if entity @s[team=red] run effect give @a[team=red] jump_boost 60 1 true
execute if entity @s[team=blue] run effect give @a[team=blue] jump_boost 60 1 true
execute if entity @s[team=green] run effect give @a[team=green] jump_boost 60 1 true
execute if entity @s[team=yellow] run effect give @a[team=yellow] jump_boost 60 1 true