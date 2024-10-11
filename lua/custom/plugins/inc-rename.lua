return {
  'smjonas/inc-rename.nvim',
  opts = {},
  enabled = true,
  dependencies = {
    {
      'folke/noice.nvim',
      optional = true,
      opts = { presets = { inc_rename = true } },
    },
  },
}
