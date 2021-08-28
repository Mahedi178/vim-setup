set nocompatible                         "behave like vim not old vim  
filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
"set runtimepath+=~/vimfiles/bundle\vim-snippets\snippets
set runtimepath+=~/vimfiles/bundle/YouCompleteMe 

call vundle#begin('~/vimfiles/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
" Plugin 'scrooloose/syntastic'
" Plugin 'bfrg/vim-cpp-modern'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'glepnir/oceanic-material'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'weirongxu/coc-explorer'
" Plugin 'vim-syntastic/syntastic' 
"Plugin 'yuttie/comfortable-motion.vim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mhartington/oceanic-next'
"Plugin 'dracula/vim', { 'name': 'dracula' }
" Plugin 'vim-scripts/AutoComplPop'
Plugin 'doums/darcula'
Plugin 'voldikss/vim-floaterm'
Plugin 'easymotion/vim-easymotion'
Plugin 'gruvbox-material/vim', {'as': 'gruvbox-material'}
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()            " required


filetype plugin indent on    " required
set number
set relativenumber
set ttyfast  "terminal accelerator 
syntax on
set clipboard=unnamed
set lazyredraw
set ttyfast
set wildmode=longest,list,full
let mapleader=" "
set pastetoggle=<F2>
set splitbelow splitright 
set path+=**
set wildmenu
set showcmd
set mouse=a
set selectmode+=mouse
set cursorline 
set background=dark
set termguicolors
colorscheme darcula 
set hidden
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title   "change the terminal title
set visualbell   "don't beep
set noerrorbells "don't beep
set autoread                        "reload file if changed
set autowrite                       "save file on
set ignorecase
set incsearch
set smartcase
set hlsearch
set showmatch
set mat=0
set nowrap
  "disable preview for auto-completion
set t_Co=256

"set laststatus=2
"set hidden
"set timeoutlen=1000
"set ttimeoutlen=0


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
"copy file"
nnoremap  cp :%y+<CR>
"select all
nnoremap <C-A> ggVG  
"close split window"
nnoremap <C-w> <C-w>c
inoremap mq <esc>

nnoremap<Tab> >>_
nnoremap<S-Tab> <<_
vnoremap<Tab> >>_
vnoremap<S-Tab> <<_

nnoremap S ^
nnoremap s $
nnoremap<F3> : set hlsearch!<CR>

"=============== Auto Save ============== "
augroup AUTOSAVE
      au!
      autocmd InsertLeave,TextChanged,FocusLost * silent! write
augroup END

"============ Number-relative =========
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

"============ Tab related stuff ===========
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tf :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap te :tabedit<Space>
nnoremap mr :w<CR> 
nnoremap tt :terminal<CR> 

"========= Split window navigation ============ 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"====== Make adjusting split size  a bit more friendly =============== 
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

"========= Move lines up and down ============ 
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

 
"============ Cpp Member Stuff ===========
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1
let g:cpp_attributes_highlight =1 
let g:indent_guides_auto_colors = 0


"########### powerline ###########
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

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_theme = 'onedark'
set showtabline=2

"Git integration config
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
let g:Powerline_symbols='fancy'


let g:AutoPairsFlyMode = 1
let g:workspace_autosave_always = 1
 
"========= NERDTree ==================
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap mt :NERDTreeToggle<CR>

"############# Easy motion set up ============
let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1


au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html,*.txt
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
set encoding=utf-8


"############# UltiSnips ###############
let g:UltiSnipsSnippetsDir="~/vimfiles/Ultisnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
"let g:UltiSnipsExpandTrigger="<tab>"
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

  

inoremap {<CR> {<CR>}<Esc>O
"inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap <expr> ) getline('.')[col('.')-1] == ")" ? "\<Right>" : ")"
inoremap <expr> } getline('.')[col('.')-1] == "}" ? "\<Right>" : "}"
inoremap <expr> ] getline('.')[col('.')-1] == "]" ? "\<Right>" : "]"




"################## C++ compile and run command ######################"

"autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r &&  %:r.exe<CR>  
"autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++17 -O2 -Wall -Wno-unused-result % -o %:r &&  %:r.exe<CR>  
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -Wall -Wextra -Wshadow -fsanitize=undefined -DLOCAL -O -std=c++17 % -o %:r && ./%:r<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -O2 -Wall -Wextra -DLOCAL -o %:r -Wl,--stack,268435456<CR>
"autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17   -O2   % -o %:r && ./%:r <CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !build.sh %:r <CR> 
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && %:r <CR>

"############   below this works with cmd###########
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17  -O2  % -o %:r <CR>
"noremap <F9> <ESC> :w <CR> :!g++ -std=c++17  -O2  % -o %:r<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -Wall -std=c++17 % -o %:r<CR>
autocmd filetype cpp nnoremap <F8> :vertical terminal ++shell ++cols=40 %:r.exe <CR>
autocmd filetype cpp nnoremap <F10> :!%:r.exe <CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !build.sh %:r <CR> 
"autocmd filetype cpp nnoremap <f5> :w <bar> !g++ -std=c++17 % <cr> :vnew <bar> :te "a.exe" <cr><cr>
"autocmd filetype cpp nnoremap <f6> :vnew <bar> :te "a.exe" <cr>

"this also works well with cmd and here "in"is the file without extension 
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && %:r.exe < in <CR>

"this works well with gitbash terminal 
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && ./%:r <./input.txt <CR>

"this also works well with gitbash terminal 
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && ./%:r <CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -Wall % -o %:r<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % <cr> :vnew <bar> :te "a.exe" <cr><cr>

"############### from peltorator#######
"noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
"inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>


"autocmd filetype cpp nnoremap <F10> !%:r<CR>
"autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
"autocmd FileType cpp nnoremap <buffer> <F8> :w<esc>:FloatermNew g++ -std=c++17 % -o<CR>
"########################## Error Warnings #######################
"let g:syntastic_cpp_compiler_options = '-Wall'
"autocmd FileType cpp nnoremap <buffer> <F8> :w<esc>:FloatermNew g++ % && ./a.out && rm a.out<CR>
"################# c++ template ###############################
autocmd BufNewFile  *.cpp 0r ~/vimfiles/template/template.cpp
autocmd BufWinEnter *.cpp call cursor(96,5)


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


"###########  YoucompleteMe Configuration ########

" scriptencoding utf-8

" if !((v:version == 704 && has('patch143') || v:version > 704) && (has('python') || has('python3')))
"   let g:loaded_youcompleteme = 1
" endif

" let g:ycm_show_diagnostics_ui = 0 " Disable to allow syntastic cpp checkers
" let g:ycm_key_detailed_diagnostics = ''
" let g:ycm_key_invoke_completion = ''
" let g:ycm_complete_in_strings=0
" let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0 

"let g:ycm_clangd_binary_path = "C:\Program Files\LLVM\lib\clang"
let g:ycm_clangd_binary_path = "C:\Program Files\LLVM\bin\clangd"
let g:ycm_global_ycm_extra_conf='~/vimfiles/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0
"map <F5> :YcmCompleter FixIt<CR>
"let g:ycm_filetype_whitelist = {'c': 1,'cpp':1,'tex':1} 
let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cuda', 'objc', 'objcpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]
                                
set nobackup
set nowritebackup
set noswapfile
set noundofile
set completeopt-=preview 
