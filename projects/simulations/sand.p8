pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
left,right,up,down,fire1,fire2=0,1,2,3,4,5
black,dark_blue,dark_purple,dark_green,brown,dark_gray,light_gray,white,red,orange,yellow,green,blue,indigo,pink,peach=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15

mousex, mousey = 0, 0
screen = {}

function _init()
    cls(black)

    poke(0x5f2d, 1)
end

function _update()
    mousex = stat(32)
    mousey = stat(33)
end

function _draw()
    pset(mousex, mousey, red)
    if (btn(fire1)) then
        pset(mousex, mousey + 1, yellow)
    end
    sand_sim()
    

end

function sand_sim()
    for y=126,0,-1 do
        for x=0,127 do
            if (pget(x,y) == yellow or pget(x, y) == orange) then
                local color = pget(x, y)
                if (pget(x, y+1) == black) then
                    pset(x,y+1,color)
                    pset(x, y, black)
                elseif (pget(x-1, y+1) == black) then
                    pset(x-1, y+1, color)
                    pset(x, y, black);
                elseif (pget(x+1, y+1) == black) then
                    pset(x+1, y+1, color)
                    pset(x, y, black);
                end
            end
        end
    end
end

function random_between(min, max) 
    return flr(rnd(max - min) + min + 1)
end