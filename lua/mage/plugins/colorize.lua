vim.opt.termguicolors = true

return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require("colorizer").setup()
    require("colorizer").setup {
      '*',
      conf = { RRGGBBAA = true, },
      css = { rgb_fn = true, },
      html = { names = false, },
    }
  end,
}
