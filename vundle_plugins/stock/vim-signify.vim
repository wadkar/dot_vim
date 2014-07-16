if exists('g:vundle_installing_plugins')
  Plugin 'mhinz/vim-signify'
  finish
endif

" Use git only as our VCS provider
let g:signify_vcs_list = ['git']
" Enable line highlighting
let g:signify_line_highlight = 1

let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"
" Makes switching buffers in large repos have no delay
let g:signify_update_on_bufenter = 0
let g:signify_sign_overwrite = 0
