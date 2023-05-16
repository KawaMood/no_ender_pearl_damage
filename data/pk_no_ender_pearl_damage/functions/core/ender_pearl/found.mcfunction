#> pk_no_ender_pearl_damage:core/ender_pearl/found

# Add tags
tag @s add pk.no_en_pe_da
tag @s add pk.no_en_pe_da.owned

# Change Owner (changing to its own UUID)
data modify entity @s Owner set from entity @s UUID

# Prepare controller
execute summon marker run function pk_no_ender_pearl_damage:core/controller/initialize