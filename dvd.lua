function _init()
    msg = "dvd"
    x = 40
    y = 64
    dx = 1
    dy = 1
end

function _update()
    x += dx
    y += dy
    
    -- check if the message hits the left or right edge
    if x < 0 or x > 128 - #msg * 4 then
        dx *= -1
    end
    
    -- check if the message hits the top or bottom edge
    if y < 0 or y > 127 - 5 then
        dy *= -1
    end
end

function _draw()
    cls(1)
    print(msg, x, y, 8 + dx + dy)
end
