vim.cmd("set backspace=indent,eol,start")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.g.mapleader = ","
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Center stuff
vim.keymap.set('n', '<c-d>', '<c-d>zz')
vim.keymap.set('n', '<c-u>', '<c-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Default split is up and left
vim.cmd("set splitbelow")
vim.cmd("set splitright")

-- Mappings
vim.keymap.set('n', '<leader><space>', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>ev', ':tabe $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>sv', ':so $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>bg', ':let &background = ( &background == "dark"? "light" : "dark" )<CR>')

-- xclip
vim.keymap.set('n', '<leader>y', ':w !xclip<cr>')
vim.keymap.set('v', '<leader>cy', ':w !xclip -selection clipboard<cr>')
vim.keymap.set('n', '<leader>p', ':r! xclip -out<cr>')
vim.keymap.set('n', '<leader>cp', ':r! xclip -selection clipboard -out<cr>')

--
vim.wo.number = true
