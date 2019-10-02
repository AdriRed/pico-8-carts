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
friction_p = 0.35
spr_cl_p0, spr_cl_p1, spr_cl_p2, spr_cl_p3 = 3, 4, 5, 6
max_time = 6
min_time = 2
max_life = 30
min_life = 20
gravity = -3
t = 0
total_objects = 0
steps = 4
spr_player = 7
p_max = 1
p_min = 1

left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15

objects = {}

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
    local player = {}
    player.id = total_objects
    total_objects += 1
    player.x, player.y = x, y
    player.dx, player.dy = 0, 0
    player.hitbox = {}
    player.hitbox.w, player.hitbox.h, player.hitbox.x, player.hitbox.y = 8, 8, player.x, player.yellow
    player.hitbox.active = true
    player.has_hitbox = true
    player.flip = {x = false, y = false}
    player.update = function(self)
        change_dir(self)
        local tempx = self.x+self.dx
        local tempy = self.y+self.dy
        for obj in all(objects) do
            if (obj.has_hitbox) then
                for newx=self.x+self.dx,self.x,-self.dx/steps do
                    if (not box_hit(self.hitbox, self.hitbox)) then
                        tempx = abs(newx-self.x) > abs(tempx-self.x) and abs(newx-self.x) or abs(tempx-self.x)
                    end
                end
                for newy=self.y+self.dy,self.y,-self.dy/steps do
                    if (not box_hit(self.hitbox, self.hitbox)) then
                        tempx = abs(newy-self.y) > abs(tempx-self.y) and abs(newy-self.y) or abs(tempx-self.y)
                    end
                end
            end
        end
        self.x = tempx
        self.y = tempy
    end
    player.draw = function(self)
        spr(spr_player, self.hitbox.x-4, self.hitbox-4)
    end
    add(objects, player)
end

function add_cloud(x, y)
    local cloud = {}
    cloud.id = total_objects
    total_objects += 1
    cloud.x = x
    cloud.y = y
    cloud.dx = 0
    cloud.dy = 0
    cloud.ps = {}
    cloud.p_limit = function(self)
        return map(magnitude(self.dx, self.dy), 0, magnitude(max_speed, max_speed), p_min, p_max)
    end
    cloud.hitbox = {}
    cloud.hitbox.x = cloud.x
    cloud.hitbox.y = cloud.y
    cloud.hitbox.w = 22
    cloud.hitbox.h = 3
    cloud.hitbox.active = true
    cloud.has_hitbox = true
    cloud.update = function(self)
        if (t >= next_p and #self.ps < self:p_limit()) then
            t = 0
            next_p = rndb(min_time, max_time)
            if (self.dx ~= 0 or self.dy ~= 0) add_part(self.ps, self)
        end
        self.dx -= self.dx * friction
        self.dy -= self.dy * friction
        --change_dir(self)
        if (abs(self.dx) < 0.008) self.dx = 0
        if (abs(self.dy) < 0.008) self.dy = 0
        if (btnp(fire1)) add_part(self.ps, self)
        if (abs(self.dx) >= max_speed) self.dx = sign(self.dx) * max_speed
        if (abs(self.dy) >= max_speed) self.dy = sign(self.dy) * max_speed
        self.x += self.dx
        self.y += self.dy
        --printh(self.dx..", "..self.dy)
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
    add(objects, cloud)
end

function map(value, rangemin, rangemax, mapmin, mapmax)
    local totalr = rangemax - rangemin
    local valr = (value - rangemin) / totalr
    return valr * (mapmax-mapmin) + mapmin
end

function check_hitboxes(target)
    local hitboxes = {}
    for o in all(objects) do
        if (target.id ~= o.id) then
            --if (check_hitbox(target.hitbox, o.hitbox)) add(hitboxes, o.hitbox)
        end
    end
    return hitboxes
end

function box_hit(box1, box2)
    local xd=abs((box1.x+(box1.w/2))-(box2.x+(box2.w/2)))
    local xs=box1.w*0.5+box2.w*0.5
    local yd=abs((box1.y+(box1.h/2))-(box2.y+(box2.h/2)))
    local ys=box1.h/2+box2.h/2
    return (xd<xs and yd<ys and box1.active and box2.active)    
  end

function boolsign(bool)
    return bool and 1 or -1
end

function sign(v)
    return v>0 and 1 or v<0 and -1 or 0
end

function magnitude(x, y)
    return sqrt(x*x +y*y)
end

function add_part(psys, father)
    --printh("Added particle")
    local p = {}
    p.x = father.x - father.dx*2.5
    p.y = father.y + 2 
    p.dx = father.dx
    p.dy = father.dy
    p.maxlife = rndb(min_life, max_life)
    p.life = p.maxlife
    
    p.update = function(self)
        --printh("UPDATE")
        --printh("VELOCITY "..p.dx..", "..p.dy)
        if (self.life <= 0) then 
            del(psys, self) 
            return
        end
        if (self.dx < 0.01) self.dx = 0
        if (self.dy < 0.01) self.dy = 0
        self.life -= 1
        self.x += self.dx
        self.y += self.dy
        self.dx -= friction_p * sign(self.dx)
        self.dy -= friction_p * sign(self.dy)
    end
    p.sprites = {spr_cl_p0, spr_cl_p0, spr_cl_p1, spr_cl_p1, spr_cl_p2, spr_cl_p2, spr_cl_p2, spr_cl_p3, spr_cl_p3, spr_cl_p3}
    p.draw = function(self)
        local sprite = min(flr((1-self.life / self.maxlife) * (#self.sprites)) + 1, #self.sprites)
        printh("Index "..sprite)
        spr(self.sprites[sprite], self.x-4, self.y-4)
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
