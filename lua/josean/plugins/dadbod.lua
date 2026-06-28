return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI config here
    vim.g.db_ui_use_nerd_fonts = 1
  end,
  keys = {
    -- Save the current Dadbod query buffer
    { '<leader>qs', '<Plug>(DBUI_SaveQuery)', desc = "Save DB Query" },
  },
}
