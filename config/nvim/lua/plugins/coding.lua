return {
  {
    "danymat/neogen",
    keys = {
      {
        "<leader>cc",
        function()
          require("neogen").generate({})
        end,
        desc = "Neogen Comment",
      },
    },
    opts = { snippet_engine = "luasnip" },
  },
  {
    "ThePrimeagen/refactoring.nvim",
    opts = {},
    -- stylua: ignore
    keys = {
			{ "<leader>rr", function() require("refactoring").select_refactor({}) end, mode = "v", noremap = true, silent = true, expr = false, desc = "Select Refactor" },
      { "<leader>rP", function() require('refactoring').debug.printf({below = false}) end,  mode = {"n"}, desc = "Debug Print" },
      { "<leader>rc", function() require('refactoring').debug.cleanup({}) end, mode = {"n"}, desc = "Debug Cleanup" },
      { "<leader>rp", function() require('refactoring').debug.print_var({normal = true}) end, mode = {"n"}, desc = "Debug Print Variable" },
      { "<leader>rp", function() require('refactoring').debug.print_var({}) end, mode = {"v"}, desc =  "Debug Print Variable" },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      {
        "honza/vim-snippets",
        config = function()
          require("luasnip.loaders.from_snipmate").lazy_load()

          -- One peculiarity of honza/vim-snippets is that the file with the global snippets is _.snippets, so global snippets
          -- are stored in `ls.snippets._`.
          -- We need to tell luasnip that "_" contains global snippets:
          require("luasnip").filetype_extend("all", { "_" })
        end,
      },
    },
  },
}
