return {
  'folke/trouble.nvim',
  event = 'User AstroFile',
  keys = {
    { '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', desc = 'Trouble all diagnostics' },
    { '<leader>xr', '<cmd>TroubleToggle lsp_references<cr>', desc = 'Trouble references' },
    { '<leader>xq', '<cmd>TroubleToggle quickfix<cr>', desc = 'Trouble quickfix' },
  },
}
