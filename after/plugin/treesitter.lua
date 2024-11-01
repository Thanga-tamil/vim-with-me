require'nvim-treesitter.configs'.setup {
	ensure_installed = { "java", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

	auto_install = true,

	ignore_install = { "javascript" },

	highlight = {
		enable = true,

		disable = { "c", "rust" },
		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,

		highlight = {
			enable = true,

			additional_vim_regex_highlighting = false,

			-- disable = { "java" }

		},

		autopairs = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		additional_vim_regex_highlighting = false,
	},
}
