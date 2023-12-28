-- Set highlight on search
vim.o.hlsearch = false

-- Default to splitting right and below
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.formatoptions = "t,c,o,/,q"

-- Make line numbers default
vim.wo.relativenumber = true
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Tab width and spacing
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- No swap file
vim.o.swapfile = false

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
vim.o.so = 8

-- Because I never get off the shift fast enough
-- alias :Q to :qa!
vim.api.nvim_create_user_command('Q', 'qa!', {})

vim.diagnostic.config({
	virtual_text = {
		severity = { vim.diagnostic.severity.WARN }
	},
	severity_sort = true,
	signs = true,
	update_in_insert = false,
	underline = false,
	float = true
})

vim.diagnostic.setqflist({ open = false })
