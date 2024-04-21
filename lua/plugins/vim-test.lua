return {
  'vim-test/vim-test',
  dependencies = { 'preservim/vimux' },
  config = function()
    vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>', { desc = 'Test Nearest' })
    vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { desc = 'Test File' })
    vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { desc = 'Test Suite' })
    vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = 'Test Last' })
    vim.keymap.set('n', '<leader>tb', ':TestVisit<CR>', { desc = 'Back to last test' })
    vim.cmd "let test#strategy = 'vimux'"
  end,
}
