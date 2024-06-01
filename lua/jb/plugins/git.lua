local status, gitsigns = pcall(require, "gitsigns")
if not status then
    return
end

gitsigns.setup {}

status, neogit = pcall(require, "neogit")
if not status then
    return
end

neogit.setup {
    kind = "split"
}

require "jb.util"

keymap({ shortcut = "<leader>g", action = neogit.open })

