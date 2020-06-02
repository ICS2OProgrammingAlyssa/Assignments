-----------------------------------------------------------------------------------------
--
-- splash_screen.lua
-- Created by: Your Name
-- Date: Month Day, Year
-- Description: This is the splash screen of the game. It displays the 
-- company logo that...
-----------------------------------------------------------------------------------------

-- Use Composer Library
local composer = require( "composer" )

-- Name the Scene
sceneName = "splash_screen"

-----------------------------------------------------------------------------------------

-- Create Scene Object
local scene = composer.newScene( sceneName )

----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------
 
-- The local variables for this scene
local catLogo
local logoText
local background
local scrollXSpeed = 4
local scrollYSpeed = 0
local introMusic = audio.loadSound("Sounds/introMusic2.mp3")
local introMusicChannel

--------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------

-- The function that moves the cat across the screen
local function moveCatlogo()
    
    if (catLogo.x == display.contentWidth/2) then
        catLogo.x = display.contentWidth/2
    else
        catLogo.x = catLogo.x + scrollXSpeed
    end
end

-- the function that moves the text across the screen
local function moveLogoText()
    
    if (logoText.x == display.contentWidth/2) then
        logoText.x = display.contentWidth/2
    else
        logoText.x = logoText.x - scrollXSpeed
    end
end


-- The function that will go to the main menu 
local function gotoMainMenu()
    composer.gotoScene( "main_menu", {effect = "fade", time = 1000})
end

-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -- Insert the beetleship image
    catLogo = display.newImageRect("Images2/cat.png", 110, 160)

    -- set the initial x and y position of the cat
    catLogo.x = -124
    catLogo.y = 450
    
    -- create the text
    logoText = display.newImageRect("Images2/LogoText.png", 600, 210)

    -- set the initial x and y position of the text
    logoText.x = 1148
    logoText.y = 300

    -- create the background
    background = display.newImageRect("Images2/background.png", 1024, 768)
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    background:toBack()

    -- Insert objects into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( background )
    sceneGroup:insert( logoText )
    sceneGroup:insert( catLogo )


end -- function scene:create( event )

--------------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is still off screen (but is about to come on screen).
    if ( phase == "will" ) then
       
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- start the splash screen music
        introMusicChannel = audio.play(introMusic)

        -- Call the moveCatLogo function as soon as we enter the frame.
        Runtime:addEventListener("enterFrame", moveCatlogo)

        -- call the moveText function as soon as we enter the frame
        Runtime:addEventListener("enterFrame", moveLogoText)

        -- Go to the main menu screen after the given time.
        timer.performWithDelay ( 5000, gotoMainMenu)          
        
    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    -- Called when the scene is on screen (but is about to go off screen).
    -- Insert code here to "pause" the scene.
    -- Example: stop timers, stop animation, stop audio, etc.
    if ( phase == "will" ) then  

    -----------------------------------------------------------------------------------------

    -- Called immediately after scene goes off screen.
    elseif ( phase == "did" ) then
        
        -- stop the jungle sounds channel for this screen
        audio.stop(introMusicChannel)
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
end -- function scene:des
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
