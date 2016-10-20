" NOTE: You must, of course, install grepg / the coomandline client to
" greppage

function! grepg#AugmentKeywords(cmdline)
  let extension = expand('%:e')
  if extension == 'vim'
    return a:cmdline." vim"
  elseif extension ==? "rb"
    return a:cmdline." ruby"
  elseif extension ==? "rake"
    return a:cmdline." ruby"
  elseif extension ==? "md"
    return a:cmdline." markdown"
  elseif extension ==? "sh"
    return a:cmdline." unix"
  elseif extension ==? "py"
    return a:cmdline." python"
  elseif extension ==? "js"
    return a:cmdline." js"
  elseif extension ==? "jsx"
    return a:cmdline." js"
  endif

  return a:cmdline
endfunction

function! grepg#RunGrepGCommand(cmdline)
  let cmdline = 'grepg search --no_colorize '.a:cmdline
  let expanded_cmdline = grepg#AugmentKeywords(cmdline)
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
