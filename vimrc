set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" " alternatively, pass a path where Vundle should install bundles
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" " let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
"
" " Quick search tool ctrlp
Bundle 'kien/ctrlp.vim'
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'

Bundle 'Valloric/YouCompleteMe'
autocmd FileType python setlocal completeopt=menuone,longest

Bundle 'dhruvasagar/vim-table-mode'

Bundle 'xolox/vim-session'
Bundle 'xolox/vim-misc'
let g:session_autosave = 'no'

Bundle 'honza/vim-snippets'
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories  = ['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
" 定义存放代码片段的文件夹 .vim/UltiSnips下，使用自定义和默认的，将会的到全局，有冲突的会提示
" 进入对应filetype的snippets进行编辑
map <leader>us :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
        return snippet
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"

" ctrl+j/k 进行选择
func! g:JInYCM()
    if pumvisible()
        return "\<C-n>"
    else
        return "\<c-j>"
    endif
endfunction

func! g:KInYCM()
    if pumvisible()
        return "\<C-p>"
    else
        return "\<c-k>"
    endif
endfunction
inoremap <c-j> <c-r>=g:JInYCM()<cr>
au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
let g:UltiSnipsJumpBackwordTrigger = "<c-k>"

Bundle 'hynek/vim-python-pep8-indent'

Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='X'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_enable_highlighting=0
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_python_pep8_args='--ignore=E501,E225,E124,E712'
highlight SyntasticErrorSign guifg=white guibg=black


Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"

Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
map <F8> :NERDTreeTabsToggle<CR>
let NERDTreeHighlightCursorline=1
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]


" Bundle 'fholgado/minibufexpl.vim'
" nnoremap <TAB> :MBEbn<CR>
" noremap <leader>bn :MBEbn<CR>
" noremap <leader>bp :MBEbp<CR>
" noremap <leader>bd :MBEbd<CR>

Bundle 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
" let g:tagbar_ctags_bin = "/usr/local/bin"

Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'
set laststatus=2

Bundle 'altercation/vim-colors-solarized'
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar

Bundle 'tomasr/molokai'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Raimondi/delimitMate'
au FileType python let b:delimitMate_nesting_quotes = ['"']

filetype plugin indent on     " required
set nobackup
set noswapfile
set novisualbell
set noerrorbells
set nu
set hlsearch
set incsearch
set foldenable
set foldmethod=indent
set foldlevel=99

set backspace=indent,eol,start

set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

set ruler
set showcmd
set showmode

set scrolloff=7

syntax on
syntax enable
set background=dark
colorscheme desert
set encoding=utf-8

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nnoremap H gT
nnoremap L gt

nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>
vnoremap // y/<C-R>"<CR>"

set guifont=Menlo:h18
