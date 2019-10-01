pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--main
spr_cloud_e = 1
spr_cloud_i = 2

left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15

clouds = {}

function _init()
    add_cloud(64, 64)
end

function _draw()
    for c in all(clouds) do
        c:draw()
     end
end

function _update()
    cls()
    change_dir(clouds[1])
end

function add_cloud(x, y)
    local cloud = {}
    cloud.x = x
    cloud.y = y
    cloud.draw = function(self)
        spr(spr_cloud_e, self.x, self.y)
        spr(spr_cloud_i, self.x+8, self.y)
        spr(spr_cloud_e, self.x+16, self.y, 1.0, 1.0, true, false)
    end
    cloud.ps = {}
    add(clouds, cloud)
end

function add_part(psys, father)
    local p = {}
    p.x = father.x
    p.y = father.yellow
    p.dx = 0
    p.dy = 0
    p.maxlife = 10
    p.life = p.maxlife
    p.update = function(self)
        if (self.life <= 0) then 
            del(psys, self) 
            return
        end
        self.life -= 1
        self.x += self.dx
        self.y += self.dy
    end
    p.draw = function(self)

    end
    
    add(psys, p)
end

function change_dir(reg)
    if (btn(up)) reg.y -= 2
    if (btn(down)) reg.y += 2
    if (btn(left)) reg.x -= 2
    if (btn(right)) reg.x += 2
end
__gfx__
00000000077777777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000077767767677767700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700007766766677766700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000006777667777776600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000677777777777700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000667777777767700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000066666666606700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000660660006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
