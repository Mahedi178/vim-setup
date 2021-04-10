set nocompatible 
filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim


call vundle#begin('~/vimfiles/bundle')
 
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'morhetz/gruvbox'
" Plugin 'scrooloose/syntastic'
 "Plugin 'SirVer/ultisnips'
" Plugin 'bfrg/vim-cpp-modern'
 Plugin 'joshdick/onedark.vim'
 Plugin 'itchyny/lightline.vim'
 Plugin 'glepnir/oceanic-material'
 Plugin 'kristijanhusak/vim-hybrid-material'
 Plugin 'honza/vim-snippets'
 Plugin 'weirongxu/coc-explorer'
 Plugin 'vim-syntastic/syntastic' 
 Plugin 'preservim/nerdtree'
 Plugin 'tpope/vim-fugitive'
 Plugin 'tpope/vim-surround'
 Plugin 'tpope/vim-commentary'
 Plugin 'vim-airline/vim-airline' 
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'ryanoasis/vim-devicons'
 Plugin 'mhartington/oceanic-next'
 "Plugin 'dracula/vim', { 'name': 'dracula' }
" Plugin 'vim-scripts/AutoComplPop'
 Plugin 'doums/darcula'
 Plugin 'gruvbox-material/vim', {'as': 'gruvbox-material'}
 call vundle#end()            " required
           

 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
"set linespace=12
set number
set relativenumber
syntax on
set clipboard=unnamed

let mapleader=","

"###################### paste toggle #################
set pastetoggle=<F2>


"################ auto save #################
augroup AUTOSAVE
      au!
      autocmd InsertLeave,TextChanged,FocusLost * silent! write
augroup END


 nnoremap tn :tabnew<Space>
 nnoremap tk :tabnext<CR>
 nnoremap tj :tabprev<CR>
 nnoremap tf :tabfirst<CR>
 nnoremap tl :tablast<CR>
 nnoremap te :tabedit<Space>
 "so save this first we have to press mq then mr  
 nnoremap mr :w<CR> 
 "this doesn't work in gitbash , but works well in cmd
 nnoremap tt :terminal<CR> 
"#########:### Remap ######### split navigation

 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l
" nnoremap K <nop>
"######### Make adjusting split size  a bit more friendly ################
 noremap <silent> <C-Left> :vertical resize +3<CR>
 noremap <silent> <C-Right> :vertical resize -3<CR>
 noremap <silent> <C-Up> :resize +3<CR>
 noremap <silent> <C-Down> :resize -3<CR>
 

 nnoremap mt :NERDTreeToggle<CR>
" nnoremap <leader>n: NERDTreeFocus<CR>
 
 "############# new settings #######
 set splitbelow splitright 
" set splitbelow
" set foldmethod=indent
" set foldlevel=99
 "enable folding with sapce bar
" nnoremap <space> za 

 "################ move visually selected lines up and down in various mode 
" nnoremap <A-j> :m+<CR>==
" nnoremap <A-k> :m-2<CR>==
" inoremap <A-j> <Esc>:m+<CR>==gi
" inoremap <A-k> <Esc>:m-2<CR>==gi
" vnoremap <A-j> :m '>+<CR>gv=gv
" vnoremap <A-k> :m-2<CR>gv=g
"
"
"
" ################ cpp-modern settins ############

" Disable function highlighting (affects both C and C++ files)
"let g:cpp_no_function_highlight = 1
" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight =1 

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1
" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1


nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

"nnoremap <silent> ,<S-Up>   :<C-u>move-2<CR>==

let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  guifg=#27292A guibg=#212324 ctermbg=235
"hi IndentGuidesEven guifg=#212324 guibg=#27292A ctermbg=236

"############## lightline ##############

let g:airline_theme='onedark'
"let g:lightline = { 'colorscheme': 'darculaOriginal' }
"set cursorline 
"autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
"autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg

"set dir= ~\\vimfiles\\.swap
"set backupdir = ~\\vimfiles\\.backup
"set udir = ~\\vimfiles\\.undo



let g:airline_powerline_fonts = 1

 set path+=**
 set wildmenu
 set showcmd
 set mouse=a
" set mouse=ar
 set selectmode+=mouse
" set cursorline 
  "copy
 noremap<C-c> "+y
 "paste 
 noremap<C-v> "+p

 "cut 
 noremap<C-x> "+d

 "paste in insert mode
 inoremap<C-v><Esc> "+pa

 "Mapping U to redo
 noremap U <c-r>
 noremap<c-r> <NOP>
 	
 "indent via Tab
 
 nnoremap<Tab> >>_
 nnoremap<S-Tab> <<_
 vnoremap<Tab> >>_
 vnoremap<S-Tab> <<_

 "####### move to beginning/end of line ###########
 nnoremap B ^
 nnoremap E $
 
 "### $/^ can't do anything ###############
 nnoremap $ <nop>
 nnoremap ^ <nop>

nnoremap  cp :%y+<CR>
 "######################## NERDTree ##########
 let g:NERDTreeShowHidden = 1
 let g:NERDTreeMinimalUI = 1
 let g:NERDTreeIgnore = []
 let g:NERDTreeStatusline = ''


 "=========indentation ===========
 set backspace=indent,eol,start
 set autoindent
 set cindent 
 set smarttab
 set smartindent
 set shiftwidth=4
 set tabstop=4 "column per tabs
 set expandtab
" set noswapfile
" set nobackup
" set nowritebackup
" set nowb
" set noundofile
 "set macligatures
 
"==========searching ============
"Ignore case while searching
set ignorecase
set incsearch
set smartcase
set hlsearch
nnoremap<F3> : set hlsearch!<CR>

"=======================Abbreviations ============
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


"================== MSC ===========
"
""highlight matching braces
set showmatch

"how many tenthsw of a second to blink when matching brackets
set mat=0

"when last window will have a status line ( 2 = always)
"set laststatus = 2

"disable wrapping of long lines into multiple lines
set nowrap

"history 
"set history = 1000


au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
set encoding=utf-8

"syntax enable
"packadd! dracula
set background=dark
set termguicolors
" possible values are : hard,medium(default),soft
"let g:gruvbox_material_background='hard'
colorscheme darcula 
"hybrid_material, grubvox-material,OceanicNext,oceanic_matetial
"########## auto pairs ####### 
 let g:AutoPairsFlyMode = 1

"################ NERD TREE ##############
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CRDTreeWinPos = "left"
 "let g:NtreeWinPos = "left"

"################# teminal window in vertical ##########
"map<leader>tt: vnew term://bash<CR>

let g:workspace_autosave_always = 1


"mapping to reload configuration


"set sw = 140


"############# UltiSnips ###############
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"




if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=fira_code:h10
  endif
endif
source $VIMRUNTIME/vimrc_example.vim

au GUIEnter * simalt ~x

"########### Autoclose tags #############"
  

inoremap {<CR> {<CR>}<Esc>O
"inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap <expr> ) getline('.')[col('.')-1] == ")" ? "\<Right>" : ")"
inoremap <expr> } getline('.')[col('.')-1] == "}" ? "\<Right>" : "}"
inoremap <expr> ] getline('.')[col('.')-1] == "]" ? "\<Right>" : "]"
inoremap mq <esc>

"################# vim-syntastics #####################
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = '-std=c++17 -Wall'
"let g:syntastic_cpp_checkers=['clang_check','gcc']
"let g:syntastic_c_checkers=['make','splint']
"let g:syntastic_cpp_compiler='g++'
"let g:syntastic_cpp_compiler_options="-std=c++17"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"############### color ############################
"set t_Co=256


"################## C++ compile and run command ######################"

"autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r &&  %:r.exe<CR>  
autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++17 -O2 -Wall -Wno-unused-result % -o %:r &&  %:r.exe<CR>  
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -Wall -Wextra -Wshadow -fsanitize=undefined -DLOCAL -O -std=c++17 % -o %:r && ./%:r<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -O2 -Wall -Wextra -DLOCAL -o %:r -Wl,--stack,268435456<CR>
"autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17   -O2   % -o %:r && ./%:r <CR>

"below this works with cmd
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && %:r <CR>

"this also works well with cmd and here "in"is the file without extension 
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && %:r.exe < in <CR>

"this works well with gitbash terminal 
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && ./%:r <./input.txt <CR>

"this also works well with gitbash terminal 
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && ./%:r <CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % <cr> :vnew <bar> :te "a.exe" <cr><cr>


"autocmd filetype cpp nnoremap <F10> :!%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

"########################## Error Warnings #######################
"let g:syntastic_cpp_compiler_options = '-Wall'

"################# c++ template ###############################
autocmd BufNewFile  *.cpp 0r ~/vimfiles/template/template.cpp
autocmd BufWinEnter *.cpp call cursor(79,5)

set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END



set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction
"set backup
"set dir=%TMP%
"set backupdir=%TMP%
"set directory=%TMP%
"set noundofile
"so if you tryin go the this jk
set nobackup
set nowritebackup
set noswapfile
set noundofile
