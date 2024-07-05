-- Utiliser des tabulations au lieu d'espaces
vim.opt.expandtab = false

-- Définir la largeur d'une tabulation en termes de colonnes
vim.opt.tabstop = 4

-- Définir la largeur d'une indentation
vim.opt.shiftwidth = 4

-- Utiliser des tabulations pour l'indentation automatique
vim.opt.smarttab = true

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
