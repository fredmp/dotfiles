local g, opt, wo, o, api = vim.g, vim.opt, vim.wo, vim.o, vim.api

-- Line numbers
api.nvim_set_option('number', true)
api.nvim_set_option('relativenumber', true)
--vim.cmd 'augroup numbertoggle'
--vim.cmd 'autocmd!'
--vim.cmd 'autocmd BufEnter,FocusGained,InsertLeave * :set relativenumber'
--vim.cmd 'autocmd BufLeave,FocusLost,InsertEnter   * :set norelativenumber'
--vim.cmd 'autocmd BufLeave,FocusLost,InsertEnter   * :set number'
--vim.cmd 'augroup end'
--vim.wo.number = true

-- Spaces
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.shiftround = true
opt.expandtab = true
opt.swapfile = false
opt.backspace = '2'

-- Nvim-tree
api.nvim_create_augroup('nvim-tree-open', {})
local nvimtreeopen = {
  desc = 'Create left space',
  group = 'nvim-tree-open',
  callback = function()
    if vim.fn.argc(-1) == 0 then
      vim.cmd 'NvimTreeOpen'
    end
  end,
}
local nvimtreelinenumbers = {
  desc = 'Prevent line number inside nvim-tree',
  group = 'nvim-tree-open',
  callback = function()
    if vim.bo.filetype == 'NvimTree' then
      vim.wo.statuscolumn = ''
    end
  end,
}
api.nvim_create_autocmd('VimEnter', nvimtreeopen)
api.nvim_create_autocmd('VimEnter', nvimtreelinenumbers)
api.nvim_create_autocmd('BufEnter', nvimtreelinenumbers)

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- General
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true
opt.autoread = true
opt.hlsearch = true
opt.incsearch = true
opt.clipboard = 'unnamedplus'
opt.breakindent = true
opt.undofile = true
opt.mouse = 'a'

opt.wrap = true
opt.ignorecase = true
opt.smartcase = true
opt.signcolumn = 'yes'

wo.statuscolumn = ' %=%{v:relnum?v:relnum:v:lnum} %=%s '

opt.cursorline = true

opt.scrolloff = 10

opt.splitright = true
opt.splitbelow = true

opt.wildignore:append {
  'node_modules',
  '.git/',
  'vendor',
  'coverage',
  'build',
  'tmp',
  'vendor',
}

vim.diagnostic.disable()

--api.nvim_create_autocmd("UiEnter", {
-- 	callback = function()
-- 		vim.cmd("NvimTreeOpen")
-- 	end,
--})

--vim.g.nvim_tree_auto_open = 1
--local function open_nvim_tree(data)
--	-- buffer is a directory
--	local directory = vim.fn.isdirectory(data.file) == 1
--
--	if not directory then
--		return
--	end
--
--	-- change to the directory
--	vim.cmd.cd(data.file)
--
--	-- open the tree
--	require("nvim-tree.api").tree.open()
--end
--
--api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- local diagnostics_active = false
-- local toggle_diagnostics = function()
--   diagnostics_active = not diagnostics_active
--   if diagnostics_active then
--     vim.diagnostic.show()
--   else
--     vim.diagnostic.hide()
--   end
-- end
--
-- vim.keymap.set('n', '<leader>d', toggle_diagnostics)
--
-- api.nvim_create_autocmd("BufEnter", {
-- 	callback = function()
-- 		vim.diagnostic.hide()
-- 	end,
-- })

--api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#687b99" })
--api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#9ba7bd" })
--api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#5c6370", bold = true })
