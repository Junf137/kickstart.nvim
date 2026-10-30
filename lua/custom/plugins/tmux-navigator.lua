-- Move between Neovim windows and tmux panes alike with CTRL+<hjkl> (CTRL+\ goes to the previous one).
-- The plugin maps these keys itself, after init.lua runs, so it overrides kickstart's window-only maps.
-- It pairs with the tmux plugin of the same name, which dotfiles' tmux.conf loads.
vim.pack.add { 'https://github.com/christoomey/vim-tmux-navigator' }
