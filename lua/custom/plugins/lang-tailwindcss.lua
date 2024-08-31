-- tailwind-tools.lua
return {
  {
    'luckasRanarison/tailwind-tools.nvim',
    name = 'tailwind-tools',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim', -- optional
      'neovim/nvim-lspconfig', -- optional
    },
    opts = {},
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'luckasRanarison/tailwind-tools.nvim',
      'onsails/lspkind-nvim',
    },
    opts = {
      formatting = {
        format = function()
          require('lspkind').cmp_format {
            before = require('tailwind-tools.cmp').lspkind_format,
          }
        end,
      },
    },
  },
}
