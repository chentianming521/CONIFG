set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
set nu!
colorscheme desert 
syntax enable
syntax on

set softtabstop=4 
set shiftwidth=4 "
set tabstop=4 
set expandtab 
set softtabstop=4 
set showcmd
set guifont=Courier\ New:h10
set hlsearch

"Personal Settings. ����pathogen���в���ļ���
"More to be added soon.
execute pathogen#infect()    
filetype plugin indent on
syntax on

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"Set Color Scheme and Font Options
colorscheme kolor
set guifont=Consolas:h12
"set line no, buffer, search, highlight, autoindent and more.
set nu
set hidden
set ignorecase   "��С������
set smartcase
set showmatch
set ruler     "��ʾ���λ��
set vb
"set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a        "���֧��
set history=1000
set undolevels=1000

"�ӵ���������ʾ����
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=3
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
set foldmethod=syntax    "�۵� " ��ʾ������za���򿪻�رյ�ǰ�۵���zM���ر������۵���zR���������۵���
set wildmenu			"�����
set incsearch        "ʵʱ����

" ������ʾ��ǰ��/��
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline
set cursorcolumn

set autoindent        " �����Զ�����(����)����ÿ�е�����ֵ����һ����ȣ�ʹ�� noautoindent ȡ������
set smartindent        " ���ܶ��뷽ʽ
set showmatch        " ����ƥ��ģʽ����ʾƥ�������
set fileencodings=utf-8,gb18030,gbk,big5   "���ø�ʽ�����

" NERD tree  "����ļ��������"
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>

"ʹ��tagbar 
nmap <F8> :TagbarToggle<CR> 
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
"set encoding=prc

