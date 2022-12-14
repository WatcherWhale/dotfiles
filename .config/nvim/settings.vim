let g:python3_host_prog='/usr/bin/python3'

" LEARN VIM BETTER

"nnoremap <up>    <nop>
"nnoremap <down>  <nop>
"nnoremap <left>  <nop>
"nnoremap <right> <nop>
" inoremap <up>    <nop>
" inoremap <down>  <nop>
" inoremap <left>  <nop>
" inoremap <right> <nop>

map j gj
map k gk
map <up> gk
map <down> gj

set clipboard^=unnamed

set ignorecase

" Italics
set t_ZH=^[[3m
set t_ZR=^[[23m
setlocal cul

" Set compatibility to Vim only.
set nocompatible

set guifont=DroidSansMono\ Nerd\ Font\ 11

" Helps force plug-ins to load correctly when it is turned back on below.
filetype plugin on

" Turn off modelines
set modelines=0

" Wrap around text when line is full
set wrap
set linebreak

" Vim's auto indentation feature does not work properly with text copied from
" outside of Vim. Press the <F2> key to toggle paste mode on/off.

"nnoremap <F2> :set invpaste paste?<CR>
"imap <F2> <C-O>:set invpaste paste?<CR>
"set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the
" width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set noshowmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump
" between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

" Set status line display
set statusline=

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text,
" 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Sudo Write
command! -nargs=0 Sw w !sudo tee % > /dev/null

" Markdown
"   Disable folding
let g:vim_markdown_folding_disabled = 1

set foldmethod=syntax
set foldlevelstart=30

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

" Goyo
let g:goyo_width = 120
let g:goyo_height = 35

" Nerdtree
let NERDTreeQuitOnOpen=1
let g:NERDTreeHijackNetrw = 1
let g:ranger_replace_netrw = 0

" Markdown preview
let vim_markdown_preview_github=1

" Latex
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_enabled = 0
let g:vimtex_compiler_latexmk = {
       \ 'executable' : 'latexmk',
       \ 'options' : [
       \   '-pdflatex=lualatex',
       \   '-f',
       \   '-shell-escape',
       \   '-pdf',
       \   '-interaction=nonstopmode',
       \ ],
       \}

" Bracey
let g:bracey_browser_command = 'firefox'

" Joplin image attach

augroup autocom
    autocmd!
    " Executes joplin command on markdown files
    " autocmd VimLeave *.md :Joplin
augroup END

command! Joplin call Joplin()
fun Joplin()
    let $PATH = expand("%:p")
    !/bin/sh -c '/home/watcherwhale/.scripts/joplin-attach ${PATH}'
endfun

aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

" Set Spell checker
set spelllang=en,nl

let g:languagetool_lang = "en-GB"
let g:languagetool_cmd = "/sbin/languagetool"

let g:pydocstring_formatter = "google"

" Clear search
command ClearSearch :let @/ = ""
command Nos :call histdel('/') | :noh

" Vim Wiki
let g:vimwiki_list = [{'path': '~/Documents/Notes/', 'path_html': '~/Documents/Notes-html'}]

set nocompatible
filetype plugin on
syntax on

let g:vimwiki_toc_header_level = 2
