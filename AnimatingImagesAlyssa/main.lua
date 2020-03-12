-- Title: Animating Images
-- Name: Alyssa
-- Course: ICS2O
-- This program animates images and displays colored text

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables 
scrollSpeedPinkGirl = 1
scrollSpeedRedBoy = 3
scrollSpeedYellowGirl = 2

---------------------------------------------------------------------------------------------
-- OBJECT CREATION
---------------------------------------------------------------------------------------------

-- display background image with width and height
local backgroundImage = display.newImageRect("Images/minecraft.jpg", 2024, 1536)

-- display characters with width and height and set its original position
local yellowGirl = display.newImageRect("Images/creepyGirl.png", 200, 250)
yellowGirl.x = 200
yellowGirl.y = 469
-- make yellow girl transparent
yellowGirl.alpha = 0

local pinkGirl = display.newImageRect("Images/pinkGirl.png", 200, 250)
pinkGirl.x = 600
pinkGirl.y = 450

local redBoy = display.newImageRect("Images/creepyBoy.png", 200, 250)
redBoy.x = 350
redBoy.y = 150

-- create the text and set its position
local textObject = display.newText( "HAPPY PROGRAMMING!!!", 0, 0, nil, 30)
textObject:setTextColor(1, 1, 0)
textObject.x = display.contentWidth * 3/4
textObject.y = 125

------------------------------------------------------------------------------------------
-- FUNCTIONS
------------------------------------------------------------------------------------------

-- Function: MoveYellowGirl
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function makes the yellow girl move up and down and makes her fade in
local function MoveYellowGirl( event )
	-- add the scroll speed to the y-value of yellow girl
	yellowGirl.y = yellowGirl.y + scrollSpeedYellowGirl
	-- change the transparency of yellow girl every time it moves so that it fades in
	yellowGirl.alpha = yellowGirl.alpha + 0.02
end

-- Function: MovePinkGirl
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function makes it so that pink girl moves right to left
local function MovePinkGirl( event )
	-- add the scroll speed to the x-value of pink girl
	pinkGirl.x = pinkGirl.x + scrollSpeedPinkGirl
end

-- Function: MoveRedBoy
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function makes red boy move diagonally
local function MoveRedBoy( event )
	-- add the scroll speed to the x-value and subtract the scroll speed from the y-value 
	-- of red boy
	redBoy.x = redBoy.x + scrollSpeedRedBoy
	redBoy.y = redBoy.y + scrollSpeedRedBoy
end

------------------------------------------------------------------------------------------
-- EVENT LISTENERS
------------------------------------------------------------------------------------------

Runtime:addEventListener("enterFrame", MoveYellowGirl)
Runtime:addEventListener("enterFrame", MovePinkGirl)
Runtime:addEventListener("enterFrame", MoveRedBoy)
