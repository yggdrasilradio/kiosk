	data "Temple of ROM II"
	if a$ = chr$(i) then
		gosub 2000
		loadm "TEMPLE.BIN"
		exec
	end if
	i = i + 1
