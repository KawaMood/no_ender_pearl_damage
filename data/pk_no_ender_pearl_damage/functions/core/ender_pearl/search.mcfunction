#> pk_no_ender_pearl_damage:core/ender_pearl/search
# Search the thrown Ender Pearl

tag @s add pk.temp.current.ender_pearl
execute on origin if entity @s[tag=pk.temp.current.player] as @e[type=ender_pearl,tag=pk.temp.current.ender_pearl,distance=..0.1,limit=1] run function pk_no_ender_pearl_damage:core/ender_pearl/found
tag @s remove pk.temp.current.ender_pearl