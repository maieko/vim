My VIM-Config
==============

I forked this Repo from [crahles]. Thanks for the great work.
I changed the theme to [jellybeans.vim], as I prefer more darkness and less pastel-colors.

I included the bundles [vim-scala] and [sbt-vim], to enable scala-support in VIM. This was inspired by [this Blogpost].
Furthermore [YouCompleteMe] and [Ultisnips] have been added to provide code-completion with snippets.
For more information see the bundels.vim, until I can make time to update the README.

Added functions
------------
Enabled "copy-to-clipboard" by mouse-select and "CTRL+C".
test if ":echo has('clipboard')" in vim return 0, else install vim-gtk package.
see [stackoverflow_vim-copy'n'paste] for more information.

Install
-------------
The following commands will clone the repository and install neobundle and [YouCompleteMe]
Before proceeding make sure the following packages are installed: 
``` sudo apt-get install build-essential cmake python-dev ```
BASH
--------------
```
$ git clone https://github.com/CrusaderW/vim.git ~/.vim && make ~/.vim/bundle/vimproc.vim/ && ~/.vim/bundle/neobundle.vim/bin/neoinstall && ~/.vim/bundle/YouCompleteMe/install.sh
```
FISH
---------------
```
$ git clone https://github.com/CrusaderW/vim.git ~/.vim; and make ~/.vim/bundle/vimproc.vim/; and ~/.vim/bundle/neobundle.vim/bin/neoinstall; and ~/.vim/bundle/YouCompleteMe/install.sh
```
I'd also recommend to install [Powerline-Font] and set it as Terminal-Font.
[jellybeans.vim]: http://blog.infinitered.com/entries/show/6
[crahles]: https://github.com/crahles/vim
[this Blogpost]: http://bleibinha.us/blog/2013/08/my-vim-setup-for-scala.
[vim-scala]: https://github.com/derekwyatt/vim-scala
[sbt-vim]: https://github.com/ktvoelker/sbt-vim
[stackoverflow_vim-copy'n'paste]: http://stackoverflow.com/questions/11489428/how-to-make-vim-paste-from-and-copy-to-systems-clipboard
[Powerline-Font]:  https://github.com/powerline/fonts
[YouCompleteMe]: https://github.com/Valloric/YouCompleteMe
[Ultisnips]: https://github.com/SirVer/ultisnips
