
vim.api.nvim_exec([[

  function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

]], false)


vim.api.nvim_set_keymap("n", "<leader><Space>", "<Plug>(coc-codeaction-selected)<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {silent = true})
vim.api.nvim_set_keymap("i", "<C-Space>", "coc#refresh()", { silent = true, expr = true })

vim.api.nvim_set_keymap("i", "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR><c-r>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
vim.api.nvim_set_keymap("i", "<TAB>", "coc#pum#visible() ? coc#pum#next(1): CheckBackspace() ? '<Tab>' : coc#refresh()", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", "coc#pum#visible() ? coc#pum#prev(1) : '<C-h>'", {noremap = true, silent = true, expr = true})

vim.api.nvim_command([[

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

]])
