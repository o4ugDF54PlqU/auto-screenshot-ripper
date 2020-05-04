global count
count := 1
global end
end := 388

r::onemore()
p::Pause
q::exitapp

onemore()
{
while(count<=end)
{
Random, randy, 0, 340
Send {Ctrl down}l{Ctrl up}
Send {Ctrl down}v{Ctrl up}
count +=1
Send %count%
Send {Enter}
Sleep, 2500+randy
Send {Ctrl down}s{Ctrl up}
Random, randy, 0, 300
Sleep, 1500+randy
Send %count%
Send {Enter}
Random, randy, 0, 300
Sleep, 900+randy
}
}
