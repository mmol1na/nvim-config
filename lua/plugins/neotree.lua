return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },

  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree toggle left <CR>')

    require('neo-tree').setup {
      close_if_last_window = true,
      event_handlers = {
        {
          event = 'file_opened',
          handler = function()
            vim.cmd 'Neotree close'
          end,
        },
        {
          event = 'file_deleted',
          handler = function(arg)
            print('Deleted file: ', arg)
          end,
        },
      },
    }
  end,
}
