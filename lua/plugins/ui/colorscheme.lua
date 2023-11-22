return {
  {
    "webbegg/nvim-base16",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme base16-meu")
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#393939" }) -- Change numbers color
      vim.cmd([[autocmd VimEnter * lua vim.cmd('set fillchars+=vert:\\ ')]]) -- Hide vertical split rules
    end,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "base16-meu",
  --   },
  -- },
}
