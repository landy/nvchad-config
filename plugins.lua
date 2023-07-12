local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "prettier",
        "stylua",
        "yaml-language-server",
        "html-lsp",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
  },
  { "ionide/Ionide-vim" },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  { "easymotion/vim-easymotion" },
  { "github/copilot.vim", lazy = false },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}

return plugins
