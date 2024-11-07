return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  priority = 1000,
  opts = {
    border = no,
    width = 120,
    autocmds = {
      enableOnVimEnter = true,
    },
    buffers = {
      wo = {
        foldenable = true,
        relativenumber = true,
        number = true,
      },
    },
  },
}
