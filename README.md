# Info
This repository contains configuration files for different developer tools.

## Directories
* `vim` - vim 8 configuration file
* `vscode` - VSCode configuration file (with vim plugin settings)

### `vim/.vimrc`
`.vimrc` file contains commented out section that was used before vim 8 when Vundle was used as package manager. Since vim 8, vim 8 package manager is being used instead.

#### vim plugins
- preservim/nerdtree.git
- ctrlpvim/ctrlp.vim.git
- mileszs/ack.vim.git
- vim-airline/vim-airline.git

### `vscode/settings.json`
VSCode `settings.json` file should be placed in:
- `~/.config/Code/User/settings.json` on Linux.
- `~/Library/Application\ Support/Code/User` on MacOS.

#### VSCode Plugins
- Python - Microsoft
- ESLint
- Vim - vscodevim
