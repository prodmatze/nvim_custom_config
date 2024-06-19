return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", 
      "MunifTanjim/nui.nvim",
    },
    config = function()
        -- Function to toggle Neo-tree
        local function toggle_neotree()
            vim.cmd('Neotree toggle')
        end

        -- Set the key binding to toggle Neo-tree with <C-n>
        vim.keymap.set('n', '<C-n>', toggle_neotree, { noremap = true, silent = true })
    end
}
