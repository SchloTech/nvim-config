vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }

vim.cmd([[
  augroup AutoSave
    autocmd!
    autocmd InsertLeave,TextChanged * silent! wall
  augroup END
]])

-- uncomment out this section if you have trouble yanking to windows system clipboard
--vim.g.clipboard = {
--    name = 'win32yank',
--    copy = {
--        ['+'] = 'clip.exe',
--        ['*'] = 'clip.exe',
--    },
--    paste = {
--        ['+'] = function()
--            local lines = vim.fn.systemlist('powershell.exe Get-Clipboard')
--            for i, line in ipairs(lines) do
--                lines[i] = line:gsub('\r', '') -- Remove carriage returns
--            end
--            return lines
--        end,
--        ['*'] = function()
--            local lines = vim.fn.systemlist('powershell.exe Get-Clipboard')
--            for i, line in ipairs(lines) do
--                lines[i] = line:gsub('\r', '') -- Remove carriage returns
--            end
--            return lines
--        end,
--    },
--    cache_enabled = 0,
--}

