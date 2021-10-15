" ========================================================
" =================== Install plugins ====================
" Setting up vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'benmills/vimux'
call vundle#end()

filetype plugin indent on

" Plugin nerdtree shortcut
nnoremap <C-b> :NERDTreeToggle<CR>
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
" Allow NERDTree show hidden files by default
" let NERDTreeShowHidden=1

" Settings based on vimux plugin
" nnoremap <F5> :call VimuxRunCommand("make run")<CR>
nnoremap <F6> :call VimuxRunCommand("git status")<CR>
nnoremap <F7> :call VimuxRunCommand("git diff")<CR>
nnoremap <F8> :call VimuxRunCommand("git log")<CR>
nnoremap <F9> :call VimuxRunCommand("fc -e : -1")<CR>

" ================ End of install plugins ================
" ========================================================

" ========================================================
" ==================== My settings =======================

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set backup      " keep a backup file (restore to previous version)
set undofile    " keep an undo file (undo changes after closing)
set history=100 " keep 100 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
" For widescreens
set ttymouse=sgr

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif


" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
packadd matchit

" command order matters
colorscheme elflord

set number
set relativenumber
" ctermfg x178_Gold3
hi LineNr cterm=NONE ctermfg=178 ctermbg=black

set cursorline
" ctermbg x235_Grey18
hi cursorline ctermbg=235 cterm=None
" ctermbg x235_Grey18
" ctermfg x220_Gold1
hi cursorlinenr ctermbg=235 ctermfg=220 cterm=bold

" filetype on

set smartindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

set showmatch " show matching brackets

set backupdir=~/.vim/backup
set undodir=~/.vim/undo

" Resize window
nnoremap <C-l> :vertical resize +4<CR>
nnoremap <C-h> :vertical resize -4<CR>
nnoremap <C-j> :resize +4<CR>
nnoremap <C-k> :resize -4<CR>

" Ctags
set tags=tags;/

" ================== End of My settings ==================
" ========================================================
