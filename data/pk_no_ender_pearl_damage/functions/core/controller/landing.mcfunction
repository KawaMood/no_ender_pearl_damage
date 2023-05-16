#> pk_no_ender_pearl_damage:core/controller/landing

# Set scores
scoreboard players operation $temp pk.player.id = @s pk.player.id

# Find player
tag @a[predicate=pk_no_ender_pearl_damage:scores/packages/player_id/matching,limit=1] add pk.temp.current.player

# Try to summon an endermite following default behavior's rules (5% chance, at player's initial position and if not in Creative mode)
function pk_no_ender_pearl_damage:packages/random/uniform
execute if score $random pk.value matches ..50 at @a[tag=pk.temp.current.player,gamemode=!creative,limit=1] run summon endermite ~ ~ ~

# Relocate player
tp @a[tag=pk.temp.current.player,limit=1] ~ ~ ~

# Remove marker
kill @s

# Remove the current tag
tag @a[tag=pk.temp.current.player,limit=1] remove pk.temp.current.player