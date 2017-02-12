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

nnoremap <C-f> <NOP>

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
    NeoBundle 'jonathanfilip/vim-lucius'
    NeoBundle 't9md/vim-quickhl'
    NeoBundle 'tomtom/tcomment_vim'
    NeoBundle 'vim-scripts/javacomplete'

    NeoBundleLazy 'tpope/vim-endwise', {
      \ 'autoload' : { 'insert' : 1,}}




      NeoBundleLazy 'Shougo/neocomplete.vim', {
          \ 'depends' : 'Shougo/vimproc',
          \ 'autoload' : { 'insert' : 1,}
          \ }


    "necomplete{
        
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

    "}


"-----VIM QUICIKHL------
"-----------------------
nmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)


call neobundle#end()


filetype plugin indent on

NeoBundleCheck


"-----java complete-----
"-----------------------
autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo


"-------scheme config -------------------
autocmd FileType scheme :set tabstop=2
autocmd FileType scheme :set shiftwidth=2





syntax on
set background=dark
set t_Co=256
colorscheme lucius

highlight LineNr ctermfg=darkgrey ctermbg=None
highlight CursorLineNr ctermfg=blue
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"colorscheme ron
highlight Normal ctermbg=none

highlight SpecialKey term=none cterm=none ctermbg=red ctermfg=white

nnoremap ; :
nnoremap : ;




