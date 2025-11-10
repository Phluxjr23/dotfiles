-- basic settings
vim.opt.number = true           -- line numbers
vim.opt.relativenumber = false   -- relative line numbers
vim.opt.expandtab = true        -- spaces instead of tabs
vim.opt.shiftwidth = 2          -- indent size
vim.opt.tabstop = 2             -- tab size
vim.opt.smartindent = true      -- auto indent
vim.opt.wrap = false            -- no line wrap
vim.opt.swapfile = false        -- no swap files
vim.opt.backup = false          -- no backup files
vim.opt.termguicolors = true    -- better colors

-- keybinds
-- use tab to enter insert mode
vim.keymap.set('n', '<Tab>', 'i', { noremap = true })
-- use shift+tab to enter insert mode at beginning of line
vim.keymap.set('n', '<S-Tab>', 'I', { noremap = true })

-- plugin manager (lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup({
  -- catppuccin colorscheme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end,
  },
})

