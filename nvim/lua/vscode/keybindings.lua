local opts = {
    noremap = true,
    silent = true
}
local keymap = vim.api.nvim_set_keymap

keymap('n', '<Tab>', ':Tabnext<CR>', opts)
keymap('n', '<S-Tab>', ':Tabprev<CR>', opts)
keymap('', '<Space>', '<Nop>', opts)

-- Better Scrolling
keymap('n', '<C-d>', '12jzz', opts)
keymap('n', '<C-u>', '12kzz', opts)
keymap('n', '<C-f>', '24jzz', opts)
keymap('n', '<C-b>', '24kzz', opts)

-- Do not copy when delete
keymap('n', 'x', '"_x', opts)
keymap('n', 'X', '"_X', opts)
keymap('n', 'd', '"_d', opts)
keymap('n', 'D', '"_D', opts)
keymap('n', 'dd', '"_dd', opts)

-- Better window navigation
keymap('n', '<C-j>', ':call VSCodeNotify("workbench.action.navigateDown")<CR>', opts)
keymap('x', '<C-j>', ':call VSCodeNotify("workbench.action.navigateDown")<CR>', opts)
keymap('n', '<C-k>', ':call VSCodeNotify("workbench.action.navigateUp")<CR>', opts)
keymap('x', '<C-k>', ':call VSCodeNotify("workbench.action.navigateUp")<CR>', opts)
keymap('n', '<C-h>', ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', opts)
keymap('x', '<C-h>', ':call VSCodeNotify("workbench.action.navigateLeft")<CR>', opts)
keymap('n', '<C-l>', ':call VSCodeNotify("workbench.action.navigateRight")<CR>', opts)
keymap('x', '<C-l>', ':call VSCodeNotify("workbench.action.navigateRight")<CR>', opts)

-- Use VSCode references
keymap('n', 'gr', '<Cmd>call VSCodeNotify("editor.action.goToReferences")<CR>', opts)

-- Change editor width
keymap('n', '<C-w>_', ':<C-u>call VSCodeNotify("workbench.action.toggleEditorWidths")<CR>', opts)

-- Use Space to open Which Key
keymap('n', '<Space>', ':call VSCodeNotify("whichkey.show")<CR>', opts)

-- Use VSCode Comments
opts.noremap = false
keymap('x', 'gc', '<Plug>VSCodeCommentary', opts)
keymap('n', 'gc', '<Plug>VSCodeCommentary', opts)
keymap('o', 'gc', '<Plug>VSCodeCommentary', opts)
keymap('n', 'gcc', '<Plug>VSCodeCommentaryLine', opts)
