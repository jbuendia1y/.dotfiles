# Update all
sudo apt update
sudo apt upgrade
sudo apt-get update
sudo apt-get upgrade

# Utils
add_to_file_if_not_includes(){
    local text_content=$1
    local file_path=$2
    if ! grep -Fxq "$text_content" "$file_path"; then
        echo "$text_content" >> "$file_path"
        echo "$file_path updated !"
    else
        echo "$file_path already has included vars"
    fi
}

# To develop
sudo apt install git
sudo apt install python
# dotnet
sudo apt-get update
sudo apt-get install -y dotnet-sdk-8.0
sudo apt-get update
sudo apt-get install -y aspnetcore-runtime-8.0
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
nvm_line='export NVM_DIR="$([ -z \"${XDG_CONFIG_HOME-}\" ] && printf %s \"${HOME}/.nvm\" || printf %s \"${XDG_CONFIG_HOME}/nvm\")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm'
bashrc_file="$HOME/.bashrc"
add_to_file_if_not_includes $nvm_line $bashrc_file

# editors
sudo snap install code --classic

# entertainment
sudo snap install vlc
