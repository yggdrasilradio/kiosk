	data "Maze (BASIC maze)"
	if a$ = chr$(i) then
		gosub 2000
		drive 1
		run "MAZE.BAS"
	end if
	i = i + 1
