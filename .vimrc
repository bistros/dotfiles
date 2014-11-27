silent! if plug#begin('~/.vim/plugged')

" language
Plug 'pangloss/vim-javascript',             { 'for': 'javascript' }
Plug 'walm/jshint.vim',                     { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script',            { 'for': 'coffee' }
Plug 'mintplant/vim-literate-coffeescript', { 'for': 'litcoffee' }
Plug 'derekwyatt/vim-scala',                { 'for': 'scala' }
Plug 'tpope/vim-haml',                      { 'for': 'haml' }
Plug 'tpope/vim-rails',                     { 'for': 'ruby' }
Plug 'vim-ruby/vim-ruby',                   { 'for': 'ruby' }
Plug 'jc00ke/vim-tomdoc',                   { 'for': 'ruby' }
Plug 'sunaku/vim-ruby-minitest',            { 'for': 'ruby' }
Plug 'ngmy/vim-rubocop',                    { 'for': 'ruby' }
Plug 'duwanis/tomdoc.vim',                  { 'for': 'ruby' }
Plug 'tpope/vim-markdown',                  { 'for': 'markdown' }
Plug 'vim-perl/vim-perl',                   { 'for': 'perl' }
Plug 'yko/mojo.vim',                        { 'for': 'perl' }
Plug 'wting/rust.vim',                      { 'for': 'rust' }
Plug 'fatih/vim-go',                        { 'for': 'go' }
Plug 'jimenezrick/vimerl',                  { 'for': 'erlang' }
Plug 'hcs42/vim-erlang-tags',               { 'for': 'erlang' }
Plug 'ekalinin/Dockerfile.vim',             { 'for': 'Dockerfile' }
Plug 'cakebaker/scss-syntax.vim',           { 'for': 'scss' }
Plug 'davidhalter/jedi-vim',                { 'for': 'python' }
Plug 'nvie/vim-flake8',                     { 'for': 'python' }
Plug 'gregsexton/MatchTag',                 { 'for': 'html' }
Plug 'mattn/emmet-vim',                     { 'for': 'html' }

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
Plug 'mattn/gist-vim'

" 
Plug 'godlygeek/tabular'
Plug 'jpalardy/vim-slime'
Plug 'junegunn/limelight.vim',        { 'on': 'Limelight' }
Plug 'junegunn/vim-easy-align',       { 'on': '<Plug>(EasyAlign)' }
Plug 'junegunn/vim-github-dashboard', { 'on': 'GHDashboard' }
Plug 'junegunn/vim-oblique'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/fzf'
Plug 'majutsushi/tagbar',             { 'on': 'TagbarToggle' }
Plug 'scrooloose/nerdtree',           { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim',                 { 'on': 'GundoToggle' }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'
Plug 'mattn/webapi-vim'
Plug 'wikitopian/hardmode'
Plug 'flazz/vim-colorschemes'
Plug 'maksimr/vim-jsbeautify'
Plug 'tpope/vim-tbone'

call plug#end()
endif

" colorscheme desert
silent! colorscheme molokai

set tabstop=2 shiftwidth=2  " tab length, 1 tab == 2 spaces
set ai                      " auto indent
set si                      " smart indent
set nu
set hlsearch                " highlighting matching keyword
set novb                    " visualbell
set expandtab
set showmatch
set lazyredraw


" Freemarker highlighting
au BufRead,BufNewFile *.ftl set filetype=ftl
if filereadable('~/.vim/syntax/ftl.vim')
  au! Syntax ftl source ~/.vim/syntax/ftl.vim
endif

" Scala highlighting
au BufRead,BufNewFile *.scala set filetype=scala

" for go
set rtp+=$GOROOT/misc/vim
au BufRead,BufNewFile *.go set filetype=go
"au! Syntax go source $GOROOT/misc/vim/syntax/go.vim

" for ctags
if filereadable('/usr/local/bin/ctags')
  let g:tagbar_ctags_bin="/usr/local/bin/ctags"
endif
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let Tlist_WInWidth = 50
"map <F4> :TlistToggle<cr>


autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType litcoffee  runtime ftplugin/coffee.vim
autocmd Filetype html,ejs   set omnifunc=htmlcomplete#CompleteTags
autocmd Filetype python     set omnifunc=pythoncomplete#Complete
      \ tabstop=4 shiftwidth=4
autocmd Filetype cpp        set omnifunc=cppcomplete#CompleteCPP
autocmd Filetype ruby,eruby set omnifunc=rubycomplete#Complete
autocmd Filetype ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd Filetype ruby,eruby let g:rubycomplete_rails = 1
autocmd Filetype ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd Filetype java       set omnifunc=javacomplete#Complete
      \ makeprg=ant
      \ efm=\ %#[javac]\ %#%f:%l:%c:%*\\d:%*\\d:\ %t%[%^:]%#:%m,\%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#
      \ |set noexpandtab
autocmd Filetype jsp        set noexpandtab

" for autocomplete
set completefunc=syntaxcomplete#Complete

" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" 80 column 
if exists('+colorcolumn')
    autocmd Filetype javascript,coffee,python,ruby,perl,vim set colorcolumn=80
else
    autocmd Filetype javascript,coffee,python,ruby,perl,vim highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    autocmd Filetype javascript,coffee,python,ruby,perl,vim match OverLength /\%81v.\+/
endif

" instant-markdown
"let g:instant_markdown_slow = 1

" gundo
nnoremap <F6> :GundoToggle<CR>

" for NERDTree
"autocmd vimenter * NERDTree 
map <F2> :NERDTreeToggle<CR>

" support for mojo
let mojo_highlight_data = 1

" for Tagbar
nmap tt :TagbarToggle<CR>    
" au VimEnter * TagbarToggle

let g:startify_custom_header = [ 
            \ "Don't do drug.",
            \ " ",
            \ " ",
            \ ]

let g:syntastic_mode_map = { 'passive_filetypes': ['java'] }
let g:syntastic_javascript_checkers = [
  \ 'jshint'
  \ ]
let g:syntastic_javascript_gjslint_conf = " --nojsdoc --max_line_length=120"
let g:syntastic_html_tidy_ignore_errors = [
  \ 'proprietary attribute "ng-',
  \ '<svg> is not recognized!',
  \ 'discarding unexpected <svg>',
  \ 'discarding unexpected </svg>'
  \ ]

"set clipboard=unnamed

let g:go_disable_autoinstall = 1

" Set the shell Vim uses for external commands to bash in such a way that it'll source ~/.bash_profile
" set shell=/bin/bash\ --login

map <F3> :Limelight!!<CR>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

let g:github_dashboard = {
  \ 'username': $ME
  \ }

let g:github_dashboard#work = {
  \ 'username': $ME,
  \ 'api_endpoint': $GHE_API,
  \ 'web_endpoint': $GHE_WEB,
  \ }

" Escaping
inoremap kk <Esc>
xnoremap kk <Esc>
cnoremap kk <C-c>

" ===================================================================================================
" source : http://hints.macworld.com/article.php?story=20050803111126899
"
" ViM autocommands for binary plist files
" Copyright (C) 2005 Moritz Heckscher
"
" Note: When a file changes externally and you answer no to vim's question if
" you want to write anyway, the autocommands (e.g. for BufWritePost) are still
" executed, it seems, which could have some unwanted side effects.
"
" This program is free software; you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation; either version 2 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
augroup plist
  " Delete existing commands (avoid problems if this file is sourced twice)
  autocmd!

  " Set binary mode (needs to be set _before_ reading binary files to avoid
  " breaking lines etc; since setting this for normal plist files doesn't
  " hurt and it's not yet known whether or not the file to be read is stored
  " in binary format, set the option in any case to be sure).
  " Do it before editing a file in a new buffer and before reading a file
  " into in an existing buffer (using ':read foo.plist').
  autocmd BufReadPre,FileReadPre *.plist set binary

  " Define a little function to convert binary files if necessary...
  fun! MyBinaryPlistReadPost()
          " Check if the first line just read in indicates a binary plist
          if getline("'[") =~ "^bplist"
                  " Filter lines read into buffer (convert to XML with plutil)
                  '[,']!plutil -convert xml1 /dev/stdin -o /dev/stdout
                  " Many people seem to want to save files originally stored
                  " in binary format as such after editing, so memorize format.
                  let b:saveAsBinaryPlist = 1
          endif
          " Yeah, plain text (finally or all the way through, either way...)!
          set nobinary
          " Trigger file type detection to get syntax coloring etc. according
          " to file contents (alternative: 'setfiletype xml' to force xml).
          filetype detect
  endfun
  " ... and call it just after editing a file in a new buffer...
  autocmd BufReadPost *.plist call MyBinaryPlistReadPost()
  " ... or when reading a file into an existing buffer (in that case, don't
  " save as binary later on).
  autocmd FileReadPost *.plist call MyBinaryPlistReadPost() | let b:saveAsBinaryPlist = 0

  " Define and use functions for conversion back to binary format
  fun! MyBinaryPlistWritePre()
          if exists("b:saveAsBinaryPlist") && b:saveAsBinaryPlist
                  " Must set binary mode before conversion (for EOL settings)
                  set binary
                  " Convert buffer lines to be written to binary
                  silent '[,']!plutil -convert binary1 /dev/stdin -o /dev/stdout
                  " If there was a problem, e.g. when the file contains syntax
                  " errors, undo the conversion and go back to nobinary so the
                  " file will be saved in text format.
                  if v:shell_error | undo | set nobinary | endif
          endif
  endfun
  autocmd BufWritePre,FileWritePre *.plist call MyBinaryPlistWritePre()
  fun! MyBinaryPlistWritePost()
          " If file was to be written in binary format and there was no error
          " doing the conversion, ...
          if exists("b:saveAsBinaryPlist") && b:saveAsBinaryPlist && !v:shell_error
                  " ... undo the conversion and go back to nobinary so the
                  " lines are shown as text again in vim.
                  undo
                  set nobinary
          endif
  endfun
  autocmd BufWritePost,FileWritePost *.plist call MyBinaryPlistWritePost()
augroup END