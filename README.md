# tunning-vim
- install first Vundle -> git clone https://github.com/VundleVim/Vundle.vim.git /opt/shared/vim/bundle/Vundle.vim 
- give write permission to /opt/shared/vim/bundle/ directory
- copy dotvimrc to ~/.vimrc
- some plugin config. Once added to .vimrc, run :PLuginInstall
- a cheatseet to use some cool features

# tunning neovim
- install first -> apt install neovim
-   needed to install manually due apt version is old and coc.nvim plugin needed a newer one -> https://github.com/neovim/neovim/blob/master/INSTALL.md#linux
- add plugin manager -> sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
- copy init.vim to ~/.config/nvim
- run :PLugInstall 
- Need node and npm for coc.nvim (additionaly install manually plugin "npm ci")
-   apt install nodejs npm
-   cd ~/.local/share/nvim/plugged/coc.nvim
-   npm install
- Need to enable Copilot in init.vim
-   :Copilot setup
-   Just in case you were using copilot witho other github account, you can change it with :Copilot signout and then :Copilot setup . B plan is to remove ~/.config/github-copilot/apps.json

NOTE: If you have issues to copy/paste from/to clipboard, verify if is configured
    :checkhealth -> find clipboard section
     if you get "WARNING: No clipboard tool found", you need to install xsel -> apt install xsel

# Some cool features to enable (in bash) 
- append some code to ~/.bashrc
- cat bashrc.add >> ~/.bashrc
- Logout and login again. Prompt should be showing the current git branch

# Some cool features to enable (in zsh)
- append some code to ~/.zshrc
- cat zshrc.add >> ~/.zshrc
- Logout and login again. Prompt should be showing the current git branch
