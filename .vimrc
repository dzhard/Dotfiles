set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
set clipboard=unnamedplus
set number
set pastetoggle=<F2>
"colorscheme lxvc 
" color molokai

call plug#begin('~/.vim/plugged')
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ajh17/VimCompletesMe'
Plug 'w0rp/ale'
Plug 'rakr/vim-one'

call plug#end()
let g:LanguageClient_serverCommands = {
    \ 'reason': ['/home/dzmitry/reason-language-server']
    \ }
let g:deoplete#enable_at_startup = 1
let g:airline_theme='one'
map <silent> <C-n> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme one
set background=dark " for the dark version
set guifont=Fira\ Code\ weight=453\ 10
