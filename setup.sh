# install zsh
echo '--------------\n Install zsh'
sudo apt update && sudo apt install zsh

# set default shell to zsh
echo '--------------\n Set default shell to zsh'
cat /etc/shells
chsh -s /usr/bin/zsh

# install zsh plugin
cp ./.zshrc ~/.zshrc

# install auto completion plugin (zsh-completions)
echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-completions/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-completions.list
curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-completions/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-completions.gpg > /dev/null
sudo apt update
sudo apt install zsh-completions