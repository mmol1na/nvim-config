return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
    config = function()
      vim.cmd 'colorscheme oxocarbon'
    end,
  },
}
