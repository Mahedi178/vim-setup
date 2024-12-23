set encoding=UTF-8
call plug#begin('~/vimfiles/plugged')
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' 
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/sonokai'
Plug 'Everblush/everblush.vim'
Plug 'sickill/vim-monokai'
Plug 'hzchirs/vim-material'
Plug 'ghifarit53/tokyonight-vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'lifepillar/vim-solarized8'
Plug 'rakr/vim-one'
Plug 'ericbn/vim-solarized'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'machakann/vim-highlightedyank'
Plug 'kaarmu/typst.vim' "typst plugin 
Plug 'easymotion/vim-easymotion'
Plug 'Donaldttt/fuzzyy'
call plug#end()


syntax on
let mapleader=" "
set pastetoggle=<F2>
set background=dark
" colorscheme solarized8
colorscheme everblush
set textwidth=140
set timeoutlen=500 "sets the timeout length for key sequences 500 milliseconds
" end 

nnoremap <C-n> :NERDTreeToggle<CR>
"========= NERDTree ==================
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
set number  " shows the line number
filetype on
set shiftwidth=4
set autoindent
set smartindent
set smarttab
autocmd FileType markdown setlocal expandtab
set tabstop=4
set softtabstop=4
set nocompatible
set scrolloff=1  " keep at least 2 lines above/below
set sidescrolloff=2  " keep at least 5 characters left/right
set expandtab
set incsearch  " incremental search
set nohlsearch " I hate when half of the text lights up
set ignorecase 
set wildmenu  "
set wildoptions=pum    
noremap <silent><esc> <esc>:nohl<CR><esc>


" auto completion ignoring case
set noinfercase
set autoread
set autowrite
set nowrap
set formatoptions-=t " do not automatically wrap text when typing
set wildignore=*.swp,*bak.*.pyc,*.class
set completeopt=longest,menuone
set selectmode+=mouse
set clipboard=unnamed
set cursorline  " highlighting of the current line
set hlsearch
set termguicolors
set updatetime=300
set nobackup
set nowritebackup
set noswapfile
set noundofile

if !has('gui_running')
      set t_Co=256
endif
"set t_Co=256
set t_ut=
set mouse=a
set cmdheight=1
set splitbelow splitright 
set path+=**
filetype plugin indent on
set backspace=indent,eol,start
nnoremap <silent><buffer><leader>r :nohl<CR>
au GUIEnter * simalt ~x
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50


let g:airline_highlighting_cache=1
let g:airline_theme='tokyonight' "tokyonight
" status line modification
let g:airline#extensions#tabline#enabled=1
" already visible in gutter
let g:airline#extensions#syntastic#enabled=0
" I usually know where I am in a file
let g:airline#extensions#tagbar#enabled=0
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#displayed_head_limit=20
let g:airline#extensions#branch#format=2
let g:airline#extensions#branch#sha1_len=8
let g:airline#extensions#taboo#enabled=1
let g:airline#extensions#ale#enabled=0
let g:airline#extensions#languageclient#enabled=0
let g:airline#extensions#virtualenv#enabled=0
let g:airline#extensions#poetv#enabled=0
let g:airline#extensions#coc#enabled=0
let g:airline_detect_spell=1
let g:airline_detect_spelllang=0
let g:airline#extensions#fugitiveline#enabled = 1
" hide mode indicator for the desired common case
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
" skip empty secionts
let g:airline_skip_empty_sections=1

" theming
let g:airline_powerline_fonts=0
let g:airline_left_sep=''
let g:airline_right_sep=''
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.spell='✓'
let g:airline_section_z='%4l/%L'



augroup numbertoggle
     autocmd!
     autocmd BufEnter,FocusGained,InsertLeave * set rnu
	 autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html,*.js,*.go,*.rs,*.*
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
	\ setlocal textwidth=140 | 

"viweport down and up 
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
" xnoremap <leader>p "_dP
xnoremap <leader>p "0p
"====== Make adjusting split size  a bit more friendly =============== 
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

"========= Move lines up and down ============ 
nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-Up> :m .-2<CR>==
inoremap <S-Down> <Esc>:m .+1<CR>==gi
inoremap <S-Up> <Esc>:m .-2<CR>==gi
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv
xnoremap <S-Down> :m '>+1<CR>gv=gv
xnoremap <S-Up> :m '<-2<CR>gv=gv
"========= Split window navigation ============ 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"============== split horizontally or vertically =============

nnoremap sh :split 
nnoremap sv :vsplit 


"===================== tab relattd stuff ========
"============ Tab related stuff ===========
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tf :tabfirst<CR>
nnoremap tl :tablast<CR>
nnoremap te :tabedit<Space>
nnoremap tc :tabclose<CR>
"use jk to exit insert mode
inoremap jk <esc> 
vnoremap <Space>j <Esc>
nnoremap tt :terminal<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :q!<CR>
"=============== Auto Save ============== "
" augroup AUTOSAVE
" 	au!
" 	autocmd InsertLeave,TextChanged,FocusLost * silent! write
" augroup END
nnoremap <A-v> <C-v>
"copy
noremap<C-c> "+y
"paste 
"noremap<C-v> "+p
"cut 
noremap<C-x> "+d
"paste in insert mode
inoremap<C-v><Esc> "+pa
"Mapping U to redo
"copy file"
nnoremap  cp :%y+<CR>
"select all
" nnoremap <C-A> ggVG  
"close split window"
nnoremap <C-w> <C-w>c

" Better indenting"
vnoremap '>' '>gv'
vnoremap '<' '<gv'

inoremap {<CR> {<CR>}<Esc>O
"inoremap ( ()<Left>
inoremap { {}<Left>
"inoremap [ []<Left>
inoremap <expr> ) getline('.')[col('.')-1] == ")" ? "\<Right>" : ")"
inoremap <expr> } getline('.')[col('.')-1] == "}" ? "\<Right>" : "}"
inoremap <expr> ] getline('.')[col('.')-1] == "]" ? "\<Right>" : "]"


set completeopt=menuone,noinsert,noselect
set shortmess+=c  " Avoid showing extra completion messages.
highlight! link CocMenuSel PmenuSel
highlight Visual ctermbg=yellow guibg=#3E4452
""############ Highlight Yank 
if !exists('##TextYankPost')
	nmap y <Plug>(highlightedyank)
	xmap y <Plug>(highlightedyank)
	omap y <Plug>(highlightedyank)
endif
let g:highlightedyank_highlight_duration = 200
highlight HighlightedyankRegion cterm=reverse gui=reverse



inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

autocmd BufNewFile  *.cpp 0r ~/.vim/template/template.cpp
autocmd BufNewFile  *.js 0r ~/.vim/template/template.js
autocmd BufWinEnter *.cpp call cursor(91,5)
autocmd BufWinEnter *.js call cursor(40,9)
autocmd filetype cpp nnoremap <F8> :w <bar> !cls && g++ -g -O2 -std=c++23 % -o %:r -Wl,--stack,268435456 && echo C++ File Compiled<CR>
autocmd filetype c nnoremap <F8> :w <bar> !cls && gcc % -o %:r && echo C++ File Compiled<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !cls && g++ -g -O2 -std=c++17 % -o %:r -Wl,--stack,268435456 -D DEBUG && echo C++ File Compiled With Debug<CR>
autocmd filetype python nnoremap <F9> :w <bar> !cls && echo Input: && python %:r.py<CR>
autocmd filetype javascript nnoremap <F8> :w <bar> !cls && echo Output: && node %:r.js < input.txt<CR>
autocmd filetype javascript nnoremap <F9> :w <bar> !cls && echo Output: && node %:r.js<CR>
autocmd filetype typescript nnoremap <F9> :w <bar> !cls && echo Output: && ts-node %:r.ts<CR>
autocmd filetype asciidoc nnoremap <F9> :w <bar> !cls && echo Compiled: && asciidoctor-pdf %:r.adoc<CR>
autocmd filetype rust nnoremap <F9> :w <bar> !cls && echo Compiled and Output: && rustc %:r.rs && %:r<CR>
autocmd filetype lua nnoremap <F9> :w <bar> !cls && echo Output: && lua %:r.lua<CR>
autocmd filetype cpp nnoremap <F9> :!cls && Echo Input: && %:r<CR>
autocmd filetype c nnoremap <F9> :!cls && Echo Input: && %:r<CR>
autocmd filetype java nnoremap <F9> :w <bar> !cls && java %:r<CR>
" Go to C:\MinGW\bin and run mingw-get.exe install gdb
" " To use gdb, use the commands run and backtrace
"autocmd filetype cpp nnoremap <F11> :w <bar> !cls && gdb %:r<CR>
let g:mkdp_page_title = '「${name}」'
let g:mkdp_theme = 'dark'
"nnoremap <A-m> <Plug>MarkdownPreview

nmap <A-p> <Plug>MarkdownPreview
nmap <A-s> <Plug>MarkdownPreviewStop
nmap <A-t> <Plug>MarkdownPreviewToggle


"Coc.nvim UI settings
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-python', 'coc-clangd']

" Highlighting and blending for the floating window (completion menu)
highlight CocFloating guibg=#1e222a guifg=#bbc2cf
highlight PmenuSel guibg=#3e4452 guifg=#61afef

" Pop-up transparency
let g:coc_transparency = 15

" Better auto-width for completion menu

" Automatically resize pop-up menu width based on content
autocmd CompleteDone * if pumvisible() == 0 | pclose | endif


" Apply the custom icons in completion menus
autocmd User CocJumpPlaceholder call coc#util#jump_to_next_placeholder()

" Customize the display in completion pop-ups
function! s:customize_coc_ui() abort
  set completeopt=menu,menuone,noinsert,noselect
  highlight! link CocMenuSel PmenuSel
  highlight! link CocMenu Pmenu
endfunction

augroup MyCocConfig
  autocmd!
  autocmd VimEnter * call s:customize_coc_ui()
augroup END


"set cusor shape 
" Set cursor shape to block in Normal and Visual modes
let &t_EI = "\e[2 q"
" Set cursor shape to vertical bar in Insert mode
let &t_SI = "\e[4 q"
" Set cursor shape to underline in Command-line mode
autocmd CmdlineEnter * let &t_EI = "\e[4 q"
autocmd CmdlineLeave * let &t_EI = "\e[2 q"


" ultisnips setting 

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'



