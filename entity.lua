local entity=class:extend()

function entity:new(x,y)
    self.x=x
    self.y=y
    self.w=12
    self.h=12
end

function entity:draw()
    lg.rectangle("fill",self.x,self.y,self.w,self.h)
end

return entity