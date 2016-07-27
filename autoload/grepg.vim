" NOTE: You must, of course, install grepg / the coomandline client to
" greppage

function! grepg#RunGrepGCommand(cmdline)
  let cmdline = 'grepg --no-colorize -t '.a:cmdline
  let expanded_cmdline = cmdline
  for part in split(cmdline, ' ')
    if part[0] =~ '\v[%#<]'
      let expanded_part = fnameescape(expand(part))
      let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
    endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction
