if exists('g:vundle_installing_plugins')
  Plugin 'xolox/vim-session'
  finish
endif

" The default session directory is ~/.vim/sessions
" let g:session_directory = '~/.vim/sessions'

" Do not save help pages in sessions
set sessionoptions-=help

" Always save the session when exiting
let g:session_autosave = 'yes'

" Always prompt for loading session at the beginning
let g:session_autoload = 'prompt'

" By default, open the last saved session
let g:session_default_to_last = 1

" We know how to disable the prompts
let g:session_verbose_messages = 0

" mappings
nnoremap <leader>os :OpenSession<CR>
