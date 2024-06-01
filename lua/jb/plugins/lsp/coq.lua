local status, lspconfig = pcall(require, 'lspconfig')
if not status then
    return
end

local neodev
status, neodev = pcall(require, "neodev")
if not status then
    return
end

status, coq = pcall(require, "coq")
if not status then
    return
end
neodev.setup {}


lspconfig.lua_ls.setup(coq.lsp_ensure_capabilities{
    settings = {
        Lua = {
            completion = {
                callSnippet = "Replace"
            },
            telemetry = {
                enable = false
            }
        }
    }
})

vim.cmd("COQnow -s")
