local e=require("entity")

local pl=e:extend()

function pl:new(x,y)
    pl.super.new(self,x,y,12,12)
    self.spd=80
    self.vx=0
    self.vy=0
end

function pl:update(dt)
    local x,y=input:get("move")
    self.vx=x*self.spd*dt
    self.vy=y*self.spd*dt

    local ax,ay,col,len=world:move(self,self.x+self.vx,self.y+self.vy)
    self.x,self.y=ax,ay

    if self.x+self.w/2>cam.x+conf.gW or self.x+self.w/2<cam.x or self.y+self.h/2>cam.y+conf.gH or self.y+self.h/2<cam.y then
        cam:move(math.floor((self.x+self.w/2)/conf.gW)*conf.gW,math.floor((self.y+self.h/2)/conf.gH)*conf.gH)
    end
end

function pl:draw()
    pl.super.draw(self)
    lg.setColor(0,0,1)
    lg.rectangle("fill",self.x+1,self.y+1,self.w-2,self.h-2)
end

return pl