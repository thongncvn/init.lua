require('dot').use {
 'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require('nvim-tree').setup {}
  end
}
