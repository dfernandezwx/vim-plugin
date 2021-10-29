set number
set mouse=a 
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cursorline
set t_Co=256
set relativenumber
set laststatus=2
set background=dark
set autoindent
set splitbelow
set splitright
let g:pymode_rope = 0
call plug#begin('~/.vim/plugged')

" Themes

Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'Rigellute/shades-of-purple.vim'
Plug 'Rigellute/rigel'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'drewtempelmeyer/palenight.vim'
" IDE
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-python/python-syntax'
Plug 'Valloric/YouCompleteMe'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ryanoasis/vim-devicons'
Plug 'python-mode/python-mode'
Plug 'terryma/vim-multiple-cursors'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'vim-airline/vim-airline-themes'
Plug 'logico-dev/typewriter'
Plug 'itchyny/lightline.vim'
Plug 'powerline/powerline'
Plug 'vim-scripts/indentpython.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
call plug#end()

" colorscheme
if (has("termguicolors"))
 set termguicolors
endif
colorscheme palenight 
"colorscheme shades_of_purple

" Letra lider
let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader> NT :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
"m en nerdtree para ver las opciones

" atajos para guardar y cerrar
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>

" En lugar de usar ESC en modo insertar
inoremap ii <Esc>

" Buscar por files 

nmap <leader>fs :Files<CR>
nmap <leader>gs :CocSearch

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


nmap <leader>nh :noh<CR>

" Abrir terminal
nmap <Leader>tt :belowright terminal <CR>

" combinaciones para usar multi selector de lineas

let g:multi_cursor_use_default_mapping=0

"Default mapping

let g:multi_cursor_start_word_key = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" Split navigations 

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" moverse entre buffers con tab
nnoremap <TAB> :bnext<CR>
"Shift-tab
nnoremap <S-TAB> :bprevious<CR>

"tabs navigations
nmap <Leader>tn :tabn <CR>
" previous tab
nmap <Leader> tp :tabp <CR>
" open and edit file
nmap <Leader> tN :tabnew <CR>


" airline
"indent
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

"let g:airline_theme = 'gruvbox'
let g:tmuxline_powerline_separators = 0
"let g:shades_of_purple_airline = 1
"let g:airline_theme='shades_of_purple'
"let g:shades_of_purple_lightline = 1
"let g:lightline = { 'colorscheme': 'shades_of_purple' }
let g:rigel_airline = 1
let g:airline_theme = 'palenight'
let g:rigel_lightline = 1
let g:lightline = { 'colorscheme': 'palenight' }
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1


" emmet
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css,xml EmmetInstall
"use leader + sp o vsp split terminal
nmap <Leader> sp :sp<CR>
nmap <Leader> vsp :vsp<CR>


"Use alt + hjkl
" resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>


