if executable('ag')
  nnoremap <leader>a :Ag
elseif executable('ack-grep')
  nnoremap <leader>a :Ack
elseif executable('ack')
  nnoremap <leader>a :Ack
endif
