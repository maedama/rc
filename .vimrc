autocmd BufNewFile *.pm -r $HOME/.vim/template/pm.template
autocmd BufNewFile *.t -r $HOME/.vim/template/t.template
set expandtab ts=4 sw=4 ai
set tabstop=4 shiftwidth=4 softtabstop=4
set backspace=2
au BufNewFile,BufRead *.t set filetype=perl
au BufNewFile,BufRead *.pm set filetype=perl
au BufNewFile,BufRead *.psgi set filetype=perl
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.js set filetype=javascript
au BufNewFile,BufRead *.coffee set filetype=javascript
au BufNewFile,BufRead *.html set filetype=html
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.go set filetype=go

"au FileType go nmap <Leader>i <Plug>(go-info)
"au FileType go nmap <Leader>gd <Plug>(go-doc)
"au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
"au FileType go nmap <leader>r <Plug>(go-run)
"au FileType go nmap <leader>b <Plug>(go-build)
"au FileType go nmap <leader>t <Plug>(go-test)

filetype plugin on
set directory=$HOME/.vim/swapfiles/
set rtp+=$GOROOT/misc/vim
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview


set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleFetch 'fatih/vim-go'
NeoBundleFetch 'vim-jp/vim-go-extra'
call neobundle#end()

filetype plugin indent on

NeoBundleCheck



" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

if &term=="xterm"
    set t_Co=8
    set t_Sb=^[[4%dm
    set t_Sf=^[[3%dm
endif