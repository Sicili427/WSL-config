----------------------------------------------
-------------- NEOVIM OPTIONS ----------------
----------------------------------------------

-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Sets Keymap Leader
vim.g.mapleader = ' '

------------ Lazy.nvim Startup ---------------
require("core.lazy")

----------- Keymaps On Startup ---------------
require("core.keymaps")

----------- Settings On Startup --------------
require("core.options")

------- Enable Treesitter Highlighting -------
require("nvim-treesitter.configs").setup({
    auto_install = true,
    ensure_installed = {
        'c',
        'lua',
        'java',
        'javascript',
        'typescript',
        'glsl',
        'python',
        'html',
        'verilog',
        'css',
    },
    matchup = {
        enable = true,
    },
    highlight = {
        enable = true,
    },
    index = {
        enable = true,
    }
})
