return {
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup({
        mapping = { "jk" },
      })
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    keys = {
      { [[<C-\>]] },
    },
    cmd = { "ToggleTerm", "TermExec" },
    opts = {
      size = 20,
      hide_numbers = true,
      open_mapping = [[<C-\>]],
      shade_filetypes = {},
      shade_terminals = false,
      shading_factor = 0.3,
      start_in_insert = true,
      persist_size = true,
      direction = "float",
      winbar = {
        enabled = false,
        name_formatter = function(term)
          return term.name
        end,
      },
    },
  },
  {
    "ThePrimeagen/harpoon",
    --stylua: ignore
    keys = {
      { "<leader>ja", function() require("harpoon.mark").add_file() end, desc = "Add File" },
      { "<leader>jm", function() require("harpoon.ui").toggle_quick_menu() end, desc = "File Menu" },
      { "<leader>jc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, desc = "Command Menu" },
      { "<leader>1", function() require("harpoon.ui").nav_file(1) end, desc = "File 1" },
      { "<leader>2", function() require("harpoon.ui").nav_file(2) end, desc = "File 2" },
      { "<leader>3", function() require("harpoon.term").gotoTerminal(1) end, desc = "Terminal 1" },
      { "<leader>4", function() require("harpoon.term").gotoTerminal(2) end, desc = "Terminal 2" },
      { "<leader>5", function() require("harpoon.term").sendCommand(1,1) end, desc = "Command 1" },
      { "<leader>6", function() require("harpoon.term").sendCommand(1,2) end, desc = "Command 2" },
    },
    opts = {
      global_settings = {
        save_on_toggle = true,
        enter_on_sendcmd = true,
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>a"] = {
          name = "+assistant",
          b = {
            function()
              require("utils.coding").cht()
            end,
            "Cheatsheets",
          },
          y = {
            function()
              require("utils.coding").stack_overflow()
            end,
            "Stack Overflow",
          },
        },
        ["<leader>j"] = { name = "+harpoon" },
        ["<leader>r"] = { name = "+refactor" },
      },
    },
  },
}
