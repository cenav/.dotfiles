require('lspconfig').jsonls.setup {
  settings = {
    json = {
      validate = true,
      -- disable the schema store
      schemaStore = {
        enable = false,
        url = "",
      },
      -- manually select schemas
      schemas = {
        ['https://raw.githubusercontent.com/LGUG2Z/komorebi/master/schema.json'] = 'komorebi.json',
      }
    }
  }
}
