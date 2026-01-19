local options = {
    -- 显示设置
    number = true,
    relativenumber = true,
    cursorline = true,

    -- 搜索设置
    hlsearch = true,

    -- Tab和缩进
    tabstop = 4,
    shiftwidth = 4,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
