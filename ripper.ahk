s::mainloop()
n::onemore()
p::Pause
q::exitapp

mainloop(){
Loop, 168

{
onemore()
}
}

onemore()
{
Send {LWin down}{Shift down}s{Shift up}{LWin up}
Sleep, 1000
MouseMove, 2200, 200
Sleep, 100
Click
Sleep, 2000
MouseMove, 1800, 1050
Click
Sleep, 1200
Send {Control down}s{Control up}
Sleep, 800
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
