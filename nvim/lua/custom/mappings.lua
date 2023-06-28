---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["L"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["H"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
  },
  i = {
    ["<C-a>"] = { "<HOME>", "Beginning of line" },
    ["<C-e>"] = { "<END>", "End of line" },
    ["<C-f>"] = { "<RIGHT>", "Move forward" },
    ["<C-b>"] = { "<LEFT>", "Move backward" },
  },
}

M.telescope = {
  n = {
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "telescope symboles in current file" },
  },
}

return M
