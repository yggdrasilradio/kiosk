	data "MrDave6309's BASIC scrolling demo"
	if a$ = chr$(i) then
		gosub 2000
		drive 1
		run "SCROLL.BAS"
	end if
	i = i + 1
