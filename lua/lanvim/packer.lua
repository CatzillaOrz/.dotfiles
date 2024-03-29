-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use('mbbill/undotree')

  -- lsp-zero
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'mfussenegger/nvim-jdtls'},


      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    },
    config = {
      clone_timeout = 36000000, -- Timeout, in seconds, for git clones
    },

    -- Mason-null-ls
    use {
      "jose-elias-alvarez/null-ls.nvim",
      "jayp0521/mason-null-ls.nvim",
    },

    -- dapui
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } },

    use {
      'mfussenegger/nvim-dap',
      'theHamsta/nvim-dap-virtual-text'
    },

    -- css
    use {
      'ap/vim-css-color'
    },

    -- java
    use {
      'mfussenegger/nvim-jdtls'
    }
  }
end
)
