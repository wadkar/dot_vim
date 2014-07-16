if exists('g:vundle_installing_plugins')
  Plugin 'airblade/vim-gitgutter'
  finish
endif

" always highlight in lin"
let g:gitgutter_highlight_lines = 1
" and keep that darn column there all the time
let g:gitgutter_sign_column_always = 1
" map the hunking keys
let g:gitgutter_map_keys = 1
