" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Comments
    Plug 'tpope/vim-commentary'
    " Text Navigation
    Plug 'unblevable/quick-scope'
    " Easymotion
    Plug 'easymotion/vim-easymotion'
    " Have the file system follow you around
    Plug 'airblade/vim-rooter'
    " Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    Plug 'p00f/nvim-ts-rainbow'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Status Line
    Plug 'glepnir/galaxyline.nvim'
    " Vista
    Plug 'liuchengxu/vista.vim'
    " Zen mode
    Plug 'junegunn/goyo.vim'
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " Find and replace
    Plug 'brooth/far.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " Intuitive buffer closing
    Plug 'moll/vim-bbye'
    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-media-files.nvim'
    " Intellisense
    Plug 'neovim/nvim-lspconfig'
    Plug 'onsails/lspkind-nvim'
    " https://github.com/mhartington/formatter.nvim look into this
    " File Explorer
    Plug 'kyazdani42/nvim-tree.lua'
    " Themes
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
	Plug 'morhetz/gruvbox'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Git
    Plug 'airblade/vim-gitgutter'
    " Closetags
    Plug 'alvan/vim-closetag'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
