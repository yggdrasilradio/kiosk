	data "Example 6309 program"
	if a$ = chr$(i) then
		gosub 2000
		loadm "EXAMPLE.BIN"
		exec
	end if
	i = i + 1
