set nocompatible              " be iMproved, required 
filetype off  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
"Plugin 'vim-syntastic/syntastic' 
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'doums/darcula'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'andrewradev/tagalong.vim'
Plugin 'alvan/vim-closetag'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required

filetype plugin indent on    " required

"mq = <Esc>   mr = w:   mt = NERDTree toggle

"let g:airline_theme='luna'

let s:clip='/mnt/c/Windows/System32/clip.exe'      "default location
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator==# 'y' | call system('cat |'.s:clip,@0)|endif  
    augroup End
end

set title
set number
set relativenumber
syntax on
set clipboard=unnamedplus
set scrolloff=5 
set termguicolors
set visualbell
set noerrorbells
set path+=**
set wildmenu
set showcmd
set mouse=a
set selectmode+=mouse
set encoding=UTF-8
set noswapfile
set nobackup
set nowb
let mapleader=" "
set splitbelow splitright
set wildmode=longest,list,full
set pastetoggle=<F2>
set ttyfast
set backspace=indent,eol,start
set autoindent
set cindent
set noundofile
set smarttab
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set ignorecase
set incsearch
set smartcase
set hlsearch
nnoremap<<F3> :set hlsearch!<CR>
set nobackup
set nowritebackup
set noswapfile
set noundofile
set completeopt-=preview   "disable preview for auto-completion
set showmatch
set mat=0
set nowrap
set textwidth=120
set t_Co=256
set wildignore=*.swp,*bak.*.pyc,*.class
set undolevels=1000
set history=1000
set hidden
set autoread
set autowrite
set background=light
colorscheme darcula

"############## Abbreviations ###########
iab wiht with
iab whit with
iab ture true
iab flase false
iab wieght weight
iab hieght height
iab tihs this
iab teh the
iab mian main
iab funciton function
iab funcition function

"set guifont=CodeNewRoman_Nerd_Font:h13


"========= auto save =========
augroup AUTOSAVE
    au!
    autocmd InsertLeave,TextChanged,FocusLost * silent! write
augroup END

"=============== auto number toggle =========
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu 
augroup END

autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent loadview

"highlight matching braces
"============ Enable tabline =========
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:ariline_powerline_fonts = 1
"let g:ariline_theme='onedark'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"let g:airline_theme = 'onedark'

set showtabline=2

"Git integration config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

"============ remap split navigation =========
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"============ make adjusting split size a bit more friendly =========
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

"========= Moving lines up and down ============
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

let g:indent_guides_auto_colors=0
set cursorline

"############ Managing Tab Stuffs ########

nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tf :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap te :tabedit<Space>
nnoremap tt :terminal<CR>

nnoremap mr :w<CR> 
"copy file 
map<C-a> <esc>ggVG<CR>  
nnoremap cp ggyG
nnoremap <C-A> ggVG
nnoremap <C-w> <C-w>c

"nnoremap cp:%y<CR>
"noremap<C-c> "+y   
"noremap<C-v> "+p
"noremap<C-v> "+p
noremap<C-x> "+d
"paste in insert mode
inoremap<C-v><Esc> "+pa
"Mapping u to redo
noremap U <c-r>
noremap<c-r> <NOP>


"######### indent via tab 
nnoremap<Tab> >>_
nnoremap<S-Tab> <<_
vnoremap<Tab> >>_
vnoremap<S-Tab> <<_

nnoremap S ^
nnoremap s $


"################ NERDTree ##########
nnoremap mt :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline =''


au BufNewFile,BufRead *py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html,*.txt
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 | 
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
set encoding=utf-8

let g:AutoPairsFlyMode = 1
let g:workspace_autosave_always =1 
let g:airline_powerline_fonts=1


inoremap {<CR> {<CR>}<Esc>O
"inoremap ( ()<Left>
inoremap { {}<Left>
"inoremap [ []<Left>
inoremap <expr> ) getline('.')[col('.')-1] == ")" ? "\<Right>" : ")"
inoremap <expr> } getline('.')[col('.')-1] == "}" ? "\<Right>" : "}"
inoremap <expr> ] getline('.')[col('.')-1] == "]" ? "\<Right>" : "]"

inoremap mq <esc>

"############# vim-syntastic #############

let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_cpp_compilers='gcc'
let g:syntastic_cpp_compiler_options='-std=c++17 -Wall'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" ################### Emmet setting ###############
"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=','
let g:tagalong_verbose = 1


"############# Easy motion seutp############

let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1


"################### UltiSnips and YouComplete Setting #####

"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:ycm_use_ultisnips_completer = 1
"let g:ycm_key_list_select_completion=[]
"let g:ycm_key_list_previous_completion=[]
" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<NOP>"
"let g:UltiSnipsJumpForwardTrigger = "<TAB>"
"let g:UltiSnipsJumpBackwardTrigger = "<S-TAB>"


let g:UltiSnipsSnippetsDir="~/.vim/Ultisnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger = "<NOP>"
let g:UltiSnipsJumpForwardTrigger = "<TAB>"
let g:UltiSnipsJumpBackwardTrigger = "<S-TAB>"
function ExpandSnippet()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res
        return ""
    else
        return "\<CR>"
    endif
endfunction
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippet()<CR>" : "\<CR>"



"============ c++ template, compiler and run stuff =========
autocmd BufNewFile *.cpp 0r ~/.vim/template/template.cpp
autocmd BufWinEnter *.cpp call cursor(96,5)

"autocmd filetype cpp nnoremap <F9> :w !g++ -std=c++17 -O2 -Wall % -o %:r && %:r.exe<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r && ./%:r<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -Wall -Wextra -Wshadow -fsanitize=undefined -DLOCAL -O -std=c++17 % -o %:r && ./%:r<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && ./%:r <CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -O2 -Wall -Wextra -DLOCAL -o %:r -Wl,--stack,268435456<CR>
"automcd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall-Wno-unused-result -std=c++17 -O2  %-o %:r && ./%:r<CR>

autocmd filetype cpp nnoremap <F8> :vertical terminal ++shell ++cols=40 ./%:r <CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -Wall -std=c++17 % -o %:r<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -Wall -Wextra -O2 -Wshadow -Wfloat-equal -Wconversion -Wlogical-op -fsanitize=address  % -o %:r<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
    
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
"let g:syntastic_cpp_compiler_options='-Wall'

"let g:ycm_global_ycm_conf='/home/mahedi/.vim/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

"for python
"let g:ycm_confirm_extra_conf=0
"let g:ycm_python_binary_path='/usr/bin/python3'

