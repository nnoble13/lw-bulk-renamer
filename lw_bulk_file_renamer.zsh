#!/bin/bash

for file in *.zip; do
    folder="${file%.*}"
    unzip "$file" -d "$folder"
done

for dir in */ ; do
    dir="${dir%/}"

    new_name="${dir##*_}"

    # Rename the directory if the new name is not empty and different
    if [[ -n "$new_name" && "$dir" != "$new_name" ]]; then
        mv "$dir" "$new_name" || printf "Failed to rename %s to %s\n" "$dir" "$new_name" >&2
    fi

rm -rf *.zip* #removes zip and zone identifier files

done
