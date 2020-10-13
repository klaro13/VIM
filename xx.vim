

"function! MoveEm(position)
"  let saved_cursor = getpos(".")
"  let previous_blank_line = search('^$', 'bn')
"  let target_line = previous_blank_line + a:position - 1
"  execute 'move ' . target_line
"  call setpos('.', saved_cursor)
"endfunction
"
"for position in range(1, 9)
"  execute 'nnoremap m' . position . ' :call MoveEm(' . position . ')<cr>'
"endfor

function! TryThisInclude()
  execute 's/^/\/\//'
  execute 'w'
  if exists(error)
    execute 'undo'
    execute 'cclose'
  endif
endfunction

function! CheckAllInclude()
  execute 'gg'
  let last = 0
  while TRUE
    let line = search('^#include')
    if line > last
      let last = line
      call TryThisInclude()
    else
      break
    endif
  endwhile
endfunction

nnoremap ,CI :call CheckAllInclude()<cr>

