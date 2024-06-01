require("paq")({
    "savq/paq-nvim",

    "neovim/nvim-lspconfig",
    "ms-jpq/coq_nvim",
    "ms-jpq/coq.artifacts",
    "folke/neodev.nvim",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "stevearc/aerial.nvim",
    "folke/tokyonight.nvim",
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    "nvim-lualine/lualine.nvim",
    "NeogitOrg/neogit",
    "lewis6991/gitsigns.nvim"
})

require "jb.plugins.nvim-tree"
require "jb.plugins.telescope"
require "jb.plugins.tokyonight"
require "jb.plugins.lualine"
require "jb.plugins.lsp"
require "jb.plugins.git"
