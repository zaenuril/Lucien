return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    local hooks = require("ibl.hooks")

    local indent_highlights = {
      "IblIndentRed",
      "IblIndentYellow",
      "IblIndentBlue",
      "IblIndentOrange",
      "IblIndentGreen",
      "IblIndentViolet",
      "IblIndentCyan",
    }

    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "IblIndentRed", { fg = "#E06C75" })
      vim.api.nvim_set_hl(0, "IblIndentYellow", { fg = "#E5C07B" })
      vim.api.nvim_set_hl(0, "IblIndentBlue", { fg = "#61AFEF" })
      vim.api.nvim_set_hl(0, "IblIndentOrange", { fg = "#D19A66" })
      vim.api.nvim_set_hl(0, "IblIndentGreen", { fg = "#98C379" })
      vim.api.nvim_set_hl(0, "IblIndentViolet", { fg = "#C678DD" })
      vim.api.nvim_set_hl(0, "IblIndentCyan", { fg = "#56B6C2" })
    end)

    require("ibl").setup({
      indent = {
        char = "│",
        highlight = indent_highlights,
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = true,
        highlight = { "Function", "Label" },
      },
    })
  end,
}
