local entity=class:extend()

function entity:new(x,y,w,h)
    self.x=x
    self.y=y
    self.w=w or 12
    self.h=h or 12

    world:add(self,x,y,w,h)
end

function entity:update(dt)

end

function entity:draw()
    lg.setColor(1,0,1,1)
    lg.rectangle("fill",self.x,self.y,self.w,self.h)
end

return entity