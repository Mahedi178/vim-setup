set nocompatible 
filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim


call vundle#begin('~/vimfiles/bundle')
 
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'morhetz/gruvbox'
" Plugin 'scrooloose/syntastic'
 Plugin 'honza/vim-snippets'
 Plugin 'weirongxu/coc-explorer'
 Plugin 'vim-syntastic/syntastic' 
 Plugin 'preservim/nerdtree'
 call vundle#end()            " required


 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

set number
set relativenumber
syntax on
set clipboard=unnamedplus

"###################### paste toggle #################
set pastetoggle=<F2>

"################# python loading
"let g:python3_host_prog = 'C:\Users\Md.Mahedi Hassan\AppData\Local\Programs\Python\Python37-32\python.exe'

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

"############# Remap ######### split navigation
 
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

"######### Make adjusting split size  a bit more friendly ################
 noremap <silent> <C-Left> :vertical resize +3<CR>
 noremap <silent> <C-Right> :vertical resize -3<CR>
 noremap <silent> <C-Up> :resize +3<CR>
 noremap <silent> <C-Down> :resize -3<CR>
 

 nnoremap mt :NERDTreeToggle<CR>
"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"      autocmd!
"      autocmd VimEnter * :Vexplore
"augroup END
    

 "set cursorline 
 autocmd InsertEnter * highlight CursorLine guibg=#000050 guifg=fg
 autocmd InsertLeave * highlight CursorLine guibg=#004000 guifg=fg



 set path+=**
 set wildmenu
 set showcmd
 set mouse=a 
 set encoding=utf-8
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


 "=========indentation ===========
 set backspace=indent,eol,start
 set autoindent
 set cindent 
 set noundofile
 set smarttab
 set smartindent
 set shiftwidth=4
 set tabstop=4 "column per tabs
 set expandtab
  
 
 
"==========searching ============
"Ignore case while searching
set ignorecase

"incremental searching

set incsearch

"when searching try to be smart about cases
set smartcase

"hightlight search results
set hlsearch

"toggle search highlighting 

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


"filetype plugin on 
set background=dark
colorscheme gruvbox 

"################Auto save ################
"autocmd TextChanged,TextChangedI <buffer> silent write

"################ NERD TREE ##############
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CRDTreeWinPos = "left"
 let g:NtreeWinPos = "left"

"################# teminal window in vertical ##########
let mapleader=","
"map<leader>tt: vnew term://bash<CR>

let g:workspace_autosave_always = 1


"mapping to reload configuration


"set sw = 140

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
"set hls
"set is
"set cb=unnamed
"set ts=4
"set sw=4
"set si

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap mq <esc>

"################# vim-syntastics #####################
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"############### color ############################
"set t_Co=256

"################## YCM ##################
"let g:ycm_global_ycm_extra_conf='~/vimfiles/bundle/YouCompleteMe/third_party/.ycm_extra_conf.py'
"let g:ycm_seed_identifiers_with_syntax=1 
"let g:ycm_confirm_extra_conf=0
"let g:ycm_key_invoke_completion = '<C-a>' " ctrl + a
"let g:ycm_use_clangd=1

"################## C++ compile and run command ######################"

// If you chh

"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r &&  %:r.exe<CR>  
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -Wall -Wextra -Wshadow -fsanitize=undefined -DLOCAL -O -std=c++17 % -o %:r && ./%:r<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 % -O2 -Wall -Wextra -DLOCAL -o %:r -Wl,--stack,268435456<CR>
"autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17   -O2   % -o %:r && ./%:r <CR>

"below this works with cmd
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && %:r <CR>

"Run this in cmd . Here "in" is the file name , here you have to put input data
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && %:r.exe < in <CR>

"You have to run this program in gitbash terminal .here you have to create another file named "input.txt", in this file, you have to put input data
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && ./%:r <./input.txt <CR>

"this also works well in gitbash terminal 
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17  -O2  % -o %:r && ./%:r <CR>



autocmd filetype cpp nnoremap <F10> :!%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

"########################## Error Warnings #######################
let g:syntastic_cpp_compiler_options = '-Wall'

"################# c++ template ###############################
autocmd BufNewFile  *.cpp 0r ~/vimfiles/template/template.cpp
autocmd BufWinEnter *.cpp call cursor(71,5)

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

 
 
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR> 
"so if you tryin go the this jk
