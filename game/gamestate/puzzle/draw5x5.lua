function drawtop.blackgrid5()

  love.graphics.setColor(0, 0, 0)

  drawtop.blacksquare(row1, 1, 185, 85)
  drawtop.blacksquare(row1, 2, 191, 85)
  drawtop.blacksquare(row1, 3, 197, 85)
  drawtop.blacksquare(row1, 4, 203, 85)
  drawtop.blacksquare(row1, 5, 209, 85)
  
  drawtop.blacksquare(row2, 1, 185, 91)
  drawtop.blacksquare(row2, 2, 191, 91)
  drawtop.blacksquare(row2, 3, 197, 91)
  drawtop.blacksquare(row2, 4, 203, 91)
  drawtop.blacksquare(row2, 5, 209, 91)
  
  drawtop.blacksquare(row3, 1, 185, 97)
  drawtop.blacksquare(row3, 2, 191, 97)
  drawtop.blacksquare(row3, 3, 197, 97)
  drawtop.blacksquare(row3, 4, 203, 97)
  drawtop.blacksquare(row3, 5, 209, 97)
  
  drawtop.blacksquare(row4, 1, 185, 103)
  drawtop.blacksquare(row4, 2, 191, 103)
  drawtop.blacksquare(row4, 3, 197, 103)
  drawtop.blacksquare(row4, 4, 203, 103)
  drawtop.blacksquare(row4, 5, 209, 103)
  
  drawtop.blacksquare(row5, 1, 185, 109)
  drawtop.blacksquare(row5, 2, 191, 109)
  drawtop.blacksquare(row5, 3, 197, 109)
  drawtop.blacksquare(row5, 4, 203, 109)
  drawtop.blacksquare(row5, 5, 209, 109)

end

function drawbot.grid5(drawnumbers)

    love.graphics.draw(board5x5, 0, 0)
	
	if drawnumbers == true then
	
	  drawbot.numbersrow5(1, 116)    --Draws all the reference numbers for the rows (horiontal)
      drawbot.numbersrow5(2, 130)
	  drawbot.numbersrow5(3, 144)
	  drawbot.numbersrow5(4, 158)
	  drawbot.numbersrow5(5, 172)

	  drawbot.numberscolumn5(1, 181)    --Draws all the reference numbers for the columns (vertical)
      drawbot.numberscolumn5(2, 195)
	  drawbot.numberscolumn5(3, 209)
	  drawbot.numberscolumn5(4, 223)
	  drawbot.numberscolumn5(5, 237)
	
	end
	
	drawbot.cell(row1, 1, 181, 113)
	drawbot.cell(row1, 2, 195, 113)
	drawbot.cell(row1, 3, 209, 113)
	drawbot.cell(row1, 4, 223, 113)
	drawbot.cell(row1, 5, 237, 113)
	
	drawbot.cell(row2, 1, 181, 127)
	drawbot.cell(row2, 2, 195, 127)
	drawbot.cell(row2, 3, 209, 127)
	drawbot.cell(row2, 4, 223, 127)
	drawbot.cell(row2, 5, 237, 127)
	
	drawbot.cell(row3, 1, 181, 141)
	drawbot.cell(row3, 2, 195, 141)
	drawbot.cell(row3, 3, 209, 141)
	drawbot.cell(row3, 4, 223, 141)
	drawbot.cell(row3, 5, 237, 141)
	
	drawbot.cell(row4, 1, 181, 155)
	drawbot.cell(row4, 2, 195, 155)
	drawbot.cell(row4, 3, 209, 155)
	drawbot.cell(row4, 4, 223, 155)
	drawbot.cell(row4, 5, 237, 155)
	
	drawbot.cell(row5, 1, 181, 169)
	drawbot.cell(row5, 2, 195, 169)
	drawbot.cell(row5, 3, 209, 169)
	drawbot.cell(row5, 4, 223, 169)
	drawbot.cell(row5, 5, 237, 169)
	
	if drawnumbers == true then
	
	  if markMode == "O" then 
	    love.graphics.draw(mark_indicator, 0, 12)
	  else
	    love.graphics.draw(mark_Xindicator, 0, 12)
	  end
	  
	else
	 
	  drawbot.pauseoverlay()
	  
	end

	
    if mistake.happening == true and mistake.timeLoss == 2 then
        love.graphics.setColor(unpack(mistakeAlpha))
        love.graphics.draw(twoMin, gridx + mistake.x, gridy + mistake.y - mistakeSpeed[1])
        love.graphics.setColor(255, 255, 255, 255)
    end
  
    if mistake.happening == true and mistake.timeLoss == 4 then
        love.graphics.setColor(unpack(mistakeAlpha))
        love.graphics.draw(fourMin, gridx + mistake.x, gridy + mistake.y - mistakeSpeed[1])
        love.graphics.setColor(255, 255, 255, 255)
    end  
  
    if mistake.happening == true and mistake.timeLoss == 8 then 
        love.graphics.setColor(unpack(mistakeAlpha))
        ove.graphics.draw(eightMin, gridx + mistake.x, gridy + mistake.y - mistakeSpeed[1]) 
        love.graphics.setColor(255, 255, 255, 255)
    end  	
	
end

function drawbot.numbersrow5(index, y)
    
    local referenceNumbers = _G["numbersrow"..index]

    local font = fontnumbers

    if completedRows[index] == 1 then font = fontgnumbers else font = fontnumbers end

    if referenceNumbers[1] > 0 then
      if referenceNumbers[2] > 0 then
	    if referenceNumbers[3] > 0 then
	      love.graphics.draw(font[referenceNumbers[1]], 138, y)
	      love.graphics.draw(font[referenceNumbers[2]], 152, y)
	      love.graphics.draw(font[referenceNumbers[3]], 166, y)  
	    else
	      love.graphics.draw(font[referenceNumbers[1]], 152, y)
	      love.graphics.draw(font[referenceNumbers[2]], 166, y)
        end
	  else
	    love.graphics.draw(font[referenceNumbers[1]], 166, y)
	  end
	else
	  love.graphics.draw(fontgnumbers[16], 166, y)
	end
	
end

function drawbot.numberscolumn5(index, x)

    local referenceNumbers = _G["numberscolumn"..index]

    local font = fontnumbers

    if completedColumns[index] == 1 then font = fontgnumbers else font = fontnumbers end

    if referenceNumbers[1] > 0 then
      if referenceNumbers[2] > 0 then
	    if referenceNumbers[3] > 0 then
	      love.graphics.draw(font[referenceNumbers[1]], x, 73)
	      love.graphics.draw(font[referenceNumbers[2]], x, 87)
	      love.graphics.draw(font[referenceNumbers[3]], x, 101)  
	    else
	      love.graphics.draw(font[referenceNumbers[1]], x, 87)
	      love.graphics.draw(font[referenceNumbers[2]], x, 101)
        end
	  else
	    love.graphics.draw(font[referenceNumbers[1]], x, 101)
	  end
	else
	  love.graphics.draw(fontgnumbers[16], x, 101)
	end
	
end