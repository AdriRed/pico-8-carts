pico-8 cartridge // http://www.pico-8.com
version 18
__lua__

-- entrypoint --
function _init()
    ps = {}
    g = 0.1
    max_vel = 2
    min_time = 2
    max_time = 5
    min_life = 90
    max_life = 120
    t = 0
    cols = {1, 1, 1, 13, 13, 12, 12, 7}
    burst = 50

    next_p=rndb(min_time, max_time)
end

function rndb(low, high)
    return flr(rnd(high-low+1)+low)
end

function _update()
    t += 1
    if (t == next_p) then
        add_p(64, 64)
        next_p=rndb(min_time,max_time)
        t= 0
    end
    --burst
    if (btnp(🅾️)) for i = 1, burst do add_p(64, 64) end
    foreach(ps, update_p)
end

function _draw()
    cls()
    foreach(ps, draw_p)
end

function add_p(x, y)
    local p = {}
    p.x,p.y=x,y
    p.dx=rnd(max_vel) - max_vel/2
    p.dy=rnd(max_vel)*-1
    p.life_start=rndb(min_life,max_life)
    p.life=p.life_start
    add(ps,p)
end

function update_p(p)
    if (p.life <= 0) then
        del(ps,p)
    else
        p.dy+=g
        if ((p.y+p.dy)>127) p.dy *= -0.8
        p.x,p.y += p.dx,p.dy
        p.life -=1
    end
end

function draw_p(p)
    local p_col=flr(p.life/p.life_start * #cols+1)
    pset(p.x,p.y,cols[p_col])
end



__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
