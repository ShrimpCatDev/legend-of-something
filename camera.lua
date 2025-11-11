local cam={}

function cam:init(x,y)
    cam.timer=timer.new()
    self.x=x
    self.y=y
    self.tx=x
    self.ty=y
end

function cam:update(dt)
    self.timer:update(dt)
end

function cam:move(x,y)
    self.timer:clear()
    self.timer:tween(0.5,self,{x=x,y=y},"in-linear")
end

return cam