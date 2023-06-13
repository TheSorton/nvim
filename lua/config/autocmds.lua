-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  group = augroup("set norelativenumber"),
  command = "set norelativenumber",
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  group = augroup("set relativenumber"),
  command = "set relativenumber",
})
