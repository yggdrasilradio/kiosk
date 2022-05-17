	data "Bomb Threat"
	if a$ = chr$(i) then
		pclear 1
		gosub 2000
		loadm "BOMB.BIN"
		exec
	end if
	i = i + 1
