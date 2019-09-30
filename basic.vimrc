" Basic Plugin and Config Start
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-easymotion'
Plug 'tomasiser/vim-code-dark'
" Plug 'altercation/vim-colors-solarized'
Plug '/usr/bin/env fzf'
Plug 'junegunn/fzf.vim'
Plug 'bling/vim-airline'

" @Nerdtree Config Start
nnoremap <F2> :NERDTreeToggle<CR>
" @Nerdtree Config End

" @EasyMotion Config Start
noremap , <Plug>(easymotion-prefix)
" @EasyMotion Config End

" Basic Plugin and Config End

" @FZF Config Start
nnoremap <c-p> :FZF<CR>
" @FZF Config End
