return {
  {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    priority = 1000,
    opts = {
      custom_highlights = function(colors)
        return {
          BorderBg = { bg = colors.none, fg = colors.lavender },
          -- :
          -- Comment = { fg = colors.flamingo },
          -- TabLineSel = { bg = colors.pink },
          -- CmpBorder = { fg = colors.surface2 },
          -- Pmenu = { bg = colors.none },
        }
      end,
      -- transparent_background = true,
      integrations = {
        alpha = true,
        aerial = true,
        dap = { enabled = true, enable_ui = true },
        barbar = true,
        mason = true,
        neotree = true,
        notify = true,
        nvimtree = false,
        semantic_tokens = true,
        symbols_outline = true,
        telescope = true,
        ts_rainbow = false,
        harpoon = true,
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = {
          enabled = true,
          border = true,
        },
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = false,
        gitsigns = true,
        notifier = true,
        dashboard = true,
        navic = { enabled = true, custom_bg = 'lualine' },
        treesitter = true,
        which_key = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            hints = { 'undercurl' },
            warnings = { 'undercurl' },
            information = { 'undercurl' },
          },
        },
        flash = true,
        illuminate = false,
        indent_blankline = { enabled = true },
      },
    },
  },
  {
    'nvim-telescope/telescope.nvim',
    optional = true,
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
    {},
    'sainnhe/gruvbox-material',
    priority = 1000,
    lazy = false,
    config = function() -- init function runs before the plugin is loaded
      -- vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_enable_bold = 0
      vim.g.gruvbox_material_background = 'medium'
      vim.g.gruvbox_material_float_style = 'dim'
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_ui_contrast = 'soft'
      -- vim.g.gruvbox_material_transparent_background = 2
    end,
  },
  {
    'sainnhe/everforest',
    priority = 1000,
    init = function() -- init function runs before the plugin is loaded
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_enable_bold = 1
      vim.g.everforest_background = 'hard'
      vim.g.everforest_float_style = 'dim'
      vim.g.everforest_better_performance = 1
    end,
    -- vim.g.everforest_ui_contrast = "high"
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        bold = true,
        italic = false,
      },
      highlight_groups = {
        Comment = { italic = true },
        ColorColumn = { bg = 'rose' },
        -- Blend colours against the "base" background
        CursorLine = { bg = 'foam', blend = 10 },
        StatusLine = { blend = 0 },
        IlluminatedWordRead = { bg = '#e84220' },
        IlluminatedWordText = { bg = '#e84220' },
        IlluminatedWordWrite = { bg = '#e84220' },

        TablineFill = {
          blend = 0,
        },
        -- By default each group adds to the existing config.
        -- If you only want to set what is written in this config exactly,
        -- you can set the inherit option:
        -- Search = { bg = "black", inherit = false },
      },
    },
  },
  { 'AstroNvim/astrotheme', lazy = false, priority = 1000 },
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {}
    end,
  },
  {
    '2nthony/vitesse.nvim',
    lazy = false,
    priority = 1000,
    dependencies = {
      'tjdevries/colorbuddy.nvim',
    },
  },
  { 'datsfilipe/vesper.nvim', lazy = false, priority = 1000 },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'gruvbox-material'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'zenbones-theme/zenbones.nvim',
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = 'rktjmp/lush.nvim',
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      vim.g.zenbones_darkness = 'stark'
      vim.g.zenbones_darken_comments = 45
    end,
  },

  {
    'felipeagc/fleet-theme-nvim',
    opts = {},
  },
}
