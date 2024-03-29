## MY CONFIG NEOVIM

### Settings

- Leader key: `;`
- Show number: `true`

### Main keymaps

- Windows navigation: `<C-h>, <C-j>, <C-k>, <C-l>`
- Resize window: `<C-up>, <C-Down>, <C-Left>, <C-Right>`
- Prev and next buffer: `_, 0`
- Move up and down line(s): `<A-j>, <A-k>`
- Indent: `<, >`
- Toggle the fold under the cursor: `za`
- Toggle the all fold: `zA`
- Delete word: `<leader>x`
- Append line below: `<A-o>`
- Append line above: `<A-O>`

### Neotree plugin

- Show, hide files in center: `<leader>e`
- Show, hide files in left: `<leader>l`
- Set root dir by cursor: `_`
- Set root dir parent: `0`

### Hop plugin

- Go to character in current buffer(char1): `f`

### Comment plugin

NORMAL mode:

- `gcc` - Toggles the current line using linewise comment
- `gbc` - Toggles the current line using blockwise comment

INSERT mode

- `gc` - Toggles the region using linewise comment
- `gb` - Toggles the region using blockwise comment

### Telescope plugin

- Find files: `<leader>ff`
- Find grep: `<leader>fg`
- Find buffer: `<leader>fb`
- Find buffer with preview: `<Tab>`
- Find help vim: `<leader>fh`
- Git branches: `<leader>gb`
- Git commints: `<leader>gc`
- Git status: `<leader>gs`
- Find functions, const, variables: `<leader>fv`
- Show references: `<leader>fr`
- Open definition: `<leader>fd`

### Terminals plugin

- Open lazygit: `<leader>tg`
- Open float terminal: `<leader>t`

### LSP

- Format code: `<leader>v`
- Rename: `<leader>r`
- Code action: `<leader>a`
- Open float diagnostic on hover line: `<leader>d`
- Next diagnostic: `<leader>dj`
- Prev diagnostic: `<leader>dk`
- Open diagnostic list in new buffer: `<leader>dl`
- Declaration in new buffer: `gD`
- Definition in new buffer: `gd`
- Hover info: `<leader>h`
- Implementation in new buffer: `<leader>i`
- Signature help: `<leader>s`
- Type definition: `<leader>dt`
- Show references in new buffer: `<leader>lr`
- Add to workspace folder: `<leader>wa`
- Remove from workspace folder: `<leader>wr`
- List workspace folder: `<leader>wl`

### Request api

- Request under cursor: `<leader>q`
- Request last: `<leader>qq`
- Request preview cURL command: `<leader>qp`

### Git integration

- Next hunk: `<leader>n`
- Prev Hunk: `<leader>p`

### Utils commands

- Insert date: `:InsertDate`
- Save and close other buffers: `:CloseOtherBuffers`

### Registers manager

- Paste in insert mode: `<C-r>`
- Save in normal mode (show window for info): `"`
- Command `:Registers`
- Select the register by: `<C-j>, <C-k>`

### Snippets

- Next params: `<C-j>`
- Prev params: `<C-k>`
- Change choise: `<C-l>`
