return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
        █████╗ ██╗     ██████╗ ██╗  ██╗ █████╗ ██████╗ ██████╗ ██╗  ██╗██╗
        ██╔══██╗██║     ██╔══██╗██║  ██║██╔══██╗╚════██╗██╔══██╗██║  ██║██║
        ███████║██║     ██████╔╝███████║███████║ █████╔╝██████╔╝███████║██║
        ██╔══██║██║     ██╔═══╝ ██╔══██║██╔══██║██╔═══╝ ██╔═══╝ ██╔══██║██║
        ██║  ██║███████╗██║     ██║  ██║██║  ██║███████╗██║     ██║  ██║██║
        ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  { "tiagovla/scope.nvim", event = "BufReadPre", opts = {} },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
}
