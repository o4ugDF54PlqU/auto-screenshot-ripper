MsgBox, You must select the reader before starting with r and don't forget to edit the number of times the loop runs in the script. Also remember to minimize all other apps except the viewer and set the snipping tool to window snip.

r::mainloop()
o::onemore()
p::Pause
q::exitapp
s::setwin()
global x
global y

setwin()
{
id := WinExist("A")
WinGetPos, x, y, width, height, ahk_id %id%
MouseMove, width+10, 0
Click
x:=x+(width/2)
y:=y+(height/2)
}

mainloop(){
Loop, 10
{
setwin()
onemore()
}
}

onemore()
{
Send {LWin down}{Shift down}s{Shift up}{LWin up}
Sleep, 1500
MouseMove, x, y
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
WinActivate, ahk_id %id%
Sleep, 100
Send {Left}
Sleep, 100
}
