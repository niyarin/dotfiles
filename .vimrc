set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cursorline
set expandtab
set hlsearch

set list
set listchars=tab:>\ ,trail:-


filetype on

imap <C-f> <esc>
inoremap <C-a> <Home>
inoremap <C-e> <End>

nnoremap <C-f> <NOP>
vmap <C-f>  <esc>

"----------------------------------------------------
"                       fish
"----------------------------------------------------

if $SHELL =~ 'fish'
      set shell=/bin/sh
endif




"----------------------------------------------------
"                    neo bundle
"-----------------------------------------------------



call plug#begin()
    Plug 'w0ng/vim-hybrid'
    Plug 'mattn/emmet-vim'
    Plug 'jacoborus/tender.vim'
    Plug 'romainl/Apprentice'
    Plug 't9md/vim-quickhl'
    Plug 'tomtom/tcomment_vim'
    Plug 'vim-scripts/javacomplete'
    Plug 'scrooloose/nerdtree'
    Plug 'kana/vim-submode'
    Plug 'tpope/vim-fireplace'
    Plug 'w0rp/ale'
    Plug 'guns/vim-sexp'
    Plug 'tpope/vim-fugitive'
    Plug 'venantius/vim-cljfmt'

    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


    " If you have nodejs and yarn
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()


set completeopt=menuone
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


let g:deoplete#enable_at_startup = 1


"-----VIM QUICIKHL------
"-----------------------
nmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)

filetype plugin indent on



"-----sub mode -----"
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#map('winsize', 'n', '', '>', '<C-w>>')
call submode#map('winsize', 'n', '', '<', '<C-w><')


"-----java complete-----
"-----------------------
autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo



"-------scheme config -------------------

autocmd FileType scheme :set tabstop=2
autocmd FileType scheme :set shiftwidth=2
autocmd FileType scheme :set softtabstop=2
autocmd FileType scheme :set nocindent
"autocmd FileType scheme :set nolisp

autocmd FileType scheme :set nosmartindent
autocmd FileType scheme :set lispwords=define,let,if,lambda





"--------clojure cof
autocmd FileType clojure :set tabstop=2
autocmd FileType clojure :set shiftwidth=2
autocmd FileType clojure :set softtabstop=2
let g:ale_linters = {'clojure': ['clj-kondo']}


let maplocalleader=","



"------TODO HIGLIHT

augroup HilightsForce
      autocmd!
      autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('Todo', '\(TODO\|NOTE\|INFO\|XXX\|TEMP\):')
      autocmd WinEnter,BufRead,BufNew,Syntax * highlight Todo guibg=Red guifg=White
augroup END

autocmd BufNewFile,BufRead *.elbow  set filetype=scheme

set hidden
set conceallevel=2

set background=dark
set t_Co=256
"colorscheme apprentice
colorscheme hybrid

highlight LineNr ctermfg=darkgrey ctermbg=None
highlight CursorLineNr ctermfg=blue
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"colorscheme ron
highlight Normal ctermbg=none

highlight SpecialKey term=none cterm=none ctermbg=red ctermfg=white

nnoremap ; :
nnoremap : ;

vnoremap ; :
vnoremap : ;

nnoremap <silent><C-e> :NERDTreeToggle<CR>

