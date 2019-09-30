" Basic Plugin and Config Start
Plug 'scrooloose/nerdtree'
Plug 'Lokaltog/vim-easymotion'
Plug 'tomasiser/vim-code-dark'
" Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'bling/vim-airline'

" @Nerdtree Config Start
map <F2> :NERDTreeToggle<CR>
" @Nerdtree Config End

" @EasyMotion Config Start
map , <Plug>(easymotion-prefix)
" @EasyMotion Config End

" Basic Plugin and Config End
