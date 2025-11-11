local conf = {}

conf.gW = 168
conf.gH = 144

conf.wW = conf.gW*5
conf.wH = conf.gH*5

conf.textureFilter = "nearest"
conf.fit = "pixel"
conf.render="layer"
conf.vsync=true

conf.input={
    controls={
        left = {'key:left', 'key:a', 'axis:leftx-', 'button:dpleft'},
        right = {'key:right', 'key:d', 'axis:leftx+', 'button:dpright'},
        up = {'key:up', 'key:w', 'axis:lefty-', 'button:dpup'},
        down = {'key:down', 'key:s', 'axis:lefty+', 'button:dpdown'},
    },
    pairs={
        move = {'left', 'right', 'up', 'down'}
    },
    joystick = love.joystick.getJoysticks()[1],
}

return conf