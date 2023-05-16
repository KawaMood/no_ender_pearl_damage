#> pk_no_ender_pearl_damage:core/controller/initialize

# Set the player id score
scoreboard players operation @s pk.player.id = @a[tag=pk.temp.current.player,limit=1] pk.player.id

# Add tags
tag @s add pk.no_en_pe_da
tag @s add pk.no_en_pe_da.controller

# Make the marker ride the ender pearl
ride @s mount @e[type=ender_pearl,tag=pk.temp.current.ender_pearl,distance=..0.1,limit=1]