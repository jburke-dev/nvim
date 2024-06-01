local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    return
end

nvim_tree.setup {
    view = {
        width = 60
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    }
}

require "jb.util"
keymap { shortcut = '<leader>to', action = ':NvimTreeFocus<CR>' }
keymap { shortcut = '<leader>tf', action = ':NvimTreeFindFile<CR>' }

