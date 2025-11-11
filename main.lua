require("init")
lg=love.graphics

function love.load()
    timer=require("lib.hump.timer")

    cam=require("camera")
    cam:init(0,0)


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
    timer.update(dt)
    cam:update(dt)
end 

function love.draw()
    shove.beginDraw()
        shove.beginLayer("game")
            lg.push()
            lg.translate(-cam.x,-cam.y)
                map:draw(-cam.x,-cam.y)
                test:draw()
            lg.translate(0,0)
            lg.pop()
        shove.endLayer()
    shove.endDraw()
end