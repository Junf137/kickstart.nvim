-- Move between Neovim windows and tmux panes alike with CTRL+<hjkl> (CTRL+\ goes to the previous one).
-- The plugin maps these keys when loaded here, after kickstart's window-only maps, so it overrides them.
-- It pairs with the tmux plugin of the same name, which dotfiles' tmux.conf loads.
vim.pack.add({ 'https://github.com/christoomey/vim-tmux-navigator' }, { load = true })

-- Inside tmux it also maps these keys in Terminal mode through Vim's CTRL-W prefix, which Neovim
-- passes to the shell instead (it types "TmuxNavigate..." there), so drop those maps.
for _, key in ipairs { '<C-h>', '<C-j>', '<C-k>', '<C-l>' } do
  pcall(vim.keymap.del, 't', key)
end
