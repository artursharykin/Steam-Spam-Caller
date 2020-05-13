#CommentFlag //
//Allows double slash comments

//This script uses mouse movements to physically click the call button. Useful if the Enter key does not call the other user for you

#MaxThreadsPerHotkey 2 //Ensure we don't create duplicate threads

^j::  //Ctrl + J  to start the loop
running := !running  //Toggles the running variable
Loop  //Loops indefinitely. Can be changed to be a number using `Loop, 100`, where 100 is the number of times to loop
{
	if not running  //Check if the running variable is false
	{
		break //If so, break the loop
	}
	MouseMove, 150, 20  //Move to the user tab in the chat interface
	MouseClick, right  //Right click the profile
	MouseMove, 200, 70  //Move to the "voice call" button
	Sleep 1200  //Wait 1.2 seconds to get the entire audio to play
	MouseClick, left  //Start the call
}
return

Esc::  //Escape Key to exit the script
	ExitApp
return