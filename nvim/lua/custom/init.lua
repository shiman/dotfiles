-- local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.backup = false
opt.swapfile = false

opt.scrolloff = 10
opt.relativenumber = true
opt.wrap = false

-- g.mapleader = ","

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
