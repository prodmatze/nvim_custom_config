vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")

vim.g.mapleader = " "
vim.g.background = "dark"

vim.opt.swapfile = false
vim.opt.mouse = 'a'
vim.opt.termguicolors = true


-- highlight current line
vim.opt.cursorline = true

-- indentation settings
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = true
vim.o.linebreak = true
vim.opt.breakindent = true

-- backup and undo settings
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true

-- search settings
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- line numbers + relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- split window behaviour
vim.opt.splitright = true
vim.opt.splitbelow = true

-- display incomplete commands in the bottom right corner
vim.opt.showcmd = true



-- keybinds for switching modes
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })
-- In Insert mode, pressing 'ff' will switch to Visual mode
vim.api.nvim_set_keymap('i', 'ff', '<ESC>v', { noremap = true, silent = true })
-- In Normal mode, pressing 'ff' will switch to Visual mode
vim.api.nvim_set_keymap('n', 'ff', 'v', { noremap = true, silent = true })

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

