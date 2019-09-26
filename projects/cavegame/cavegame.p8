pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
function _init()
	game_over=false;
	make_player()
	make_cave()
end

function _update()
	if (not game_over) then
	 update_cave()
		move_player()
		check_bounds()
		check_hit()
	else
		if (btnp(5)) _init()
	end
end

function _draw()
 cls()
	draw_cave()
 draw_player()
 
	if (game_over) then
		print("game over!", 44, 44, 7)
		print("your score: "..player.score, 34, 54, 7)
		print("press ❎ to play again!", 18, 72, 6)
	else
		print("score:"..player.score,2,2,7)
	end
	 
end
-->8
function make_player()
	player = {}
	player.x = 24
	player.y = 60
	player.dy = 0
	player.dx = 0
	player.rise = 1
	player.fall = 2
	player.dead = 3
	player.speed = 2
	player.score = 0
end

function draw_player()
 if (game_over) then
 	spr(player.dead, player.x, player.y)
	elseif (player.dy < 0) then
		spr(player.rise, player.x, player.y)
	else
		spr(player.fall, player.x, player.y)
	end
end

function move_player()
 gravity=0.2
 player.dy += gravity --add gravity
 
 --reset dx
-- player.dx = 0
 
 --jump ^
 if (btnp(2)) then
 	player.dy -= 5
 	sfx(0)
 end
 --mv <-
 if (btnp(0)) then
 	player.dx -= 2
 end
 --mv ->
 if (btnp(1)) then
  player.dx += 2
 end
 
 --move to new pos
 player.y += player.dy
 player.x += player.dx
 
 --update score
 player.score += player.speed
end 	

function check_hit()
	for i = player.x, player.x+7 do
		if (cave[i+1].top > player.y or
						cave[i+1].btm <player.y+7) then
			game_over = true
		end
	end
end

function check_bounds()
	if (player.x < 0) player.x = 0
	if (player.x > 120) player.x = 120
end
-->8
function make_cave()
	cave = { {["top"] = 5, ["btm"] = 119} }
	top = 45
	btm = 85
end


function update_cave()
	--remove back of the cave
	if (#cave>player.speed) then
		for i=1, player.speed do
			del(cave, cave[1])
		end
	end
	
	
	--add move cave
	while (#cave < 128) do
		local col = {}
		local up = flr(rnd(7) - 3)
		local dwn = flr(rnd(7) - 3)
	
		col.top = mid(3, cave[#cave].top + up, top)
		col.btm = mid(btm, cave[#cave].btm + dwn, 124)
		add(cave, col)
	end
end

function draw_cave()
	top_color=5 --play with these!
	btm_color=5 --choose your own colors!
	for i=1,#cave do
		line(i-1,0,i-1,cave[i].top,top_color)
		line(i-1,127,i-1,cave[i].btm,btm_color)
	end
end
__gfx__
00000000009aa700009aa700001ddc00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000009aaaa7009aaaa7001ddddc0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007009a1aa1a79a1aa1a71d7dd7dc000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770009aaaaaaa9aaaaaaa1ddddddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770009a1aa1aa9aa11aaa1dd77ddd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007009aa11aaa9aa11aaa1d7dd7dd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000009aaaaa009aaaaa001ddddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000009aaa00009aaa00001ddd00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000400000c0400f040000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
