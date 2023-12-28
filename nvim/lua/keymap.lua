vim.g.mapleader = " "
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "y", [["+y]])
vim.keymap.set("n", "Y", [["+Y]])

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Move Lines
vim.keymap.set("n", "K", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("n", "J", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move up" })
vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move down" })

-- buffers
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bd", ":bd", { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>bo", ":bufdo bd<cr>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>bc", ":%bd | e# | bd#<cr> | '\"",
	{ desc = "Delete all buffers but the current one" })

-- quickfix and location list
vim.keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Location List" })
vim.keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Quickfix List" })
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Move to the next item in the QF list and center screen" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Move to the previous item in the QF list and center screen" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz",
	{ desc = "Move to the previous item in the location list and center screen" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz",
	{ desc = "Move to the previous item in the location list and center screen" })

-- Movement shortcuts
vim.keymap.set('i', 'jj', '<Esc>', { desc = "Leave insert" })

-- Center screen on jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Window Movement
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
