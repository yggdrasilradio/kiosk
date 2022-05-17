	data "DragonMaze (BASIC maze game)"
	if a$ = chr$(i) then
		gosub 2000
		drive 1
		run "DMAZE.BAS"
	end if
	i = i + 1
