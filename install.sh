#!/bin/bash

SRC_DIR="$(cd "$(dirname "$0")" && pwd)/src"

link_items() {
    local src="$1"
    local dest="$2"

    for item in "$src"/.* "$src"/*; do
        local name=$(basename "$item")
        [[ "$name" == "." || "$name" == ".." || ! -e "$item" ]] && continue

        if [[ -f "$item" ]]; then
            ln -sf "$item" "$dest/$name"
        elif [[ -d "$item" ]]; then
            mkdir -p "$dest/$name"
            link_items "$item" "$dest/$name"
        fi
    done
}

link_items "$SRC_DIR" ~
