return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    ensure_installed = {
      'c',
      'lua',
      'vim',
      'vimdoc',
      'ruby',
      'query',
      'bash',
      'css',
      'html',
      'dockerfile',
      'csv',
      'json',
      'sql',
      'yaml',
    }
  end,
}
