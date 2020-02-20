Sleep, 10000
Loop, 168

{
Send {LWin down}{Shift down}s{Shift up}{LWin up}
Sleep, 1500
MouseMove, 2200, 200
Sleep, 100
Click
Sleep, 2000
MouseMove, 1800, 1050
Click
Sleep, 1500
Send {Control down}s{Control up}
Sleep, 1200
Send {Enter}
Sleep, 1300
Send {Alt down}{F4}{Alt up}
Sleep, 200
Click
Sleep, 50
MouseMove, 2200, 200
Click
Sleep, 100
Send {Left}
Sleep, 100
MouseMove, -1000, 400
Click
Sleep, 50
}

n::onemore()

onemore()
{
Send {LWin down}{Shift down}s{Shift up}{LWin up}
Sleep, 1500
MouseMove, 2200, 200
Sleep, 100
Click
Sleep, 2000
MouseMove, 1800, 1050
Click
Sleep, 1500
Send {Control down}s{Control up}
Sleep, 1200
Send {Enter}
Sleep, 1300
Send {Alt down}{F4}{Alt up}
Sleep, 200
Click
Sleep, 50
MouseMove, 2200, 200
Click
Sleep, 100
Send {Left}
Sleep, 100
MouseMove, -1000, 400
Click
Sleep, 50
}

p::Pause
q::exitapp