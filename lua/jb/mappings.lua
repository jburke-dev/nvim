require("jb.util")

vim.g.mapleader = " "

keymap({ mode = "i", shortcut = "jj", action = "<esc>" })
keymap({ shortcut = "<leader>2", action = ":e $XDG_CONFIG_HOME/nvim/lua/jb/init.lua<CR>", { desc = "Edit config" } })

