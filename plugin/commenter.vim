if !exists("g:commenter_char")
  let g:commenter_char = "#"
endif

function NathansToggleComment()
	let l = line(".")
	let c = col(".")
  normal ^
  let thischar = matchstr(getline('.'), '\%' . col('.') . 'c.')
  if thischar == g:commenter_char
    normal x
    let c = c - 1
  else
    normal I=g:commenter_char
    let c = c + 1
  endif
	call cursor(l, c)
endfunction

nnoremap <silent> # :call NathansToggleComment()<CR>
