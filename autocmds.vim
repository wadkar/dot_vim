" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  augroup MyAutoCommands
    " Clear the auto command group so we don't define it multiple times
    " Idea from http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    autocmd!

    " No more complaining about untitled documents
    autocmd FocusLost silent! :wa

    " When editing a file, always jump to the last cursor position.
    " This must be after the uncompress commands.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line ("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

    " Fix trailing whitespace for following types of files
    autocmd FileType c,cpp,python,php,vim,sh
          \ autocmd BufWritePre :%s/\s\+$//e

    " Instead of autochdir use following autocmd to selectively change dir
    " Helper function to determine if a file is worth lcd'ing into
    function! DoLcd()
      " see last one liner for a short and sweet version
      " " check the path first
      " let l:fileDirPath = expand("%:p:h")
      " " return false immediately if it is not a local file
      " if l:fileDirPath =~ '^[^\/]' | return 0 | endif
      " " return false if it is in the /tmp directory, i.e. a temperory file
      " if l:fileDirPath =~ '^\/tmp'| return 0 | endif
      " " ignore files inside the .git directory
      " if l:fileDirPath =~ '\.git' | return 0 | endif
      " " ignore help files as well
      " if &ft =~ 'help' | return 0 | endif
      " " otherwise return true
      " return 1
      return ! ( expand("%:p:h") =~ '^[^\/]\|^\/tmp\|\.git\|^\/private\/tmp'
            \ && &ft =~ 'help'
            \ )
    endfunction
    autocmd BufEnter * if DoLcd() | silent! lcd %:p:h | endif

    " Help mode bindings
    " <enter> to follow tag, <bs> to go back, and q to quit.
    " From http://ctoomey.com/posts/an-incremental-approach-to-vim/
    autocmd filetype help nnoremap <buffer><cr> <c-]>
    autocmd filetype help nnoremap <buffer><bs> <c-T>
    autocmd filetype help nnoremap <buffer>q :q<CR>

    " Fix accidental indentation in html files
    " from http://morearty.com/blog/2013/01/22/fixing-vims-indenting-of-html-files.html
    autocmd FileType html setlocal indentkeys-=*<Return>

    " Leave the return key alone when in command line windows, since it's used
    " to run commands there.
    autocmd! CmdwinEnter * :unmap <cr>
    autocmd! CmdwinLeave * :call MapCR()
  augroup END
endif
