return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function ()
		require("toggleterm").setup()
		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({
			cmd = "lazygit",
			dir = "git_dir",
			direction = "float",
			float_opts = {
				border = "double",
			},
			-- function to run on opening the terminal
			on_open = function(term)
				vim.cmd("startinsert!")
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
			end,
			-- function to run on closing the terminal
			on_close = function(_)
				vim.cmd("startinsert!")
			end,
		})

		function _lazygit_toggle()
			lazygit:toggle()
		end

		local term1 = Terminal:new()
		function _term_one()
			term1:toggle()
		end

		local term2 = Terminal:new()
		function _term_two()
			term2:toggle()
		end

		local opts = { noremap = true, silent = true }

		vim.keymap.set("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", opts)
		vim.keymap.set("n", "<leader>tt", "<cmd>lua _term_one()<CR>", opts)
		vim.keymap.set("n", "<leader>tn", "<cmd>lua _term_two()<CR>", opts)

		vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
		vim.keymap.set('t', 'jk', [[<C-\><C-n>]])
		vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
		vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
		vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
		vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
		vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])
	end
}
