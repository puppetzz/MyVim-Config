
"       _      _   _       ____ ____   ___
"      | |    | | | |     |___ \___ \ / _ \
"      | | ___| |_| |_ ___  __) |__) | (_) |
"  _   | |/ _ \ __| __/ _ \|__ <|__ < > _ <
" | |__| |  __/ |_| ||  __/___) |__) | (_) |
"  \____/ \___|\__|\__\___|____/____/ \___/
"


"Global path setting
if has('win32')
	let nvim_config_dir = '~/AppData/Local/nvim/'
else
	let nvim_config_dir = '~/.config/nvim/'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimPlug for managing Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(nvim_config_dir.'plugged')
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag' 										" Add closetag for HTML
    " Themes
    Plug 'joshdick/onedark.vim'
    " Code intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " icon 
	Plug 'ryanoasis/vim-devicons'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Which key
    Plug 'liuchengxu/vim-which-key'
    " Colorizer and Rainbow
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    " Highlight syntax
    Plug 'jaxbot/semantic-highlight.vim'
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'octol/vim-cpp-enhanced-highlight'               " C/C++ highlgiht
    Plug 'uiiaoo/java-syntax.vim'
    " Debug
    Plug 'puremourning/vimspector'
call plug#end()

source $HOME/AppData/Local/nvim/themes/onedark.vim
source $HOME/AppData/Local/nvim/general/settings.vim
source $HOME/AppData/Local/nvim/keys/mappings.vim
source $HOME/AppData/Local/nvim/plug-config/coc.vim
source $HOME/AppData/Local/nvim/themes/airline.vim
source $HOME/AppData/Local/nvim/keys/which-key.vim
source $HOME/AppData/Local/nvim/plug-config/fzf.vim
luafile $HOME/AppData/Local/nvim/lua/plug-colorizer.lua
source $HOME/AppData/Local/nvim/plug-config/rainbow.vim
source $HOME/AppData/Local/nvim/plug-config/signify.vim
luafile $HOME/AppData/Local/nvim/lua/gitsigns.lua

