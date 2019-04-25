display.setDefault( "background", 0/255, 100/255, 100/255 )




local calculateButton = display.newImageRect( "button.png", 300, 90 )
calculateButton.x = display.contentCenterX
calculateButton.y = 100
calculateButton.id = " calculateButton "
 
local myGuessTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + 160, 300, 60 )
myGuessTextfield.id = " myGuessTextField"

local screenText = display.newText( "Pick a number from 1 to 6: ", 160, 340, native.systemFont, 25 )

local screen23Text = display.newText( "Random Number Generator ", 165, - 20, native.systemFont, 25 )


local endText = display.newText( " ", 160, 450, native.systemFont, 25 )


print( "Pick a number from 1 to 6: " )

local function calculateButtontouch ( event)
	math.randomseed( os.time() )

	local numberToGuess = math.random( 1, 6 )
	local myGuess = tonumber( myGuessTextfield.text )

	if numberToGuess == myGuess then

    	print( "Correct" )
    	screenText.text = "Correct! Nice Job"
	else

		print( "Wrong, guess again!")
		print( "Correct answer was ", numberToGuess )
		screenText.text = ( "Incorrect, The Answer Was " ..numberToGuess )
	end

	print( "Please play again!" )
	print( "Your answer was ", myGuess )
	endText.text = " Play Again!!"

end		

calculateButton :addEventListener( "touch", calculateButtontouch )
