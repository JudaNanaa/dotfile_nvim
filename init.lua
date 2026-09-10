vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

require("options")
require("keymaps")
require("autocmds")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({ "git", "clone", "https://github.com/folke/lazy.nvim", lazypath })
end
vim.opt.rtp:prepend(lazypath)

vim.diagnostic.config({
	update_in_insert = true,
	virtual_text = true,
})


require("lazy").setup("plugins")
