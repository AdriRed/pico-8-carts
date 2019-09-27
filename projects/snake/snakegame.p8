pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--main
function _init()
	up = 2
	down = 3
	left = 0
	right = 1
	❎ = 5
	🅾️ = 4
	fps_limit = 10
	fps_count = 0
	make_player()
	init_prop()
end

function _update()
	if (player.alive) then
		if (fps_count == fps_limit) then
			get_dir()
			move_player()
			update_prop()			
			check_bounds()
			fps_count -= fps_limit
		end
		fps_count += 1
	else
		if (btnp(❎)) _init()
	end
end

function _draw()
	if (player.alive) then
		if (fps_count == fps_limit) then
			cls()
			draw_player()
			spr(prop_spr + prop.dir, prop.posx, prop.posy)
		end
	else
		print("press ❎ to restart", 28, 56, 7)
	end
end
-->8
--player
function make_player()
	player = {["head"] = {["posx"] = 56, ["posy"] = 56, ["dir"] = right}, ["tail"] = {}, ["alive"] = true}
	
	add_tail(player.head)
	for i = 1, 3, 1 do
		add_tail(player.tail[#player.tail])
	end
	
	head_spr = 1
	ltail_spr = 9
	rect_spr = 5
	l_spr = 7
end

function add_tail(last)
	local segment = {["dir"] = last.dir, ["posx"] = last.posx, ["posy"] = last.posy}

	move(segment, false)
	add(player.tail, segment)
end

function get_dir()
	local newdir = player.head.dir
	for i = #player.tail, 2, -1 do
		player.tail[i].dir = player.tail[i-1].dir
	end
	player.tail[1].dir = player.head.dir

	if (btn(right) and newdir ~= left) then newdir = right
	elseif (btn(left) and newdir ~= right) then newdir = left
	elseif (btn(up) and newdir ~= down) then newdir = up
	elseif (btn(down) and newdir ~= up) then newdir = down end
	--printh("NEW "..newdir..", LAST "..player.head.dir)

	player.head.dir = newdir
end

function move_player()
	move(player.head, true)
	foreach(player.tail, move)
end

function move(seg, forward)
	forward = forward or true
	local direction = 1
	if (not forward) direction = -1

	if (seg.dir == up) then
		seg.posy -= (8 * direction)
	elseif (seg.dir == right) then
		seg.posx += (8 * direction)
	elseif (seg.dir == down) then
		seg.posy += (8 * direction)
	else 
		seg.posx -= (8 * direction)
	end
end

function check_bounds()
	local posx = player.head.posx
	local posy = player.head.posy
	if (posx < 0 or posx > 128 or posy < 0 or posy > 128) player.alive = false
	if (player.alive) then
		for i = 1, #player.tail, 1 do
			check_colision(player.tail[i])
		end
	end
end

function check_colision(seg)
	if (seg.posx == player.head.posx and seg.posy == player.head.posy) player.alive = false
end
-->8
--gfx & sprites
function draw_player()

	--draw head counterwise
	draw_spr(head_spr, player.head, player.head.dir)

	--draw tail
		--draw first
	draw_segment(player.tail[1], player.head)
	
	for i = 2, #player.tail-2, 1 do draw_segment(player.tail[i], player.tail[i-1]) end
	
	--last
	draw_spr(ltail_spr, player.tail[#player.tail - 1], player.tail[#player.tail - 2].dir)
		
end

function draw_spr(spr_ind, item, direct)
	if (direct == up) then
		spr(spr_ind,	item.posx, item.posy, 1.0, 1.0, false, false)
	elseif (direct == right) then
		spr(spr_ind+1,	item.posx, item.posy, 1.0, 1.0, false, false)
	elseif (direct == down) then
		spr(spr_ind,	item.posx, item.posy, 1.0, 1.0, false, true)
	else 
		spr(spr_ind+1,	item.posx, item.posy, 1.0, 1.0, true, false)
	end
end

function draw_segment(seg, ref)
	if (seg.dir == ref.dir) then
		draw_spr(rect_spr, seg, seg.dir)
	else

	end
end
-->8
--prop
function init_prop()
	prop = {["posx"] = 24, ["posy"] = 24, ["dir"]=0}
	prop_spr = 11
end

function update_prop()
	prop.dir += 1
	prop.dir %= 4
	if (prop.posx == player.head.posx and prop.posy == player.head.posy) add_tail(player.tail[#player.tail])
end
__gfx__
00000000000330000b330000000000000000000003b333b000000000033b33b000000000033b3330000000000004bb0000000000000000000000000000000000
0000000000333b00bb77b30000000000000000000bbb3b30b3333bbb0bbb3b3b000b33bb0bbb3bb0000333b300040000000b4b000000000000b4b00000000000
0070070003333bb033743330000000000000800003bbb3303b33bb330b333bb300b3333b03bbb3b000b33bb30008800000004000000bbb000004000000000000
000770000b33333033bb33330080080088880000033b333033b33bb3033b3333033bb333033b33300b33bbbb0088880000088000000040000008800000000000
00077000374b34733bb3333300088000888800000b333b303bbb33b3033bb333033b33330333333003b33b330088880000888800000880000088880000000000
00700700377bb77bb3743bb000088000000080000b33bbb0bbb3333b00b3333b0b333bb300b3bb0000b333b30008800000888800008888000088880000000000
00000000bb33b3bbbb773b000008800000000000033bb3b03b33bb3b000b33bb0bbb3b3b000b300000033bb30000000000088000008888000008800000000000
000000000b333bb00bb3000000088000000000000bb333b00000000000000000033b33b000000000000000000000000000000000000880000000000000000000
__sfx__
000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000002400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000460009500095000950009500095000950009500046000460004600046000460004600046000460004600046000460004600046000460004600046000460004600046000460004600046000460004600
__music__
00 01424344

