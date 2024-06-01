local status, telescope = pcall(require, "telescope")
if not status then
    return
end

telescope.setup({
    extensions = {
        aerial = {
            show_nesting = {
                ["_"] = false,
                json = true,
            },
        },
    },
})

telescope.load_extension("aerial")

local builtin = require("telescope.builtin")
require("jb.util")

keymap({
    shortcut = "<C-p>",
    action = function()
        builtin.find_files({ find_command = { "rg", "--files", "--hidden", "-g", "!.git/" } })
    end,
})

keymap({
    shortcut = "<C-f>",
    action = function()
        builtin.live_grep({
            additional_args = { "--hidden" },
            glob_pattern = "!.git/",
        })
    end,
})

keymap({
    shortcut = "<leader>co",
    action = telescope.extensions.aerial.aerial,
})

keymap({
    shortcut = "<leader>cr",
    action = builtin.lsp_references,
})

keymap({
    shortcut = "<leader>cd",
    action = builtin.diagnostics,
})

keymap({
    shortcut = "<leader>ci",
    action = builtin.lsp_implementations,
})

keymap({
    shortcut = "<leader>cgc",
    action = builtin.git_bcommits,
})

keymap({
    shortcut = "<leader>cgb",
    action = builtin.git_branches,
})

keymap({
    shortcut = "<leader>cc",
    action = builtin.builtin,
})

