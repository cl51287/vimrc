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

" 设置tab为4个空格
set tabstop=4
" 设置tab为空格
set expandtab 
set smartindent
set shiftwidth=4
set softtabstop=4
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
