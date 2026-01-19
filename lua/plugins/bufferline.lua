--------------------------------------
-- ---------- 快捷键设置 ---------- --
--------------------------------------

vim.keymap.set('n', '<c-L>', '<Cmd>BufferLineCycleNext<CR>', { desc = '下一个缓冲区' })
vim.keymap.set('n', '<c-H>', '<Cmd>BufferLineCyclePrev<CR>', { desc = '上一个缓冲区' })


return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {},
}
