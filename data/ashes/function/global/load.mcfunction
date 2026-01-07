# // Datapack Utility Scoreboards
scoreboard objectives add ashes.Values dummy
scoreboard objectives add ashes.Constants dummy
scoreboard players set .1000 ashes.Constants 1000

scoreboard objectives add ashes.MATH dummy

# // ID Scoreboard
scoreboard objectives add ashes.ID dummy
scoreboard players add .global ashes.ID 1

# // Entity Specific Scoreboards
scoreboard objectives add ashes.particle.Timer dummy
scoreboard objectives add ashes.particle.Duration dummy
scoreboard objectives add ashes.particle.Pos.X dummy
scoreboard objectives add ashes.particle.Pos.Y dummy
scoreboard objectives add ashes.particle.Pos.Z dummy
scoreboard objectives add ashes.particle.Velocity dummy


# // Scheduled Looping Files
function ashes:global/loop_2t
