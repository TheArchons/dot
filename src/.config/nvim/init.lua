-- use init.vim (vimrc.vim)
local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

local keyset = vim.keymap.set

-- nvim-tree

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup nvim-tree
require("nvim-tree").setup {
    -- show gitignore files
    git = {
        ignore = false,
    },
}

-- open nvim-tree on startup
vim.cmd("autocmd VimEnter * NvimTreeOpen")

-- show gitignore files
vim.g.nvim_tree_gitignore = 1

-- exit terminal mode with esc
vim.cmd("tnoremap <Esc> <C-\\><C-n>")

-- setup toggleterm
require("toggleterm").setup {
    size = 10,
    open_mapping = [[<c-\>]],
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    autochdir = true,
}

-- nvim-treesitter
--[[require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
        disable = { "latex" }
    },
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 1000,
    },
    context_commentstring = {
        enable = true,
    },
    matchup = {
        enable = true,
    }
}--]]

-- Shift + tab to cycle between split windows
vim.api.nvim_set_keymap('n', '<S-Tab>', '<C-W><C-W>', {noremap = true, silent = true})

-- enable autoclose
require("autoclose").setup()

-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#pum#confirm()", {silent = true, expr = true})

-- Navigate to code window on startup
vim.cmd("autocmd VimEnter * wincmd p")

-- nvim tree should not count as a window, so wq should work as expected
vim.cmd("autocmd BufEnter * if winnr('$') == 1 && &filetype == 'NvimTree' | quit | endif")

-- use ; to enter command mode
keyset("n", ";", ":", {noremap = true})

