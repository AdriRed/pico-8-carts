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
gravity = -3
t = 0

p_limit = 6

left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15

clouds = {}

function _init()
    init_player(64, 64)
    add_cloud(64, 90)
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
     end
end

function init_player(x, y)
    player = {}
    player.x, player.y = x, y
    player.dx, player.dy = 0, 0
    player.update = function(self)
        
    end
    player.draw = function(self)
        
    end
    player.hitbox = {}
    player.w, player.h = 8, 8
    player.flip = {x = false, y = false}

end

function add_cloud(x, y)
    local cloud = {}
    cloud.x = x
    cloud.y = y
    cloud.dx = 0
    cloud.dy = 0
    cloud.ps = {}
    cloud.hitbox = {}
    cloud.hitbox.w = 22
    cloud.hitbox.h = 3
    cloud.hitbox.active = false
    cloud.update = function(self)
        if (t == next_p or #self.ps < p_limit) then
            t = 0
            next_p = rndb(min_time, max_time)
            if (self.dx ~= 0 or self.dy ~= 0) add_part(self.ps, self)
        end
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
        spr(spr_cloud_e, self.x-12, self.y-2)
        spr(spr_cloud_i, self.x-4, self.y-2)
        spr(spr_cloud_e, self.x+4, self.y-2, 1.0, 1.0, true, false)
    end
    add(clouds, cloud)
end

function boolsign(bool)
    return bool and 1 or -1
end

function sign(v)
    return v>0 and 1 or v<0 and -1 or 0
end

function add_part(psys, father)
    printh("Added particle")
    local p = {}
    p.x = father.x - father.dx
    p.y = father.y - father.dy / 2
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
00000000077777777777777700000000000000000000000000000000222222220000000000000000000000000000000000000000000000000000000000000000
000000000777677676777677007770000000000000000000000000002eeeeee20000000000000000000000000000000000000000000000000000000000000000
007007000077667666777667076776000077700000077000000000002ee4ee420000000000000000000000000000000000000000000000000000000000000000
000770000067776677777766777667600677770000677600000770002eeeeee20000000000000000000000000000000000000000000000000000000000000000
000770000006777777777777067777600077660000066000000000002eeeeee20000000000000000000000000000000000000000000000000000000000000000
007007000006677777777677006666000066000000000000000000002eeeeee20000000000000000000000000000000000000000000000000000000000000000
000000000000666666666067000000000000000000000000000000002eeeeee20000000000000000000000000000000000000000000000000000000000000000
00000000000000660660006600000000000000000000000000000000222222220000000000000000000000000000000000000000000000000000000000000000
