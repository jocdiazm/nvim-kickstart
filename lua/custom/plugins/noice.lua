return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    -- enabled = false,
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    opts = {
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      messages = {
        view_history = false,
        view_search = false,
        --
        -- view_history = 'messages', -- view for :messages
        -- view_search = 'virtualtext', -- view for search count messages. Set to `false` to disable
        --
        -- NOTE: If you enable messages, then the cmdline is enabled automatically.
        -- This is a current Neovim limitation.
        enabled = true, -- enables the Noice messages UI
        view = 'notify', -- default view for messages
        view_error = 'notify', -- view for errors
        view_warn = 'notify', -- view for warnings
      },
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
        signature = {
          auto_open = {
            enabled = false,
            trigger = true, -- Automatically show signature help when typing a trigger character from the LSP
            luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes
            throttle = 100, -- Debounce lsp signature help request by 50ms
          },
          enabled = true,
        },
      },
      routes = {
        {
          view = 'notify',
          filter = { event = 'msg_showmode' },
        },
        {
          filter = {
            event = 'msg_show',
            kind = '',
            find = 'written',
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = 'msg_show',
            kind = 'search_count',
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = 'lsp',
            kind = 'progress',
            cond = function(message)
              local client = vim.tbl_get(message.opts, 'progress', 'client')
              return client == 'lua_ls'
            end,
          },
          opts = { skip = true },
        },
      },
    },
  },
  { 'folke/flash.nvim', event = 'VeryLazy', enabled = false, opts = {} },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      delay = 700,
    },
  },
}
