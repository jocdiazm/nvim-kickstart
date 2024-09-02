return {
  'f-person/auto-dark-mode.nvim',
  priority = 1200,
  config = function()
    local auto_dark_mode = require 'auto-dark-mode'

    -- Define a function to apply custom highlights
    local function apply_custom_highlights()
      vim.api.nvim_set_hl(0, 'TreesitterContext', { bg = 'NONE', fg = vim.o.background == 'dark' and '#ebdbb2' or '#2e3440' })
      vim.api.nvim_set_hl(0, 'TreesitterContextLineNumber', { fg = '#D2879B' })
    end

    auto_dark_mode.setup {
      update_interval = 1000,
      set_dark_mode = function()
        vim.o.background = 'dark'
        vim.cmd 'colorscheme gruvbox-material'
        apply_custom_highlights()
      end,
      set_light_mode = function()
        vim.o.background = 'light'
        vim.cmd 'colorscheme rose-pine'
        apply_custom_highlights()
      end,
    }
    auto_dark_mode.init()
  end,
}
