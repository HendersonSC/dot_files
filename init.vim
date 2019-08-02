" No reason to be compatible
set nocompatible
" Set up plugin manager (in this case vim-plug
call plug#begin('/home/oxh/.config/nvim/plugged')

    " NERD tree will be loaded on the first invocation of NERDTreeToggle command
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    " Fuzzy file finder
    Plug '~/.fzf'
    " Git
    Plug 'tpope/vim-fugitive'
    " Give a quick preview of text that is copied upon yanking
    Plug 'machakann/vim-highlightedyank'
    " Pretty and informative bottom bar
    Plug 'itchyny/lightline.vim'
    " Snippet utility
    Plug 'SirVer/ultisnips'
    " Completion framework
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()
filetype plugin indent on

" provider support
let g:python_host_prog = '/home/oxh/miniconda2/envs/py27/bin/python2.7'
let g:python3_host_prog = '/home/oxh/miniconda2/envs/py36/bin/python3'

" Completion frame work support
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "<tab>"

" leader
:let mapleader = ","

" Quick edit/source init.vim
noremap <leader>ev :tabe $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>
" set zsh to default shell
set shell=/home/oxh/bin/zsh
" less cumbersome escape from terminal mode
tnoremap <leader> 

" Nerd tree mapping
map <F2> :NERDTreeToggle<CR>

" Fuzzy file search
map ~ :FZF /home/oxh<CR>
map ; :FZF MPACT<CR>
map ' :FZF<CR>

"Set-up for ultisnips
"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetsDir='/home/oxh/.config/nvim'
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
map <leader>rs :call UltiSnips#RefreshSnippets()<CR>
map <leader>es :UltiSnipsEdit<CR>
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="tabdo"

" Basic config/formatting
colorscheme desert
set spell
set spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red
hi clear SpellLocal
hi clear SpellRare
hi clear SpellCap
hi SpellCap cterm=bold ctermfg=cyan

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cc=80
set number
set relativenumber
set diffopt=filler,vertical
set nowrap

" Turn off line numbers for terminals. Gets confusing with nested vims
:autocmd TermOpen * setlocal nonumber
:autocmd TermOpen * setlocal norelativenumber
:autocmd TermOpen * setlocal nospell
