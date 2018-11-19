" rococo's .vimrc <rococo@tangleroad.com>

inoremap jj <Esc>
nnoremap <C-A> <Esc>
vnoremap <C-A> <Esc>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'

set laststatus=2
" set statusline=
" set statusline+=%#PmenuSel#
" set statusline+=%F
" set statusline+=%#warningmsg#

highlight User1 cterm=none ctermfg=0 ctermbg=12
highlight User2 cterm=none ctermfg=13 ctermbg=none
highlight User3 cterm=none ctermfg=14 ctermbg=none
highlight User4 cterm=none ctermfg=10 ctermbg=none

set statusline=
set statusline+=%1*
set statusline+=‹‹
set statusline+=\ %f\ %1*
set statusline+=\ ››
set statusline+=%2*\ \ %l
set statusline+=\ /\ %L
set statusline+=\ %m
set statusline+=%3*\ %F
set statusline+=%=
set statusline+=%4*\ ‹‹
set statusline+=\ %{strftime('%R',getftime(expand('%')))}
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ ››\ %*

let g:buftabline_numbers=1
let g:buftabline_indicators=1
let g:buftabline_separators=0

hi BufTabLineFill cterm=none ctermfg=7 ctermbg=8
hi BufTabLineHidden cterm=none ctermfg=0 ctermbg=8
hi BufTabLineActive cterm=none ctermfg=7 ctermbg=none
hi BufTabLineCurrent cterm=none ctermfg=0 ctermbg=7

set ignorecase smartcase
set backspace=indent,eol,start

set linebreak
set splitbelow
set splitright
set hidden

set tabstop=4
set shiftwidth=4
set expandtab

set history=1000
set undolevels=1000

set nobackup
set noswapfile
set showcmd
set timeoutlen=350

nnoremap gj j
nnoremap gk k
nnoremap j gj
nnoremap k gk

nnoremap <C-B> :bp<cr>
nnoremap <C-N> :bn<cr>
inoremap <C-F> <C-T>

nnoremap <C-O> :CtrlPBuffer<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <space> \

set number
highlight LineNr ctermfg=15

" nnoremap <leader>ne :NERDTreeToggle<cr>

" save stuff
" may require `stty -ixon` in .zshrc
nnoremap <C-S> :w<cr>
inoremap <C-S> <esc>:w<cr>a

" " actually alt-key maps for terminal in 7 bit mode
" " nnoremap <Esc>j :bp<cr>
" " nnoremap <Esc>k :bn<cr>
" " inoremap <Esc>i <Esc>diwa

let g:airline_skip_empty_sections = 1
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-bd-f)
nmap <leader>s <Plug>(easymotion-bd-w)
" command! Q qa
" " cabbrev <expr> q ((getcmdtype() == ':' && getcmdpos() <= 2)? 'qa' : 'q')

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="deus"
" " let g:sneak#label = 1
" " let g:sneak#use_ic_scs = 1
" " let g:sneak#prompt = '>>'
" 
call plug#begin('~/.vim/plugged')

" Plug 'vim-airline/vim-airline'
" " Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
" " Plug 'tpope/vim-obsession'
" " Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'tpope/vim-repeat'
Plug 'ap/vim-buftabline'
" " Plug 'tpope/vim-commentary'
" Plug 'Yggdroot/indentLine'
" " Plug 'justinmk/vim-sneak'
" " Plug 'davidhalter/jedi-vim'
" " Plug 'mattn/emmet-vim'
" " Plug 'vim-syntastic/syntastic'
" " Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
" 
call plug#end()
" 
" nnoremap gd :YcmCompleter GoToDeclaration<CR>
" 
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" " autocmd VimEnter * NERDTree
" " autocmd VimEnter * wincmd p
" 
" 
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" 
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | qa | endif
" 
" " let g:session_autosave = 'yes'
" " let g:session_autosave_to = 'default'
" " let g:session_autoload = 'yes'
" 
" let g:indentLine_color_term = 239
" 
" let g:indentLine_char = '┊'
" 
" " autocmd BufNewFile,BufReadPost *.md set filetype=text
