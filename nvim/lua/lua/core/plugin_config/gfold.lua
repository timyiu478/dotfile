require("gfold").setup()

vim.keymap.set('n', '<C-g>', ":lua require('gfold').pick_repo()<CR>")
