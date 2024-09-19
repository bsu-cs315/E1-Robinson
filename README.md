# CS315 Exercise 1.3

An exercise from CS315 Fall 2024 that demonstrates 2D physics-based gameplay where the player is able to control the angle and power of launching a ball via a launcher. Feedback is given to the player when they collide with an obstacle. The player has limited ammo and can only shoot one ball at a time. The game returns to the title screen after the player runs out of ammo.

## How to play

Click [here](https://bsu-cs315.github.io/E1-Robinson/) to play the demo. Press the "Play" button to begin. You will be returned to the title screen after running out of ammo.

Up Arrow/W: Increase launch power

Down Arrow/S: Decrease launch power

Left Arrow/A: Angle left

Right Arrow/D: Angle right

Space: Launch

## Third-Party Assets

Ground, wall, and background sprites from [Voxel Pack](https://kenney.nl/assets/voxel-pack), licensed under [CC0](https://creativecommons.org/publicdomain/zero/1.0/).

Ball sprite from [Rolling Ball Assets](https://kenney.nl/assets/rolling-ball-assets), licensed under [CC0](https://creativecommons.org/publicdomain/zero/1.0/).

Gun sprite from [Guns](https://snoopethduckduck.itch.io/guns) by [SnoopethDuckDuck](https://snoopethduckduck.itch.io/), licensed under [CC0](https://creativecommons.org/publicdomain/zero/1.0/).

Launch sound from [PVC Rocket Cannon_2.mp3](https://freesound.org/people/bowlingballout/sounds/151714/) by [bowlingballout](https://freesound.org/people/bowlingballout/), licensed under [CC0](https://creativecommons.org/publicdomain/zero/1.0/).

## Report

All essential goals are met for Increment 3

Game starts with a title screen, transitions to game upon pressing play, and returns to title screen after the player runs out of ammo.

The title screen includes a fly-in animation for the game logo using AnimationPlayer.

The project complies with Godot's Style Guide.

All existing and new assets are properly licensed with links to the assets, the creators, and the licenses themselves.

## Revision Report

Style guide error:

- I made the mistake of grouping assets by type instead of bundling them into directories with their respective scenes and scripts per the style guide. This was due to an oversight on my part when reading through it. 

- I corrected this by making folders for each unit and now know how to organize those things properly for the future in compliance with the style guide.


Signal error:

- There was a signal that passed an argument that wasn't used. While it could've been ignored with an "_", it doesn't make for the best clean code practices.

- To fix this, I refactored the argument out of the signal. This has told me that I should be more diligent with how my code is working to prevent any unneeded messiness in the future.