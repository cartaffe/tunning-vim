# tunning-vim
- install first Vundle -> git clone https://github.com/VundleVim/Vundle.vim.git /opt/shared/vim/bundle/Vundle.vim 
- give write permission to /opt/shared/vim/bundle/ directory
- copy dotvimrc to ~/.vimrc
- some plugin config. Once added to .vimrc, run :PLuginInstall
- a cheatseet to use some cool features

# tunning neovim
- install first -> apt install neovim
- add plugin manager -> sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
- copy init.vim to ~/.config/nvim
- run :PLuginInstall 
- Need node and npm for coc.nvim (additionaly install manually plugin "npm ci")
