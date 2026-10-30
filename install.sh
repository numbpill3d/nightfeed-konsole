#!/usr/bin/env bash
# Nightfeed — Konsole & kitty Colours — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
K=${XDG_DATA_HOME:-$HOME/.local/share}/konsole; mkdir -p "$K"
cp "$HERE"/Nightfeed.colorscheme "$HERE"/Nightfeed.profile "$K"/
C=${XDG_CONFIG_HOME:-$HOME/.config}/kitty; mkdir -p "$C"; cp "$HERE"/nightfeed-kitty.conf "$C"/
echo "Konsole: Settings > Switch Profile > Nightfeed.   kitty: add 'include nightfeed-kitty.conf' to kitty.conf"
