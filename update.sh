#!/bin/bash

DOTFILES_REPO="$HOME/dotfiles-git"
DOTFILES_CONFIG="$DOTFILES_REPO/config"
CONFIG_DIR="$HOME/.config"
FOLDERS_FILE="$HOME/.dotfiles-tracked"

# load saved folders or use defaults
if [ -f "$FOLDERS_FILE" ]; then
    mapfile -t folders < "$FOLDERS_FILE"
else
    folders=("nvim" "hypr" "kitty" "waybar" "cava" "wofi")
fi

# check and copy changed folders
for folder in "${folders[@]}"; do
    source="$CONFIG_DIR/$folder"
    dest="$DOTFILES_CONFIG/$folder"
    
    if diff -qr "$source" "$dest" > /dev/null 2>&1; then
        echo "$folder unchanged (・_・)"
    else
        echo "$folder changed! copying..."
        cp -r "$source" "$dest"
    fi
done

# ask about adding more folders
while true; do
    read -p "do you want to add any folders? (yes/no): " answer
    
    if [[ "$answer" != "yes" ]]; then
        break
    fi
    
    temp_file=$(mktemp)
    ranger --choosedir="$temp_file"
    
    selected=$(cat "$temp_file")
    rm "$temp_file"
    
    if [[ -n "$selected" && -d "$selected" ]]; then
        folder_name=$(basename "$selected")
        echo "copying $folder_name..."
        cp -r "$selected" "$DOTFILES_CONFIG/"
        
        # add to tracked list
        echo "$folder_name" >> "$FOLDERS_FILE"
        folders+=("$folder_name")
    fi
done

# git push
cd "$DOTFILES_REPO"
if [[ -n $(git status -s) ]]; then
    git add -A
    git commit -m "update configs - $(date '+%Y-%m-%d')"
    git push
    echo "pushed! ヽ(・∀・)ノ"
else
    echo "nothing to push (◕‿◕)"
fi
