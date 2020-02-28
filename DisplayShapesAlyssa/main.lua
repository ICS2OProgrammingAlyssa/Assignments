-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- make variables
local pentagon
local widthPentagon = display.contentWidth * 0.25
local heightPentagon = display.contentHeight * 0.25
local verticesPentagon = {128,144, 256,48, 384,144, 320,228, 192,228}
local hexagon
local widthHexagon = 
local heightHexagon = 
local verticesHexagon = 
local octagon
local widthOctagon = 
local heightOctogon = 
local verticesOctogon = 
local triangle
local widthTriangle = 
local heightTriangle = 
local verticesTriangle = 

-- set the background color
display.setDefault("background", 200/255, 200/255, 200/255)

-- make a pentagon
pentagon = display.newPolygon( WidthPentagon, HeightPentagon, vertices )

-- set the color of the pentagon
pentagon.fill = {
	type = "gradient",
	color1 = { 0/255, 255/255, 230/255, 0.5 },
	color2 = { 0/255, 255/255, 51/255, 0.5 },
	directon = "left"
}