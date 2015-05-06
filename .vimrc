""""""Setting for Vundle"""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
call vundle#end()            " required
filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Themes and Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
set autoindent 
set cindent 
set modeline 
set ruler 
set showcmd 
set showfulltag 
set showmode 
set smartcase 
set smartindent 
set imcmdline 
set previewwindow 
set hlsearch 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencodings=utf-8,gbk
filetype plugin indent on
" Turn on line numbers:
set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Start minibuf automatically
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1 

"Map for tasklist
map T :TaskList<CR>
map P :TlistToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Related to Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
autocmd FileType python runtime! autoload/pythoncomplete.vim
imap <c-space> <c-x><c-o>
set et
set sw=4
set smarttab
map <f12> :w\|!python %
let g:pydiction_location = '/home/freeflying/.vim/complete-dict'
let g:pydiction_menu_height = 20

" Taglist variables
" " Display function name in status bar:
let g:ctags_statusline=1
" " Automatically start script
let generate_tags=1
" " Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" " Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" " Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
highlight CursorColumn cterm=none ctermbg=DarkRed
autocmd insertLeave *.py set nocursorcolumn
autocmd insertEnter *.py set cursorcolumn
"""""Twitter Account info""""""""""""""""
"let twitvim_login = "freeflying:zphoucanonical761009"

" Set color scheme that I like.
if has("gui_running")
    colorscheme desert
"else
"    colorscheme darkblue
endif

" To insert timestamp, press F3.
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

" To save, press ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Search as you type.
set incsearch

" Ignore case when searching.
set ignorecase

" Show autocomplete menus.
set wildmenu

" Show editing mode
set showmode
let &guifont="Monospace 14"
autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""Settings for vim-go""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""show a list of interfaces which are implemented
au FileType go nmap <Leader>s <Plug>(go-implements)

"""Open relevant GoDoc for the word""""""""""""""""
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical

""""""""Open GoDoc in broweser"""""""""""""""""""""
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)


""""""""""show type info"""""""""""""""""""""""""""
au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
