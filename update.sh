source $DOTFILES/colors.sh
source $DOTFILES/install_functions.sh

dot_mes_warn "Activate sudo"
sudo echo "Sudo activated!"

dot_mes_update "npm packages"
npm install -g npm
npm update -g

dot_mes_update "composer packages"
sudo composer self-update
cgr update

#---------------------------------------

dot_mes_update "composer packages"
dot_install_func go update_go_binaries

#---------------------------------------

dot_mes_update "Neovim plugins"
nvim --noplugin +PlugUpdate +qa

#---------------------------------------

dot_mes_update "tmux plugins"
$HOME/.tmux/plugins/tpm/bin/update_plugins all
