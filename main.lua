require("init")
lg=love.graphics

function love.load()
    map=sti("assets/tilemap/test.lua")
    shove.createLayer("game")

    local e=require("player")
    test=e(10,10)
end

function love.update(dt)
    input:update()
end 

function love.draw()
    shove.beginDraw()
        shove.beginLayer("game")
            map:draw()
            test:draw()
        shove.endLayer()
    shove.endDraw()
end