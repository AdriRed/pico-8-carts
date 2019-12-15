pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
boid_ran = 8
boid_diam = boid_ran*2
chunks_side = 128 / boid_diam
max_vel = 0.5

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
function m_vec:equals(c)
  return self.x == c.x and self.y == c.y
end
function m_vec:modulo()
  return sqrt(self.x*self.x+self.y*self.y)
end
function m_vec:norm(n)
  local m = n or 1
  local modulo = self:modulo()
  printh(modulo)
  local o = new_vec(self.x/modulo, self.y/modulo)
  o:mult(m)
  return o
end
function m_vec:clamp(n)
  if (abs(self.x) > n or abs(self.y) > n) return self:norm(n)
  return self
end
function new_vec(x, y)
  local o = copy(m_vec);
  o.x = x
  o.y = y
  return o;
end

m_boid = {
  pos = new_vec(0, 0),
  vel = new_vec(0, 0)
}

function new_boid(x, y)
  local b = copy(m_boid);
  b.pos = new_vec(x, y);
  b.col = rnd(15) + 1;
  return b;
end

function m_boid:update(list)
  local next_vel = new_vec(rnd_btw(-max_vel, max_vel), rnd_btw(-max_vel, max_vel))
  self.vel:add(next_vel)
  self.vel = self.vel:clamp(max_vel)
  self.pos:add(self.vel)
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
  distribute_boids()
  for b in all(boid_l) do
    b:update()
  end
end

function _draw()
  cls(black)
  -- debug_chunks();
  for b in all(boid_l) do
    b:draw()
  end
end

function distribute_boids()
  boid_chunks = {}
  for b in all(boid_l) do
    local gx = flr(b.pos.x / boid_diam)
    local gy = flr(b.pos.y / boid_diam)
    local name = gy + gx * boid_diam
    if (not boid_chunks[name]) boid_chunks[name] = {}
    add(boid_chunks[name], b)
  end
end

function debug_chunks(params)
  for k,v in pairs(boid_chunks) do
    local gx = flr(k/boid_diam)
    local gy = k%boid_diam
    rect(gx * boid_diam ,gy * boid_diam ,(gx+1) * boid_diam -1,(gy+1) * boid_diam -1,red)
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
