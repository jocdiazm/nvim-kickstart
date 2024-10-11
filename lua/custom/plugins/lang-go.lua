return {
  {
    'olexsmir/gopher.nvim',
    ft = 'go',
    build = function()
      if not require('lazy.core.config').spec.plugins['mason.nvim'] then
        vim.print 'Installing go dependencies...'
        vim.cmd.GoInstallDeps()
      end
    end,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      { 'williamboman/mason.nvim', optional = true }, -- by default use Mason for go dependencies
    },
    opts = {},
  },
  {
    'stevearc/conform.nvim',
    optional = true,
    opts = {
      formatters_by_ft = {
        go = { 'goimports', lsp_format = 'last' },
      },
    },
  },
  {
    'echasnovski/mini.icons',
    optional = true,
    opts = {
      file = {
        ['.go-version'] = { glyph = '', hl = 'MiniIconsBlue' },
      },
      filetype = {
        gotmpl = { glyph = '', hl = 'MiniIconsGrey' },
      },
    },
  },
}
