#!/bin/bash

# Destination
echo "Making sure the destination exists..."
destination="$HOME/Projects/FortyTwo"
mkdir -p "$destination"

# Repositories
repos=(
    "libft git@github.com:jaredyalves/libft.git"
    "get_next_line git@github.com:jaredyalves/get_next_line.git"
    "ft_printf git@github.com:jaredyalves/ft_printf.git"
)

# Clone the repositories
for repo in "${repos[@]}"; do
    repo_info=($repo)
    name="${repo_info[0]}"
    url="${repo_info[1]}"

    echo "Cloning $name..."
    if git clone "$url" "$destination/$name"; then
        echo "$name cloned successfully."
    else
        echo "Failed to clone $name." >&2
        exit 1
    fi
done

echo "Done cloning projects to $destination."
