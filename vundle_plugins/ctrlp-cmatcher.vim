if exists('g:vundle_installing_plugins')
  Plugin 'JazzCore/ctrlp-cmatcher'
  finish
endif

let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}
