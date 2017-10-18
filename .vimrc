set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'SirVer/ultisnips'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'honza/vim-snippets'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'torarnv/dotfiles'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
Bundle 'Raimondi/delimitMate'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'Bling/vim-airline'

" python 
Bundle 'Yggdroot/indentLine'
Bundle 'orenhe/pylint.vim'

filetype plugin indent on

set nu
syntax enable
syntax on
" makefile must comment
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set ignorecase
set lines=40 columns=120
set showcmd
set novisualbell
set fileencoding=utf-8
set fileencodings=utf-8

let mapleader=","
inoremap jj		<ESC>
inoremap ff		<END>
map		 ff		<END>
inoremap {		{<CR><CR>}<ESC>kI
inoremap <C-j>	<Down>
inoremap <C-k>	<Up> 
inoremap <C-h>	<Left>
inoremap <C-l>	<Right>
inoremap jf		<Left>
inoremap fj		<Right>
map		 <leader>q	:q<CR>
" 全選+複製
map		<C-A>		ggVGY
map!	<C-A><ESC>	ggVGY
map		<C-I>		mmgg-G`m

" <F10> (<F12>) 跳轉tab
map  <F10>	:tabp<CR>
imap <F10>	<Esc>:tabp<CR>
map  <F12>	:tabn<CR>
imap <F12>	<Esc>:tabn<CR>

" ,s 一鍵保存
func! SaveFile()
	exec "w"
endfunc
map <leader>s :call SaveFile()<CR>
imap <leader>s <ESC>:call SaveFile()<CR>
vmap <leader>s <ESC>:call SaveFile()<CR>

colorscheme molokai_M2
set t_co=256

" vim-airline
set laststatus=2

" nerdtree
nmap <leader>nt :NERDTree<CR>
let NERDTreeWinSize=20
let NERDWinPos='Left'

" tagbar
nmap <leader>tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_autofocus=1
let g:tagbar_width=30

" tabular
nmap <leader>ta :Tab/
nmap <leader>te :Tab/=<CR>

" easymotion
let g:EasyMotion_leader_key=','

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["snippetsfj", "bundle/ultisnips/UltiSnips"]

" ycm
let g:ycm_semantic_triggers={}
let g:ycm_semantic_triggers.c=['->','.',' ','(','[','&']
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='!'
let g:ycm_confirm_extra_conf=0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_indentifiers_from_comments_and_strings=0
let g:ycm_collect_indentifiers_from_tags_files=1
let g:ycm_key_list_select_completion=['<ENTER>']
let g:ycm_key_list_previous_completion=['<UP>']
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt=longest,menu
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaratioin<CR>
let g:clang_user_option='|| exit 0'

"syntastic
" let g:syntastic_ignore_file=[".*\.py$"]
let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_cpp_iinclude_dirs=['usr/include/']
let g:syntastic_cpp_remove_include_errors=1
let g:syntastic_check_header=1
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_option='-std=c++11 -stdlib=libstdc++'
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='!'
let g:syntastic_enable_balloons=1
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_python_exec="/usr/bin/python"
" let g:syntastic_python_pylint_exe = 'pylint'
" let g:syntastic_python_pylint_args = ['--help-msg', 'pylint']
" let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'

" pylint
let g:pylint_onwrite=0
autocmd FileType python compiler pylint

" location list 
" close window by F8
nmap <F8>   :lclose<CR>
