#> pk_no_ender_pearl_damage:base/tick
# Main tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Events:
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# - Player used Ender Pearl
execute as @a[scores={pk.no_en_pe_da.used.ender_pearl=1..}] at @s run function pk_no_ender_pearl_damage:core/player/used_ender_pearl
# - Owned Ender Pearl landed
execute as @e[type=marker,tag=pk.no_en_pe_da.controller,predicate=!pk_no_ender_pearl_damage:vehicle/ender_pearl] at @s run function pk_no_ender_pearl_damage:core/controller/landing