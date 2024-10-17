return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'luckasRanarison/tailwind-tools.nvim',
    'onsails/lspkind-nvim',
  },
  opts = {
    formatting = function()
      return {
        fields = { 'kind', 'abbr', 'menu' },
        format = require('lspkind').cmp_format {
          mode = 'symbol', -- show only symbol annotations
          menu = { -- showing type in menu
            nvim_lsp = '[LSP]',
            path = '[Path]',
            buffer = '[Buffer]',
            luasnip = '[LuaSnip]',
          },
          maxwidth = 60,
          ellipsis_char = '...',
          before = require('tailwind-tools.cmp').lspkind_format,
        },
      }
    end,
  },
}
