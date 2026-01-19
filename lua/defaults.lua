------------------------------------
-- ---------- 声明变量 ---------- --
------------------------------------

local options = {
    -- 行号设置
    number = true,
    relativenumber = true,

	-- 高亮设置
    cursorline = true,
    hlsearch = true,

    -- Tab和缩进
    tabstop = 4,
    shiftwidth = 4,

    -- 大小写敏感
	ignorecase = true,

	-- 延时设置
	timeoutlen = 500,
	ttimeoutlen = 50,
	updatetime = 300,

	-- 颜色配置
	termguicolors = true,

	cmdheight = 0
}

local globals = {
	mapleader = " "
}


------------------------------------
-- ---------- 注册变量 ---------- --
------------------------------------

for k, v in pairs(options) do
    vim.opt[k] = v
end

for k, v in pairs(globals) do
	vim.g[k] = v
end
