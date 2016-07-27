" NOTE: You must, of course, install grepg
"
" Here we create a new vim command called "G" which triggers
" s:RunGrepGCommand
command! -complete=shellcmd -nargs=* G call grepg#RunGrepGCommand(<q-args>)
