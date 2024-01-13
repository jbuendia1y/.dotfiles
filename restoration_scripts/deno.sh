source "$DOTLY_PATH/scripts/core/platform.sh"

if platform::is_linux; then
    curl -fsSL https://deno.land/install.sh | sh
fi