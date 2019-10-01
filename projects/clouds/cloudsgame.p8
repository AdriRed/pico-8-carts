pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--main
spr_cloud_e = 1
spr_cloud_i = 2
speed_ptick = 0.3
max_speed = 3
low_limit, up_limit = 0, 128
friction = 0.07
spr_cloud_p = 3
sprs_cloud_p = 3
max_time = 6
min_time = 2
max_life = 30
min_life = 20
t = 0

p_limit = 6

left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15

clouds = {}

function _init()
    add_cloud(64, 64)
    next_p = rndb(min_time, max_time)
end

function _draw()
    cls()
    for c in all(clouds) do
        for p in all(c.ps) do
            p:draw()
        end
        c:draw()
     end
end

function _update()
    t += 1
    for c in all(clouds) do
        for p in all(c.ps) do
            p:update()
        end
        c:update()
        if (t == next_p or #c.ps < p_limit) then
            t = 0
            next_p = rndb(min_time, max_time)
            if (c.dx ~= 0 and c.dy ~= 0) add_part(c.ps, c)
        end
     end
end

function add_cloud(x, y)
    local cloud = {}
    cloud.x = x
    cloud.y = y
    cloud.dx = 0
    cloud.dy = 0
    cloud.ps = {}
    cloud.update = function(self)
        self.dx -= self.dx * friction
        self.dy -= self.dy * friction
        change_dir(self)
        if (btnp(fire1)) add_part(self.ps, self)
        if (abs(self.dx) >= max_speed) self.dx = sign(self.dx) * max_speed
        if (abs(self.dy) >= max_speed) self.dy = sign(self.dy) * max_speed
        self.x += self.dx
        self.y += self.dy
        if (self.x >= up_limit) self.x = up_limit
        if (self.y >= up_limit) self.y = up_limit
        if (self.x <= low_limit) self.x = low_limit
        if (self.y <= low_limit) self.y = low_limit
    end
    cloud.draw = function(self)
        spr(spr_cloud_e, self.x-12, self.y-4)
        spr(spr_cloud_i, self.x-4, self.y-4)
        spr(spr_cloud_e, self.x+4, self.y-4, 1.0, 1.0, true, false)
    end
    add(clouds, cloud)
end

function sign(v)
    return v>0 and 1 or v<0 and -1 or 0
end

function add_part(psys, father)
    printh("Added particle")
    local p = {}
    p.x = father.x
    p.y = father.y
    p.dx = father.dx
    p.dy = father.dy
    p.maxlife = rndb(min_life, max_life)
    p.life = p.maxlife
    p.update = function(self)
        printh("UPDATE")
        if (self.life <= 0) then 
            del(psys, self) 
            return
        end
        self.life -= 1
        self.x += self.dx
        self.y += self.dy
        self.dx -= friction * sign(self.dx)
        self.dy -= friction * sign(self.dy)
    end
    p.draw = function(self)
        printh("DRAW")
        sprite = spr_cloud_p + ((self.maxlife - self.life) / self.maxlife) * sprs_cloud_p
        spr(ceil(sprite), self.x-4, self.y-4)
    end
    add(psys, p)
end

function change_dir(reg)
    if (btn(up)) reg.dy -= speed_ptick
    if (btn(down)) reg.dy += speed_ptick
    if (btn(left)) reg.dx -= speed_ptick
    if (btn(right)) reg.dx += speed_ptick
end

function rndb(low, high)
    return flr(rnd(high-low+1)+low)
end
__gfx__
00000000077777777777777700000000000000000000000000000000aaaaaaaa0000000000000000000000000000000000000000000000000000000000000000
00000000077767767677767700777000000000000000000000000000aaaaaaaa0aaaaaa000000000000000000000000000000000000000000000000000000000
00700700007766766677766707677600007770000007700000000000aaaaaaaa0aaaaaa000aaaa00000000000000000000000000000000000000000000000000
00077000006777667777776677766760067777000067760000077000aaaaaaaa0aaaaaa000aaaa00000aa0000000000000000000000000000000000000000000
00077000000677777777777706777760007766000006600000000000aaaaaaaa0aaaaaa000aaaa00000aa0000000000000000000000000000000000000000000
00700700000667777777767700666600006600000000000000000000aaaaaaaa0aaaaaa000aaaa00000000000000000000000000000000000000000000000000
00000000000066666666606700000000000000000000000000000000aaaaaaaa0aaaaaa000000000000000000000000000000000000000000000000000000000
00000000000000660660006600000000000000000000000000000000aaaaaaaa0000000000000000000000000000000000000000000000000000000000000000
