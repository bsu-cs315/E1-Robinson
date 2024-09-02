# CS315 Exercise 1.1

An exercise from CS315 Fall 2024 that demonstrates 2D physics-based gameplay where the player is able to control the angle and power of launching a ball. Feedback is given to the player when they collide with an obstacle.

## How to play

Up Arrow/W: Increase launch power

Down Arrow/S: Decrease launch power

Left Arrow/A: Angle left

Right Arrow/D: Angle right

Space: Launch

R: Reset

## Third-Party Assets

Ground and wall sprites from [Rocky Grass Tileset](https://tilation.itch.io/multi-size-rocky-grass-tileset) and [Mythical Dungeon Tileset](https://tilation.itch.io/multi-size-mythical-dungeon-tileset) by [Tilation](https://tilation.itch.io/), both licensed under CC 3.0.

Ball sprite from [Rolling Ball Assets](https://kenney.nl/assets/rolling-ball-assets), licensed under CC0.

## Report

Both essential and auxiliary goals are met with this project. 

The player is able to control the launch angle using A/D and Left/Right arrow keys. Similarly, they can control the power of the launch using W/S and the Up/Down arrow keys. All of this can be seen in [the Ball script](project/cs315exercise1_1/ball.gd)

Licenses are properly attributed in this README, with direct links to the assets given and both licenses tracked.

The project is properly stored in a repository on GitHub with no unnecessary files.

*TODO: GitHub Release*

Instructions are given on the README on how to play the game as well as restart or exit it.

Launch angle can be modified and is clamped between 0 and 180 degrees.

The Ball player character will show text saying "Ow!" when it collides with the brick wall.

The launch power can be modified and is clamped between 0 and 1000.