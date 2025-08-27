-- Add Utils in Package Path
package.path = "../?.lua;../?/init.lua;" .. package.path


local LOVE = require "love"
local UTILS = require "utils"
local lick = require "utils.lick"

lick.reset = true

-- Common Variables
local CANVASWIDTH, CANVASHEIGHT = love.graphics.getDimensions()
local button = {
    text = "button",
    width = 150,
    height = 50
}

print(button.text)

LOVE.load = function()
    print("Chase Game Loaded")
    UTILS.GRAPHICS.setBackgroundColor(131 / 255, 85 / 255, 237 / 255, 0)
end


LOVE.update = function(dt)
end



LOVE.draw = function()
    LOVE.graphics.setColor(0.2, 0.7, 0.9)

    LOVE.graphics.rectangle(
        "fill",
        (CANVASWIDTH - button.width) / 2,
        (CANVASHEIGHT - button.height - 120) / 2,
        150, 50
    )

    LOVE.graphics.setColor(0.5, 1, 0.7)
    LOVE.graphics.rectangle(
        "fill",
        (CANVASWIDTH - button.width) / 2,
        (CANVASHEIGHT - button.height) / 2,
        150, 50
    )

    LOVE.graphics.setColor(0.2, 1, 0.7)
    LOVE.graphics.rectangle(
        "fill",
        (CANVASWIDTH - button.width) / 2,
        (CANVASHEIGHT - button.height + 120) / 2,
        150, 50
    )
end
