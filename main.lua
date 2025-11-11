require("init")
lg=love.graphics

function love.load()
    world=bump.newWorld(24)

    map=sti("assets/tilemap/test.lua",{"bump"})
    map:bump_init(world)
    shove.createLayer("game")

    local e=require("player")
    test=e(10,10,12,12)
end

function love.update(dt)
    input:update()
    test:update(dt)
end 

function love.draw()
    shove.beginDraw()
        shove.beginLayer("game")
            map:draw()
            test:draw()
        shove.endLayer()
    shove.endDraw()
end