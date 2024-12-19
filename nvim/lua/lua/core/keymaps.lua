-- Rebind Esc to kj
vim.keymap.set('i', 'kj', '<Esc>')

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- tab split
vim.keymap.set('n', 'tt', ':tab split<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Beginning and end of line in `:` command mode
vim.keymap.set("c", "<C-a>", "<home>", {})
vim.keymap.set("c", "<C-e>", "<end>", {})
