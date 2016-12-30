
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'vhda/verilog_systemverilog.vim'
" set VerilogErrorFormat = msim 2 

" if you use Vundle, load plugins:
" Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" -------------------------------------


" ---------------------
" General Settings
" ---------------------
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" ---------------------
" Whitespace
" ---------------------
" Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=2
set softtabstop=2
set expandtab

autocmd FileType py setlocal shiftwidth=4 softtabstop=4 expandtab autoindent
autocmd Filetype py match BadWhitespace /\s\+$/

" ---------------------
" Commentary
" ---------------------
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

" ---------------------
" YouCompleteMe
" ---------------------
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
let g:ycm_confirm_extra_conf = 0 
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax = 1   "add keywords to completion database
let g:ycm_autoclose_preview_window_after_insertion = 1 
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_enable_diagnostic_signs = 1 
let g:ycm_enable_diagnostic_highlighting = 0 
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:ycm_always_populate_location_list = 1 
nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader>h :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>e :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>d :YcmCompleter GoTo<CR>
nnoremap <leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jt :YcmCompleter GetType<CR>
nnoremap <leader>l :YcmCompleter GoToReferences<CR>


" ---------------------
" Tab navigation
" ---------------------
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>



