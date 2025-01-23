return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup()

    require("mason-lspconfig").setup_handlers({
      -- Default
      function (server_name)
        require("lspconfig")[server_name].setup({})
      end,
      -- Other dedicated configs here
    })
  end,
}
