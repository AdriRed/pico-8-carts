pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
neigh_ran = 8
neigh_count = 128 / neigh_ran * 2 + 1

function copy(o)
  local c
  if type(o) == 'table' then
    c = {}
    for k, v in pairs(o) do
      c[k] = copy(v)
    end
  else
    c = o
  end
  return c
end

m_vec = {
    x = 0,
    y = 0,
}
function m_vec:add(v)
  self.x += v.x
  self.y += v.y
end
function m_vec:subs(v)
  self.x -= v.x
  self.y -= v.y
end
function m_vec:mult(c)
  self.x *= c
  self.y *= c
end
function m_vec:same(c)
  return self.x == c.x and self.y == c.y
end
function new_vec(x, y)
  local o = copy(m_vec);
  o.x = x
  o.y = y
  return o;
end

m_boid = {
  pos = new_vec(0, 0),
  dir = new_vec(0, 0)
}

function new_boid(x, y)
  local b = copy(m_boid);
  b.pos = new_vec(x, y);
  b.col = rnd(15) + 1;
  return b;
end

function m_boid:update(list)
  
end

function m_boid:draw()
  pset(self.pos.x,self.pos.y,self.col)
  
end
boid_l = {}
function _init()
  for i=0,50 do
    local px = rnd_btw(10, 119)
    local py = rnd_btw(10, 119)
    add(boid_l, new_boid(px, py))
    
  end
end

function _update()
  boid_chunks = {}
  for b in all(boid_l) do
    local gx = flr(b.pos.x / neigh_ran)
    local gy = flr(b.pos.y / neigh_ran)
    local name = gy + gx * neigh_count
    if (not boid_chunks[name]) boid_chunks[name] = {}
    add(boid_chunks[name], b)
  end
end

function _draw()
  cls(black)
  for b in all(boid_l) do
    b:draw()
  end
  for k,v in pairs(boid_chunks) do
    for b in all(v) do
      --print(flr(k/neigh_count)..','..k%neigh_count, b.pos.x-5, b.pos.y-10, white)
    end
    local gx = flr(k/neigh_count)
    local gy = k%neigh_count
    -- rect(gx * neigh_count ,gy * neigh_count ,gx * neigh_count + neigh_ran -1,gy * neigh_count + neigh_count -1,red)
    printh(#v..' boids found in chunk '..flr(k/neigh_count)..','..k%neigh_count..' ('..k..')')
  end
end

function rnd_btw(min, max)
  return rnd(max-min) + min
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
