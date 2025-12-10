

wallpaper=~/Videos/tpi_purple_contrast.mp4

if pgrep mpvpaper > /dev/null; then
    pkill mpvpaper
fi

# hyprlock -c ~/.config/hypr/hyprlock_no_vid.conf
mpvpaper -vs -o "no-audio loop fs --panscan=1" --layer overlay eDP-1 $wallpaper & hyprlock -c ~/.config/hypr/hyprlock_vid.conf; pkill mpvpaper