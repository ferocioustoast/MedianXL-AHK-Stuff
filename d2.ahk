#NoEnv ;said it was recommended
SetKeyDelay, 50, 50 ;might be needed for sending keys
if not A_IsAdmin { ;make sure admin or it breaks
    Msgbox, You must run as admin for this to work
    ExitApp
}

Times=0 ;store number times o is pressed
SetDefaultMouseSpeed, 0 ; make mouse instant
coordmode , mouse, client ;make mouse reletive to client so works better
#IfWinActive ahk_class Diablo II
Left:: ;move left a page in stash
mousegetpos, posx, posy
mousemove 228,456
mouseclick
mousemove %posx%, %posy%
return
Right:: ;move right a page in stash
mousegetpos, posx, posy
mousemove 256,462
mouseclick
mousemove %posx%, %posy%
return
l:: ;open last person used in single player, destruction diff
mousemove 395,311
mouseclick
send {enter}
mousemove 395,367
mouseclick
return
p:: ;reset times to 0 
Times=0
return
o:: ;press o to move mouse to transute button and click then go back
mousegetpos, posx, posy ;get mouse pos
Times++
mousemove 233, 330 ;move mouse to transmute button
mouseclick
mousemove %posx%, %posy% ;move mouse back to where it was
if (Times=10) { ;first shrine done get second one from 4x6
	mousemove 521, 333
	mouseclick
	mousemove 172, 112
	mouseclick
	mousemove %posx%, %posy%
}
if (Times=20) { ; second shrine done get third from 5x6
	mousemove 546, 333
	mouseclick
	mousemove 172, 112
	mouseclick
	mousemove %posx%, %posy%
}
if (Times=30) { ;third gone get forth from 6x6
	mousemove 581, 333
	mouseclick
	mousemove 172, 112
	mouseclick
	mousemove %posx%, %posy%
}
return ;keep script going
