vim.opt.termguicolors = true

return {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require("colorizer").setup()
    require("colorizer").setup {
      '*',
      conf = { RRGGBBAA = true, rgb_fn = true, hsl_fn = true },
      css = { css = true, },
      html = { names = false, },
    }
  end,
}
