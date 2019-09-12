export PATH="$HOME/.bin:$PATH"

for f in "$HOME"/.zshenv.d/**/*.zsh(.N); do
    [ -f "$f" ] && source "$f"
done
