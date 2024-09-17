return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-web-devicons"
  },

  {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
        -- You will not need this if you installed the
        -- parsers manually
        -- Or if the parsers are in your $RUNTIMEPATH
        "nvim-treesitter/nvim-treesitter",

        "nvim-tree/nvim-web-devicons"
    }
  },

  -- {
  --   "stevearc/dressing.nvim",
  --   opts = {},
  -- },

  {

    "MunifTanjim/nui.nvim",
  },

  -- {
  --   "m4xshen/hardtime.nvim",
  --   cmd = {
  --     "Hardtime",
  --   },
  --   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  --   opts = {}
  -- },
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },

  {
    "NStefan002/screenkey.nvim",
    lazy = false,
    version = "*",
    --config = function()
        -- require("screenkey").setup() if you want to change some options
        --vim.api.nvim_create_autocmd("VimEnter", {
            --group = vim.api.nvim_create_augroup("AutostartScreenkey", {}),
            --command = "Screenkey toggle",
            --desc = "Autostart Screenkey on VimEnter",
        --})
    --end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },


  -- These are some examples, uncomment them if you want to see them work! 

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"

      -- configure diagnostics globally
      vim.diagnostic.config({
        --virtual_text = false, -- disable virtual text
        virtual_text = { spacing = 2, prefix = '●', source = "if_many", },
        signs = true, --enable signs in the sign column
        underline = true, -- underline problematic code
        --update_in_insert = false, --don't update diagnostics in insert mode
        update_in_insert = true,
        severity_sort = true, -- sort diagnostics by severity
        float = { border = "rounded" }, --use rounded borders for floating windows
      })
    end,
  },


  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },

}
