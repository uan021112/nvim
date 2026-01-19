local keymapset = vim.keymap.set

local mode_nv = { "n", "v" }
local mode_v = { "v" }
local mode_i = { "i" }

local nmappings = {
	{ from = "jk", to = "<ESC>", mode = mode_i }, 					-- 退出编辑模式
	{ from = "H", to = "0", mode = mode_nv }, 						-- 跳转到行首
	{ from = "L", to = "$", mode = mode_nv }, 						-- 跳转到行尾
	{ from = "<Leader>nh", to = "<CMD>nohl<CR>" }, 					-- 取消高亮
	{ from = "<Leader>w", to = "<CMD>w<CR>" }, 						-- 保存
	{ from = "<Leader>q", to = "<CMD>bd<CR>" }, 					-- 退出
	{ from = "<Leader>Q", to = "<CMD>bd!<CR>" }, 					-- 强制退出
	{ from = "<Leader>wq", to = "<CMD>w|bd<CR>" }, 					-- 保存并退出
}

for _, mapping in ipairs(nmappings) do
	keymapset(mapping.mode or "n", mapping.from, mapping.to, { noremap = true })
end
