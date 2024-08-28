return {
  'f-person/auto-dark-mode.nvim',
  priority = 1200,
  config = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.o.background = 'dark'
      vim.cmd 'colorscheme gruvbox-material'
    end,
    set_light_mode = function()
      vim.o.background = 'light'
      vim.cmd 'colorscheme rose-pine'
    end,
  },
}
