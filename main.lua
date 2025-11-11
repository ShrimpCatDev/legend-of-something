require("init")

function love.load()
    map=sti("assets/tilemap/test.lua")
end

function love.update(dt)
    input:update()
end 

function love.draw()
    shove.beginDraw()
        map:draw()
    shove.endDraw()
end