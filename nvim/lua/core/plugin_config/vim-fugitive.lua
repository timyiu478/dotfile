-- Browse command
vim.cmd [[
  command! -nargs=1 Browse silent execute '!open' shellescape(<q-args>,1)
]]

-- Keymappigs
vim.keymap.set('n', 'gbb', ":GBrowse<CR>")
