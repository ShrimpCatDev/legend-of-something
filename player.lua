local e=require("entity")

local pl=e:extend()

function pl:update(dt)
    self.x=self.x+dt*12
end

function pl:draw()
    pl.super.draw(self)
    lg.setColor(0,0,1)
    lg.rectangle("fill",self.x+1,self.y+1,self.w-2,self.h-2)
end

return pl