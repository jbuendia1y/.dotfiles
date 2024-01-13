source "$DOTLY_PATH/scripts/core/platform.sh"

if platform::is_linux; then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi
