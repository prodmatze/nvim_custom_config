return {
  'folke/which-key.nvim',
  config = function()
    local which_key = require("which-key")

    which_key.setup {
      plugins = {
        marks = true,          -- shows a list of your marks on ' and `
        registers = true,      -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        spelling = {
          enabled = true,      -- enabling this will show WhichKey when pressing z= to select spelling suggestions
          suggestions = 9,     -- how many suggestions should be shown in the list?
        },
        presets = {
          operators = true,    -- adds help for operators like d, y, ... and registers them for motion / text object completion
          motions = true,      -- adds help for motions
          text_objects = true, -- help for text objects triggered after entering an operator
          windows = true,      -- default bindings on <c-w>
          nav = true,          -- misc bindings to work with windows
          z = true,            -- bindings for folds, spelling and others prefixed with z
          g = true,            -- bindings for prefixed with g
        },
      },
      operators = { gc = "Comments" },
      key_labels = {
        -- override the label used to display some keys. It doesn't affect WK in any other way.
        -- For example:
        -- ["<space>"] = "SPC",
        -- ["<cr>"] = "RET",
        -- ["<tab>"] = "TAB",
      },
      icons = {
        breadcrumb = "»",      -- symbol used in the command line area that shows your active key combo
        separator = "➜",       -- symbol used between a key and its label
        group = "+",           -- symbol prepended to a group
      },
      window = {
        border = "none",       -- none, single, double, shadow
        position = "bottom",   -- bottom, top
        margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 1, 0, 1, 0 }, -- extra window padding [top, right, bottom, left]
      },
      layout = {
        height = { min = 1, max = 25 }, -- min and max height of the columns
        width = { min = 20, max = 50 }, -- min and max width of the columns
        spacing = 1,                     -- spacing between columns
        align = "center",                -- align columns left, center or right
      },
      ignore_missing = false,             -- enable this to hide mappings for which you didn't specify a label
      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
      show_help = true,                   -- show help message on the command line when the popup is visible
      triggers = "auto",                  -- automatically setup triggers
      triggers_blacklist = {
        -- list of mode / prefixes that should never be hooked by WhichKey
        -- this is mostly relevant for key maps that start with a native binding
        -- most people should not need to change this
        n = { "o", "O" },
      },
    }

    which_key.register({
      ["<leader>"] = {
        f = {
          name = "File",
          f = { "<cmd>Telescope find_files<cr>", "Find File" },
          r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
          g = { "<cmd>Telescope live_grep<cr>", "Grep" },
        },
        e = { "<cmd>Neotree toggle<cr>", "Explorer" },
        b = {
          name = "Buffer",
          c = { "<cmd>Bdelete<cr>", "Close Buffer" },
          n = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer" },
          p = { "<cmd>BufferLineCyclePrev<cr>", "Previous Buffer" },
        },
        q = { "<cmd>qa<cr>", "Quit" },
      },
    }, { prefix = "<leader>" })
  end
}
