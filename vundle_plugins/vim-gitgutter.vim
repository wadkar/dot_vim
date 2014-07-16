if exists('g:vundle_installing_plugins')
  Plugin 'airblade/vim-gitgutter'
  finish
endif

" DONT always highlight the line - default is off
" let g:gitgutter_highlight_lines = 0
" and keep that darn column there all the time
let g:gitgutter_sign_column_always = 1
" map the hunking keys
let g:gitgutter_map_keys = 1
" map gitgutter toggl
map <leader>ht :GitGutterLineHighlightsToggle<CR>
