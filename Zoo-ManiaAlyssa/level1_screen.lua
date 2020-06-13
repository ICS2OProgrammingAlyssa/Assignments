-----------------------------------------------------------------------------------------
--
-- level1_screen.lua
-- Created by: Alyssa
-- Date: June 6, 2020
-- Description: This is the level 1 screen of the game.
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level1_screen"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )

-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

-- The local variables for this scene
local bkg_image
local backgroundMusic

local userAnswer

local randomAnimal1
local randomAnimal2
local randomAnimal3 

local answer1
local answer2
local answer3

local determineAnimalPositions
local determineAnswerPositions

local chicken
local seeds

local cow 
local sheep
local wheat

local horse
local apple

local ocelot
local fish

local pig
local carrot

local fox
local berries

local wolf
local bone

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
-----------------------------------------------------------------------------------------

-- transitions to the you_win screen
local function YouWinTransition()
    composer.gotoScene( "you_win" )
end
        
-- transitions to the you_lose screen
local function YouLoseTransition()
    composer.gotoScene( "you_lose" )
end

local function DisplayQuestion1()
    local randomQuestion1

    -- pick a random number 
    randomQuestion1 = math.random(1,3)

    if (randomQuestion1 == 1) then
        randomAnimal1 = chicken
        answer1 = seeds

        chicken.isVisible = true
        seeds.isVisible = true

    elseif (randomQuestion1 == 2) then
        randomAnimal1 = cow
        answer1 = wheat

        cow.isVisible = true
        wheat.isVisible = true

    elseif (randomQuestion1 == 3) then
        randomAnimal1 = sheep
        answer1 = wheat

        sheep.isVisible = true
        wheat.isVisible = true

    end
end

local function DisplayQuestion2()
    local randomQuestion2

    -- pick a random number 
    randomQuestion2 = math.random(1,3)

    if (randomNumberQ2 == 1) then
        randomAnimal2 = horse
        answer2 = apple

        horse.isVisible = true
        apple.isVisible = true

    elseif (randomQuestion2 == 2) then
        randomAnimal2 = ocelot
        answer2 = fish

        ocelot.isVisible = true
        fish.isVisible = true

    elseif (randomQuestion1 == 3) then
        randomAnimal2 = pig
        answer2 = carrot

        pig.isVisible = true
        carrot.isVisible = true

    end
end

local function DisplayQuestion3()
    local randomQuestion3

    -- pick a random number 
    randomQuestion3 = math.random(1,2)

    if (randomNumberQ3 == 1) then
        randomAnimal3 = fox
        answer3 = berries

        fox.isVisible = true
        berries.isVisible = true

    elseif (randomQuestion3 == 2) then
        randomAnimal3 = wolf
        answer3 = bone

        wolf.isVisible = true
        bone.isVisible = true

    end
end
local function DeterminePositions()
    -- determine the animal positions 
    determineAnimalPosition = math.random(1,3)

    if (determineAnimalPosition == 1) then

        randomAnimal1.x = display.contentWidth/3
        randomAnimal1.y = display.contentHeight/3

        randomAnimal2.x = display.contentWidth/2
        randomAnimal2.y = display.contentHeight/3

        randomAnimal3.x = display.contentWidth*2/3
        randomAnimal3.y = display.contentHeight/3

    elseif (determineAnimalPosition == 2) then

        randomAnimal1.x = display.contentWidth*2/3
        randomAnimal1.y = display.contentHeight/3

        randomAnimal2.x = display.contentWidth/3
        randomAnimal2.y = display.contentHeight/3

        randomAnimal3.x = display.contentWidth/2
        randomAnimal3.y = display.contentHeight/3

    elseif (determineAnimalPosition == 3) then

        randomAnimal1.x = display.contentWidth/2
        randomAnimal1.y = display.contentHeight/3

        randomAnimal2.x = display.contentWidth*2/3
        randomAnimal2.y = display.contentHeight/3

        randomAnimal3.x = display.contentWidth/3
        randomAnimal3.y = display.contentHeight/3
    end
end


-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    -- Insert the background image
    bkg_image = display.newImageRect("Images/level1_screen.png", display.contentWidth, display.contentHeight)
    bkg_image.x = display.contentCenterX
    bkg_image.y = display.contentCenterY
    bkg_image.width = display.contentWidth
    bkg_image.height = display.contentHeight

    -- Send the background image to the back layer so all other objects can be on top
    bkg_image:toBack()
   

    -- create the chicken
        chicken = display.newImage("Images/chicken.png")
        --chicken.isVisible = false

    -- create the seeds
        seeds = display.newImage("Images/seeds.png")
        --seeds.isVisible = false

    -- create the cow
        cow = display.newImage("Images/cow.png")
        --cow.isVisible = false

    -- create the sheep
        sheep = display.newImage("Images/sheep.png")
        --sheep.isVisible = false

    -- create the wheat
        wheat = display.newImage("Images/wheat.png")
        --wheat.isVisible = false

    -- create the horse
        horse = display.newImage("Images/horse.png")
        --horse.isVisible = false

    -- create the apple
        apple = display.newImage("Images/apple.png")
        --apple.isVisible = false

    -- create the ocelot
        ocelot = display.newImage("Images/ocelot.png")
        --ocelot.isVisible = false

    -- create the fish
        fish = display.newImage("Images/fish.png")
        --fish.isVisible = false

    -- create the pig
        pig = display.newImage("Images/pig.png")
        --pig.isVisible = false

    -- create the carrot
        carrot = display.newImage("Images/carrot.png")
        --carrot.isVisible = false

    -- create the fox
        fox = display.newImage("Images/fox.png")
        --fox.isVisible = false

    -- create the berries
        berries = display.newImage("Images/berries.png")
        --berries.isVisible = false

    -- create the wolf
        wolf = display.newImage("Images/wolf.png")
        --wolf.isVisible = false

    -- create the bone
        bone = display.newImage("Images/bone.png")
        --bone.isVisible = false

    -- insert all of the creations in the scene group
    sceneGroup:insert( chicken )
    sceneGroup:insert( cow )
    sceneGroup:insert( sheep )
    sceneGroup:insert( horse )
    sceneGroup:insert( ocelot )
    sceneGroup:insert( pig )
    sceneGroup:insert( fox )
    sceneGroup:insert( wolf )
    sceneGroup:insert( seeds )
    sceneGroup:insert( wheat )
    sceneGroup:insert( apple )
    sceneGroup:insert( fish )
    sceneGroup:insert( carrot )
    sceneGroup:insert( bone )
    sceneGroup:insert( berries )
    
end
    

--function scene:create( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then

        -- Called when the scene is still off screen (but is about to come on screen).
        DeterminePositions()
        DisplayQuestion1()
        DisplayQuestion2()
        DisplayQuestion3()
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then

        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.

        

    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.

end -- function scene:destroy( event )

-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
