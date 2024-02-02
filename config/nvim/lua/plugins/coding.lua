return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        documentation = {
          border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:TelescopeBorder",
        },
      },
    },
  },
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
    config = function(_, opts)
      require("luasnip").setup(opts)
      require("luasnip.loaders.from_lua").lazy_load()

      -- friendly-snippets - enable standardized comments snippets
      require("luasnip").filetype_extend("typescript", { "tsdoc" })
      require("luasnip").filetype_extend("javascript", { "jsdoc" })
      require("luasnip").filetype_extend("lua", { "luadoc" })
      require("luasnip").filetype_extend("python", { "pydoc" })
      require("luasnip").filetype_extend("rust", { "rustdoc" })
      require("luasnip").filetype_extend("sh", { "shelldoc" })
    end,
  },
  {
    "nvim-neotest/neotest",
    -- stylua: ignore
    keys = {
      { "<leader>tl", function() require("neotest").run.run_last() end, desc = "Run Last" },
    },
  },
  {
    "stevearc/overseer.nvim",
    keys = {
      { "<leader>oR", "<cmd>OverseerRunCmd<cr>", desc = "Run Command" },
      { "<leader>oa", "<cmd>OverseerTaskAction<cr>", desc = "Task Action" },
      { "<leader>ob", "<cmd>OverseerBuild<cr>", desc = "Build" },
      { "<leader>oc", "<cmd>OverseerClose<cr>", desc = "Close" },
      { "<leader>od", "<cmd>OverseerDeleteBundle<cr>", desc = "Delete Bundle" },
      { "<leader>ol", "<cmd>OverseerLoadBundle<cr>", desc = "Load Bundle" },
      { "<leader>oo", "<cmd>OverseerOpen<cr>", desc = "Open" },
      { "<leader>oq", "<cmd>OverseerQuickAction<cr>", desc = "Quick Action" },
      { "<leader>or", "<cmd>OverseerRun<cr>", desc = "Run" },
      { "<leader>os", "<cmd>OverseerSaveBundle<cr>", desc = "Save Bundle" },
      { "<leader>ot", "<cmd>OverseerToggle<cr>", desc = "Toggle" },
    },
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                autoImportCompletions = true,
                typeCheckingMode = "off",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
      },
    },
  },
  {
    "jackMort/ChatGPT.nvim",
    cmd = { "ChatGPT", "ChatGPTRun", "ChatGPTActAs", "ChatGPTCompleteCode", "ChatGPTEditWithInstructions" },
    --stylua: ignore
    keys = {
      { "<leader>aa", "<cmd>ChatGPT<cr>", desc = "ChatGPT" },
      { "<leader>ac", "<cmd>ChatGPTRun complete_code<cr>", mode = { "n", "v" }, desc = "Complete Code" },
      { "<leader>ad", "<cmd>ChatGPTRun docstring<CR>", desc= "Docstring", mode = { "n", "v" } },
      { "<leader>ae", "<cmd>ChatGPTEditWithInstructions<cr>", mode = { "n", "v" }, desc = "Edit with Instructions" },
      { "<leader>af", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs", mode = { "n", "v" } },
      { "<leader>ag", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction", mode = { "n", "v" } },
      { "<leader>ak", "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords", mode = { "n", "v" } },
      { "<leader>al", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis", mode = { "n", "v" } },
      { "<leader>ao", "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code", mode = { "n", "v" } },
      { "<leader>ar", "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit", mode = { "n", "v" } },
      { "<leader>as", "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize", mode = { "n", "v" } },
      { "<leader>at", "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests", mode = { "n", "v" } },
      { "<leader>ax", "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code", mode = { "n", "v" } },
      { "<leader>az", "<cmd>ChatGPTRun translate<CR>", desc = "Translate", mode = { "n", "v" } },
    },
    opts = {},
  },
  {
    "vuki656/package-info.nvim",
    event = { "BufRead package.json" },
    opts = {},
  },
  {
    "uga-rosa/ccc.nvim",
    opts = {},
    cmd = { "CccPick", "CccConvert", "CccHighlighterEnable", "CccHighlighterDisable", "CccHighlighterToggle" },
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {
      keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "gs",
        normal_cur = "gss",
        normal_line = "gS",
        normal_cur_line = "gSS",
        visual = "Z",
        visual_line = "gz",
        delete = "ds",
        change = "cs",
        change_line = "cS",
      },
    },
  },
  {
    "echasnovski/mini.surround",
    enabled = false,
  },
}
