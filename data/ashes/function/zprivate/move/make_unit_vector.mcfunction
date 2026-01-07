# // Get Components of Unit Vector:
# data modify storage ashes:storage ASHES.TEMP.VECTOR.UNIT_VEC set from entity @s Pos
scoreboard players reset * ashes.MATH
execute store result score .x ashes.MATH run data get entity @s Pos[0] 1000
execute store result score .y ashes.MATH run data get entity @s Pos[1] 1000
execute store result score .z ashes.MATH run data get entity @s Pos[2] 1000
kill @s