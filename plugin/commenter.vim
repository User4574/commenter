function NathansToggleComment()
	let l = line(".")
	let c = col(".")
  normal ^
  let thischar = matchstr(getline('.'), '\%' . col('.') . 'c.')
  if thischar == "#"
    normal x
    let c = c - 1
  else
    normal I#
    let c = c + 1
  endif
	call cursor(l, c)
endfunction

nnoremap <silent> # :call NathansToggleComment()<CR>
