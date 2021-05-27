"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

" General Settings
if !exists('g:vscode')
  source ~/.config/nvim/plug-config/polyglot.vim
endif
source ~/.config/nvim/vim-plug/plugins.vim
source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/general/functions.vim
source ~/.config/nvim/general/theme.vim
source ~/.config/nvim/keys/mappings.vim

" Plugin Configuration
source ~/.config/nvim/plug-config/vim-commentary.vim
source ~/.config/nvim/plug-config/easymotion.vim
source ~/.config/nvim/plug-config/goyo.vim
source ~/.config/nvim/plug-config/vim-rooter.vim
source ~/.config/nvim/plug-config/start-screen.vim
source ~/.config/nvim/plug-config/gitgutter.vim
source ~/.config/nvim/plug-config/closetags.vim
source ~/.config/nvim/plug-config/barbar.vim
source ~/.config/nvim/plug-config/nvimtree-config.vim
source ~/.config/nvim/lua/lsp-wrapper.vim
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/lua/lsp/general-ls.lua
luafile ~/.config/nvim/lua/plugins/galaxyline-config.lua
luafile ~/.config/nvim/lua/plugins/nvimtree-config.lua
luafile ~/.config/nvim/lua/plugins/treesitter-config.lua
luafile ~/.config/nvim/lua/plugins/colorizer-config.lua
luafile ~/.config/nvim/lua/plugins/telescope-config.lua
"luafile ~/.config/nvim/lua/plugins/compe-config.lua
"luafile ~/.config/nvim/lua/plugins/lspkind-config.lua
" LSP: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
luafile ~/.config/nvim/lua/lsp/lsp-config.lua
"luafile ~/.config/nvim/lua/lsp/python-ls.lua
"luafile ~/.config/nvim/lua/lsp/bash-ls.lua
"luafile ~/.config/nvim/lua/lsp/vim-ls.lua
"luafile ~/.config/nvim/lua/lsp/clangd-ls.lua

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Add paths to node and python here
if !empty(glob("~/.config/nvim/paths.vim"))
  source $HOME/.config/nvim/paths.vim
endif
