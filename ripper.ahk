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
Sleep, 1500 ; waits for the snipping tool to load
MouseMove, x, y
Sleep, 100 ; waits for the tool to register the window, may not be needed
Click
Sleep, 2000 ; IMPORTANT: the snipping tool needs time to capture the image, increase if you are going for very high resolutions
MouseMove, 1800, 1050
Click
Sleep, 1200 ; waits for the annotations window to load
Send {Control down}s{Control up}
Sleep, 800 ; may not be needed, but better be safe
Send {Enter}
Sleep, 1300 ; waits for the image to be written to your drive, increase if you have a slow HDD or you will get 0 byte files
Send {Alt down}{F4}{Alt up}
Sleep, 200 ; it takes time for the window to close
WinActivate, ahk_id %id%
Sleep, 100 ; may not be needed
Send {Left}
Sleep, 100 ; some readers with heavy DRM may take several ms to load a new page or chapter.
}
