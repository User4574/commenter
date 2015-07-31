function NathansToggleComment()
	let l = line(".")
	let c = col(".")
  let line = getline(".")
  let firstchar = strpart(line, 0, 1)
  normal 0
  if firstchar == "#"
    normal x
  else
    normal I#
    let c = c + 1
  endif
	call cursor(l, c)
endfunction

nnoremap <silent> # :call NathansToggleComment()<CR>
