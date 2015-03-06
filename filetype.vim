f exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
    au! BufNewFile,BufRead *.sc setf scala
  augroup END
