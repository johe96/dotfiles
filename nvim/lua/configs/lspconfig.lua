-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local util = require "lspconfig.util"
local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- markdown
lspconfig.marksman.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = { "marksman", "server" },
  filetypes = { "markdown", "markdown.mdx" },
  root_dir = lspconfig.util.root_pattern(
    ".git",
    ".marksman.toml"
  ),
  single_file_support = true,
}
-- c/c++
lspconfig.clangd.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_dir = lspconfig.util.root_pattern(
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
    ".git"
  )
}

-- zig
lspconfig.zls.setup({
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
  root_dir = lspconfig.util.root_pattern("zls.json", "build.zig", ".git"),
  single_file_support = true;
})

-- python
lspconfig.pyright.setup{
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  settings = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "openFilesOnly",
      useLibraryCodeForTypes = true
    }
  },
  single_file_support = true
}

