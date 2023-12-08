-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local background = display.newImageRect("sky.png",display.contentWidth,display.contentHeight)
background.x= display.contentCenterX
background.y= display.contentCenterY


local floor = display.newImageRect("beam-long.png",display.contentWidth,50)
    floor.x = display.contentCenterX
    floor.y= display.contentHeight-25

local balloon = display.newImage("balloon.png", display.contentCenterX, display.contentCenterY)

local physics = require("physics")
 physics.start()

physics.addBody(balloon,{bounce= 1})
physics.addBody(floor,"static")

local function push()
    balloon:applyLinearImpulse(0,-4,balloon.x,balloon,y)
end

balloon:addEventListener("tap",push)