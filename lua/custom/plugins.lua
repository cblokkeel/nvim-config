local plugins = {
    {
    "neovim/nvim-lspconfig",
        config = function ()
          require "plugins.configs.lspconfig"
          require "custom.configs.lspconfig"
        end
    },
    {
        "williamboman/mason.nvim",
        opts = {
          ensure_installed = {
            "gopls",
            "gofumpt",
            "goimports-reviser",
            "vue-language-server",
            "vls",
            "typescript-language-server",
            "eslint-lsp",
            "prettierd",
            "emmet-ls",
          }
        }
    },
    {
        "nvimtools/none-ls.nvim",
        event = "VeryLazy",
        opts = function ()
          return require "custom.configs.null-ls"
        end
        },
    {
        "olexsmir/gopher.nvim",
        ft = "go",
        config = function (_, opts)
          require("gopher").setup(opts)
        end,
        build = function ()
          vim.cmd [[silent! GoInstallDeps]]
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false
    },
    {
        "junegunn/fzf.vim",
        lazy = false
    },
    {
        "github/copilot.vim",
        lazy = false
    },
    {
        "neoclide/coc.nvim",
        lazy = false,
        branch = "release"
    }
}

return plugins
