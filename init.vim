" ======================================================
" File              : init.vim
" License           : 0.0.2
" Author            : Max <ismaxiaolong@gmail.com>
" Date              : 2022.06.24
" Last Modified Date: 2022.10.31
" Desc              : NEOVIM (support Python, Lua)
"  __  ____   __   ___     _____ __  __ ____   ____
" |  \/  \ \ / /    \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /      \ \ / / | || |\/| | |_) | |
" | |  | | | |        \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|         \_/  |___|_|  |_|_| \_\\____|
" ======================================================

" {{{ << Plugin - vimplug >>
call plug#begin('D:/Program Files/Neovim/share/nvim/Mine/Plugged')
" -------------lazy load-------------
Plug 'mg979/vim-visual-multi', { 'branch': 'master', 'on': [] }
augroup load_multi
    autocmd!
    autocmd InsertEnter * call plug#load('vim-visual-multi') | autocmd! load_multi
augroup END

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': [ 'markdown' ]}
Plug 'mattn/calendar-vim',  { 'on': 'CalendarVR' }
Plug 'icebreaker/gustav.vim', { 'for': [ 'markdown' ] }
Plug 'dhruvasagar/vim-table-mode', { 'for': [ 'markdown' ] }
Plug 'itchyny/screensaver.vim', { 'on': 'ScreenSaver' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'tpope/vim-endwise', { 'for': [ 'matlab' ] }
Plug 'dstein64/vim-startuptime', { 'on': 'StartupTime' }
Plug 'chrisbra/csv.vim'
Plug 'arecarn/vim-crunch', { 'on': [ '<Plug>(crunch-operator-line)', '<Plug>(visual-crunch-operator)'] }
Plug 'terryma/vim-expand-region', { 'on': [ '<Plug>(expand_region_expand)', '<Plug>(expand_region_shrink)'] }
Plug 'junegunn/vim-easy-align', { 'on': '<Plug>(EasyAlign)' }
Plug 'AndrewRadev/linediff.vim', { 'on': 'Linediff' }
Plug 'tommcdo/vim-exchange', { 'on': [ '<Plug>(Exchange)', '<Plug>(ExchangeLine)', '<Plug>(ExchangeClear)'] }
Plug 'alpertuna/vim-header', { 'on': 'AddHeader' }
Plug 'iqxd/vim-mine-sweeping', { 'on': [ 'MineSweep' ]}
Plug 'Yggdroot/LeaderF', { 'on': [ 'LeaderfFile', 'Leaderf', 'LeaderfLine'] }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown' }
Plug 'voldikss/vim-floaterm', { 'on': [ 'FloatermNew', 'FloatermSend'] }
Plug 'mhinz/vim-startify'
Plug 'zef/vim-cycle'
Plug 'machakann/vim-sandwich'
Plug 'luochen1990/rainbow'
Plug 'wellle/targets.vim'

"------------------- lazy load vim plug -------------------

Plug 'tpope/vim-eunuch', { 'on': []}
Plug 'ntpeters/vim-better-whitespace', { 'on': []}
Plug 'lfv89/vim-interestingwords', { 'on': []}
Plug 'markonm/traces.vim', { 'on': []}
Plug 'triglav/vim-visual-increment', { 'on': []}
Plug 'itchyny/vim-cursorword', { 'on': []}
Plug 'bronson/vim-visual-star-search', { 'on': []}  " Start a * or # search from a visual block

call timer_start(700, 'LoadPlug_Vim')
function! LoadPlug_Vim(timer) abort
    call plug#load('vim-eunuch')
    call plug#load('vim-better-whitespace')
    call plug#load('vim-interestingwords')
    call plug#load('traces.vim')
    call plug#load('vim-visual-increment')
    call plug#load('vim-cursorword')
    call plug#load('vim-visual-star-search')
endfunction

" Plug g:plug_home. '/sideways.vim-main', { 'for': ['matlab','python','fortran'] }
" Plug g:plug_home. '/vimtex-master', { 'for': 'tex' }
" Plug g:plug_home. '/pangu.vim-master'
" Plug g:plug_home. '/vim-repeat-master'
" Plug g:plug_home. '/vimcdoc-master'

" ===================================================================
" --------------------------- lua plugins ---------------------------
Plug 'nathom/filetype.nvim'
Plug 'lewis6991/impatient.nvim'
Plug 'alvarosevilla95/luatab.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'chentoast/marks.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'windwp/nvim-autopairs'
Plug 'karb94/neoscroll.nvim'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'folke/which-key.nvim'
Plug 'b3nj5m1n/kommentary'
Plug 'ellisonleao/weather.nvim'

" motion
Plug 'ggandor/leap.nvim'
Plug 'ggandor/flit.nvim'

" colorscheme
Plug 'EdenEast/nightfox.nvim'

" Telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-lua/plenary.nvim'

" notes
Plug 'folke/todo-comments.nvim'
Plug 'nvim-neorg/neorg', { 'tag': '0.0.12' }
Plug 'nvim-neorg/neorg-telescope'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate', 'frozen': 1 } "CANCELED:Updated
Plug 'yioneko/nvim-yati'

" Auto completion-lsp
Plug 'williamboman/nvim-lsp-installer', { 'frozen': 1 } "CANCELED:Updated
Plug 'neovim/nvim-lspconfig', { 'frozen': 1 } "CANCELED:Updated

" Auto completion-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-calc'
Plug 'mstanciu552/cmp-matlab'
Plug 'lukas-reineke/cmp-under-comparator'
Plug 'uga-rosa/cmp-dictionary'
Plug 'kdheepak/cmp-latex-symbols'
Plug 'ray-x/cmp-treesitter'

" Auto completion-Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

"------------------------------------------------------------------------
"--------------------------- Modified plugins ---------------------------
" Modified plugins (viml)
" 1. add SpeedDatingFormat
Plug g:plug_home. '/vim-speeddating-master', { 'for': [ 'org', 'norg', 'markdown' ] }

" 2. remap: "<leader>" to "\"; turn off the drag function
Plug g:plug_home. '/vim-scripts-DrawIt', { 'on': 'DIstart' }

" --------------------------
" Modified plugins (lua)
" 1. theme = 'max_lualine_theme_dark' | theme = 'max_lualine_theme_light'
Plug g:plug_home. '/lualine.nvim-master'

" 2. weather report for 3 days
Plug g:plug_home. '/weather3day.nvim-main'

call plug#end()

lua <<EOF
_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}
require('impatient')
EOF
" }}}

" {{{ vim ??????
" 1.NORMAL?????????, SHIFT ????????????????????????,  w b e ??????????????????, ?????? W B E ????????????.
" 2.NORMAL?????????, C-o ??????????????????????????????.
" 3.???????????????, CTRL-X CTRL-F ?????????????????????????????????????????????.
" 4.???????????????, ?????????????????????????????????, ???????????? CTRL-W ?????? <BackSpace> ???.
" 5.VISUAL?????????, ??? v ?????????????????????, ????????? o ????????????, ???????????????.
" 6.??????
"      :ce(nter) ??????????????????  :le(ft) ??????????????????  :le(ft) ??????????????????  :ri(ght) ??????????????????
"      gq ????????????????????????, ?????????????????????????????????
"      :Pangu ?????????
" 7.????????????????????????,NORMAL?????????'q:'
" 8.??? ?????? ?????? ?????? something ,":'<,'>s/$/something/g"
"   ??? ?????? ?????? ?????? something ,":'<,'>s/^/something/g"
" 9.VISUAL???????????????,zf????????????????????????????????????{{{}}}?????????,zd?????????????????????
" 10.???????????????,VISUAl?????????u/U??????????????????????????????~?????????
" 11.INSERT?????????<c-w>?????????????????????,<C-u>???????????????????????????????????????
" 11.??????????????????.VISUAL???????????????,g <C-a>:??????+1,<C-x>:??????-1
" 12.???????????????,":1,100d",??????1-100???
" 13.???1?????????:'sort n' ??????; 'sort! n' ??????; '1,4sort n' ??????????????????
"    ???2?????????(????????????):'sort /[^,]*,/ n' ??????;'sort! /[^,]*,/ n'??????
" 14.'sort nu' ??????+??????
" 15. ?????????????????????: 1) ??????????????? nj; ??????????????? nk;
"                     2??????????????? ndj, ??????????????????-????????????????????????(????????????);
"                        ???????????????ndd, ????????????????????????ndd, ???????????????n???,???????????????, ?????????????????????n-1???
" 16. ??????     zc zC     ?????? zM
"     ???????????? zo zO     ?????? zR
" }}}

" {{{ ????????????
" ????????????????????????
if has('multi_byte')
    " ??????????????????
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
    " ????????????????????????????????????????????????
    "set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
    set fileencodings=utf-8,gbk,gb18030,big5,ucs-bom,euc-jp,latin1
endif

" ??????vim??????matlab???????????????, matlab????????????????????????
augroup matlab_filetype
    autocmd!
    "autocmd FileType matlab set fileencoding=GB2312       "GB2312=cp936
    autocmd FileType matlab set fileencoding=cp936       "GB2312=cp936
augroup END

" }}}

" {{{ ??????/??????
" ??????
if exists('g:neovide')
    "set guifont=Consolas:h12.5
    "set guifont=monaco:h12.5:cANSI                         " no Powerline/Nerd Font
    "set guifont=inconsolata_nerd_font_mono:h12.5:cANSI     " Nerd Font

    set guifont=CodeNewRoman_Nerd_Font_Mono:h12:cANSI       " Nerd Font
    set guifontwide=inconsolatago_qihei_nf:h12.5:cANSI      " ?????? Nerd Font
else
    set guifont=CodeNewRoman_Nerd_Font_Mono:h12:cANSI       " Nerd Font
    set guifontwide=inconsolatago_qihei_nf:h12.5:cANSI      " ?????? Nerd Font
endif

" }}}

" {{{ ????????????

" ????????????
syntax enable                        " ??????????????????
syntax on                            " ????????????????????????
syntax sync minlines=64
if &bg == 'dark'
    hi CursorLine gui=NONE guibg=#3C4452
elseif &bg == 'light'
    hi CursorLine gui=NONE guibg=#c6cbd9
    " hi CursorLine gui=NONE guibg=#CCCCCC
endif

language en
language messages zh_CN.utf-8  " ??????consle????????????????????????
filetype on                          " ??????????????????
filetype indent on                   " ??????????????????????????????????????????????????????
filetype plugin on                   " ????????????????????????????????????????????????
filetype plugin indent on

set autoindent                       " ????????????
set tabstop=4                        " ??????tab????????????
set softtabstop=4                    " ??????????????????
set expandtab                        " ?????????tab???,vim???????????????????????????tab
set lazyredraw                       " ????????????(????????????)
set shortmess-=S

" set wildmode=list:longest,full       " Command <Tab> completion, list matches
set wildmode=longest,full       " Command <Tab> completion, list matches
set wildmenu                         " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~          " stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

set laststatus=2                     " ?????????????????????
set cmdheight=1                      " ??????????????????,?????????1,????????????2
set linebreak                        " ????????????
set backspace=2                      " ?????????????????????
set backspace=indent,eol,start    " More powerful backspacing (indent:????????????:set indent,:set ai???????????????,???????????????????????????????????????,????????????????????????.???????????????.eol:?????????????????????????????????,??????????????????????????????,????????????eol.start:????????????????????????????????????,???????????????.)
set shiftwidth=4                     " ???????????????????????????4?????????
set cindent shiftwidth=4             " ????????????4??????
set smartindent                      " ??????????????????
set ai!                              " ??????????????????
set nu!                              " ????????????
set showmatch                        " ????????????????????????
set mouse=a                          " ????????????
set ruler                            " ???????????????????????????????????????
set hlsearch                         " ????????????????????????
set incsearch                        " ????????????????????????
set ignorecase                       " ???????????????
set smartcase
" set nowrapscan                     " ???????????????????????????????????????
set vb t_vb=                         " ???????????????
set guicursor+=a:blinkon0            " ?????????????????????
set hidden                           " ????????????????????????????????????????????????
set winaltkeys=no                    " ?????? alt ????????????????????????
set scrolloff=5                      " ???????????????????????????????????????(5???)
set writebackup                      " ?????????????????????
set nobackup
set autochdir                        " ??????????????????????????????????????????
set wrap                             " ??????????????????,????????????
" set norelativenumber                " ?????????????????????
set relativenumber                   " ??????????????????
set showcmd
set formatoptions+=m                 " ??????Unicode?????????255?????????,???????????????????????????
set formatoptions+=B                 " ?????????????????????,?????????????????????
set whichwrap+=<,>,h,l               " ??????backspace???????????????????????????
set magic                            " For regular expressions turn magic on

" ????????????
set foldmethod=marker                " ????????????---?????????????????????
" set foldmethod=manual              " ????????????---??????
" set foldmethod=syntax              " ????????????---????????????
" set foldmethod=indent              " ????????????---??????
set foldcolumn=2                     " ??????????????????
set foldlevel=33
" set foldcolumn&                     " ??????????????????

" ????????????
set splitright                       " ???????????????????????????
set splitbelow                       " ???????????????????????????

" set listchars=tab:\|\ ,                                         " ??????Tab???,???????????????????????????
set listchars=trail:.,extends:>,precedes:<,space:.               " ????????????.??????
" set listchars=eol:??,tab:>??,trail:.,extends:>,precedes:<,space:??? " <F3>????????????????????????

" IOS:Windows  ?????? clipboard ??????Nvim????????????
set clipboard+=unnamed               " ???????????????
let g:clipboard = {
            \ 'name': 'win32yank',
            \ 'copy': {
                \ '+': 'win32yank.exe -i --crlf',
                \ '*': 'win32yank.exe -i --crlf',
                \ },
                \ 'paste': {
                    \ '+': 'win32yank.exe -o --lf',
                    \ '*': 'win32yank.exe -o --lf',
                    \ },
                    \ 'cache_enabled': 0,
                    \ }

" ENV-Python
let g:python_host_prog  = "C:/Python/Python311/python.exe"
let g:python3_host_prog = "C:/Python/Python311/python.exe"
let $PYTHONUNBUFFERED=1              " ??????python stdout??????

augroup load_rpy
    autocmd!
    autocmd BufNewFile,BufRead *.rpy set syntax=python | autocmd! load_rpy
augroup END

" Python:PEP8???????????????
augroup python_pep8
    autocmd!
    au BufNewFile,BufRead *.py
                \set fileformat=unix     " ???unix??????????????????,??????????????????GITHUB???????????????????????????????????????????????????.
augroup END

" ?????????????????????
augroup genconfiggroup
    autocmd!
    autocmd GUIEnter * set vb t_vb=
    autocmd VimEnter * set vb t_vb=
augroup END

augroup tex_md_width
    autocmd!
    autocmd FileType tex set textwidth=72         " ???????????????????????????????????????
    autocmd FileType markdown set textwidth=80    " ???????????????????????????????????????
augroup END

augroup line_font
    autocmd!
    " ?????????????????????????????????80?????????
    au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.hs,*.vim,*.md 2match Underlined /.\%81v/
    " Fortran??????,?????????????????????????????????72?????????(??????Fortran77????????????)
    au BufRead,BufNewFile *.for 2match Underlined /.\%73v/
augroup END

" Return to last edit position when opening files (You want this!)
lua <<EOF
vim.cmd([[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]])
EOF

" ????????????????????????????????????????????????,????????????vim
augroup Buffer_quit
    autocmd!
    autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), 'empty(getbufvar(winbufnr(v:val), "&bt"))')) | qa! | endif
augroup END

" highlihgt yank
" highlight HighlightedyankRegion ctermbg=237 guibg=#994797
highlight HighlightedyankRegion ctermbg=237 guibg=#c34043
augroup highlight_yank
    autocmd!
    " au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=120}
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="HighlightedyankRegion", timeout=120}
augroup END

" ------------------- ???/????????? ----------------------
" augroup BgHighlight
"     autocmd!
"     autocmd WinEnter * set cul       " ???????????? ???????????????
"     autocmd WinEnter * set cuc       " ???????????? ???????????????
"     autocmd WinLeave * set nocul     " ???????????? ?????? ???????????????
"     autocmd WinLeave * set nocuc     " ???????????? ?????? ???????????????
"     autocmd InsertEnter * set nocul  " ???????????? ?????? ???????????????
"     autocmd InsertEnter * set nocuc  " ???????????? ?????? ???????????????
"     autocmd InsertLeave * set cul    " ?????????????????? ?????? ???????????????
"     autocmd InsertLeave * set cuc    " ?????????????????? ?????? ???????????????
" augroup END

" }}}

" {{{ ???????????????
" ; ?????? :
map ; :

" Disable the default s key
noremap s <nop>
xmap s <nop>

" leader & localleader keys
nnoremap <Space> <nop>
nnoremap , <nop>
let g:mapleader = "\<Space>"
let g:maplocalleader = ","

" ??????list ???.????????????
nnoremap <F3> :set list!<CR>
inoremap <F3> <C-o>:set list!<CR>
cnoremap <F3> <C-c>:set list!<CR>

" ??????????????????
nnoremap <silent> <F4> :set cuc! cul!<CR>

" x,c?????????,??????????????????.(ps: d?????????)
nnoremap          x          "_x
vnoremap          x          "_x
nnoremap          c          "_c
vnoremap          c          "_c
nnoremap          Y           y$
vnoremap          p          pgvy
vnoremap          P          Pgvy

" ????????? ???/???/???
" nnoremap <silent> vi viw
" nnoremap <silent> ci ciw
" nnoremap <silent> di diw

" IDE like delete
inoremap <C-BS> <Esc>b"_dei

" ????????????
nnoremap <silent> <BS> :nohl<CR>

" Open Startify
nnoremap <silent> <leader>st :Startify<CR>

" ??????
nnoremap <leader>dt :diffthis<CR>


" ????????????
" iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<CR>
iab xtime <c-r>=strftime("20%y-%m-%d %a %H:%M")<CR>
iab xdate <c-r>=strftime("20%y-%m-%d (%a)")<CR>

" ????????????
nnoremap <silent> <Tab> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" zf                        --????????????,??????manual/marker?????????(eg:v{motion}zf v{motion}???Shift+v)
" zd                        --????????????,??????manual/marker?????????
" zD                        --??????????????????,??????manual/marker?????????
" za                        --??????/??????????????????
" zM                        --??????????????????
" zR                        --??????????????????

"-------------------- vimrc ----------------------
" ??????????????????vimrc
nnoremap <silent> <leader>rc :edit $MYVIMRC<cr>

" ????????????vimrc
nnoremap <silent> <leader>rr :source $MYVIMRC<CR>

" --------------- Spell checking ------------------
" ????????????
nnoremap <Leader>sc :set spell!<CR>

nnoremap <leader>sn ]s
nnoremap <leader>sp [s
nnoremap <leader>sa zg

" ????????????????????????
nnoremap <leader>s? z=

" ------------------- ???????????? --------------------
" INSERT Mode???????????????????????????
inoremap <m-h> <Left>
inoremap <m-j> <Down>
inoremap <m-k> <Up>
inoremap <m-l> <Right>

" INSERT Mode?????????????????????????????????
inoremap <C-h> <C-Left>
inoremap <C-l> <C-Right>

" INSERT Mode Cursor Movement
" inoremap <C-a> <ESC>I
" inoremap <C-e> <ESC>A

" NORMAL Mode??? Alt + L????????????????????????
" nnoremap <m-l> <ESC>$

" NORMAL Mode??? Alt + H????????????????????????
" nnoremap <m-h> <ESC>0

" NORMAL Mode??? Alt + K ?????????????????????????????????
" nnoremap <A-k> <ESC>k$

" INSERT Mode??? Ctrl + K ?????????????????????????????????
" inoremap  <ESC>kA

" INSERT Mode??? Ctrl + L ?????????????????????
" inoremap  <ESC>A

" INSERT Mode??? Ctrl + H ?????????????????????
" inoremap  <ESC>I

" ----------------- find and replace --------------
nnoremap <leader>z :%s/\<<C-R>=expand("<cword>")<CR>\>/<C-R>=expand("<cword>")<CR>/g<left><left>
" nnoremap <leader>z :%s/\<<C-R>=expand("<cword>")<CR>\>//g<left><left>
" noremap \s :%s///g<left><left><left>
vnoremap <leader>z :s///g<left><left><left>

" ----------------- make a list --------------
nnoremap <leader>b :put =range(,,1)<left><left><left><left>

" ----------------- Indentation -------------------
nnoremap < <<
nnoremap > >>

"---------------- ????????????????????? ----------------
" ??????????????????????????????,???????????????????????????
nnoremap <silent> sh :set splitright<CR>:vsplit<CR>
" ??????????????????????????????startify,???????????????????????????
nnoremap <silent> st :set splitright<CR>:vsplit<CR>:Startify<CR>
" ??????????????????????????????,???????????????????????????
nnoremap <silent> sj :set splitbelow<CR>:split<CR>
" buffers/quickfix ??????????????????,split navigations,smart way to move between windows

" ?????????????????????????????????.Place the two screens side by side
" nnoremap sv <C-w>t<C-w>H
" ?????????????????????????????????.Place the two screens up and down
" nnoremap sh <C-w>t<C-w>K

" ??????????????????.Rotate screens
" nnoremap srv <C-w>b<C-w>H
nnoremap <S-h> <C-w>b<C-w>H
" nnoremap srh <C-w>b<C-w>K

nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
"nnoremap <C-j> <C-W><C-J>
"nnoremap <C-k> <C-W><C-K>

" gf vim????????????????????????
nnoremap gf <C-w>f<C-w>L
vnoremap gf <C-w>f<C-w>L

" terminal ??????????????????,split navigations,smart way to move between windows
tnoremap <C-h> <C-w><C-h>
tnoremap <C-j> <C-w><C-j>
tnoremap <C-k> <C-w><C-k>
tnoremap <C-l> <C-w><C-l>

"---------------- ?????????????????? ----------------
nnoremap <silent>   <C-up>  :resize -3<CR>
" ????????????????????????
nnoremap <silent>   <C-down>  :resize +3<CR>
" ????????????????????????
nnoremap <silent>   <C-left>  :vertical resize +3<CR>
" ????????????????????????
nnoremap <silent>   <C-right>  :vertical resize -3<CR>

" -------------------- tabs -----------------------
nnoremap <leader>tn :tabnew<CR>

" ???gvim??????Alt+n??????????????????
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>

" Alt+??????????????????????????????
nn <silent> <M-left> :if tabpagenr() == 1\|exe "tabm ".tabpagenr("$")\|el\|exe "tabm ".(tabpagenr()-2)\|en<CR>
nn <silent> <M-right> :if tabpagenr() == tabpagenr("$")\|tabm 0\|el\|exe "tabm ".tabpagenr()\|en<CR>

" ????????????????????????
set guitablabel=%{GuiTabLabel()}
" ????????????????????????
" set up tab labels with tab number, buffer name, number of windows
function! GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let label = '+'
            break
        endif
    endfor
    " Append the tab number
    let label .= v:lnum.': '
    " Append the buffer name
    let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    if name == ''
        " give a name to no-name documents
        if &buftype=='quickfix'
            let name = '[Quickfix List]'
        else
            let name = '[No Name]'
        endif
    else
        " get only the file name
        let name = fnamemodify(name,":t")
    endif
    let label .= name
    " Append the number of windows in the tab page
    let wincount = tabpagewinnr(v:lnum, '$')
    "return label . '  [' . wincount . ']'
    return label
endfunction

" -------------------- Buffer ---------------------
" Close the current buffer
nnoremap <leader>x :Bclose<cr>:tabclose<cr>gT

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

"------------- Command Mode related ---------------
" Bash like keys for the command line
cnoremap <C-a>      <Home>
cnoremap <C-e>      <End>
" cnoremap <C-K>      <C-U>
cnoremap <C-h>      <C-Left>
cnoremap <C-l>      <C-Right>

cnoremap <m-h>      <left>
cnoremap <m-l>      <right>
cnoremap <m-j>      <down>
cnoremap <m-k>      <up>

cnoremap <C-j>      <down>
cnoremap <C-k>      <up>

" ??????????????????????????????
cnoremap <C-V> <C-R>+

" $q is super useful when browsing on the command line
" it deletes everything until the last slash
" NORMAL Mode, Q                             --?????????Ex???????????????
cno $q <C-\>eDeleteTillSlash()<CR>

function! DeleteTillSlash()
    let g:cmd = getcmdline()

    if has("win16") || has("win32")
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
    else
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
    endif

    if g:cmd == g:cmd_edited
        if has("win16") || has("win32")
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
        else
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
        endif
    endif

    return g:cmd_edited
endfunc

" CMD ?????? matlab scripts
augroup matlab_run
    autocmd!
    autocmd FileType matlab nnoremap <silent><C-CR> :! matlab -nosplash -nodesktop -r %:r<CR><CR>
augroup END
" TERMINAL??????matlab??????,???'test.m'???????????? 'matlab -nosplash -nodesktop -r test'

" neovim ??????SumatraPdf ??????pdf, pdf??????????????????, ??????????????????????????? '*.pdf'
nnoremap gX :!SumatraPdf <C-r><C-l><CR>
" }}}

" {{{ colorscheme << nightfox >>
lua <<EOF
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    styles = {              -- Style to be applied to different syntax groups
      comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      --functions = "NONE",
      --keywords = "NONE",
      --numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",

      functions = "italic",
      keywords = "italic",
      numbers = "italic",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = true,
      visual = false,
      --visual = true,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      nvimtree = true,
      cmp = true,
      telescope = true,
      treesitter = true,
      whichkey = true,
    },
    }
})

--note: nightfox color change: (1) white:   #dfdfe0 -> #abb2bf  ps:????????????
--                             (2) fg1:     #cdcecf -> #abb2bf  ps:????????????,??????
--                             (3) comment: #738091 -> #5c6370  ps:??????????????????
--                             (4) sel0:    #2b3b51 -> #3e4452  ps:V????????????????????????
--                             file: "D:\Program Files\Neovim\share\nvim\Mine\Plugged\nightfox.nvim-main\lua\nightfox\palette\nightfox.lua"
local palettes = {
  nightfox  = {
    white   = "#abb2bf",
    fg1     = "#b2b2b2",
    comment = "#5c6370",
    sel0    = "#364a82", --visual
    sel1    = "#228b22", --visual Selected
  },
  dayfox    = {
    bg1     = "#e1e2e7",
    fg1     = "#4d688e",
    fg3     = "#a8aecb", --line number
    sel0    = "#99a7df", --visual
    orange  = "#b15c00", --number
  },
  carbonfox  = {
    white   = "#abb2bf",
    fg1     = "#b2b2b2",
    comment = "#5c6370",
    sel0    = "#364a82", --visual
    sel1    = "#228b22", --visual Selected
  },
}

require("nightfox").setup({ palettes = palettes })
--Dark:  nightfox duskfox terafox nordfox Carbonfox
--Light: dayfox dawnfox

--vim.cmd("colorscheme nightfox")
--vim.cmd("colorscheme dayfox")
EOF
" }}}
colorscheme nightfox
" colorscheme dayfox
" colorscheme carbonfox

" ------------------------------- Plugins Config --------------------------------
" {{{ Compiler code & Python REPL & FORTRAN << floaterm && REPL >>

tnoremap <Esc> <C-\><C-n>
" nnoremap <S-p> :FloatermNew ipython<CR>
" nnoremap <S-p> :FloatermNew  python<CR>
augroup Compiler_code
    autocmd!
    autocmd FileType floaterm nnoremap <buffer> <Esc> :q<CR>
    " Python
    autocmd FileType python nnoremap <C-CR> :FloatermNew py "%:p"<CR>
    autocmd FileType python noremap! <C-CR>  <Esc>:FloatermToggle<CR>
    autocmd FileType python tnoremap <C-CR>  <C-\><C-n>:FloatermToggle<CR>
    " Python REPL
    nnoremap <leader>tp :FloatermNew --width=0.5 --wintype=vsplit --name=repl --position=rightbelow ipython<CR>
    autocmd FileType python nnoremap <leader>w :FloatermSend<CR>
    autocmd FileType python vnoremap <leader>w :FloatermSend<CR>
    " FORTRAN
    autocmd FileType fortran nnoremap <C-CR> :FloatermNew<CR>compilervars.bat intel64<CR>ifort<Space>
augroup END

let g:floaterm_autoclose=0  "0: Always do NOT close floaterm window
hi FloatermBorder guibg=#3e4452 guifg=#c94f6d

" CMD mode
nnoremap  <leader>to  :FloatermNew<CR>
nnoremap  <leader>tt  :FloatermToggle<CR>
tnoremap <leader>tt  <C-\><C-n>:FloatermToggle<CR>
" nnoremap <F5> :FloatermNew<CR>git add init.vim<CR>git commit --allow-empty-message -m ""<CR>git push<CR>
command! Push execute "FloatermNew!git add init.vim<CR>git commit --allow-empty-message -m \"\"<CR>git push<CR>"
command! Pull execute "FloatermNew!git fetch --all<CR>git reset --hard origin/main<CR>"
command! Gitlog execute "FloatermNew!git log --all --oneline --graph<CR>"

" Administrator CMD mode
nnoremap  <leader>ta  :FloatermNew<CR>runas /user:ThinkPad\Administrator cmd<CR>1234<CR>
" nnoremap  <leader>ta  :FloatermNew<CR>runas /user:administrator cmd<CR>1234<CR>
" 'runas /user:administrator cmd' ???????????????CMD?????????????????????????????????
" ?????????????????????: net user administrator /active:yes
" ?????????????????????: net user administrator /active:no
" ?????????????????????(1234): net user administrator 1234

" TOOl rg
nnoremap <leader>tr :FloatermNew<CR>rg.exe<Space>

" }}}

" {{{ <<??vim-visual-multi >>
augroup visual_multi_yank
    autocmd!
    autocmd User visual_multi_mappings nmap <buffer> <leader>y "+y
augroup END

" let g:VM_theme                      = 'ocean'
let g:VM_theme                      = 'iceblue'
let g:VM_highlight_matches          = 'underline'
let g:VM_maps                       = {}
let g:VM_maps['Find Under']         = '<C-n>'
let g:VM_maps['Find Subword Under'] = '<C-n>'
let g:VM_maps['Select All']         = '<C-z>'
" let g:VM_maps['Select h']           = '<C-Left>'
" let g:VM_maps['Select l']           = '<C-Right>'

let g:VM_maps['Add Cursor Up']      = '<C-k>'
let g:VM_maps['Add Cursor Down']    = '<C-j>'

" let g:VM_maps['Add Cursor At Pos']  = '<C-x>'
" let g:VM_maps['Add Cursor At Word'] = '<C-w>'
" let g:VM_maps['Remove Region']      = 'q'

" }}}

" {{{ << Plugin - startify >>
" let g:ascii = [
" let g:startify_custom_header = [
"             \ '                                                         .                                                      .               ',
"             \ '                                                       .n                   .                 .                  n.             ',
"             \ '                                                 .   .dP                  dP                   9b                 9b.    .      ',
"             \ '                                                4    qXb         .       dX                     Xb       .        dXp     t     ',
"             \ '                                               dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb    ',
"             \ '                                               9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP    ',
"             \ '                                                9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP     ',
"             \ '                                                 `9XXXXXXXXXXXXXXXXXXXXX`~   ~`OOO8b   d8OOO`~   ~`XXXXXXXXXXXXXXXXXXXXXP`      ',
"             \ '                                                   `9XXXXXXXXXXXP` `9XX`   DIE    `98v8P`  HUMAN   `XXP` `9XXXXXXXXXXXP`        ',
"             \ '                                                       ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~            ',
"             \ '                                                                       )b.  .dbo.dP``v``9b.odb.  .dX(                           ',
"             \ '                                                                    ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.                           ',
"             \ '                                     __                             dXXXXXXXXXXXP`   .   `9XXXXXXXXXXXb                         ',
"             \ '                             __  __ /\_\    ___ ___                dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb                        ',
"             \ '                            /\ \/\ \\/\ \ /'' __` __`\             9XXb`   `XXXXXb.dX|Xb.dXXXXX`   `dXXP                        ',
"             \ '                            \ \ \_/ |\ \ \/\ \/\ \/\ \              ``      9XXXXXX(   )XXXXXXP      ``                         ',
"             \ '                             \ \___/  \ \_\ \_\ \_\ \_\                      XXXX X.`v`.X XXXX                                  ',
"             \ '                              \/__/    \/_/\/_/\/_/\/_/                     XP^X``b   d``X^XX                                   ',
"             \ '                                                                             X. 9  `   `  P )X                                  ',
"             \ '                                                                             `b  `       `  d`                                  ',
"             \ '                                                                              `             `                                   ',
"             \]

" let g:startify_custom_header = g:ascii + startify#fortune#boxed()

let g:startify_files_number = 16        " ??????????????????????????????
" ????????????
let g:startify_bookmarks            = [
            \ '~/bookmarks',
            \]
" ??????footer(header)
let g:startify_custom_footer = [
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '            ,                                                      ',
            \ '           / \,,_  ."|                                             ',
            \ '         [[| /]]]]/_."                                             ',
            \ '       ]]]]` "[["  ".                                              ',
            \ '     [[[[[    _   ;, \                                             ',
            \ '  ,]]]]]]    /o`\  ` ;)                                            ',
            \ ' [[[[[[   /           (                                            ',
            \ ' ]]]]]]   |            \         _____________________________     ',
            \ '[[[[[[[[   \            \       /                             \    ',
            \ ']]]]]]]]]   ".__      _  |     /                               \   ',
            \ '[[[[[[[[       /`._  (_\ /     |     Still waters run deep!     |  ',
            \ ' ]]]]]]"      |    //___/   --=:                                |  ',
            \ ' `[[[[`       |     `--`       |                                |  ',
            \ '  ]]]`                          \______________________________/   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \ '                                                                   ',
            \]

highlight StartifyBracket ctermfg=10 guifg=#444B6A
" highlight StartifyFile ctermfg=10 guifg=#9ECE6A
" highlight StartifyFile ctermfg=10 guifg=#12970e
highlight StartifyNumber ctermfg=10 guifg=#FF9E64

if &background ==# 'dark'
    " highlight StartifyFile ctermfg=10 guifg=#9ECE6A
    highlight StartifyFile ctermfg=10 guifg=#9ECE6A
elseif &background ==# 'light'
    highlight StartifyFile ctermfg=10 guifg=#12970e
endif

" highlight StartifyPath ctermfg=10 guifg=#444B6A
" highlight StartifySlash ctermfg=10 guifg=#444B6A

highlight StartifyPath ctermfg=10 guifg=#786591
highlight StartifySlash ctermfg=10 guifg=#786591
" #6A5ACD
" purple:      #994797
" dark purple: #786591

highlight StartifySection ctermfg=10 guifg=#7AA2F7

" highlight StartifyHeader ctermfg=10 guifg=#F7768E
" highlight StartifyHeader ctermfg=10 guifg=#a600ff
highlight StartifyHeader ctermfg=10 guifg=#8687b0

highlight StartifyFooter ctermfg=10 guifg=#F7768E
highlight StartifySpecial ctermfg=10 guifg=#444B6A

" show startify icon
lua << EOF
function _G.webDevIcons(path)
  local filename = vim.fn.fnamemodify(path, ':t')
  local extension = vim.fn.fnamemodify(path, ':e')
  return require'nvim-web-devicons'.get_icon(filename, extension, { default = true })
end
EOF
function! StartifyEntryFormat() abort
  return 'v:lua.webDevIcons(absolute_path) . " " . entry_path'
endfunction

" }}}

" {{{ << Plugin - luochen1990/rainbow >>
let g:rainbow_active = 1
let g:rainbow_conf = {
            \	'guifgs': ['#B36BE1', '#62AEFA', '#F49736', '#E03C8A', '#90B44B','#ffff70', '#971717'],
            \	'ctermfgs': ['lightmagenta', 'lightyellow', 'lightcyan', 'lightblue'],
            \	'operators': '_,_',
            \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \	'separately': {
            \	'*': {},
            \	'tex': {
            \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \		},
            \	'lisp': {
            \			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \		},
            \	'vim': {
            \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \		},
            \	'css': 0,
            \   'python': {
            \   'operators': '_,\|:\|=_',
            \       },
            \	}
            \}
" }}}

" {{{ << Plugin - vim-better-whitespace >>
" -----------------------------------------------------------------------------
" ????????????????????????.??????:StripWhitespace??????????????????.
nnoremap <leader>si :StripWhitespace<CR>
let g:better_whitespace_guicolor='red'
let g:strip_whitespace_on_save=0
let g:better_whitespace_filetypes_blacklist=['startify', 'diff', 'gitcommit', 'unite', 'qf', 'help']
" }}}

" {{{ <<??Plugin - interestingwords >>
" -----------------------------------------------------------------------------
" ????????????????????????
" nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
" nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

" nnoremap <silent> n :call WordNavigation('forward')<cr>
" nnoremap <silent> N :call WordNavigation('backward')<cr>
" }}}

" {{{ <<??Plugin - EasyAlign >>
" -----------------------------------------------------------------------------
nmap <leader>a <Plug>(EasyAlign)
xmap <leader>a <Plug>(EasyAlign)
" }}}

" {{{ <<??Plugin - Undotree >>
let g:undotree_DiffAutoOpen = 1
nnoremap <silent> <leader>u :UndotreeToggle<cr>
set undodir=$VIM/vimfiles/undodir
set undofile
" if has("persistent_undo")
"     set undodir=~/.undodir/
"     set undofile
" endif
" }}}

" {{{ <<??Plugin - expand-region >>
" Default is press + to expand the visual selection and _ to shrink it.
" Customize the key mapping if you don't like the default.
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
" }}}

" {{{ <<??Plugin - endwise >>
" 'end'??????,??????Matlab
" }}}

" {{{ MarkDown Plugins - << plasticboyvim-markdown >> << markdown-toc >> << table-mode >> <<??Plugin - icebreaker gustav >> << Pangu >>

" << Plugin - plasticboyvim - markdown >>
augroup markdown_type
    autocmd!
    " autocmd FileType markdown nnoremap <leader>to :Toc<CR>
    autocmd FileType markdown setl conceallevel=2
augroup END
let g:vim_markdown_toc_autofit = 1                 " Enable TOC window auto-fit,???????????????????????????

let g:vim_markdown_conceal = 0                     " ???????????? Markdown          ????????????
let g:vim_markdown_conceal_code_blocks = 0         " ???????????? ?????????            ?????? ```
let g:tex_conceal = ""                             " ???????????? LaTeX math syntax ??????

let g:vim_markdown_math = 1                        " ???????????? LaTeX math
let g:vim_markdown_strikethrough = 1               " ??????????????????,??? ~~xx~~ ?????? ??????~~xx~~??????

let g:vim_markdown_new_list_item_indent = 2        " *item1 *item2 ???????????????2(?????????4).
let g:vim_markdown_auto_insert_bullets = 0

let g:vim_markdown_folding_disabled = 1            " ?????? markdown ??????
"let g:vim_markdown_no_default_key_mappings = 1    " ????????????????????????

let g:vim_markdown_fenced_languages = [
            \ 'c++=cpp',
            \ 'viml=vim',
            \ 'bash=sh',
            \ 'ini=dosini',
            \ 'js=javascript',
            \ 'json=javascript',
            \ 'jsx=javascriptreact',
            \ 'tsx=typescriptreact',
            \ 'docker=Dockerfile',
            \ 'makefile=make',
            \ 'py=python'
            \ ]

let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_edit_url_in = 'vsplit'       " tab  vsplit  hsplit  current

let g:vim_markdown_folding_disabled = 0         " ??????????????????
let g:vim_markdown_folding_style_pythonic = 1   " ????????????
let g:vim_markdown_folding_level = 1            " n??????????????????
" let g:vim_markdown_override_foldtext = 0

" << Plugin - table-mode >>
augroup markdown_table
    autocmd!
    au FileType markdown let g:table_mode_corner = '|'
    au FileType markdown let g:table_mode_delimiter = ' '
    au FileType markdown let g:table_mode_verbose = 0
    au FileType markdown let g:table_mode_auto_align = 0
    autocmd FileType markdown TableModeEnable
augroup END

" << Plugin - markdown-toc >>
":GenTocGFM  :GenTocRedcarpet :GenTocGitLab :GenTocMarked
augroup markdown_gentoc
    autocmd!
    autocmd FileType markdown nnoremap <leader>tc :GenTocMarked<CR>
augroup END

" <<??Plugin - icebreaker gustav >> todo list
augroup markdown_gustav
    autocmd!
    " - [ ]
    autocmd FileType markdown noremap <Leader>_ :call gustav#add()<CR>
    " - [x] turn - [x]
    autocmd FileType markdown noremap <Leader>- :call gustav#toggle()<CR>
augroup END

" << Plugin - Pangu >>
" ?????????????????????,??????????????????????????????
" `:Pangu` ??????

" ???????????????,?????????????????????(???????????????)
"autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
" }}}

" {{{ MarkDown Preview - <<??Plugin - iamcco/markdown-preview.nvim >> (?????????:nodejs ??? yarn)

" ??????nodejs ??? yarn. ???????????????markdown(??????:mess??????,???vim-node-rpc error)
" ????????????:???????????? CMD ???????????? app ?????????(\Vim\vimfiles\bundle\iamcco markdown-preview.nvim\app)?????? yarn install ????????????.

let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {}
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '???${name}???'

augroup markdown_preview
    autocmd!
    autocmd FileType markdown nnoremap <C-CR> <Plug>MarkdownPreview
augroup END

" ????????????????????????(????????????)
" let g:mkdp_highlight_css = 'D:\Program Files\VIM\vimfiles\bundle\iamcco markdown-preview.nvim\markdown_highlight_solarized_dark.css'
let g:mkdp_highlight_css = 'D:\Program Files\Neovim\share\nvim\Mine\Plugged\iamcco markdown-preview.nvim\markdown.css'
let g:mkdp_markdown_css = 'D:\Program Files\Neovim\share\nvim\Mine\Plugged\iamcco markdown-preview.nvim\github-markdown.css'
" }}}

" {{{ LATEX?????? <<??Plugin - lervag/vimtex >>
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0

" ???????????????????????? ??????????????????????????? ????????????
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

" The last two lines con??fig??ure the con??ceal??ment. This is a fea??ture where LaTeX code is re??placed or made in??vis??i??ble when your cur??sor is not on that line. By mak??ing \[, \], $ in??vis??i??ble, they???re less ob??tru??sive which gives you a bet??ter overview of the doc??u??ment. This fea??ture also re??places \bigcap by by ???, \in by ??? etc.
" let g:tex_conceal='abdmg'

" To prevent conceal in LaTeX files
let g:vimtex_syntax_conceal_default = 0

augroup latex_set
    autocmd!
    autocmd FileType tex nnoremap <localleader>li <plug>(vimtex-info)
    autocmd FileType tex nnoremap <localleader>lt <plug>(vimtex-toc-open)
    autocmd FileType tex nnoremap <localleader>lT <plug>(vimtex-toc-toggle)
    autocmd FileType tex nnoremap <localleader>lv <plug>(vimtex-view)
    autocmd FileType tex nnoremap <localleader>ll <plug>(vimtex-compile)
    autocmd FileType tex nnoremap <localleader>lo <plug>(vimtex-compile-output)
    autocmd FileType tex nnoremap <localleader>lg <plug>(vimtex-status)
    autocmd FileType tex nnoremap <localleader>lG <plug>(vimtex-status-all)
    autocmd FileType tex nnoremap <localleader>lc <plug>(vimtex-clean)
    autocmd FileType tex nnoremap <localleader>lC <plug>(vimtex-clean-full)
augroup END
" }}}

" {{{ ???????????? <<??Plugin - itchyny/screensaver.vim >>
nnoremap <silent><F11> :ScreenSaver<CR>
" }}}

" {{{ ????????? <<??Plugin - arecarn/crunch >>
" nmap zz <Plug>(crunch-operator)
nmap <leader>, <Plug>(crunch-operator-line)
xmap <leader>, <Plug>(visual-crunch-operator)
" }}}

" {{{ ?????????(??????-??????) << Plugin -tommcdo/vim-exchange >>
let g:exchange_no_mappings = 1

" nmap cx <Plug>(Exchange)
xmap X <Plug>(Exchange)
nmap cxx <Plug>(ExchangeLine)
nmap cxc <Plug>(ExchangeClear)
" }}}

" {{{ ?????? C-a C-x << Plugin -zef/vim-cycle >>
augroup vim_cycle
    autocmd!
    au VimEnter * call AddCycleGroup(['set', 'get'])
    au VimEnter * call AddCycleGroup(['form', 'to'])
    au VimEnter * call AddCycleGroup(['push', 'pop'])
    au VimEnter * call AddCycleGroup(['mas', 'menos'])
    au VimEnter * call AddCycleGroup(['prev', 'next'])
    au VimEnter * call AddCycleGroup(['start', 'end'])
    au VimEnter * call AddCycleGroup(['light', 'dark'])
    au VimEnter * call AddCycleGroup(['open', 'close'])
    au VimEnter * call AddCycleGroup(['read', 'write'])
    au VimEnter * call AddCycleGroup(['truthy', 'falsy'])
    au VimEnter * call AddCycleGroup(['filter', 'reject'])
    au VimEnter * call AddCycleGroup(['internal', 'external'])
    au VimEnter * call AddCycleGroup(['short', 'normal', 'long'])
    au VimEnter * call AddCycleGroup(['subscribe', 'unsubscribe'])
    au VimEnter * call AddCycleGroup(['header', 'body', 'footer'])
    au VimEnter * call AddCycleGroup(['protected', 'private', 'public'])
    au VimEnter * call AddCycleGroup(['red', 'blue', 'green', 'yellow'])
    au VimEnter * call AddCycleGroup(['tiny', 'small', 'medium', 'big', 'huge'])
    au VimEnter * call AddCycleGroup(['pico', 'nano', 'micro', 'mili', 'kilo', 'mega', 'giga', 'tera', 'peta'])
    au VimEnter * call AddCycleGroup(['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'])
    au VimEnter * call AddCycleGroup(['Sunday', 'Monday', 'Tuesday', 'Wensday', 'Thursday', 'Friday', 'Saturday'])
    au VimEnter * call AddCycleGroup(['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'])

    au VimEnter * call AddCycleGroup(['TODO', 'DONE', 'WAITING', 'INPROGRESS', 'CANCELED', 'NOTE'])
augroup END
"
" }}}

" {{{ ????????????????????? <<??Plugin - sandwich >>
" use vim-sandwich with vim-surround keymappings
runtime macros/sandwich/keymap/surround.vim

" S        -?????????????????????????????????
" dss      -??????????????????
" css      -??????????????????
" }}}

" {{{ ???????????? << Plugin - header >>
let g:header_field_author = 'Max'
let g:header_field_author_email = 'ismaxiaolong@gmail.com'
let g:header_field_timestamp_format = '%Y.%m.%d'
let g:header_field_modified_by = 0
let g:header_field_license_id = ' '
nnoremap <F2> :AddHeader<CR>
" }}}

" {{{ increment date <<??vim-speeddating-master >>
" ????????????????????????????????????????????????????????????
" ??????????????????':SpeedDatingFormat'
" ???'D:\Program Files\Neovim\share\nvim\Mine\Plugged\vim-speeddating-master\plugin\speeddating.vim'???????????????
" SpeedDatingFormat %Y-%m-%d %a %H:%M               " define 1
" SpeedDatingFormat %Y-%m-%d (%a)%*                 " define 2
" SpeedDatingFormat %Y-%m-%d %a                     " define 3
" }}}

" {{{ text objects  <<??targets.vim >>
" add '<>' in block
autocmd User targets#mappings#user call targets#mappings#extend({
    \ 'b': {
        \'pair': [
            \{'o':'(', 'c':')'},
            \{'o':'[', 'c':']'},
            \{'o':'{', 'c':'}'},
            \{'o':'<', 'c':'>'},
        \ ]
    \},
\})
" d/c/y  +  i/I/a/A  +  b               (?????????n????????????)
" d/c/y  +  i/I/a/A  +  a               (?????????n????????????)
" d/c/y  +  i/I/a/A  +  q               (?????????n????????????)
" d/c/y  +  2/3/4/...(?????????)  +  i/I/a/A  +  n/l(?????????)  +  b
" d/c/y  +  2/3/4/...(?????????)  +  i/I/a/A  +  n/l(?????????)  +  a
" d/c/y  +  2/3/4/...(?????????)  +  i/I/a/A  +  n/l(?????????)  +  q
" d/c/y  +  i/I/a/A  +  (/[/,/...
" d/c/y  +  i/I/a/A  +  "/'/`/...
" --b:block   q:quote    a:argument
" }}}

" {{{ ?????? << vim-scripts/DrawIt >>
nnoremap <silent> \di :DIstart<Cr>
" ???????????????????????? "leader", ???"leader"?????????"\"; ??????????????????
" BUG: ??????????????????,v?????????.
" +-------------------------------------+
" | ??????:\di      ??????:\ds              |
" | ??????:<SPACE>                        |
" | ??????:\b       ??????:\e       ??????:\f |
" +-------------------------------------+
" }}}

" ------------------------------- ??????Python?????????Plugins --------------------------------
" {{{ <<??Plugin - LeaderF >>
" ?????? C extension, ????????????10???
" :LeaderfInstallCExtension
let g:Lf_Ctags = "D:/Progra~1/Neovim/share/nvim/Mine/ctags.exe"
let g:Lf_Rg = 'D:/Progra~1/Neovim/share/nvim/Mine/rg.exe'

let g:Lf_ShowDevIcons = 1
let g:Lf_DevIconsFont = "CodeNewRoman Nerd Font Mono"

let g:Lf_ReverseOrder = 1

" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PopupColorscheme = "leaderf_colorscheme_nightfox"
" let g:Lf_PopupColorscheme = "Consistent with the current color scheme"

" change color
let g:Lf_PopupPalette = {
    \  'dark': {
    \      'Lf_hl_cursorline': {
    \                'guibg': '#364a82',
    \              },
    \      },
    \  }

let g:Lf_WindowHeight = 0.9
let g:Lf_PopupHeight = 0.7
let g:Lf_PopupWidth = 0.4
let g:Lf_PopupPosition = [7, 84]
let g:Lf_PopupPreviewPosition = 'left'
let g:Lf_PreviewCode = 1
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "CodeNewRoman Nerd Font Mono" }

" BufTag???Function???????????????,??????<C-p>??????.BufTag???Function?????????1.
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" ????????????
nnoremap <silent> <localleader>fb :LeaderfFile :/<left><left>

" ????????????,??????????????????,????????????
nnoremap <silent> <localleader>fp :Leaderf rg<CR>

" ???????????????(??????????????????)
nnoremap <silent> <localleader>fl :LeaderfLine<CR>

" ????????????(??????????????????)
nnoremap <silent> <localleader>t :Leaderf bufTag<CR>

" ????????????(??????????????????)
nnoremap <silent> <localleader>ff :Leaderf function<CR>

" ????????????
nnoremap <silent> <localleader>fc :Leaderf colorscheme<CR>

" buffer
" let g:Lf_ShortcutB = '<localleader>fb'

let g:Lf_ShowRelativePath = 0
let g:Lf_NormalMap = {
            \ "File":   [["<ESC>", ':exec g:Lf_py "fileExplManager.quit()"<CR>'],
            \            ["u", ':LeaderfFile ..<CR>']
            \           ],
            \ "Buffer": [["<ESC>", ':exec g:Lf_py "bufExplManager.quit()"<CR>']],
            \ "Mru":    [["<ESC>", ':exec g:Lf_py "mruExplManager.quit()"<CR>']],
            \ "Tag":    [["<ESC>", ':exec g:Lf_py "tagExplManager.quit()"<CR>']],
            \ "Function":    [["<ESC>", ':exec g:Lf_py "functionExplManager.quit()"<CR>']],
            \ "Colorscheme":    [["<ESC>", ':exec g:Lf_py "colorschemeExplManager.quit()"<CR>']],
            \ }
" ??????:LeaderfRg ????????????, ???????????????????????????.
command! -bar -nargs=? -complete=dir LeaderfRg Leaderf! rg "" <q-args>

let g:Lf_WildIgnore = {
        \ 'dir': ['.svn','.git','.hg'],
        \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
        \}
" }}}

" {{{ ??????????????????,??????????????? <<??Plugin - Sideways.vim-main >>
"nnoremap <c-h> :SidewaysLeft<cr>
"nnoremap <c-l> :SidewaysRight<cr>

"??????
" def function(one, two, three)    ------------>     def function(two, one, three):

" }}}

" {{{ ????????????????????????????????????????????? <<??Plugin - vim-visual-increment-master >>
"?????????????????????
set nrformats=alpha,octal,hex

"??????
"<C-a>??????(??????1)
"<C-x>??????(??????1)
"n<C-a>??????(??????n)
"n<C-x>??????(??????n)

"<C-a>??????
" 1         1
" 1   ----> 2
" 1         3

"<C-a>??????
" a         a
" a   ----> b
" a         c

"n<C-a>??????
" 1         1
" 1   ----> 1+n
" 1         1+2n
" }}}

" {{{ StartupTime <<??StartupTime >>
let g:startuptime_tries = 10
"augroup startuptime_mapping
"  autocmd!
"  autocmd CmdlineEnter : cnoremap sta StartupTime
"  autocmd CmdlineLeave : cunmap sta
"augroup END
nnoremap <silent> <F12> :StartupTime<CR>
" }}}

" ==============================================================
" ===================== NEOVIM lua Plugins =====================

" {{{ screach << Telescope >>
"" Find files using Telescope command-line sugar.
"nnoremap <leader>ff <cmd>Telescope find_files<cr>
"nnoremap <leader>fl <cmd>Telescope live_grep<cr>
"nnoremap <leader>fb <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"" Using Lua functions
"nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
"nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
"nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
"nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Initialize telescope
lua <<EOF
require("telescope").setup {
  defaults = {
    initial_mode = 'normal',
    prompt_prefix = "??? ",
    selection_caret = "??? ",
    path_display = { "smart" },
    dynamic_preview_title = true,
  },
  pickers = {
    find_files = {
      hidden = true,
      --find_command = { "fd", "f" },
      find_command = { "rg", "--files" },
      mappings = {
        n = {
          ["cd"] = function(prompt_bufnr)
            local selection = require("telescope.actions.state").get_selected_entry()
            local dir = vim.fn.fnamemodify(selection.path, ":p:h")
            require("telescope.actions").close(prompt_bufnr)
            -- Depending on what you want put `cd`, `lcd`, `tcd`
            vim.cmd(string.format("silent lcd %s", dir))
          end
        }
      }
    },
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}

require("telescope").load_extension "file_browser"
EOF

" nnoremap <leader>fp :Telescope file_browser<cr>
nnoremap <leader>ff :Telescope file_browser path=:/<left><left>

" cd dir
" nnoremap <leader>fb :Telescope find_files<cr>
nnoremap <silent> <leader>fb :lua require("telescope.builtin").find_files({layout_strategy="vertical"})<cr>
" nnoremap <leader>fb :lua require("telescope.builtin").find_files({cwd = "e:/", layout_strategy="vertical"})<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

nnoremap <silent> <leader>fp :Telescope current_buffer_fuzzy_find<cr>
nnoremap <silent> <leader>fl :Telescope live_grep<cr>

nnoremap <silent> <leader>fc :Telescope command_history<cr>
nnoremap <silent> <leader>fs :Telescope search_history<cr>

" mappings
" <A-c>/c   create
" <A-r>/r	rename	        Rename multi-selected files/folders
" <A-y>/y	copy	        Copy (multi-)selected files/folders to current path
" <A-d>/d	delete	        Delete (multi-)selected files/folders
" <A-m>/m	move	        Move multi-selected files/folders to current path
" <C-o>/o	open	        Open file/folder with default system application

" <C-g>/g	goto_parent_dir	Go to parent directory
" <C-e>/e	goto_home_dir	Go to home directory
" <C-w>/w	goto_cwd	    Go to current working directory (cwd)
" <C-t>/t	change_cwd	    Change nvim's cwd to selected folder/file(parent)
" <C-f>/f	toggle_browser	Toggle between file and folder browser
" <C-h>/h	toggle_hidden	Toggle hidden files/folders
" <C-s>/s	toggle_all	    Toggle all entries ignoring ./ and ../

" ??????      <Tab>
" }}}

" {{{ tree <<??nvim-tree >>
lua <<EOF
-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

local tree = require'nvim-tree'
local lib = require'nvim-tree.lib'
local function cd_dot_cb(node)
  tree.change_dir(vim.fn.getcwd(-1))
  if node.name ~= ".." then
    lib.set_index_and_redraw(node.absolute_path)
  end
end

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
require'nvim-tree'.setup {
    sort_by = "case_sensitive",
    disable_netrw = true, -- disables netrw completely
    hijack_netrw = true, -- hijack netrw window on startup
    open_on_setup = true, -- open the tree when running this setup function
    ignore_ft_on_setup = { "startify", "dashboard", "alpha", }, -- will not open on setup if the filetype is in this list
    open_on_tab = false, -- opens the tree when changing/opening a new tab if the tree wasn't previously opened
    hijack_cursor = true, --- hijack the cursor in the tree to put it at the start of the filename
    update_focused_file = {enable = true, update_cwd = true, ignore_list = {}},

    view = {
        adaptive_size = true,
        number = true,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
            custom_only = true,
            list = {
                { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
                --{ key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
                { key = "<C-v>",                        cb = tree_cb("vsplit") },
                { key = "<C-x>",                        cb = tree_cb("split") },
                { key = "<C-t>",                        cb = tree_cb("tabnew") },
                --{ key = "<",                            cb = tree_cb("prev_sibling") },
                --{ key = ">",                            cb = tree_cb("next_sibling") },
                --{ key = {"P"},                          cb = tree_cb("parent_node") },
                --{ key = "<BS>",                         cb = tree_cb("close_node") },
                --{ key = "<S-CR>",                       cb = tree_cb("close_node") },
                --{ key = "<Tab>",                        cb = tree_cb("preview") },
                --{ key = "K",                            cb = tree_cb("first_sibling") },
                --{ key = "J",                            cb = tree_cb("last_sibling") },
                --{ key = "I",                            cb = tree_cb("toggle_ignored") },
                --{ key = {"H","<BS>"},                   cb = tree_cb("toggle_dotfiles") },
                { key = "R",                            cb = tree_cb("refresh") },
                { key = "c",                            cb = tree_cb("create") },
                { key = "d",                            cb = tree_cb("remove") },
                { key = "r",                            cb = tree_cb("rename") },
                --{ key = "<C-r>",                        cb = tree_cb("full_rename") },
                { key = "x",                            cb = tree_cb("cut") },
                { key = "y",                            cb = tree_cb("copy") },
                { key = "p",                            cb = tree_cb("paste") },
                { key = "Y",                            cb = tree_cb("copy_name") },
                --{ key = "Y",                            cb = tree_cb("copy_path") },
                --{ key = "Y",                            cb = tree_cb("copy_absolute_path") },
                --{ key = "gy",                           cb = tree_cb("copy_absolute_path") },
                --{ key = "[c",                           cb = tree_cb("prev_git_item") },
                --{ key = "]c",                           cb = tree_cb("next_git_item") },
                { key = {"-","h"},                      cb = tree_cb("dir_up") },
                --{ key = "s",                            cb = tree_cb("system_open") },
                --{ key = "s",                            cb = tree_cb("close") },
                { key = {"q"},                          cb = tree_cb("close") },
                --{ key = "g?",                           cb = tree_cb("toggle_help") },
                { key = "<BS>",                            action = "cd_dot",		action_cb = cd_dot_cb, }, -- run_file_command
            },
        },
    },
    renderer = {
        group_empty = true,
        indent_markers = { enable = true, icons = { corner = '??? ', edge = '??? ', none = '  ' } },
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "???", -- arrow when folder is closed
                    arrow_open = "???", -- arrow when folder is open
                },
            },
        },
        highlight_opened_files = "all", --"none"`, `"icon"`, `"name"` or `"all"`
        root_folder_modifier = ":~",
    },
    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = false,
            global = true,
            restrict_above_cwd = false,
        },
    },
    filters = {
        dotfiles = true,
    },
}

--???????????????????????????
--require "nvim-tree.events".on_file_created(function(file) vim.cmd("edit " .. file.fname) end)
EOF

nnoremap <silent> <leader>e :NvimTreeToggle<CR>
" ????????? ??????, ????????????
nnoremap <leader>. :NvimTreeOpen  :\<left><left>
nnoremap <silent> <F7> :NvimTreeOpen c:\Users\ThinkPad\Desktop\<CR>
" }}}

" {{{ scroll <<??neoscroll >>
lua <<EOF
require('neoscroll').setup({
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,       -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,             -- Function to run after the scrolling animation ends
    performance_mode = false,    -- Disable "Performance Mode" on all buffers.
})

local t = {}
t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '45'}}
t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '45'}}
t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '90'}}
t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '90'}}
t['<C-y>'] = {'scroll', {'-0.10', 'false', '20'}}
t['<C-e>'] = {'scroll', { '0.10', 'false', '20'}}
t['zt']    = {'zt', {'90'}}
t['zz']    = {'zz', {'90'}}
t['zb']    = {'zb', {'90'}}
require('neoscroll.config').set_mappings(t)
EOF
" }}}

" {{{ pair <<??nvim-autopairs >>
lua << EOF
require("nvim-autopairs").setup {}

local disable_filetype = { "TelescopePrompt" }
local disable_in_macro = false  -- disable when recording or executing a macro
local disable_in_visualblock = false -- disable when insert after visual block mode
local ignored_next_char = [=[[%w%%%'%[%"%.]]=]
local enable_moveright = true
local enable_afterquote = true  -- add bracket pairs after quote
local enable_check_bracket_line = true  --- check bracket in same line
local enable_bracket_in_quote = true --
local break_undo = true -- switch for basic rule break undo sequence
local check_ts = false
local map_cr = true
local map_bs = true  -- map the <BS> key
local map_c_h = false  -- Map the <C-h> key to delete a pair
local map_c_w = false -- map <c-w> to delete a pair if possible
EOF
" }}}

" {{{ marks <<??nvim-marks >>
lua << EOF
require'marks'.setup {
  -- whether to map keybinds or not. default true
  default_mappings = false,
  -- which builtin marks to show. default {}
  builtin_marks = { ".", "<", ">", "^" },
  -- whether movements cycle back to the beginning/end of buffer. default true
  cyclic = true,
  -- whether the shada file is updated after modifying uppercase marks. default false
  --force_write_shada = false,
  force_write_shada = false,
  -- how often (in ms) to redraw signs/recompute mark positions.
  -- higher values will have better performance but may cause visual lag,
  -- while lower values may cause performance penalties. default 150.
  refresh_interval = 250,
  -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
  -- marks, and bookmarks.
  -- can be either a table with all/none of the keys, or a single number, in which case
  -- the priority applies to all marks.
  -- default 10.
  sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
  -- disables mark tracking for specific filetypes. default {}
  excluded_filetypes = {},
  -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
  -- sign/virttext. Bookmarks can be used to group together positions and quickly move
  -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
  -- default virt_text is "".
  bookmark_0 = {
    sign = "???",
    virt_text = "hello world"
  },
  mappings = {
    delete_buf = "mc",
    toggle = "mm",
    prev = false -- pass false to disable only this default mapping
  }
}
EOF
nnoremap <C-m> <Plug>(Marks-next)
nnoremap <S-m> <Plug>(Marks-prev)
" }}}

" {{{ search number <<??hlslens >>
lua << EOF
require('hlslens').setup({
    override_lens = function(render, posList, nearest, idx, relIdx)
        local sfw = vim.v.searchforward == 1
        local indicator, text, chunks
        local absRelIdx = math.abs(relIdx)
        if absRelIdx > 1 then
            indicator = ('%d%s'):format(absRelIdx, sfw ~= (relIdx > 1) and '???' or '???')
        elseif absRelIdx == 1 then
            indicator = sfw ~= (relIdx == 1) and '???' or '???'
        else
            indicator = ''
        end

        local lnum, col = unpack(posList[idx])
        if nearest then
            local cnt = #posList
            if indicator ~= '' then
                text = ('[%s %d/%d]'):format(indicator, idx, cnt)
            else
                text = ('[%d/%d]'):format(idx, cnt)
            end
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLensNear'}}
        else
            text = ('[%s %d]'):format(indicator, idx)
            chunks = {{' ', 'Ignore'}, {text, 'HlSearchLens'}}
        end
        render.setVirt(0, lnum - 1, col - 1, chunks, nearest)
    end
})

EOF

" Integrate with vim-visual-multi
" lua << EOF
" --vim.cmd([[
" --    aug VMlens
" --        au!
" --        au User visual_multi_start lua require('vmlens').start()
" --        au User visual_multi_exit lua require('vmlens').exit()
" --    aug END
" --]])
" EOF

" mapping
nnoremap <leader>/ /\<<C-R>=expand("<cword>")<CR>\><left><left>

" color
hi default link HlSearchNear IncSearch
hi default link HlSearchLens WildMenu
hi default link HlSearchLensNear IncSearch
hi default link HlSearchFloat IncSearch

hi IncSearch guibg=#d73a4a
hi IncSearch guifg=black
" }}}

" {{{ Scrollbar <<??nvim-scrollbar >>
augroup ScrollbarInit
    autocmd!
    autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
    autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
    autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup END
" }}}

" {{{ Language syntax highlighting <<??tree-sitter >>
lua <<EOF
require 'nvim-treesitter.install'.compilers = { "clang" }
require'nvim-treesitter.configs'.setup {
  -- :TSInstallInfo ???????????????????????????
  ensure_installed = {"python","fortran","c","vim","lua","latex","markdown","norg","norg_meta","matlab"},
  --ensure_installed = "maintained",
  -- ????????????????????????
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  -- ??????????????????
  incremental_selection = {
    enable = true,
  },
  -- ????????????Treesitter??????????????????(=) . NOTE: This is an experimental feature.
  indent = {
    enable = true,
  },
  yati = { enable = true },  -- treesitter indent plugin
}

--sloved rainbow (), [] ...
require "nvim-treesitter.highlight"
local hlmap = vim.treesitter.highlighter.hl_map
hlmap["punctuation.bracket"] = nil

--matlab syntax highlighting
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.matlab = {
    install_info = {
        url = "https://github.com/mstanciu552/tree-sitter-matlab.git",
        files = { "src/parser.c" },
        branch = "main",
    },
    filetype = "matlab",
}

EOF

" }}}

" {{{ <<??luasnip >>
lua <<EOF
require("luasnip/loaders/from_vscode").lazy_load()
EOF
" }}}
" {{{ Auto completion plugins :1'nvim-cmp', 2'nvim-lspconfig', 3'cmp-nvim-lsp', 4'cmp-buffer',
"                              5'cmp-path', 6'cmp-cmdline', 7'cmp_luasnip',
"                              8'cmp-emoji' 9'cmp-calc',10'cmp-matlab',
"                              11'cmp-under-comparator',12'cmp-dictionary'
lua <<EOF
vim.opt.completeopt = { 'menu', 'menuone', 'noselect'}
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        --completion = {
        --    completeopt = "menu,menuone,noinsert",
        --},
        documentation = {
            border = { "???", "???", "???", "???", "???", "???", "???", "???" },
            winhighlight = "Normal:#51A266,NormalNC:#0C0C0C",
        },
    },
    experimental = {
        ghost_text = true,
        native_menu = false,
    },
    sorting = {
        comparators = {
            cmp.config.compare.offset,
            cmp.config.compare.exact,
            cmp.config.compare.score,
            require("cmp-under-comparator").under,
            cmp.config.compare.kind,
            cmp.config.compare.sort_text,
            cmp.config.compare.length,
            cmp.config.compare.order,
        },
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-p>'] = cmp.mapping.select_prev_item(select_opts),
      ['<C-n>'] = cmp.mapping.select_next_item(select_opts),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
              cmp.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = true })
          elseif require("luasnip").expand_or_jumpable() then
              vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
          else
              fallback()
          end
      end, { "i", "s" }
      ),
      --["<Tab>"] = function(fallback)
      --  if cmp.visible() then
      --    cmp.select_next_item()
      --  elseif luasnip.expand_or_jumpable() then
      --    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
      --  else
      --    fallback()
      --  end
      --end,
      --["<S-Tab>"] = function(fallback)
      --  if cmp.visible() then
      --    cmp.select_prev_item()
      --  elseif luasnip.jumpable(-1) then
      --    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
      --  else
      --    fallback()
      --  end
      --end
    }),
    formatting = {
        format = function(entry, vim_item)
            local icons = {
                Text = "???",
                Method = "??",
                Function = "???",
                Constructor = "???",
                Field = "???",
                Variable = "???",
                Class = "????",
                Interface = "???",
                Module = "???",
                Property = "???",
                Unit = "???",
                Value = "???",
                Enum = "???",
                Keyword = "???",
                Snippet = "???",
                Color = "???",
                File = "???",
                Reference = "???",
                Folder = "???",
                EnumMember = "???",
                Constant = "???",
                Struct = "???",
                Event = "???",
                Operator = "???",
                TypeParameter = "???",
                Table = "??? ",
                Object = "???",
                Tag = "??? ",
                Array = "??? ",
                Boolean = "???",
                Number = "???",
                String = "???",
                Calendar = "??? ",
                Watch = "???",
            }
            vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)

            vim_item.menu = ({
                luasnip = '[SNIP]',
                path = '[PATH]',
                buffer = '[BUF]',
                calc = '[CALC]',
                -- nuspell = '[SPELL]',
                -- spell = '[SPELL]',
                emoji = '[EMOJI]',
                nvim_lsp = '[LSP]',
                -- cmp_tabnine = '[TN]',
                -- tmux = '[TMUX]',
                -- conjure = '[CJ]',
                -- orgmode = '[ORG]',
                cmp_matlab = '[MAT]',
                dictionary = '[Dict]',
                latex_symbols = '[TEX]',
                treesitter = '[TS]',
            })[entry.source.name]
            return vim_item
        end,
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'path' },
      { name = 'luasnip' }, -- For luasnip users.
      { name = 'buffer' },
      { name = 'emoji' },
      { name = 'calc' },
      { name = 'cmp_matlab' },
      { name = 'neorg' },
      {	name = "dictionary", keyword_length = 2 },
      {	name = "latex_symbols" },
      {	name = "treesitter" },
    })
  })
  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

--  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
--  cmp.setup.cmdline('/', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = {
--      { name = 'buffer' }
--    }
--  })
--
--  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--  cmp.setup.cmdline(':', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = {
--      { name = 'path' },
--      { name = 'cmdline' }
--    }
--  })

local search_config = {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
        }
    }

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', search_config)
cmp.setup.cmdline('?', search_config)

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
    { name = 'path' }
    }, {
    { name = 'cmdline' }
    })
})

-- uga-rosa/cmp-dictionary
require("cmp_dictionary").setup({
	dic = {
		--["*"] = { "D:/Program Files/Neovim/share/nvim/Mine/Directionary-8813.dic" },
		["*"] = { "D:/Program Files/Neovim/share/nvim/Mine/Directionary-69903.dic" },
	},
	-- The following are default values.
	exact = 2,
	first_case_insensitive = true,
	document = false,
	document_command = "wn %s -over",
	async = true,     --If you are using a very large dictionary and the body operation is blocked, try 'true'
	max_items = -1,   --This is the maximum number of candidates that this source will return to the nvim-cmp body. -1 means no limit.
	capacity = 5,
	debug = false,
})

EOF
" }}}
" {{{ lsp <<??nvim-lsp-installer >> << nvim-lspconfig >>
" nvim-lsp-installer
lua <<EOF
local needed = {
	"pyright",
	"vimls",
}

require("nvim-lsp-installer").setup({
    ensure_installed = needed,
    automatic_installation = false, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "???",
            server_pending = "???",
            server_uninstalled = "???"
        }
    }
})

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

for _, lsp in pairs(needed) do
  if lsp == 'diagnosticls' then

    require('lspconfig')[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      filetypes={ 'markdown'},
      flags = {
        debounce_text_changes = 150,
      }
    }
  else
    require('lspconfig')[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      flags = {
        -- This will be the default in neovim 0.7+
        debounce_text_changes = 150,
      }
    }
  end
end

-- ??????????????????????????????
vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
EOF
" }}}

" {{{ commnet <<??kommentary >>
lua <<EOF
vim.g.kommentary_create_default_mappings = false
vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_increase", {})
vim.api.nvim_set_keymap("x", "<leader>cc", "<Plug>kommentary_visual_increase", {})
vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_line_decrease", {})
vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_decrease", {})

EOF
" }}}

" {{{ tabline <<??luatab >>
lua <<EOF
--vim.opt.showtabline = 2 --????????????tab?????????
require('luatab').setup{
	separator = function()
		return ""
	end,
    windowCount = function(index) -- ??????buffer??????
        return index .. ' '
    end,
    --windowCount = function() -- ?????????buffer??????
    --  return ""
    --end,
    modified = function(bufnr)
        --return vim.fn.getbufvar(bufnr, '&modified') == 1 and '[+] ' or ''
        return vim.fn.getbufvar(bufnr, '&modified') == 1 and '??? ' or ''
        --return vim.fn.getbufvar(bufnr, '&modified') == 1 and '???? ' or ''
    end,
    title = function(bufnr)
        local file = vim.fn.bufname(bufnr)
        local buftype = vim.fn.getbufvar(bufnr, '&buftype')
        local filetype = vim.fn.getbufvar(bufnr, '&filetype')

        if buftype == 'help' then
            return 'help:' .. vim.fn.fnamemodify(file, ':t:r')
        elseif buftype == 'quickfix' then
            return 'quickfix'
        elseif filetype == 'TelescopePrompt' then
            return 'Telescope'
        elseif buftype == 'terminal' then
            local _, mtch = string.match(file, "term:(.*):(%a+)")
            return mtch ~= nil and mtch or vim.fn.fnamemodify(vim.env.SHELL, ':t')
        elseif file == '' then
            return '[No Name]'
        else
            return vim.fn.fnamemodify(file, ':p:h:t') .. '/' .. vim.fn.fnamemodify(file, ':t')
        end
    end
}
EOF
" }}}

" {{{ <<??lualine >>
lua << END
require "lualine".setup {
    globalstatus = true,
    options = {
        icons_enabled = true,
        theme = 'auto',
        --theme = 'max_lualine_theme_nightfox',
        --theme = 'max_lualine_theme_dayfox',
        -- component_separators = { left = '???', right = '\\' },
        component_separators = { left = '', right = '\\' },
        section_separators = { left = '???', right = '???'},
        disabled_filetypes = {'NvimTree'},
        always_divide_middle = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = {{
            'windows',
            show_modified_status = true,
            mode = 0,
            max_length = vim.o.columns * 2 / 3,
            symbols = {
                --modified = ' [+]',
                modified = ' [???? ]',
                --modified = ' ?????????',
                --modified = ' -->????',
                alternate_file = ' o',
                directory = ' z',
            },
            filetype_names = {
                startify = 'Startify',
                --dashboard = 'Dashboard',
            },
        }},
        lualine_b = { 'branch', 'diff', {
            "diagnostics",
                sources = { "nvim_diagnostic" },
                sections = { "error", "warn", "hint", "info" },
                symbols = {
                    error = '??? ',
                    warn = '??? ',
                    hint = '??? ',
                    info = '??? ',
                },
                colored = true,
                update_in_insert = false,
                always_visible = false,
            },
        },
        lualine_c = { '% [ %F - ??? %p%% ]' },
        lualine_x = { 'os.date("%H:%M %a")', 'filetype' },
        --lualine_y = { '%c - ??? %B' },
        lualine_y = { '%c' },
        lualine_z = { '%l - %L' },
    },
}

END

" ??? ?????? ??? ??? ?????? ????????????????????????????
" Modified ????
" ????????????

if &bg == 'dark'
    lua require'lualine'.setup {options = { theme = 'max_lualine_theme_nightfox' }}
elseif &bg == 'light'
    lua require'lualine'.setup {options = { theme = 'max_lualine_theme_dayfox' }}
endif

" }}}

" {{{ indentLine <<??indent-blankline.nvim >>
lua << EOF
vim.g.indent_blankline_buftype_exclude = {
    "terminal",
    "nofile",
    "quickfix",
    "prompt",
}

vim.g.indent_blankline_filetype_exclude = {
    "help",
    "startify",
    "lspinfo",
    --"packer",
    --"neogitstatus",
    "NvimTree",
    "checkhealth",
}

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

--rainbow indentline
--vim.opt.termguicolors = true
--vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
--
--require("indent_blankline").setup {
--    space_char_blankline = " ",
--    char_highlight_list = {
--        "IndentBlanklineIndent1",
--        "IndentBlanklineIndent2",
--        "IndentBlanklineIndent3",
--        "IndentBlanklineIndent4",
--        "IndentBlanklineIndent5",
--        "IndentBlanklineIndent6",
--    },
--}
EOF
" }}}

" {{{ easymotion <<??leap.nvim >> <<??flit.nvim >>
lua <<EOF
-- <<??leap.nvim >> configure
--require('leap').opts.safe_labels = {}-- Disable auto jump first match
require('leap').opts.highlight_unlabeled_phase_one_targets = true
vim.keymap.set({'x', 'o', 'n'}, 'r', '<Plug>(leap-forward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'R', '<Plug>(leap-backward-to)')
vim.keymap.set({'x', 'o', 'n'}, 'gr', '<Plug>(leap-cross-window)')

-- <<??flit.nvim >> configure
require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  labeled_modes = "v",
  multiline = true,
  opts = {}
}
EOF
" }}}

" {{{ weather <<??nvim-weather >> <<??nvim-weather3day >>
lua <<EOF
vim.g.weather_city = "Xi'an"
EOF
nnoremap <silent> <localleader>we :Weather<CR>
nnoremap <silent> <localleader>wd :Weather3day<CR>
" }}}

" {{{ todo highlight <<??todo-comments.nvim >>
lua <<EOF
require("todo-comments").setup {
     signs = true, -- show icons in the signs column
     sign_priority = 8, -- sign priority
     keywords = {
         TODO       = { icon = "??? ", color = "todo" },
         DONE       = { icon = "??? ", color = "done" },
         WAITING    = { icon = "??? ", color = "waiting" },
         INPROGRESS = { icon = "??? ", color = "inprogress" },
         CANCELED   = { icon = "??? ", color = "canceled" },
         NOTE       = { icon = "??? ", color = "note"},
         },
     merge_keywords = false, -- when true, custom keywords will be merged with the defaults
     highlight = {
         before = "", -- "fg" or "bg" or empty
         keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
         after = "fg", -- "fg" or "bg" or empty
         pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
         comments_only = true, -- uses treesitter to match keywords in comments only
         max_line_len = 400, -- ignore lines longer than this
         exclude = {}, -- list of file types to exclude highlighting
         },
     colors = {
         todo       = { "#c12728" },
         done       = { "#10b981" },
         --done       = { "#00ff00" },
         waiting    = { "#eaa425" },
         inprogress = { "#00808c" },
         canceled   = { "#ffff00" },
         note       = { "#cecece" },
         },
     search = {
         command = "rg",
         args = {
             "--color=never",
             "--no-heading",
             "--with-filename",
             "--line-number",
             "--column",
             },
         pattern = [[\b(KEYWORDS):]], -- ripgrep regex
         },
     }
EOF

" ??? ,??? ,??? ,??? ,??? ,???
" ??? ,??? ,??? ,??? ,???
" }}}
" {{{ norg <<??nvim-norg >>
lua <<EOF

require('neorg').setup {
	ensure_installed = { "norg" },
	    highlight = { -- Be sure to enable highlights if you haven't!
        enable = true,
    },
    load = {
        ["core.defaults"] = {},
        ["core.highlights"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.completion"] = {
            config = {
                engine = "nvim-cmp",
                },
        },
        ["core.gtd.base"] = {
          config = {
            workspace = "my_workspace",
            default_lists = {
              inbox = "inbox.norg",
            },
            syntax = {
              context = "#contexts",
              start = "#time.start",
              due = "#time.due",
              waiting = "#waiting.for",
            }
          }
        },
        ["core.gtd.ui"] = {},
        ["core.gtd.helpers"] = {},
        ["core.norg.qol.toc"] = {
            config = {
                default_split_mode = "split",
            },
        },
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    my_workspace = "D:/Program Files/Neovim/share/nvim/Mine/notes_norg",
                },
                index = "index.norg",
                autochdir = true,
            },
        },
        ["core.keybinds"] = { -- Configure core.keybinds
            config = {
                default_keybinds = false, -- Generate the default keybinds
                --neorg_leader = "<Leader>o"
            },
        },
    },
}

EOF
nnoremap <silent> <leader>ss :<C-U>e D:\Program Files\Neovim\share\nvim\Mine\notes_norg\index.norg<CR>
" }}}
" {{{ <<??neorg-telescope >>
lua << EOF
local neorg_callbacks = require("neorg.callbacks")
EOF
" }}}

" {{{ <<??Plugin - which-key.nvim >>
"set timeout ttimeout timeoutlen=300 ttimeoutlen=0
set timeoutlen=300
lua << EOF
  require("which-key").setup {
{
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "??", -- symbol used in the command line area that shows your active key combo
    separator = "???", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = '<c-d>', -- binding to scroll down inside the popup
    scroll_up = '<c-u>', -- binding to scroll up inside the popup
  },
  window = {
    border = "none", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}
  }

local L_all = require('which-key')
L_all.register({
['a'] = {'Align'},
['b'] = {'columns Num'},
['c'] = {
    name = 'Comment',
    ['c'] = {'Comment' },
    ['i'] = {'Uncomment' },
    },
['e'] = {'Tree'},
f = {
    name = "Telescope",
    s = {"Search History" },
    c = {"Command History" },
    b = {"CWD File" },
    p = {"Fuzze Word" },
    l = {"Word Line" },
    f = {"File Browser" },
    },
['z'] = {'Replace Word'},
['x'] = {'Close Tab'},
['q'] = {'Close Buffer'},
['w'] = {'Python Send'},
['u'] = {'Undotree'},
['k'] = {'Color Word'},
['K'] = {'Uncolor Word'},
['/'] = {'Search <Pattern>'},
['.'] = {'Open Path'},
['<space>'] = {'Calculator'},
['r'] = {
    name = 'VIMRC',
    ['c'] = {'Edit VIMRC' },
    ['r'] = {'Reload VIMRC' },
    },
['s'] = {
    name = 'Tools',
    ['s'] = {'Todo' },
    ['c'] = {'Spell Word' },
    ['n'] = {'Next Wrong Word' },
    ['p'] = {'previou Wrong Word' },
    ['t'] = {'Startify' },
    ['i'] = {'WhiteSpace' },
    ['?'] = {'Word Candidate' },
    },
['t'] = {
    name = 'Terminal',
    ['o'] = {'Terminal' },
    ['t'] = {'Term-Toggle' },
    ['r'] = {'Terminal rg' },
    ['p'] = {'IPyhon' },
    ['a'] = {'Terminal(Admin)' },
    },
}, { prefix = '<leader>' })

local s_all = require('which-key')
s_all.register({
['h'] = {'Vsplit'},
['j'] = {'Split'},
['t'] = {'Vsplit-Startify'},
}, { prefix = 's' })

local m_all = require('which-key')
m_all.register({
['m'] = {'Toggle Sig'},
['c'] = {'Clear Sig'},
}, { prefix = 'm' })

local LL_norg = require('which-key')
vim.cmd('autocmd FileType norg lua WhichKeyNorg()')
function WhichKeyNorg()
    LL_norg.register({
    ['n'] = {
        name = 'Neorg',
        ['c'] = {':Neorg keybind norg core.gtd.base.capture<CR>', 'Neorg Capture'},
        ['e'] = {':Neorg keybind norg core.gtd.base.edit<CR>', 'Neorg Edit'},
        ['v'] = {':Neorg gtd views<CR>', 'Neorg GTD'},
        ['n'] = {':Neorg keybind norg core.norg.dirman.new.note<CR>', 'Neorg NewNote'},
        },
    [','] = {
        name = 'Neorg Todo',
        ['d'] = {':Neorg keybind norg core.norg.qol.todo_items.todo.task_done<CR>', 'Done' },
        ['u'] = {':Neorg keybind norg core.norg.qol.todo_items.todo.task_undone<CR>', 'Undone' },
        ['p'] = {':Neorg keybind norg core.norg.qol.todo_items.todo.task_pending<CR>', 'Pending' },
        ['h'] = {':Neorg keybind norg core.norg.qol.todo_items.todo.task_on_hold<CR>', 'Holding' },
        ['i'] = {':Neorg keybind norg core.norg.qol.todo_items.todo.task_important<CR>', 'Important' },
        ['r'] = {':Neorg keybind norg core.norg.qol.todo_items.todo.task_recurring<CR>', 'Recurring' },
        ['c'] = {':Neorg keybind norg core.norg.qol.todo_items.todo.task_cancelled<CR>', 'Cancelled' },
        },
    }, { prefix = ',' })
end

--<< plugin-neorg-telescope >>
local LL_norg_tele = require('which-key')
vim.cmd('autocmd FileType norg lua WhichKeyNorg_tele()')
function WhichKeyNorg_tele()
    LL_norg_tele.register({
    ['f'] = {
        ['h'] = {':Telescope neorg search_headings<CR>',        'Neorg Headings'},
        ['i'] = {':Telescope neorg insert_link<CR>',            'Neorg Insert Link'},
        --['h'] = {':Telescope neorg find_linkable<CR>',          'History'},
        --['h'] = {':Telescope neorg insert_file_link<CR>',       'File Link'},
        --['h'] = {':Telescope neorg find_aof_tasks<CR>',         'Aof Tasks'},
        --['h'] = {':Telescope neorg find_aof_project_tasks<CR>', 'Aof Project Tasks'},
        --['h'] = {':Telescope neorg find_context_tasks<CR>',     'Context Tasks'},
        --['h'] = {':Telescope neorg find_project_tasks<CR>',     'Project Tasks'},
        },
    }, { prefix = '<leader>' })
end

local LL_others = require('which-key')
LL_others.register({
f = {
    name = "LeaderF",
    b = {"Open File" },
    c = {"Colorscheme" },
    f = {"Function" },
    l = {"Word Line" },
    p = {"Fuzze Word" },
    },
['t'] = {'Tag'},
w = {
    name = "Weather Forecast",
    d = {"3 day" },
    e = {"1 day" },
    },
}, { prefix = ',' })

EOF
" }}}

" ------- GUI -------
" {{{ GUI <<??NEOVIDE >>
if exists('g:neovide')
    let g:neovide_cursor_vfx_mode = "railgun"
    " let g:neovide_cursor_vfx_mode = "torpedo"
    " let g:neovide_cursor_vfx_mode = "pixiedust"
    " let g:neovide_cursor_vfx_mode = "ripple"
    let g:neovide_cursor_vfx_particle_density=7.0
    let g:neovide_cursor_trail_length=0.05

    let g:neovide_refresh_rate=60

    let g:neovide_cursor_antialiasing=v:true
    let g:neovide_cursor_animation_length=0.02

    let g:neovide_transparency=0.97
    let g:neovide_fullscreen=v:false
    let g:neovide_remember_window_size=v:true
    let g:neovide_remember_window_position=v:true

    let g:neovide_confirm_quit=v:true              " ???????????????????????????
    let g:neovide_hide_mouse_when_typing=v:true    " ?????????????????????
    " let g:neovide_profiler = v:true                " ?????????????????????

" Adjust transparency
    nnoremap <m-,> :let g:neovide_transparency-=0.02<CR>:let g:neovide_transparency<CR>
    nnoremap <m-.> :let g:neovide_transparency+=0.02<CR>:let g:neovide_transparency<CR>
    inoremap <m-,> <C-o>:let g:neovide_transparency-=0.02<CR><C-o>:let g:neovide_transparency<CR>
    inoremap <m-.> <C-o>:let g:neovide_transparency+=0.02<CR><C-o>:let g:neovide_transparency<CR>

" Toggle fullscreen
    function Neovide_fullscreen()
        if g:neovide_fullscreen == v:true
            let g:neovide_fullscreen=v:false
        else
            let g:neovide_fullscreen=v:true
        endif
    endfunction
    nnoremap <m-CR> :call Neovide_fullscreen()<cr>

" Adjust fontsize
    let s:guifontsize=12
    let s:guifont="CodeNewRoman_Nerd_Font_Mono"
    function! AdjustFontSize(amount)
        let s:guifontsize = s:guifontsize + a:amount
        execute "set guifont=" .. s:guifont .. ":h" .. s:guifontsize
    endfunction
    nnoremap <m--> :call AdjustFontSize(-1)<CR>
    nnoremap <m-=> :call AdjustFontSize(1)<CR>
    nnoremap <m-BS> :set guifont=CodeNewRoman_Nerd_Font_Mono:h12<CR>
    inoremap <m--> <C-o>:call AdjustFontSize(-1)<CR>
    inoremap <m-=> <C-o>:call AdjustFontSize(1)<CR>
    inoremap <m-BS> <C-o>:set guifont=CodeNewRoman_Nerd_Font_Mono:h12<CR>
endif
" }}}







