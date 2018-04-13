#!/usr/bin/env sh

for imageName in *; do
    if [ -d "$imageName" -a \( "$1" = "" -o "$imageName" == "$1" \) ]; then
        docker build -t "$imageName" "$imageName"
    fi
done

echo
echo "All built, below are relevant aliases"
for imageName in *; do
    if [ -d "$imageName" -a \( "$1" = "" -o "$imageName" == "$1" \) ]; then
        echo "alias $imageName=\"docker run --rm -i --name $imageName -v \$(pwd):/workdir -w /workdir $imageName\""
    fi
done
