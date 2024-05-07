return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        palette_overrides = {
          dark0_hard = '#1c1c1c',
          dark1 = '#232323',
        },
        -- overrides = {
        --   CursorLine = { bg = '#212121' },
        -- },
        contrast = 'hard',
      }
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    priority = 1000,
    config = function() end,
  },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = 'hard'
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
