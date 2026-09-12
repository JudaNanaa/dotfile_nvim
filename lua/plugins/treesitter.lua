return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		require("nvim-treesitter").setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})

		require("nvim-treesitter").install({
			"rust",
			"python",
			"bash",
			"toml",
			"yaml",
			"latex",
			"html",
			"regex",
			"c",
			"cpp",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "rust", "python", "bash", "toml", "regex", "c", "cpp" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
