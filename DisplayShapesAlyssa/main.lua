-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- make variables
local pentagon
local widthPentagon = display.contentWidth/4
local heightPentagon = display.contentHeight/3
local verticesPentagon = {128,144, 256,48, 384,144, 320,228, 192,228}
local textPentagon = display.newText("Pentagon", display.contentWidth/4, 375, Arial, 30)
local hexagon
local widthHexagon = display.contentWidth/4
local heightHexagon = 576
local verticesHexagon = {128,528, 192,432, 320,432, 384,528, 320,615, 192,615}
local textHexagon = display.newText("Hexagon", display.contentWidth/4, 720, Arial, 30)
local octagon
local widthOctagon = display.contentWidth * 3/4
local heightOctogon = display.contentHeight/3
local verticesOctogon = {704,100, 832,100, 896,144, 896,240, 832,290, 704,290, 640,240, 640,144}
local textOctogon = display.newText("Octogon", display.contentWidth * 3/4, 375, Arial, 30)
local triangle
local widthTriangle = display.contentWidth * 3/4
local heightTriangle = 576
local verticesTriangle = {640,672, 768,432, 896,672}
local textTriangle = display.newText("Triangle", display.contentWidth * 3/4, 720, Arial, 30)

-- set the background color
display.setDefault("background", 200/255, 200/255, 200/255)

-- make the shapes
pentagon = display.newPolygon( widthPentagon, heightPentagon, verticesPentagon )
hexagon = display.newPolygon( widthHexagon, heightHexagon, verticesHexagon )
octagon = display.newPolygon( widthOctagon, heightOctogon, verticesOctogon )
triangle = display.newPolygon( widthTriangle, heightTriangle, verticesTriangle )

-- set the color of the shapes
pentagon.fill = {
	type = "gradient",
	color1 = { 0/255, 255/255, 0/255, 0.5 },
	color2 = { 0/255, 255/255, 230/255, 0.5 },
	direction = "left"
}
hexagon.fill = {
	type = "gradient",
	color1 = { 255/255, 0/255, 255/255 },
	color2 = { 154/255, 0/255, 255/255 },
	direction = "diaganol"
}
octagon.fill = {
	type = "gradient",
	color1 = { 255/255, 0/255, 0/255 },
	color2 = { 255/255, 171/255, 0/255 },
	color3 = { 255/255, 230/255, 0/255 },
	direction = "down"
}
triangle.fill = {
	type = "gradient", 
	color1 = { 0/255, 0/255, 0/255},
	color2 = { 255/255, 255/255, 255/255},
	direction = "left"
}

-- add borders to all of the shapes
pentagon.strokeWidth = 5
hexagon.strokeWidth = 7
octagon.strokeWidth = 10
triangle.strokeWidth = 12

-- set the color of all the borders 
pentagon:setStrokeColor(0.75, 0.75, 0.75)
hexagon:setStrokeColor(0, 0, 0)
octagon:setStrokeColor(0.3, 0.3, 0.3)