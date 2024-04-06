return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sort = {
        -- sorter = "case_sensitive",
      },
      view = {
        width = 60,
        number = false,
        relativenumber = false,
      },
      renderer = {
        -- group_empty = true,
        root_folder_label = false,
      },
      update_focused_file = {
        enable = true,
        update_root = {
          enable = false,
          ignore_list = {},
        },
        exclude = false,
      },
      filters = {
        -- dotfiles = true,
      },
    }
  end,
}
