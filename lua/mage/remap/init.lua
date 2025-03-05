vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<leader>h", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end)

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Magma Keymap
-- Init
vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>",
  { silent = true, desc = "Initialize the plugin" })

-- Operator
vim.keymap.set("n", "<leader>me", ":MoltenEvaluateOperator<CR>",
  { silent = true, desc = "run operator selection" })

-- Eval line
vim.keymap.set("n", "<leader>mrl", ":MoltenEvaluateLine<CR>",
  { silent = true, desc = "evaluate line" })

-- Eval cell
vim.keymap.set("n", "<leader>mrr", ":MoltenReevaluateCell<CR>",
  { silent = true, desc = "re-evaluate cell" })

-- Eval visually selected
vim.keymap.set("v", "<leader>mr", ":<C-u>MoltenEvaluateVisual<CR>gv",
  { silent = true, desc = "evaluate visual selection" })

-- Delete
vim.keymap.set("n", "<leader>mrd", ":MoltenDelete<CR>",
  { silent = true, desc = "molten delete cell" })

-- Hide output (why???)
vim.keymap.set("n", "<leader>moh", ":MoltenHideOutput<CR>",
  { silent = true, desc = "hide output" })

-- Show/enter output
vim.keymap.set("n", "<leader>mos", ":noautocmd MoltenEnterOutput<CR>",
  { silent = true, desc = "show/enter output" })

-- Debugger Stuff
-- Toggle visibility
vim.keymap.set("n", "<leader>duit", ":lua require('dapui').toggle()<CR>",
  { silent = true, desc = "Toggle Debugger visibility." })

vim.keymap.set("n", "<leader>dbp", ":lua require('dap').toggle_breakpoint()<CR>",
  { silent = true, desc = "Toggle Breakpoint" })


vim.keymap.set("n", "<leader>dbc", ":lua require('dap').continue()<CR>",
  { silent = true, desc = "Debugger continue" })


vim.keymap.set("n", "<leader>dso", ":lua require('dap').step_over()<CR>",
  { silent = true, desc = "Debugger step-over." })


vim.keymap.set("n", "<leader>dsi", ":lua require('dap').step_into()<CR>",
  { silent = true, desc = "Debugger step-into." })
