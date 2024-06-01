require "jb.util"

keymap({ shortcut = "[d", action = vim.diagnostic.goto_prev })
keymap({ shortcut = "]d", action = vim.diagnostic.goto_next })

local au_group = vim.api.nvim_create_augroup("UserLspConfig", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
    group = au_group,
    callback = function(ev)
        local opts = { buffer = ev.buf }
        keymap({ shortcut = "gD", action = vim.lsp.buf.declaration, opts = opts })
        keymap({ shortcut = "gd", action = vim.lsp.buf.definition, opts = opts })
        keymap({ shortcut = "K", action = vim.lsp.buf.hover, opts = opts })
        keymap({ shortcut = "<leader>ac", action = vim.lsp.buf.code_action, opts = opts })
    end,
})

require "jb.plugins.lsp.coq"
