#> pk_no_ender_pearl_damage:core/player/used_ender_pearl

# Reset score
scoreboard players set @s pk.no_en_pe_da.used.ender_pearl 0

# Search the thrown Ender Pearl
tag @s add pk.temp.current.player
execute anchored eyes positioned ^ ^ ^ as @e[type=ender_pearl,tag=!pk.no_en_pe_da.owned] at @s run function pk_no_ender_pearl_damage:core/ender_pearl/search
tag @s remove pk.temp.current.player