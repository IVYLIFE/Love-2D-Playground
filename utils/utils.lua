--[[
==============================================

    * utils.lua
    * A comprehensive utility + documentation layer for LÖVE (Love2D) 11.x
    * Provides documented wrappers around common LÖVE modules:

    love.audio,      || AUDIO      || This module provides audio playback and control.
    love.event,      || EVENTS     || This module handles events like keyboard and mouse input.
    love.filesystem, || FILESYSTEM || This module provides access to the file system.
    love.graphics,   || GRAPHICS   || This module handles 2D graphics rendering.
    love.keyboard,   || KEYBOARD   || This module manages keyboard input.
    love.math,       || MATHS      || This module provides mathematical functions and constants.
    love.mouse,      || MOUSE      || This module manages mouse input.
    love.timer,      || TIMER      || This module provides timing functions.
    love.window,     || WINDOWS    || This module manages the application window.

    * LÖVE 11.x uses COLOR RANGE [0..1] for r,g,b,a.
    * This file exposes a global table: UTILS = {}
    * Each function includes MULTILINE COMMENTS explaining:
        - What the function does
        - Arguments (types, defaults)
        - Return values (if any)
        - Usage examples
    * The goal is to have self-contained, discoverable helpers + documentation.


==============================================

To Use them in a LÖVE2D project,  

1.  If utils folder is not in the project root : 
    Update package.path to include utility scripts
    * package.path = '{relative_path_to_utils}/?.lua;' .. package.path

2.  Require the utils module in your main.lua or any other file where you need it:
    local UTILS = require("utils")

3.  Example usage: 
    UTILS.GRAPHICS.setColor(1, 0, 0) -- Set color to red
    UTILS.WINDOWS.setTitle("My Game")

==============================================
---]]





-- ==============================================

local UTILS = {
    AUDIO      =  require("audio"),
    EVENTS     =  require("events"),
    FILESYSTEM =  require("fileSystem"),
    GRAPHICS   =  require("graphics"),
    KEYBOARD   =  require("keyboard"),
    MATHS      =  require("maths"),
    MOUSE      =  require("mouse"),
    QOL        =  require("qol"),
    TIMER      =  require("timer"),
    WINDOWS    =  require("windows"),
}

return UTILS

-- ===========================================
