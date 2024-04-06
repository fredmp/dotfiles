local keymap = vim.keymap

-- Switch between buffers with arrows
keymap.set({ 'n', 'i' }, '<C-Up>', ':bn<CR>')
keymap.set({ 'n', 'i' }, '<C-Right>', ':bn<CR>')
keymap.set({ 'n', 'i' }, '<C-Down>', ':bp<CR>')
keymap.set({ 'n', 'i' }, '<C-Left>', ':bp<CR>')

-- Navigate vim panes better
--keymap.set('n', '<c-k>', ':wincmd k<CR>')
--keymap.set('n', '<c-j>', ':wincmd j<CR>')
--keymap.set('n', '<c-h>', ':wincmd h<CR>')
--keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Clean up search highlight
keymap.set('n', '<leader>nh', ':nohlsearch<CR>')

-- Copy line and paste it below
keymap.set('n', 'Y', '_y$$o<Esc>p==_', {})

keymap.set('n', '<leader>nt', ':NvimTreeFocus<CR>')

--keymap.set('n', '<leader>d', function ()
--  vim.diagnostic.enable(0)
--end)

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

keymap.set('n', '<leader>ww', '<cmd>w<CR>', { desc = 'Save File' })
keymap.set('n', '<leader>pp', 'o<Esc>O', { desc = 'Insert paragraph' })

-- vim: ts=2 sts=2 sw=2 et
