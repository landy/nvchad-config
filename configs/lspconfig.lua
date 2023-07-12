local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"


require("ionide").setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

local servers = {"html", "jsonls", "yamlls" }
for _, server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.rust_analyzer.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   -- filetypes = {"rust"},
--   -- root_dir = util.root_pattern("Cargo.toml"),
--   settings = {
--     ['rust-analyzer'] = {
--       diagnostics = {
--         enable = true
--       },
--       cargo = {
--         allFeatures = true,
--       }
--     }
--   }
-- })
--
