" ------------------------------------------------------------------------------
" Plugin-specific settings
" ------------------------------------------------------------------------------

" let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'
let g:pyindent_continue = 4
let g:pyindent_nested_paren = 4
let g:pyindent_open_paren = 4

" Single space after comment character
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = {
    \ 'robot': { 'left': '#' },
    \ 'c':     { 'left': '//' }
    \ }

let t_Co = 16
let g:solarized_contrast = 'high'
let g:solarized_visibility = 'low'

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

let g:vim_json_syntax_conceal = 0

let g:grepper = {
    \ 'tools': ['ag', 'git', 'grep'],
    \ 'open':  1,
    \ 'jump':  0,
    \ }

let g:UltiSnipsExpandTrigger = '<C-s>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsEditSplit='context'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

let g:neoformat_only_msg_on_error = 1
let g:neoformat_verbose = 0

" let g:neomake_cpp_ninja_maker = {
    " \ 'exe': 'ninja',
    " \ 'args': ['-C build'],
    " \ 'errorformat':
        " \ '%-G%f:%s:,' .
        " \ '%-G%f:%l: %#error: %#(Each undeclared identifier is reported only%.%#,' .
        " \ '%-G%f:%l: %#error: %#for each function it appears%.%#,' .
        " \ '%-GIn file included%.%#,' .
        " \ '%-G %#from %f:%l\,,' .
        " \ '%f:%l:%c: %trror: %m,' .
        " \ '%f:%l:%c: %tarning: %m,' .
        " \ '%f:%l:%c: %m,' .
        " \ '%f:%l: %trror: %m,' .
        " \ '%f:%l: %tarning: %m,'.
        " \ '%f:%l: %m',
    " \ }

" let g:neomake_cpp_enabled_makers = ['ninja']
let g:neomake_python_enabled_makers = ['flake8']

" Disable vim-jedi completions since we are using deoplete for that
let g:jedi#completions_enabled = 0
let g:jedi#use_tabs_not_buffers = 1

let g:fsnonewfiles = 'on'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" ------------------------------------------------------------------------------
" Vim-Plug setup
" ------------------------------------------------------------------------------

call plug#begin()
    Plug '~/Code/vim-colors-solarized'
    " Plug 'Chiel92/vim-autoformat'
    Plug 'bkad/CamelCaseMotion'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf',  'do': './install' }
    " Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-endwise'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Plug 'neomake/neomake'
    Plug 'sbdchd/neoformat'
    Plug 'derekwyatt/vim-fswitch'
    Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }
    " Plug 'lyuts/vim-rtags'
    Plug 'marxin/neo-rtags'
    Plug 'Shougo/deoplete.nvim'
    " Plug 'SirVer/ultisnips'
    " Plug 'Vimjas/vim-python-pep8-indent'
    " Plug 'davidhalter/jedi-vim'
    " Plug 'elzr/vim-json'
    " Plug 'fatih/vim-go'
    " Plug 'godlygeek/tabular'
    " Plug 'lumiliet/vim-twig'
    " Plug 'mhinz/vim-grepper'
    " Plug 'zchee/deoplete-jedi'
    " Plug 'udalov/kotlin-vim'
call plug#end()

let g:deoplete#enable_at_startup = 0

call camelcasemotion#CreateMotionMappings(',')

" call deoplete#custom#source('_', 'matchers', ['matcher_head'])
" call deoplete#custom#source('cpp', 'matchers', ['rtags'])

" Deoplete settings via function calls
" let g:deoplete#sources   = {}
" let g:deoplete#sources._ = [ 'omni' ]
" let g:deoplete#sources.cpp = [ 'rtags' ]

" set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" if dein#load_state('~/.config/nvim/dein')
    " call dein#begin('~/.config/nvim/dein')

    " call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
    " call dein#add('Shougo/deoplete.nvim')

    " call dein#add('marxin/neo-rtags')

    " call dein#end()
    " call dein#save_state()
" endif

" ------------------------------------------------------------------------------
" Vim settings
" ------------------------------------------------------------------------------

" Enable filetype plug-ins
filetype plugin indent on

" Enable syntax highlighting
syntax on

" set leader key
let mapleader=' '

map Y y$

" nnoremap<C-h> :tabprev<CR>
" nnoremap<C-l> :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>
" nnoremap gj :
nnoremap üü [[
nnoremap ++ ]]
nnoremap ü+ []
nnoremap +ü ][
nnoremap cob :set background=<C-R>=&background == 'dark' ? 'light' : 'dark'<CR><CR>

" nnoremap <C-\> :sp<CR> :exec("tag ".expand("<cword>"))<CR>
" map <C-\> :call AgSearch()<CR>
" map <C-|> :Ag .expand("<cword>")("Ag ")<CR>

" yapf
map <C-Y> :call yapf#YAPF()<cr>
imap <C-Y> <c-o>:call yapf#YAPF()<cr>

" nnoremap ä '
" nnoremap + *
" nnoremap 8 {
" nnoremap 9 }

" Window navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

inoremap jk <esc>
inoremap <esc> <nop>
inoremap <c-c> <nop>

" Set default tabbing options
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" <C-T> and <C-A> round to next shiftwidth
set shiftround

" Enable modelines
set modeline

" Always display a sign column of width 1
set signcolumn=yes:1

" More space for messages
" set cmdheight=2

" Enable mouse support
set mouse=a

" Number formats for <C-A> and <C-X>
" NeoVim default: bin,hex
set nrformats=alpha,hex

" Minimum distance of current line from window top or bottom
set scrolloff=2

" Disable folding
set nofoldenable

" Keep backups
set backup

" Store backups in one place
set backupdir=~/.local/share/nvim/backup

" Store swap files in one place
set dir=~/.local/share/nvim/swap

" Highlight current line
set cursorline

" Highlight column 80
set colorcolumn=80

" Enable line, column number in corner
set ruler

" Case-insensitive searching
set ignorecase
" Case-sensitive search if Capital letters are searched
set smartcase

" enable line numbers
set relativenumber
set number
set numberwidth=5

" TODO(nh): enable when neovim supports it
" set clipboard=unnamed,autoselect
" set clipboard+=unnamedplus
set clipboard+=unnamed

" let g:clipboard = {
        " \   'name': 'wayland',
        " \   'copy': {
        " \      '+': 'wl-copy --paste-once --foreground',
        " \      '*': 'wl-copy --paste-once --foreground',
        " \    },
        " \   'paste': {
        " \      '+': 'wl-paste --primary',
        " \      '*': 'wl-paste --primary',
        " \   },
        " \   'cache_enabled': 1,
        " \ }

" Complete options (disable preview scratch window)
set completeopt=menu,longest
" set completeopt=menu,menuone,longest,noinsert,noselect

" Highlight matching braces
set showmatch

" Disable bell
set visualbell

" Reducde Vim's verbosity
set shortmess=I

" show invisibles
set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=nbsp:·,tab:▸\ ,eol:¬

" Limit popup menu height in insert mode completion
set pumheight=15

" On vertical split new windows go to the right
set splitright

" Allow per-directory .nvimrc
set exrc
set secure

" Solarize!
set background=dark
colorscheme solarized

" ------------------------------------------------------------------------------
" Leader key mappings
" ------------------------------------------------------------------------------

nnoremap <leader>t :FZF<CR>

" Quick editing of init.vim
map<leader>vi :call EditVimInit()<CR>

" Some key mappings
noremap<leader>md :setlocal filetype=markdown<CR>
noremap<leader>o  :FSHere<CR>
noremap<leader>l  :FSSplitRight<CR>
noremap<leader>h  :set hlsearch!<CR>

nnoremap <leader>rj  :call NeoRtagsFollowLocation()<CR>
nnoremap <leader>ri  :call NeoRtagsSymbolInfo()<CR>
nnoremap <leader>rd  :call NeoRtagsDiagnose()<CR>
nnoremap <leader>rf  :call NeoRtagsFindReferences()<CR>
nnoremap <leader>rn  :call NeoRtagsFindReferencesByName()<CR>
nnoremap <leader>rp  :call NeoRtagsJumpToParent()<CR>
nnoremap <leader>rw  :call NeoRtagsRenameSymbol()<CR>

nnoremap <leader>ff :Neoformat<CR>

nnoremap <leader>u gUl

" ------------------------------------------------------------------------------
" Auto commands
" ------------------------------------------------------------------------------

if (has("autocmd"))
    " When vimrc is saved, reload it
    autocmd! BufWritePost ~/.config/nvim/init.vim source ~/.config/nvim/init.vim

    " Automatically run Neomake after these filetypes have been saved
    " autocmd! BufWritePre *.py  Neomake
    autocmd! BufWritePre *.hh,*.hpp,*.inl,*.cc,*.cpp Neoformat

    autocmd! BufEnter *.pg  set filetype=plsql

    " Filetype-dependent whitespace definitions
    autocmd! FileType xml,css,tex,json,sh      setlocal ts=2 sts=2 sw=2 expandtab
    autocmd! FileType html,htmldjango,twig,plain,json,sql,plsql setlocal ts=2 sts=2 sw=2 expandtab indentexpr=
    autocmd! FileType vim setlocal keywordprg=:help
    " JSONC support
    autocmd FileType json syntax match Comment +\/\/.\+$+

    augroup swarm
        au!
        au BufEnter *.hpp let b:fswitchdst="inl,cpp" | let b:fswitchlocs="./,reg:|include/db|src|,reg:|include/hive|src|,reg:include/runtime|src|"
        au BufEnter *.inl let b:fswitchdst="cpp,hpp" | let b:fswitchlocs=",reg:|include/db|src|,reg:|include/hive|src|,reg:include/runtime|src|"
        au BufEnter *.cpp let b:fswitchdst="hpp" | let b:fswitchlocs="reg:|src|include/**|"
    augroup END

endif  " autocmd

" ------------------------------------------------------------------------------
" Functions
" ------------------------------------------------------------------------------

" Show syntax highlighting groups for word under cursor
nmap <leader>p :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Remove trailing whitespace
nmap <leader>w :call RemoveTrailingWhitespace()<CR>
function! RemoveTrailingWhitespace()
    :%s/\s\+$//ge
endfunction

" Remove DOS line endings
nmap <leader>m :call RemoveDOSLineEndings()<CR>
function! RemoveDOSLineEndings()
    :%s///g
endfunction

function! EditVimInit()
    let l:init = expand('~/.config/nvim/init.vim')
    if bufloaded(l:init)
        let l:n = bufnr(l:init)
        :execute 'buffer ' . l:n
    else
        if bufname("%") == ""
            :execute 'edit ' . l:init
        else
            :execute 'tabedit ' . l:init
        endif
    endif
endfunc
