""""""""""""""""""""
"Set up pathongen
""""""""""""""""""""
"call pathogen#infect()


""""""""""""""""""""
"Set up vundle
""""""""""""""""""""
set nocompatible   
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


""""""""""""""""""""
"Set up youcompleteme
""""""""""""""""""""
Plugin 'Valloric/YouCompleteMe'
let g:ycm_min_num_of_chars_for_completion=2

" Won't complete these type files 
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

"inoremap <expr> <CR>   pumvisible()
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
set completeopt=longest,menu

""""""""""""""""""""
"Set up airline
""""""""""""""""""""
Plugin 'bling/vim-airline'
let g:Powerline_symbols = 'fancy'
set laststatus=2
set noshowmode
"let g:airline_theme = 'raven'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

""""""""""""""""""""
"Set up tagbar
""""""""""""""""""""
Plugin 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>		"快捷键设置
let g:tagbar_ctags_bin='ctags'			"ctags程序的路径
let g:tagbar_width=30					"窗口宽度的设置
map <F5> :Tagbar<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py call tagbar#autoopen() 	"如果是c语言的程序的话，tagbar自动开启


""""""""""""""""""""
"Set up nerdtree
""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F6> :NERDTreeToggle<CR>


Plugin 'tpope/vim-fugitive'

call vundle#end() 
filetype plugin indent on

""""""""""""""""""""
"Set up theme
""""""""""""""""""""
set cul
set t_Co=256  
"hi CursorLine cterm=NONE ctermbg=darkgray guibg=#272727 "guifg=white  "ctermfg ->  set the font color
hi CursorLine cterm=NONE ctermbg=lightgray  guibg=#6B6B6B "guifg=white  "ctermfg ->  set the font color

set nu
syntax on
syntax enable
set hls
set mouse=a

""""""""""""""""""""
"Set tab 
""""""""""""""""""""
set ts=4
set sw=4
set expandtab "tab will set to space

""""""""""""""""""""
"Set hot key map 
""""""""""""""""""""
nmap <F2> :w<cr>
nmap <F3> :wq<cr>
nmap <F8> :q!<cr>
nmap <F11> :bp<cr>
nmap <F12> :bn<cr>

""""""""""""""""""""
"Remember last open
""""""""""""""""""""
autocmd BufReadPost *
            \ if line("'\"")>0&&line("'\"")<=line("$") |
            \   exe "normal g'\"" |
            \ endif
