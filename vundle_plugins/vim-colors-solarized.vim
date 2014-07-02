if exists('g:vundle_installing_plugins')
  Plugin 'altercation/vim-colors-solarized'
  finish
endif

" I like it dark
set background=dark

" But I want to be solarized!
colorscheme solarized

" And my terminal background is transparent
let g:solarized_termtrans = 1

" iTerm2 lets you show italics!
if $TERM_PROGRAM ==# "iTerm.app"
  let g:solarized_italic = 1
endif
