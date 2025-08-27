local createButton = function(props)
    local btn = {}
    btn.width = props.width or 150
    btn.height = props.height or 50
    btn.id = props.id or "button1"
    btn.label = props.label or "Button"
    btn.mode = props.mode or "fill"
    btn.color = props.color or { 0.2, 0.6, 1, 1 }
    btn.textColor = props.textColor or { 1, 1, 1, 1 }

    local screenW, screenH = love.graphics.getDimensions()
    local pos = (props.position or ""):lower()

    local positions = {
        ["top left"] = function() return 0, 0 end,
        ["top center"] = function() return (screenW - btn.width) / 2, 0 end,
        ["top right"] = function() return screenW - btn.width, 0 end,
        ["left center"] = function() return 0, (screenH - btn.height) / 2 end,
        ["center"] = function() return (screenW - btn.width) / 2, (screenH - btn.height) / 2 end,
        ["right center"] = function() return screenW - btn.width, (screenH - btn.height) / 2 end,
        ["bottom left"] = function() return 0, screenH - btn.height end,
        ["bottom center"] = function() return (screenW - btn.width) / 2, screenH - btn.height end,
        ["bottom right"] = function() return screenW - btn.width, screenH - btn.height end,
    }

    if positions[pos] then
        btn.x, btn.y = positions[pos]()
    elseif props.x and props.y then
        btn.x, btn.y = props.x, props.y
    else
        btn.x, btn.y = (screenW - btn.width) / 2, (screenH - btn.height) / 2
    end

    function btn:draw()
        love.graphics.setColor(self.color)
        love.graphics.rectangle(self.mode, self.x, self.y, self.width, self.height)
        love.graphics.setColor(self.textColor)
        love.graphics.printf(self.label, self.x, self.y + self.height, self.width, "center")
        love.graphics.setColor(1, 1, 1, 1)
    end

    return btn
end


local myButton = createButton({ label = "Play" })
local btn1 = createButton({ position = "top left" })
local btn2 = createButton({ position = "bottom center", label = "Bottom" })
local btn3 = createButton({ x = 50, y = 50, label = "Custom" })
local btn4 = createButton({ label = "Default Center" })

return createButton
