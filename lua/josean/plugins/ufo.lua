return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  config = function()
    -- UFO needs these options to work properly
    vim.o.foldcolumn = '1' -- '0' if you don't want a fold bar
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
            return {'treesitter', 'indent'} -- Use treesitter for structure
        end
    })
  end
}
