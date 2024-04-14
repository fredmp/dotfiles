return {
  'luckasRanarison/nvim-devdocs',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    mappings = {
      open_in_browser = 'C-0', -- Not working
    },
  },
  config = function()
    vim.keymap.set('n', '<leader>nd', ':DevdocsOpen<CR>', { desc = 'Search DevDocs' })
  end,
}
