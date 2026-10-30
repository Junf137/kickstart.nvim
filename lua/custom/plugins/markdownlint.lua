-- Lint Markdown with the global config that dotfiles links to ~/.markdownlint.jsonc,
-- which turns off some overly strict rules. Mason installs markdownlint (see init.lua).
require('lint').linters.markdownlint.args = { '--config', vim.fn.expand '~/.markdownlint.jsonc', '--stdin' }
