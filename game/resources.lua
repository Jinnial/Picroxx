menu = {}
levelgrid = {}
leveldata = {}

menu.topbg = love.graphics.newImage('gfx/misc/topbg.png')
menu.botbg = love.graphics.newImage('gfx/misc/botbg.png')

menu.emptybutton = love.graphics.newImage('gfx/misc/emptybutton.png')

local emptybuttonA = love.graphics.newImage('gfx/misc/emptybutton_a.png')
menu.emptybutton_a = newAnimation(emptybuttonA, 114, 26, 0.05, 6)
menu.emptybutton_a:setMode("loop")

local emptybuttonE = love.graphics.newImage("gfx/misc/emptybutton_e.png")
menu.emptybutton_e = newAnimation(emptybuttonE, 114, 26, 0.05, 7)
menu.emptybutton_e:setMode("once")
	
local emptybuttonS = love.graphics.newImage("gfx/misc/emptybutton_s.png")
menu.emptybutton_s = newAnimation(emptybuttonS, 114, 26, 0.05, 7)
menu.emptybutton_s:setMode("once")

menu.backbutton = love.graphics.newImage('gfx/misc/back.png')

function init.menugraphics()    
	
    menu.titlescreen = love.graphics.newImage('gfx/mainmenu/title.png')

    overlay = {}

    overlay.mariopicross = love.graphics.newImage('gfx/mainmenu/overlays/mariopicross.png')
	
end

function init.levelselectgraphics()
    
	levelgrid.bg = love.graphics.newImage('gfx/levelselect/bg.png')
	
    levelgrid.levels1 = love.graphics.newImage('gfx/levelselect/levels1.png')
    levelgrid.levels2 = love.graphics.newImage('gfx/levelselect/levels2.png')

    levelgrid.halfselector1 = love.graphics.newImage('gfx/levelselect/buttons/halfselector1.png')
    levelgrid.halfselector2 = love.graphics.newImage('gfx/levelselect/buttons/halfselector2.png')

	levelgrid.smallwhiteqm = love.graphics.newImage('gfx/levelselect/buttons/small/whiteqm.png')
	levelgrid.smallyellowqm = love.graphics.newImage('gfx/levelselect/buttons/small/yellowqm.png')
	
   	levelgrid.smallA = love.graphics.newImage('gfx/levelselect/buttons/small/a.png')
	levelgrid.smallB = love.graphics.newImage('gfx/levelselect/buttons/small/b.png')
	levelgrid.smallC = love.graphics.newImage('gfx/levelselect/buttons/small/c.png')
	levelgrid.smallD = love.graphics.newImage('gfx/levelselect/buttons/small/d.png')
	levelgrid.smallE = love.graphics.newImage('gfx/levelselect/buttons/small/e.png')
	levelgrid.smallF = love.graphics.newImage('gfx/levelselect/buttons/small/f.png')
	levelgrid.smallG = love.graphics.newImage('gfx/levelselect/buttons/small/g.png')
	levelgrid.smallH = love.graphics.newImage('gfx/levelselect/buttons/small/h.png')
	
	smallA_a = love.graphics.newImage("gfx/levelselect/buttons/small/a_a.png")
	levelgrid.smallA_a = newAnimation(smallA_a, 34, 23, 0.05, 6)
    levelgrid.smallA_a:setMode("loop")
	
	smallB_a = love.graphics.newImage("gfx/levelselect/buttons/small/b_a.png")
	levelgrid.smallB_a = newAnimation(smallB_a, 34, 23, 0.05, 6)
    levelgrid.smallB_a:setMode("loop")
	
	smallC_a = love.graphics.newImage("gfx/levelselect/buttons/small/c_a.png")
	levelgrid.smallC_a = newAnimation(smallC_a, 34, 23, 0.05, 6)
    levelgrid.smallC_a:setMode("loop")
	
	smallD_a = love.graphics.newImage("gfx/levelselect/buttons/small/d_a.png")
	levelgrid.smallD_a = newAnimation(smallD_a, 34, 23, 0.05, 6)
    levelgrid.smallD_a:setMode("loop")
	
	smallE_a = love.graphics.newImage("gfx/levelselect/buttons/small/e_a.png")
	levelgrid.smallE_a = newAnimation(smallE_a, 34, 23, 0.05, 6)
    levelgrid.smallE_a:setMode("loop")
	
	smallF_a = love.graphics.newImage("gfx/levelselect/buttons/small/f_a.png")
	levelgrid.smallF_a = newAnimation(smallF_a, 34, 23, 0.05, 6)
    levelgrid.smallF_a:setMode("loop")
	
	smallG_a = love.graphics.newImage("gfx/levelselect/buttons/small/g_a.png")
	levelgrid.smallG_a = newAnimation(smallG_a, 34, 23, 0.05, 6)
    levelgrid.smallG_a:setMode("loop")
	
	smallH_a = love.graphics.newImage("gfx/levelselect/buttons/small/h_a.png")
	levelgrid.smallH_a = newAnimation(smallH_a, 34, 23, 0.05, 6)
    levelgrid.smallH_a:setMode("loop")
	
    i5x5label = love.graphics.newImage("gfx/levelselect/5x5label.png")
	i10x10label = love.graphics.newImage("gfx/levelselect/10x10label.png")
	i15x15label = love.graphics.newImage("gfx/levelselect/15x15label.png")

	uncompleted = love.graphics.newImage("gfx/levelselect/uncompleted.png")

	skinbuttonNormal = love.graphics.newImage("gfx/puzzle/boards/normal/skinbutton.png")
	skinbuttonCustom = love.graphics.newImage(customSkinPath.."skinbutton.png")

	easyoverlayl = love.graphics.newImage("gfx/levelselect/easy.png")
	normaloverlayl = love.graphics.newImage("gfx/levelselect/normal.png")
	freeoverlayl = love.graphics.newImage("gfx/levelselect/free.png")
	
	icon = {}
	
	icon.normal = love.graphics.newImage('gfx/puzzle/gui/icon_normal.png')
	icon.free = love.graphics.newImage('gfx/puzzle/gui/icon_free.png')
	
end

function init.puzzlegraphics()    
	
	background = love.graphics.newImage(skinPath..'bg.png')
	whiteoverlay = love.graphics.newImage(skinPath..'whiteoverlay.png')
	
	mark_indicator = love.graphics.newImage('gfx/puzzle/gui/mark_indicator.png')
	mark_Xindicator = love.graphics.newImage('gfx/puzzle/gui/mark_Xindicator.png')
	zoomin_indicator = love.graphics.newImage('gfx/puzzle/gui/zoomin_indicator.png')
	zoomout_indicator = love.graphics.newImage('gfx/puzzle/gui/zoomout_indicator.png')
	
	board5x5 = love.graphics.newImage(skinPath..'board5x5.png')
	board10x10 = love.graphics.newImage(skinPath..'board10x10.png')
	board15x15 = love.graphics.newImage(skinPath..'board15x15.png')
	
	small15x15 = love.graphics.newImage(skinPath..'small15x15.png')
	small15x15top = love.graphics.newImage(skinPath..'small15x15top.png')
	
	mark = love.graphics.newImage(skinPath..'mark.png')
	Xmark = love.graphics.newImage(skinPath..'Xmark.png')
	smallmark = love.graphics.newImage(skinPath..'smallmark.png')
	smallXmark = love.graphics.newImage(skinPath..'smallXmark.png')

	local cellhoverA = love.graphics.newImage(skinPath..'cellhover.png')
	cellHover = newAnimation(cellhoverA, 15, 15, 0.1, 6)
    cellHover:setMode("loop")

    local cellhovertopA = love.graphics.newImage('gfx/puzzle/gui/cellhovertop.png')
	cellHoverTop = newAnimation(cellhovertopA, 17, 17, 0.1, 6)
    cellHoverTop:setMode("loop")

    markedrow = love.graphics.newImage(skinPath..'markedrow.png')
	markedcolumn = love.graphics.newImage(skinPath..'markedcolumn.png')
	
	twoMin = love.graphics.newImage('gfx/puzzle/gui/2min.png')
	fourMin = love.graphics.newImage('gfx/puzzle/gui/4min.png')
	eightMin = love.graphics.newImage('gfx/puzzle/gui/8min.png')
	
	pausetext = love.graphics.newImage('gfx/puzzle/gui/pause.png')
	pauseexit = love.graphics.newImage('gfx/puzzle/gui/exitbutton.png')
	
	cleartext = love.graphics.newImage('gfx/puzzle/gui/clear.png')
	congratulations = love.graphics.newImage('gfx/puzzle/gui/congratulations.png')

	quittext = love.graphics.newImage('gfx/puzzle/gui/quit.png')
	
	gmlabel = {}
	
	gmlabel.easy = love.graphics.newImage('gfx/puzzle/gui/gamemode_easy.png')
	gmlabel.normal = love.graphics.newImage('gfx/puzzle/gui/gamemode_normal.png')
	gmlabel.free = love.graphics.newImage('gfx/puzzle/gui/gamemode_free.png')
	
end

function init.fonts()

--Due to the lack of imagefont support in LÖVEPotion we have to improvise. Only two actual fonts are used, the rest are .png files.

    squarefont = love.graphics.newFont("gfx/misc/font/square.ttf", 20) --Visitor TT1 BRK
	regularfont = love.graphics.newFont("gfx/misc/font/regular.ttf", 16) --Pixel Operator Bold

	--These characters are used for the reference numbers in the bottom screen.
	
	local number1 = love.graphics.newImage('gfx/misc/font/numbers/big/black/1.png')
	local number2 = love.graphics.newImage('gfx/misc/font/numbers/big/black/2.png')
	local number3 = love.graphics.newImage('gfx/misc/font/numbers/big/black/3.png')
	local number4 = love.graphics.newImage('gfx/misc/font/numbers/big/black/4.png')
	local number5 = love.graphics.newImage('gfx/misc/font/numbers/big/black/5.png')
	local number6 = love.graphics.newImage('gfx/misc/font/numbers/big/black/6.png')
	local number7 = love.graphics.newImage('gfx/misc/font/numbers/big/black/7.png')
	local number8 = love.graphics.newImage('gfx/misc/font/numbers/big/black/8.png')
	local number9 = love.graphics.newImage('gfx/misc/font/numbers/big/black/9.png')
	local number10 = love.graphics.newImage('gfx/misc/font/numbers/big/black/10.png')
	local number11 = love.graphics.newImage('gfx/misc/font/numbers/big/black/11.png')
	local number12 = love.graphics.newImage('gfx/misc/font/numbers/big/black/12.png')
	local number13 = love.graphics.newImage('gfx/misc/font/numbers/big/black/13.png')
	local number14 = love.graphics.newImage('gfx/misc/font/numbers/big/black/14.png')
	local number15 = love.graphics.newImage('gfx/misc/font/numbers/big/black/15.png')

	--These characters are used for the reference numbers in the bottom screen.
	
    local gnumber0 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/0.png')
	local gnumber1 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/1.png')
	local gnumber2 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/2.png')
	local gnumber3 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/3.png')
	local gnumber4 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/4.png')
	local gnumber5 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/5.png')
	local gnumber6 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/6.png')
	local gnumber7 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/7.png')
	local gnumber8 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/8.png')
	local gnumber9 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/9.png')
	local gnumber10 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/10.png')
	local gnumber11 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/11.png')
	local gnumber12 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/12.png')
	local gnumber13 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/13.png')
	local gnumber14 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/14.png')
	local gnumber15 = love.graphics.newImage('gfx/misc/font/numbers/big/grey/15.png')
	
	--These characters are used for the reference numbers on puzzles of size 15x15 and up.
	
	local snumber1 = love.graphics.newImage('gfx/misc/font/numbers/small/black/1.png')
	local snumber2 = love.graphics.newImage('gfx/misc/font/numbers/small/black/2.png')
	local snumber3 = love.graphics.newImage('gfx/misc/font/numbers/small/black/3.png')
	local snumber4 = love.graphics.newImage('gfx/misc/font/numbers/small/black/4.png')
	local snumber5 = love.graphics.newImage('gfx/misc/font/numbers/small/black/5.png')
	local snumber6 = love.graphics.newImage('gfx/misc/font/numbers/small/black/6.png')
	local snumber7 = love.graphics.newImage('gfx/misc/font/numbers/small/black/7.png')
	local snumber8 = love.graphics.newImage('gfx/misc/font/numbers/small/black/8.png')
	local snumber9 = love.graphics.newImage('gfx/misc/font/numbers/small/black/9.png')
	local snumber10 = love.graphics.newImage('gfx/misc/font/numbers/small/black/10.png')
	local snumber11 = love.graphics.newImage('gfx/misc/font/numbers/small/black/11.png')
	local snumber12 = love.graphics.newImage('gfx/misc/font/numbers/small/black/12.png')
	local snumber13 = love.graphics.newImage('gfx/misc/font/numbers/small/black/13.png')
	local snumber14 = love.graphics.newImage('gfx/misc/font/numbers/small/black/14.png')
	local snumber15 = love.graphics.newImage('gfx/misc/font/numbers/small/black/15.png')

	--These characters are used for the reference numbers on puzzles of size 15x15 and up.
	
	local sgnumber0 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/0.png')
	local sgnumber1 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/1.png')
	local sgnumber2 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/2.png')
	local sgnumber3 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/3.png')
	local sgnumber4 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/4.png')
	local sgnumber5 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/5.png')
	local sgnumber6 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/6.png')
	local sgnumber7 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/7.png')
	local sgnumber8 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/8.png')
	local sgnumber9 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/9.png')
	local sgnumber10 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/10.png')
	local sgnumber11 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/11.png')
	local sgnumber12 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/12.png')
	local sgnumber13 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/13.png')
	local sgnumber14 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/14.png')
	local sgnumber15 = love.graphics.newImage('gfx/misc/font/numbers/small/grey/15.png')
	
	--These characters are used for the numbers in the timer located in the top screen.
	
	local timer0 = love.graphics.newImage('gfx/misc/font/timer/0.png')
	local timer1 = love.graphics.newImage('gfx/misc/font/timer/1.png')
	local timer2 = love.graphics.newImage('gfx/misc/font/timer/2.png')
	local timer3 = love.graphics.newImage('gfx/misc/font/timer/3.png')
	local timer4 = love.graphics.newImage('gfx/misc/font/timer/4.png')
	local timer5 = love.graphics.newImage('gfx/misc/font/timer/5.png')
	local timer6 = love.graphics.newImage('gfx/misc/font/timer/6.png')
	local timer7 = love.graphics.newImage('gfx/misc/font/timer/7.png')
	local timer8 = love.graphics.newImage('gfx/misc/font/timer/8.png')
	local timer9 = love.graphics.newImage('gfx/misc/font/timer/9.png')
	
	fontnumbers = {number1, number2, number3, number4, number5, number6, number7, number8, number9, number10, number11, number12, number13, number14, number15}
	fontsnumbers = {snumber1, snumber2, snumber3, snumber4, snumber5, snumber6, snumber7, snumber8, snumber9, snumber10, snumber11, snumber12, snumber13, snumber14, snumber15}
	fontsgnumbers = {sgnumber1, sgnumber2, sgnumber3, sgnumber4, sgnumber5, sgnumber6, sgnumber7, sgnumber8, sgnumber9, sgnumber10, sgnumber11, sgnumber12, sgnumber13, sgnumber14, sgnumber15, sgnumber0}
	fontgnumbers = {gnumber1, gnumber2, gnumber3, gnumber4, gnumber5, gnumber6, gnumber7, gnumber8, gnumber9, gnumber10, gnumber11, gnumber12, gnumber13, gnumber14, gnumber15, gnumber0}
	timerdigits = {timer0, timer1, timer2, timer3, timer4, timer5, timer6, timer7, timer8, timer9}
	
end

function init.sfx()
	
	sfx = {}
	
	sfx.mark = love.audio.newSource("sfx/puzzle/mark.ogg")
	sfx.Xmark = love.audio.newSource("sfx/puzzle/Xmark.ogg")
	sfx.boop = love.audio.newSource("sfx/puzzle/boop.ogg")
	sfx.mistake = love.audio.newSource("sfx/puzzle/mistake.ogg")
	sfx.erase = love.audio.newSource("sfx/puzzle/erase.ogg")
	sfx.clearmelody = love.audio.newSource("sfx/puzzle/clear.ogg")

end



function init.menu()
	
	button1 = {}
    button2 = {}
    button3 = {}
    button4 = {}
    button5 = {}
    button6 = {}
	
	dofile("menu/mainmenu.lua")
	
end

function unload.menugraphics()
    
    menu.titlescreen = nil

    overlay.mariopicross = nil

end

function unload.puzzlegraphics()  
	
	background = nil
	whiteoverlay = nil
	
	mark_indicator = nil
	mark_Xindicator = nil
	zoomin_indicator = nil
	zoomout_indicator = nil
	
	board5x5 = nil
	board10x10 = nil
	board15x15 = nil
	
	small15x15 = nil
	small15x15top = nil
	
	mark = nil
	Xmark = nil
	smallmark = nil
	smallXmark = nil

	cellhoverA = nil
	cellHover = nil

	cellhovertopA = nil
	cellHoverTop = nil

	markedrow = nil
	markedcolumn = nil
	
	twoMin = nil
	fourMin = nil
	eightMin = nil
	
	pausetext = nil
	pauseexit = nil
	
	cleartext = nil
	congratulations = nil

	quittext = nil
	
	gmlabel.easy = nil
	gmlabel.normal = nil
	gmlabel.free = nil

end

function unload.levelselectgraphics()

    levelgrid.bg = nil
	
    levelgrid.levels1 = nil
    levelgrid.levels2 = nil

    levelgrid.halfselector1 = nil
    levelgrid.halfselector2 = nil

	levelgrid.smallwhiteqm = nil
	levelgrid.smallyellowqm = nil
	
   	levelgrid.smallA = nil
	levelgrid.smallB = nil
	levelgrid.smallC = nil
	levelgrid.smallD = nil
	levelgrid.smallE = nil
	levelgrid.smallF = nil
	levelgrid.smallG = nil
	levelgrid.smallH = nil
	
	smallA_a = nil
	levelgrid.smallA_a = nil
	
	smallB_a = nil
	levelgrid.smallB_a = nil
	
	smallC_a = nil
	levelgrid.smallC_a = nil
	
	smallD_a = nil
	levelgrid.smallD_a = nil
	
	smallE_a = nil
	levelgrid.smallE_a = nil
	
	smallF_a = nil
	levelgrid.smallF_a = nil
	
	smallG_a = nil
	levelgrid.smallG_a = nil
	
	smallH_a = nil
	levelgrid.smallH_a = nil

	uncompleted = nil

	skinbuttonNormal = nil
	skinbuttonCustom = nil

	easyoverlayl = nil
	normaloverlayl = nil
	freeoverlayl = nil
	
    i5x5label = nil
	i10x10label = nil
	i15x15label = nil

end