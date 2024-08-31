return {
  'nvim-treesitter/nvim-treesitter-context',
  config = function()
    local ts_context = require 'treesitter-context'
    ts_context.setup {
      enable = true,
      max_lines = 3, -- Limit the maximum number of lines in the context window
      trim_scope = 'outer', -- Trims the outermost context when the max_lines limit is exceeded
      mode = 'topline', -- The line used to calculate the context is the first visible line
      separator = nil, -- No separator line
      zindex = 20, -- The Z-index of the context window
      patterns = { -- Patterns for detecting the context
        default = {
          'class',
          'function',
          'method',
          -- Add more patterns here if needed
        },
      },
      exact_patterns = {}, -- exact patterns not needed in this case
    }

    -- Override the match function to ignore comments
    function ts_context.match_callback(_, node, _)
      local type = node:type()
      return type ~= 'comment' and type ~= 'block_comment'
    end
  end,
}
