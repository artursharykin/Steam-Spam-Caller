#CommentFlag //
//Allows double slash comments

//This script uses the enter key to call the user and is considered the optimal method

#MaxThreadsPerHotkey 2 //Ensure we don't create duplicate threads

^j::  //Ctrl + J  to start the loop
running := !running  //Toggles the running variable
Loop  //Loops indefinitely. Can be changed to be a number using `Loop, 100`, where 100 is the number of times to loop
{
	if not running  //Check if the running variable is false
	{
		break
	}
	Send {enter}  //Send the enter key to stop/start a call
	Sleep, 1001  //Wait 1.001 seconds to get the entire audio to play
}

Esc::ExitApp