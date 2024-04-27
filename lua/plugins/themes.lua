return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    opts = {
      contrast = 'hard',
    },
    config = function() end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
    config = function() end,
  },
  {
    'f4z3r/gruvbox-material.nvim',
    name = 'gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd 'colorscheme gruvbox-material'
      -- configs go here
    end,
  },
  {
    'comfysage/evergarden',
    opts = {
      transparent_background = false,
      contrast_dark = 'medium', -- 'hard'|'medium'|'soft'
      overrides = {}, -- add custom overrides
    },
    config = function() end,
  },
}
