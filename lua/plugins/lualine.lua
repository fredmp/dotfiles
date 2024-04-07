local colors = {
  black = '#22262D',
  white = '#ABB2BF',
  red = '#e06c75',
  green = '#98C379',
  blue = '#61AFEF',
  yellow = '#E5C07B',
  gray = '#282C34',
  darkgray = '#22272E',
  lightgray = '#607391',
  purple = '#c678dd',
  inactive = '#282C34',
}

local customtheme = {
  normal = {
    a = { bg = colors.inactive, fg = colors.white },
    b = { bg = colors.inactive, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  insert = {
    a = { bg = colors.green, fg = colors.black },
    b = { bg = colors.inactive, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  visual = {
    a = { bg = colors.yellow, fg = colors.black },
    b = { bg = colors.inactive, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  replace = {
    a = { bg = colors.red, fg = colors.black },
    b = { bg = colors.inactive, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  command = {
    a = { bg = colors.blue, fg = colors.black },
    b = { bg = colors.inactive, fg = colors.white },
    c = { bg = colors.gray, fg = colors.white },
  },
  inactive = {
    a = { bg = colors.inactive, fg = colors.gray },
    b = { bg = colors.darkgray, fg = colors.gray },
    c = { bg = colors.darkgray, fg = colors.gray },
  },
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = customtheme,
      },
    }
  end,
}
