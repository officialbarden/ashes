# What code does:
# // Get Unit Vector, Multiply it with Velocity Vector, Add the values to the Pos, set the Pos.

# OnGround Toggling for Accurate Entity Rotation:
execute as @s store success entity @s OnGround byte 1 run data modify entity @s OnGround set value true

# // Create Unit Vector
execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^1 summon marker run function ashes:zprivate/move/make_unit_vector
# // Multiply with Velocity Value:
scoreboard players operation .x ashes.MATH *= @s ashes.particle.Velocity
scoreboard players operation .x ashes.MATH /= .1000 ashes.Constants
scoreboard players operation .y ashes.MATH *= @s ashes.particle.Velocity
scoreboard players operation .y ashes.MATH /= .1000 ashes.Constants
scoreboard players operation .z ashes.MATH *= @s ashes.particle.Velocity
scoreboard players operation .z ashes.MATH /= .1000 ashes.Constants
# // Add Velocity to Pos
execute store result score .PosX ashes.MATH run data get entity @s Pos[0] 1000
execute store result score .PosY ashes.MATH run data get entity @s Pos[1] 1000
execute store result score .PosZ ashes.MATH run data get entity @s Pos[2] 1000
scoreboard players operation .PosX ashes.MATH += .x ashes.MATH
scoreboard players operation .PosY ashes.MATH += .y ashes.MATH
scoreboard players operation .PosZ ashes.MATH += .z ashes.MATH
# // Store Velocity
execute store result entity @s Pos[0] double 0.001 run scoreboard players get .PosX ashes.MATH
execute store result entity @s Pos[1] double 0.001 run scoreboard players get .PosY ashes.MATH
execute store result entity @s Pos[2] double 0.001 run scoreboard players get .PosZ ashes.MATH
# // Reset Scoreboard
scoreboard players reset * ashes.MATH


