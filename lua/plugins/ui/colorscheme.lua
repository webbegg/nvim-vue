return {
  -- {
  --   "RRethy/nvim-base16",
  --   priority = 1000,
  --   config = function()
  --     require("base16-colorscheme").setup({
  --       base00 = "#181818",
  --       base01 = "#282828",
  --       base02 = "#383838",
  --       base03 = "#585858",
  --       base04 = "#b8b8b8",
  --       base05 = "#d8d8d8",
  --       base06 = "#e8e8e8",
  --       base07 = "#f8f8f8",
  --       base08 = "#cb6077",
  --       base09 = "#d28b71",
  --       base0A = "#cb6077",
  --       base0B = "#beb55b",
  --       base0C = "#7bbda4",
  --       base0D = "#8ab3b5",
  --       base0E = "#a89bb9",
  --       base0F = "#b8b8b8",
  --     })
  --
  --     vim.api.nvim_set_hl(0, "LineNr", { fg = "#393939" })
  --     vim.cmd([[autocmd VimEnter * lua vim.cmd('set fillchars+=vert:\\ ')]]) -- Hide vertical split rules
  --   end,
  -- },
  -- {
  --   "webbegg/minimal.nvim",
  --   priority = 1000,
  --   config = function()
  --     vim.api.nvim_set_hl(0, "LineNr", { fg = "#393939" })
  --     vim.cmd([[autocmd VimEnter * lua vim.cmd('set fillchars+=vert:\\ ')]]) -- Hide vertical split rules
  --   end,
  -- },
  {
    "webbegg/nvim-base16",
    priority = 1000,
    config = function()
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#393939" })
      vim.cmd([[autocmd VimEnter * lua vim.cmd('set fillchars+=vert:\\ ')]]) -- Hide vertical split rules
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-meu",
    },
  },
}
-- return {
--   {
--     "folke/tokyonight.nvim",
--     opts = {
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--
--       ---@param colors ColorScheme
--       on_colors = function(colors)
--         colors.fg = "#4AB5B3"
--       end,
--       ---@param highlights Highlights
--       ---@param colors ColorScheme f
--       on_highlights = function(highlights, colors)
--         highlights["@variable"] = {
--           fg = "#c678dd",
--         }
--         highlights["FlashLabel"] = {
--           fg = "#050505",
--           bg = "#86e1fc",
--         }
--         highlights["FlashMatch"] = {
--           fg = "#ededef",
--           bg = "#394b70",
--         }
--         highlights["LineNr"] = {
--           fg = "#3D8EA1",
--         }
--       end,
--     },
--   },
-- }
