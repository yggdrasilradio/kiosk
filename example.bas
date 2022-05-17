	data "Example 6309 program"
	if a$ = chr$(i) then
		pclear 1
		gosub 2000
		loadm "EXAMPLE.BIN"
		exec
	end if
	i = i + 1
