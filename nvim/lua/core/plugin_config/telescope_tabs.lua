require('telescope-tabs').setup()

vim.keymap.set("n", "<C-b>", ":Telescope telescope-tabs list_tabs <CR>", {})
