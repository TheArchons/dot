"install plugins
call plug#begin()
    Plug 'andweeb/presence.nvim' 
    
    Plug 'github/copilot.vim'
     
    Plug 'luochen1990/rainbow' 
    
    "Plug 'wakatime/vim-wakatime'
    
    Plug 'NoahTheDuke/vim-just'
    
    Plug 'nvim-tree/nvim-web-devicons'
    
    Plug 'nvim-tree/nvim-tree.lua'
    
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}

    Plug 'mfussenegger/nvim-dap'

    Plug 'akinsho/toggleterm.nvim'

    Plug 'rcarriga/nvim-dap-ui'

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'stevearc/overseer.nvim'

    Plug 'dense-analysis/ale'

    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

    Plug 'folke/tokyonight.nvim', { 'branch': 'main'}

    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

    Plug 'lervag/vimtex'

    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

    Plug 'm4xshen/autoclose.nvim'
call plug#end()

"enable rainbow brackets
let g:rainbow_active = 1

"set tabs to 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4

"use relative numbers instead of absolute, except for the current line
set relativenumber
set number

"enable autoindent
set autoindent

"disable the mouse
set mouse=

"tokyonight night theme
"colorscheme tokyonight-night

"colortheme catppuccin
colorscheme catppuccin-mocha

"coc + copilot
let g:copilot_no_tab_map = v:true
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ exists('b:_copilot.suggestions') ? copilot#Accept("\<CR>") : "\<TAB>"

"remap arrow keys for window resizing
nnoremap <Up>    :resize -2<CR>
nnoremap <Down>  :resize +2<CR>
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

":ctex to compile tex files with VimtexCompile
command! -nargs=0 Ctex :VimtexCompile

"automatically enable cursorline
set cursorline

"yank/put with clipboard
set clipboard=unnamedplus

let g:copilot_filetypes = {
    \ '*': v:true,
    \ }

"vimtex settings
let g:tex_flavor='latex'

"use ; as the leader key
let mapleader = ";"
