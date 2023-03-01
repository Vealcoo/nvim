local overrides = require "custom.plugins.overrides"

return {

  ----------------------------------------- default plugins ------------------------------------------

  ["folke/which-key.nvim"] = {
    disable = false,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
    cmd = "Alpha",
    override_options = overrides.alpha,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- override default configs
  ["nvim-tree/nvim-tree.lua"] = { override_options = overrides.nvimtree },
  ["nvim-treesitter/nvim-treesitter"] = { override_options = overrides.treesitter },
  ["lukas-reineke/indent-blankline.nvim"] = { override_options = overrides.blankline },
  ["williamboman/mason.nvim"] = { override_options = overrides.mason },
  ["lewis6991/gitsigns.nvim"] = { override_options = overrides.gitsigns },

  -- ["NvChad/ui"] = {
  --   override_options = {
  --     statusline = {
  --       -- separater_style = 'round'
  --       separator_style = "round", -- default/round/block/arrow
  --
  --       -- separator_style = "arrow",
  --     },
  --   },
  -- },

  --------------------------------------------- custom plugins ----------------------------------------------

  -- autoclose tags in html, jsx only
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- distraction free modes
  ["Pocco81/TrueZen.nvim"] = {
    disable = true,
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  -- get highlight group under cursor
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  -- I rarely use shade.nvim/autosave.nvim so made commands to enable them

  -- dim inactive windows
  ["andreadev-it/shade.nvim"] = {
    opt = true,
    config = function()
      require "custom.plugins.shade"
    end,
  },

  -- autosave
  ["Pocco81/auto-save.nvim"] = {
    opt = true,
    config = function()
      require("auto-save").setup()
    end,
  },

  ["folke/zen-mode.nvim"] = {
    cmd = "ZenMode",
    config = function()
      require("zen-mode").setup {
        window = {
          width = vim.g.zenmode, -- width will be 85% of the editor width
        },
      }
    end,
  },

  ["folke/trouble.nvim"] = {
    config = function()
      require("trouble").setup {
        height = 6,
        signs = {
          -- icons / text used for a diagnostic
          error = "",
          warning = "",
          hint = "",
          information = "",
          other = "﫠",
        },
        auto_open = false, -- automatically open the list when you have diagnostics
        auto_close = true, -- automatically close the list when you have no diagnostics
        auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
        auto_fold = true, -- automatically fold a file trouble list at creation
      }
    end,
  },

  ["ray-x/go.nvim"] = {
    config = function()
      require("go").setup()
    end,
  },

  ["ray-x/guihua.lua"] = {},

  ["simrat39/symbols-outline.nvim"] = {
    config = function()
      require("symbols-outline").setup {
        width = 20,
      }
    end,
  },

  ["ellisonleao/glow.nvim"] = {
    config = function()
      require("glow").setup()
    end,
  },

  ["ldelossa/nvim-ide"] = {
    config = function()
      -- default components
      -- local bufferlist = require "ide.components.bufferlist"
      -- local explorer = require "ide.components.explorer"
      -- local outline = require "ide.components.outline"
      -- local callhierarchy = require "ide.components.callhierarchy"
      local timeline = require "ide.components.timeline"
      -- local terminal = require "ide.components.terminal"
      -- local terminalbrowser = require "ide.components.terminal.terminalbrowser"
      local changes = require "ide.components.changes"
      local commits = require "ide.components.commits"
      local branches = require "ide.components.branches"
      -- local bookmarks = require "ide.components.bookmarks"
      require("ide").setup {
        -- The global icon set to use.
        -- values: "nerd", "codicon", "default"
        icon_set = "default",
        -- Set the log level for nvim-ide's log. Log can be accessed with
        -- 'Workspace OpenLog'. Values are 'debug', 'warn', 'info', 'error'
        log_level = "info",
        -- Component specific configurations and default config overrides.
        components = {
          -- The global keymap is applied to all Components before construction.
          -- It allows common keymaps such as "hide" to be overridden, without having
          -- to make an override entry for all Components.
          --
          -- If a more specific keymap override is defined for a specific Component
          -- this takes precedence.
          global_keymaps = {
            -- example, change all Component's hide keymap to "h"
            -- hide = h
          },
          -- example, prefer "x" for hide only for Explorer component.
          -- Explorer = {
          --     keymaps = {
          --         hide = "x",
          --     }
          -- }
        },
        -- default panel groups to display on left and right.
        panels = {
          -- left = "explorer",
          right = "git",
        },
        -- panels defined by groups of components, user is free to redefine the defaults
        -- and/or add additional.
        panel_groups = {
          -- explorer = {
          --   outline.Name,
          --   explorer.Name,
          --   bufferlist.Name,
            -- bookmarks.Name,
            -- callhierarchy.Name,
            -- terminalbrowser.Name,
          -- },
          -- terminal = { terminal.Name },
          git = { changes.Name, commits.Name, timeline.Name, branches.Name },
        },
        -- workspaces config
        workspaces = {
          -- which panels to open by default, one of: 'left', 'right', 'both', 'none'
          auto_open = "none",
        },
        -- default panel sizes for the different positions
        panel_sizes = {
          left = 30,
          right = 35,
          bottom = 15,
        },
      }
    end,
  },
}
