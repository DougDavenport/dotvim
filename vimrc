
" actvate pathogen
" It is essential that these lines are called before enabling filetype detection, so I would recommend putting them at the top of your vimrc file.
filetype off " Needed so pathogen also loads ftdetect plugins.
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" Re-enable per filetype plugins and indents after loading pathogen plugin
filetype plugin indent on


" In GVIM
if has("gui_running")
    set guifont=Liberation\ Mono\ 8" use this font
    set lines=75 " height = 50 lines
    set columns=180 " width = 100 columns
    set background=dark " adapt colors for background
    set keymodel=
    set mousehide
"    colorscheme underwater-mod
"    colorscheme molokai
    colorscheme xoria256

    " To set the toolbars off (icons on top of the screen)
    set guioptions-=T
else
    set background=dark " adapt colors for dark background
    colorscheme xoria256
    set t_Co=256
endif


" ==================================================
" Basic Settings
" ==================================================
let mapleader="," " change the leader to be a comma vs slash



" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on


"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
"set shiftwidth=2
"set tabstop=2


"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>


"------------------------------------------------------------
" Doug's Modifications {{{1
"
"

set cursorline cursorcolumn
hi cursorline guibg=#000000 ctermbg=black
hi cursorcolumn guibg=#000000 ctermbg=black

set guifont=DejaVu\ Sans\ Mono\ 14

" Font Switching Binds
map <C-F8> <ESC>:set guifont=DejaVu\ Sans\ Mono\ 10<CR>
map <C-F9> <ESC>:set guifont=DejaVu\ Sans\ Mono\ 12<CR>
map <C-F10> <ESC>:set guifont=DejaVu\ Sans\ Mono\ 14<CR>
map <C-F11> <ESC>:set guifont=DejaVu\ Sans\ Mono\ 16<CR>
map <C-F12> <ESC>:set guifont=DejaVu\ Sans\ Mono\ 18<CR>

noremap <silent> <F12> :cal VimCommanderToggle()<CR>

" reset default install location for vimball, see :help vimball
let g:vimball_home = $VIM . '/vimfiles'

function Maximize_Window()
  silent !wmctrl -r :ACTIVE: -b add,maximized_horz,maximized_vert
endfunction

:autocmd GUIEnter * call Maximize_Window()


map <leader>t :NERDTreeToggle<CR>

map <leader>v :cal VimCommanderToggle()<CR> 


