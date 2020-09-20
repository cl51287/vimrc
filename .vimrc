call plug#begin('~/.vim/plugged')
" Plug vim-go Start


" Plug vim-go End
" Plug YouCompleteMe Start
" Plug 'Valloric/YouCompleteMe'

" Plug YouCompleteMe End
" Basic Plugin and Config Start
Plug 'Lokaltog/vim-easymotion'
Plug 'tomasiser/vim-code-dark'
Plug 'majutsushi/tagbar'
" Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'

" @Nerdtree Config Start
map <F2> :NERDTreeToggle<CR>
" @Nerdtree Config End

" @EasyMotion Config Start
map , <Plug>(easymotion-prefix)
" @EasyMotion Config End

" Basic Plugin and Config End
call plug#end()            " required
filetype plugin indent on    " required
" ****************************************************************************
" ****************************************************************************
" @Native Config Start
" ****************************************************************************
" ****************************************************************************
let mapleader = ";"
" 设置;c 复制内容到系统剪贴板
vnoremap <leader>c "+y
" 设置;v 粘帖系统剪贴板内容
nnoremap <leader>v "+p

if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif

 let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" 设置tab为4个空格
set tabstop=4
" 设置tab为空格
set expandtab 
set smartindent
set shiftwidth=4
"set softtabstop=4
set backspace=2
" 设置当前行高亮
set cursorline
" 设置实时搜索
set incsearch
set nu
syntax on
set background=dark
try 
    colorscheme codedark
catch
endtry
" 设置字体GUI
if has("gui_running")
	if has("gui_gtk2") || has("gui_gtk3")
		set guifont=Fira\ Code\ 12
		set guioptions-=T
		set guioptions-=m
		set guioptions-=L
	elseif has("gui_win32")
		set guifont=Fira\ Code\:h12
		au GUIEnter * simalt ~x
	endif
endif

" ****************************************************************************
" ****************************************************************************
" @Native Config End
" ****************************************************************************
" ****************************************************************************
