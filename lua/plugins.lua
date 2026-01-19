-- --------------------------------------
-- --------- Lazy.vim 初始化 --------- --
-----------------------------------------

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


-- --------------------------------------
-- ------------ 插件加载 ------------- --
-----------------------------------------

require("lazy").setup({
	require( "plugins.autopairs" ), 					-- 括号补全
	require( "plugins.bufferline" ), 					-- 文件切换
	require( "plugins.coc" ), 							-- 语法补全
	require( "plugins.gitsign" ), 						-- Git状态
	require( "plugins.lualine" ), 						-- 底部状态
	require( "plugins.nvim-tree" ), 					-- 文件树
	require( "plugins.theme" ), 						-- 高亮主题
},{
	rocks = {
		hererocks = false, 								-- 禁用 hererocks
		luarocks = {
			root = vim.fn.stdpath("data") .. "/rocks", 	-- 指定 luarocks 路径
		}
	}
})
