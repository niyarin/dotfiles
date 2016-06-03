set number
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cursorline
set expandtab
set hlsearch



imap <C-f> <esc>
inoremap <C-a> <Home>
inoremap <C-e> <End>

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

	NeoBundle 'Shougo/neocomplcache'
	NeoBundle 'mattn/emmet-vim'								
    NeoBundle 'jonathanfilip/vim-lucius'
    NeoBundle 't9md/vim-quickhl'
    NeoBundle 'tomtom/tcomment_vim'


    NeoBundleLazy 'tpope/vim-endwise', {
      \ 'autoload' : { 'insert' : 1,}}


	"necomplete{
		let g:acp_enableAtStartup = 0
		let g:neocomplcache_enable_at_startup = 1
		let g:neocomplcache_enable_smart_case = 1
		let g:neocomplcache_min_syntax_length = 3
		let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

		let g:neocomplcache_dictionary_filetype_lists = {
		\ 'default' : ''
		\ }
		inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

	"}
	


"-----VIM QUICIKHL------
"-----------------------
nmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)






call neobundle#end()


filetype plugin indent on

NeoBundleCheck

"zenkaku
set ambiwidth=double


syntax on
set background=dark
set t_Co=256
colorscheme lucius
highlight LineNr ctermfg=darkgrey ctermbg=None
highlight CursorLineNr ctermfg=blue
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
"colorscheme ron
highlight Normal ctermbg=none

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;



