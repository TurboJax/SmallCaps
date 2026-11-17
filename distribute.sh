#!/bin/bash

# Making sure the pack was built
if [ ! -f "SmallCaps.zip" ]; then
    echo "Please build the pack before distributing it."
    exit
fi

# Making sure the user has prism installed
if [ ! -d ~/.var/app/org.prismlauncher.PrismLauncher ]; then
    echo "This script is only built for the flatpak installation of Prism Launcher.  Please install prism launcher or manually move the files."
    exit
fi

# Usage:
# `distribute "$version"`
# Where $version is a version of minecraft to send the pack to.
function distribute {
    if [ ! -d ~/.var/app/org.prismlauncher.PrismLauncher/data/PrismLauncher/instances/$1/minecraft/resourcepacks ]; then
        echo "Please add a default $1 instance to prism launcher and run it once before distributing the pack."
        exit
    fi

    cp "SmallCaps.zip" ~/.var/app/org.prismlauncher.PrismLauncher/data/PrismLauncher/instances/$1/minecraft/resourcepacks/
}

distribute "1.16"
distribute "1.17"
distribute "1.18"
distribute "1.19"
distribute "1.20"
distribute "1.20.2"
distribute "1.21"
distribute "26.1"
distribute "26.2"
distribute "26.3"
