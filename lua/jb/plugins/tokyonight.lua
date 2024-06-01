local status, tokyonight = pcall(require, "tokyonight")
if not status then
    return
end

tokyonight.setup {
    style = "night",
    styles = {
        comments = { italic = false },
        keywords = { italic = false }
    },
    dim_inactive = true
}
