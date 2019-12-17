pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
boid_ran = 4
boid_diam = boid_ran*2
chunks_side = 128 / boid_diam
min_vel = 0.1
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
function vec_add(v1, v2)
  return new_vec(v1.x + v2.x, v1.y + v2.y)
end
function vec_sub(v1, v2)
  return new_vec(v2.x - v1.x, v2.y - v1.y)
end
function vec_mult(v, c)
  return new_vec(v.x * c, v.y * c)
end
function vec_div(v, c)
  return vec_mult(v, 1/c)
end
function vec_equals(v1, v2)
  return v1.x == v2.x and v1.y == v2.y
end
function vec_modulo(v)
  return sqrt(v.x*v.x+v.y*v.y)
end
function vec_norm(v, n)
  local m = n or 1
  local modulo = vec_modulo(v)
  if (modulo == 0) return new_vec(0, 0)
  local o = vec_div(v, modulo)
  return vec_mult(o, m)
end
function vec_clamp(v, min, max)
  local absx, absy = abs(v.x), abs(v.y)
  if (absx < min or absy < min) return vec_norm(v, min)
  if (absx > max or absx > max) return vec_norm(v, max)
  return v
end
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
  if (modulo == 0) self.x, self.y = 0, 0
  self.x, self.y = self.x / modulo * m, self.y / modulo * m
end
function m_vec:clamp(min, max)
  local absx, absy = abs(self.x), abs(self.y)
  -- if (absx < min or absy < min) self:norm(min)
  if (absx > max or absx > max) self:norm(max)
end
function new_vec(x, y)
  local o = copy(m_vec);
  o.x = x
  o.y = y
  return o;
end

m_boid = {
  pos = new_vec(0, 0),
  vel = new_vec(0, 0),
  state = 0,
  chunk = -1
}

function new_boid(x, y)
  local b = copy(m_boid);
  b.pos = new_vec(x, y);
  b.col = white;
  return b;
end

function m_boid:update(list)
  printh(self.chunk)
  self:neighbours(list)
  self:move()
end

function m_boid:move()
  local target = new_vec(self.pos.x + rnd_btw(-10, 10), self.pos.y + rnd_btw(-10, 10))
  local next_vel = boid_steer(self, target)
  self.vel:add(next_vel)
  self.vel:clamp(min_vel, max_vel)
  self.pos:add(self.vel)
  self.pos = check_boundaries(self.pos)
end

function check_boundaries(pos)
  if (pos.x < 0) pos.x = 128 + pos.x
  if (pos.y < 0) pos.y = 128 + pos.y
  if (pos.x > 128) pos.x = 128 - pos.x
  if (pos.y > 128) pos.y = 128 - pos.y
  return pos
end

function m_boid:draw()
  spr(self.state+1,self.pos.x,self.pos.y)
  self.state += 1
  self.state %= 2
end

function boid_steer(boid, target)
  local desired = vec_sub(target, boid.pos)
  desired:norm(max_vel)
  local steer = vec_sub(desired, boid.vel)
  return steer
end

function m_boid:neighbours(chunk_list)
  local arround = exam_chunks(self.chunk)
  -- debug_surr_chunks(arround)
  -- perform_calcs
    --
end


function debug_surr_chunks(list)
  for var in all(list) do
    local gy, gx = getCol(var), getRow(var)
    rect(gx * boid_diam +1,gy * boid_diam +1,(gx+1) * boid_diam -2,(gy+1) * boid_diam -2,green)
  end
end

function exam_chunks(number)
  printh(number)
  local list, col, row = {}, getCol(number), getRow(number)
  local rowLen, colLen, rowIdx, colIdx = min(row + 1, chunks_side - 1), min(col + 1, chunks_side - 1), max(0, row - 1), max(0, col - 1)
  for i=rowIdx,rowLen do
    for j=colIdx,colLen do
      add(list, getIndx(j, i))
    end
  end
  return list
end

boid_l = {}
boid_chunks = {}

function _init()
  for i=1,20 do
    local px = rnd_btw(10, 119)
    local py = rnd_btw(10, 119)
    add(boid_l, new_boid(px, py))
  end
end

function _update()
  cls(black)
  distribute_boids()
  for b in all(boid_l) do
    b:update(boid_chunks)
  end
end

function _draw()
  debug_chunks();
  for b in all(boid_l) do
    b:draw()
  end
end

function distribute_boids()
  boid_chunks = {}
  for i=1,#boid_l do
    local b = boid_l[i]
    local gx = flr(b.pos.y / boid_diam)
    local gy = flr(b.pos.x / boid_diam)
    local name = getIndx(gx, gy)
    if (not boid_chunks[name]) boid_chunks[name] = {}
    boid_l[i].chunk = name
    add(boid_chunks[name], b)
  end
end

function getCol(indx)
  return flr(indx/chunks_side)
end

function getRow(indx)
  return indx%chunks_side
end

function getIndx(x, y)
  return y + x * chunks_side
end

function debug_chunks(params)
  for k,v in pairs(boid_chunks) do
    local gx = getRow(k)
    local gy = getCol(k)
    rect(gx * boid_diam ,gy * boid_diam ,(gx+1) * boid_diam -1,(gy+1) * boid_diam -1,red)
  end
end

function rnd_btw(min, max)
  return rnd(max-min) + min
end

__gfx__
00000000cac000000a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000a000000cac0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
