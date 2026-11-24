return {
  "L3MON4D3/LuaSnip",
  build = "make install_jsregexp",
  config = function()
    local ls = require("luasnip")
    require("snippets.lua")
    ls.config.set_config({
      history = true,
      updateevents = "TextChanged,TextChangedI",
      enable_autosnippets = false,
    })
  end,
}
