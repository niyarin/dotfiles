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


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif



call neobundle#begin(expand('~/.vim/bundle/'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    NeoBundle 'mattn/emmet-vim'
    NeoBundle 'jacoborus/tender.vim'
    NeoBundle 'romainl/Apprentice'
    NeoBundle 't9md/vim-quickhl'
    NeoBundle 'tomtom/tcomment_vim'
    NeoBundle 'vim-scripts/javacomplete'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'kana/vim-submode'
    NeoBundle 'tpope/vim-fireplace'
    NeoBundle 'w0rp/ale'
    NeoBundle 'venantius/vim-cljfmt'
    NeoBundleLazy 'tpope/vim-endwise', {
      \ 'autoload' : { 'insert' : 1,}}
    NeoBundle 'Shougo/deoplete.nvim'
    NeoBundle 'roxma/nvim-yarp'
    NeoBundle 'roxma/vim-hug-neovim-rpc'
call neobundle#end()

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


"-----VIM QUICIKHL------
"-----------------------
nmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)

let g:deoplete#enable_at_startup = 1


filetype plugin indent on

NeoBundleCheck


"call plug#begin()
    "Plug 'ctrlpvim/ctrlp.vim'
    " or

    "Plug 'guns/vim-sexp',    {'for': 'clojure'}
    "Plug 'liquidz/vim-iced', {'for': 'clojure'}
"call plug#end()

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





"------TODO HIGLIHT

augroup HilightsForce
      autocmd!
      autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('Todo', '\(TODO\|NOTE\|INFO\|XXX\|TEMP\):')
      autocmd WinEnter,BufRead,BufNew,Syntax * highlight Todo guibg=Red guifg=White
augroup END

autocmd BufNewFile,BufRead *.elbow  set filetype=scheme

let g:iced_enable_default_key_mappings = v:true

set hidden



syntax on
set background=dark
set t_Co=256
colorscheme apprentice
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

