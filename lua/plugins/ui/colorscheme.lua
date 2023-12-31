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
  {
    "xiyaowong/transparent.nvim",
    priority = 1001,
    config = function()
      require("transparent").setup({
        groups = {
          "Normal",
          "NormalNC",
          "Comment",
          "Constant",
          "Special",
          "Identifier",
          "Statement",
          "PreProc",
          "Type",
          "Underlined",
          "Todo",
          "String",
          "Function",
          "Conditional",
          "Repeat",
          "Operator",
          "Structure",
          "LineNr",
          "NonText",
          "SignColumn",
          "CursorLine",
          "CursorLineNr",
          "StatusLine",
          "StatusLineNC",
          "EndOfBuffer",
        },
        extra_groups = {},
        exclude_groups = {},
      })
    end,
  },
}
