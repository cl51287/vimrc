if has("gui_win32")
	let $HOME='D:\home\chenlong\'
endif

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize

call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins

Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-easymotion'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim' 
Plug 'bling/vim-airline'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
Plug 'tomasiser/vim-code-dark'
"Plugin 'Shougo/unite.vim'

" All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

map <F2> :NERDTreeToggle<CR>
map <c-q> :ls<CR>:b

" @EasyMotion Config Start
map , <Plug>(easymotion-prefix)

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
" @EasyMotion Config End


if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set ts=4
set smartindent
set shiftwidth=4
set backspace=2

set t_Co=256

set nu
let g:solarized_termcolors=256

syntax on
set background=dark
try
	colorscheme codedark
catch
endtry

if has("gui_running")
	if has("gui_gtk2")
		set guifont=Ubuntu\ Mono\ 13
	elseif has("gui_win32")
		set guifont=Ubuntu\ Mono:h13
		au GUIEnter * simalt ~x
	endif
endif
		
