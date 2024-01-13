source "$DOTLY_PATH/scripts/core/platform.sh"

if platform::is_linux; then
    curl -sS https://starship.rs/install.sh | sh
fi
