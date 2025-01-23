return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>p', '<cmd>Telescope find_files<cr>', desc = 'Telescope find files' },
    { '<leader>F', '<cmd>Telescope live_grep<cr>', desc = 'Telescope live grep' },
    { '<leader>P', '<cmd>Telescope keymaps<cr>', desc = 'Telescope keymaps' },
  },
}
