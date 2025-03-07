require("mage.remap")
require("mage.set")
require("mage.lazy")

local augroup = vim.api.nvim_create_augroup
local mageGroup = augroup('mage', {})
local autocmd = vim.api.nvim_create_autocmd

-- set a color column at 120
vim.opt.colorcolumn = '120'

-- Set for Molten
vim.g.python3_host_prog = vim.fn.expand("~/.virtualenvs/neovim/bin/python3")


autocmd('LspAttach', {
  group = mageGroup,
  callback = function(e)
    local opts = { buffer = e.buf }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  end
})

local function autosave()
  local bufnr = vim.api.nvim_get_current_buf()
  vim.cmd('silent! update') -- save file silently
end

-- Create an autocommand to trigger the function after 5 minutes of inactivity
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function()
    autosave()
  end,
  pattern = '*', -- Apply to all file types
  desc = "Auto-save files after 5 minutes of inactivity"
})

-- Set the CursorHold and CursorHoldI events to trigger after 5 minutes (300000 ms)
vim.opt.updatetime = 300000
vim.o.statusline = '%f %h%m%r %=  %{v:lua.vim.fn.FugitiveStatusline()} %y'
