local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true
      }
    }
  }
}

lspconfig.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    init_options = {
        preferences = {
            disableSuggestions = true
        }
    },
    filetypes = {"typescript", "javascript", "javascriptreact", "typescriptreact"},
}

lspconfig.volar.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"vue"}
}

lspconfig.emmet_ls.setup{}

lspconfig.dockerls.setup{}

lspconfig.templ.setup{}

lspconfig.html.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"html", "templ"},
}

lspconfig.htmx.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"html", "templ"},
}

lspconfig.tailwindcss.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "templ", "astro", "javascript", "typescript", "react" },
    init_options = { userLanguages = { templ = "html" } },
})
