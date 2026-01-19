-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--------------------------------------
-- ---------- 快捷键设置 ---------- --
--------------------------------------

local keymapset = vim.keymap.set

keymapset("n", "<Leader>e", "<CMD>NvimTreeToggle<CR>")


return {
	"nvim-tree/nvim-tree.lua",
	opts = {},
}
