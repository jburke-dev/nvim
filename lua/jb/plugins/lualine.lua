local status, lualine = pcall(require, "lualine")
if not status then
    return
end

lualine.setup {
    options = {
        theme = 'tokyonight',
        globalstatus = true,
        disabled_filetypes = {
            statusline = { 'NvimTree' },
            winbar = { 'NvimTree', 'NeogitStatus', 'NeogitCommitMessage' }
        }
    },
    sections = {
        lualine_x = { 'filetype' },
        lualine_y = {},
        lualine_z = {}
    },
    winbar = {
        lualine_a = { 'buffers' }
    }
}


