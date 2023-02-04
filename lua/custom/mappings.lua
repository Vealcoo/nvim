local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
  },

  v = {
    ["<C-c>"] = { "y", "copy" },
    ["<C-v>"] = { "p", "paste"},
  },

  x = {
    ["<C-c>"] = { "y", "copy" },
    ["<C-v>"] = { "p", "paste"},
  },
}

M.nvimtree = {
  n = {
    ["ww"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" }
  }
}

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "truzen focus" },
  },
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "find media" },
  },
}

M.shade = {
  n = {
    ["<leader>s"] = {
      function()
        require("shade").toggle()
      end,

      "toggle shade.nvim",
    },
  },
}

M.nvterm = {
  n = {
    ["<leader>cc"] = {
      function()
        require("nvterm.terminal").send("clear && g++ -o out " .. vim.fn.expand "%" .. " && ./out", "vertical")
      end,

      "compile & run a cpp file",
    },
  },
}

M.gitsigns = {
  n = {
    ["git"] = {"<cmd> Gitsigns diffthis <CR>", "git diff"}
  }
}

M.trouble = {
  n = {
    ["err"] = {"<cmd> TroubleToggle <CR>", "trouble toggle" }
  }
}

M.symbol_outline = {
  n = {
    ["ee"] = {"<cmd> SymbolsOutline <CR>", "symbol outline" }
  }
}

return M
