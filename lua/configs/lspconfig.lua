-- Carga defaults de NvChad (on_attach y capabilities)
require("nvchad.configs.lspconfig").defaults()

-- Lista de LSPs a habilitar
local servers = { "html", "cssls", "lua_ls", "ts_ls", "emmet_ls", "emmet_language_server", "golangci_lint_ls", "gopls", "graphql", "grammarly", "htmx", "dockerls", "docker_compose_language_service", "cssmodules_ls", "css_variables", "jsonls", "jsonnet_ls", "kotlin_language_server", "matlab_ls", "rust_analyzer", "tailwindcss", "terraformls", "angularls", "azure_pipelines_ls", "astro"}

-- Configura mason-lspconfig para instalarlos
require("mason-lspconfig").setup({
  ensure_installed = servers,
})

-- Habilita los LSPs (usando la configuración por defecto de NvChad)
for _, lsp in ipairs(servers) do
  require("lspconfig")[lsp].setup({})
end
