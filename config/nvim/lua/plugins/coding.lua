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
    config = function(_, opts)
      require("refactoring").setup(opts)
      require("telescope").load_extension("refactoring")
    end,
    -- stylua: ignore
    keys = {
			{ "<leader>rr", function() require("refactoring").select_refactor() end, mode = "v", noremap = true, silent = true, expr = false, desc = "Select Refactor" },
      { "<leader>rF", function() require('refactoring').refactor('Extract Function to File') end, mode = {"v"}, desc =  "Extract Function to File" },
      { "<leader>rP", function() require('refactoring').debug.printf({below = false}) end,  mode = {"n"}, desc = "Debug Print" },
      { "<leader>rb", function() require('refactoring').refactor('Exract Block') end, mode = {"n"}, desc = "Extract Block" },
      { "<leader>rc", function() require('refactoring').debug.cleanup({}) end, mode = {"n"}, desc = "Debug Cleanup" },
      { "<leader>rf", function() require('refactoring').refactor('Exract Block To File') end, mode = {"n"}, desc = "Extract Block to File" },
      { "<leader>rf", function() require('refactoring').refactor('Extract Function') end,  mode = {"v"}, desc = "Extract Function" },
      { "<leader>ri", function() require("refactoring").refactor("Inline Variable") end, mode = {"n","v"}, desc =  "Inline Variable" },
      { "<leader>rp", function() require('refactoring').debug.print_var({normal = true}) end, mode = {"n"}, desc = "Debug Print Variable" },
      { "<leader>rp", function() require('refactoring').debug.print_var({}) end, mode = {"v"}, desc =  "Debug Print Variable" },
      { "<leader>rs", function() require("telescope").extensions.refactoring.refactors() end, mode = { "v" }, desc = "Refactor", },
      { "<leader>rx", function() require('refactoring').refactor('Extract Variable') end, mode = {"v"}, desc = "Extract Variable" },
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
