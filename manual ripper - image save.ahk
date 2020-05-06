r::mainloop()
o::onemore()
p::Pause
q::exitapp

mainloop(){
Loop, 30
{
onemore()
}
}

onemore()
{
Random, randy, 0, 340
Send {Ctrl down}s{Ctrl up}
Sleep, 900+randy
Send {Right}
Sleep, 200
Send {Ctrl down}s{Ctrl up}
Random, randy, 0, 300
Sleep, 900+randy
Send {Right}
Random, randy, 0, 300
Sleep, 7000+randy
}
