return {
  'nvimdev/dashboard-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  event = 'VimEnter',
  config = function()
    local api = vim.api
    local keymap = vim.keymap
    local dashboard = require("dashboard")

    local conf = {}
    conf.header = {
      "                                                       ",
      "                                                       ",
      "                                                       ",
      " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
      " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
      " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
      " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
      " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
      " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
      "                                                       ",
      "                                                       ",
      "                                                       ",
      "                                                       ",
    }

    conf.center = {
      {
        icon = "󰈞  ",
        desc = "Find  File                              ",
        action = "Telescope find_files",
        key = "f",
      },
      {
        icon = "󰈢  ",
        desc = "Recently opened files                   ",
        action = "Telescope oldfiles",
        key = "r",
      },
      {
        icon = "󰈬  ",
        desc = "Project grep                            ",
        action = "Telescope live_grep",
        key = "g",
      },
      {
        icon = "  ",
        desc = "Open Nvim config                        ",
        action = "Telescope find_files cwd=~/.config/nvim prompt_title=NVIM\\ Config",
        key = "c",
      },
      {
        icon = "  ",
        desc = "New file                                ",
        action = "enew",
        key = "e",
      },
      {
        icon = "󰗼  ",
        desc = "Quit Nvim                               ",
        action = "qa",
        key = "q",
      },
    }

    dashboard.setup({
      theme = 'doom',
      shortcut_type = 'number',
      config = conf
    })

    api.nvim_create_autocmd("FileType", {
      pattern = "dashboard",
      group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
      callback = function ()
        keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
        keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
        keymap.set("n", "f", ":Telescope find_files<CR>", { buffer = true, silent = true })
        keymap.set("n", "r", ":Telescope oldfiles<CR>", { buffer = true, silent = true })
        keymap.set("n", "g", ":Telescope live_grep<CR>", { buffer = true, silent = true })
        keymap.set("n", "c", ":Telescope find_files cwd=~/.config/nvim prompt_title=NVIM\\ Config<CR>", { buffer = true, silent = true })
      end
    })
  end,
}
