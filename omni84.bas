	data "Omnistar '84 (incomplete)"
	if a$ = chr$(i) then
		rgb
		pclear 1
		gosub 2000
		loadm "OMNI84.BIN"
		exec
	end if
	i = i + 1
