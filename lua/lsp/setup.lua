local lsp_installer = require "nvim-lsp-installer"

-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
  sumneko_lua = require "lsp.lua", -- /lua/lsp/lua.lua
  gopls = require "lsp.go"
}

-- 自動安裝 LanguageServers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

