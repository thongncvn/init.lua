return {
  "williamboman/mason.nvim",
  lazy = false,
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  keys = {
    { '<leader>cf', '<cmd>lua vim.lsp.buf.format()<cr>', desc = 'LSP format' },
    { '<leader>cd', '<cmd>lua vim.lsp.buf.definition()<cr>', desc = 'LSP definition' },
  },
  config = function()
    require('mason').setup({})
    require('mason-lspconfig').setup({})

    require("mason-lspconfig").setup_handlers({
      -- Default
      function (server_name)
        require("lspconfig")[server_name].setup({})
      end,
      -- Other dedicated configs here
    })
  end,
}
