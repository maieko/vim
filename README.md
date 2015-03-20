My VIM-Config
==============

I forked this Repo from [crahles]. Thanks for the great work.
I changed the theme to [jellybeans.vim], as I prefer more darkness and less pastel-colors.

I also included the 2 bundles [vim-scala] and [sbt-vim], to enable scala-support in VIM. This was inspired by http://bleibinha.us/blog/2013/08/my-vim-setup-for-scala.

Added functions
------------
Enabled "copy-to-clipboard" by mouse-select and "CTRL+C".
test if ":echo has('clipboard')" in vim return 0, else install vim-gtk package.
see [stackoverflow_vim-copy'n'paste] for more information.

Install
-------------
```
$ git clone https://github.com/CrusaderW/vim.git ~/.vim && ~/.vim/bundle/neobundle.vim/bin/neoinstall
```
I'd also recommend to install [Powerline-Font] and set it as Terminal-Font.
[jellybeans.vim]: http://blog.infinitered.com/entries/show/6
[crahles]: https://github.com/crahles/vim
[vim-scala]: https://github.com/derekwyatt/vim-scala
[sbt-vim]: https://github.com/ktvoelker/sbt-vim
[stackoverflow_vim-copy'n'paste]: http://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard
[Powerline-Font]:  https://github.com/powerline/fonts
