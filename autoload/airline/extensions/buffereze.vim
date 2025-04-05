function! airline#extensions#buffereze#AirlineBuffers()
  let buffers = []
  for nr in filter(range(1, bufnr('$')), 'buflisted(v:val)')
    call add(buffers, fnamemodify(bufname(nr), ':t'))
  endfor
  return join(buffers, ' | ')
endfunction

let g:airline_section_c = '%{AirlineBuffers()}'
