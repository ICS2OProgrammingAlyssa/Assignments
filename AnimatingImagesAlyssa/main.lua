-- Title: Animating Images
-- Name: Alyssa
-- Course: ICS2O
-- This program animates images and displays colored text

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables 

-- display background image with width and height
local backgroundImage = display.newImageRect("Images/minecraft.jpg", 2024, 1536)

-- display characters with width and height and set its original position
local creepyGirl = display.newImageRect("Images/creepyGirl.png", 200, 250)
creepyGirl.x = 200
creepyGirl.y = 469

local pinkGirl = display.newImageRect("Images/pinkGirl.png", 200, 250)
pinkGirl.x = 600
pinkGirl.y = 450

local creepyBoy = display.newImageRect("Images/creepyBoy.png", 200, 250)
creepyBoy.x = 350
creepyBoy.y = 150

-- create the text and set its position
local textObject = display.newText( "HAPPY PROGRAMMING", 0, 0, nil, 60)
textObject:setTextColor(1, 1, 0)
textObject.x = contentWidth * 3/4
textObject.y = 100