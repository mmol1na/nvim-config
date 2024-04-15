return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>Ga', function()
        local file_name = vim.fn.expand '%:p'
        vim.cmd('Git add ' .. file_name)
      end, { desc = 'Add file to be staged' })
      vim.keymap.set('n', '<leader>Gc', function()
        vim.cmd 'Git commit '
      end, { desc = 'Commit staged changes' })
      vim.keymap.set('n', '<leader>Gp', function()
        vim.cmd 'Git push'
      end, { desc = 'Push staged changes' })
    end,
  },
}