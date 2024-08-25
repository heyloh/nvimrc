local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>pv", ":Vex<CR>", { desc = "Open project view" })
keymap.set("n", "<leader><CR> :so", ":so ~/.config/nvim/init.vim<CR>", { desc = "Reload VimRC" })
