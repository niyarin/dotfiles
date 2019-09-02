set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cursorline
set expandtab
set hlsearch

set list
set listchars=tab:>\ 

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
    NeoBundle 'romainl/Apprentice'
    NeoBundle 'scrooloose/nerdtree'
    NeoBundle 'kana/vim-submode'
    NeoBundleLazy 'tpope/vim-endwise', {
      \ 'autoload' : { 'insert' : 1,}}
    NeoBundleLazy 'Shougo/neocomplete.vim', {
      \ 'depends' : 'Shougo/vimproc',
      \ 'autoload' : { 'insert' : 1,}
      \ }
call neobundle#end()

let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'

        let g:neocomplete#dictionary#dictionaries = {
        \ 'default' : ''
        \ }


set completeopt=menuone
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


"-----VIM QUICIKHL------
"-----------------------
nmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)




filetype plugin indent on

NeoBundleCheck


call plug#begin()
    Plug 'ctrlpvim/ctrlp.vim'
    " or

    "Plug 'guns/vim-sexp',    {'for': 'clojure'}
    "Plug 'liquidz/vim-iced', {'for': 'clojure'}
call plug#end()

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

autocmd FileType scheme :set tabstop=3
autocmd FileType scheme :set shiftwidth=3
autocmd FileType scheme :set softtabstop=3
autocmd FileType scheme :set nocindent
"autocmd FileType scheme :set nolisp

autocmd FileType scheme :set nosmartindent
autocmd FileType scheme :set lispwords=define,let,if,lambda





"--------clojure cof 
autocmd FileType clojure :set tabstop=3
autocmd FileType clojure :set shiftwidth=3
autocmd FileType clojure :set softtabstop=3





"------TODO HIGLIHT

augroup HilightsForce
      autocmd!
      autocmd WinEnter,BufRead,BufNew,Syntax * :silent! call matchadd('Todo', '\(TODO\|NOTE\|INFO\|XXX\|TEMP\):')
      autocmd WinEnter,BufRead,BufNew,Syntax * highlight Todo guibg=Red guifg=White
augroup END


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


