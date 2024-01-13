source "$DOTLY_PATH/scripts/core/platform.sh"

if platform::is_linux; then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi