#!/bin/sh

# Create a file called .gitmodules and add the following content
git_modules_file="$(cat <<-EOF
[submodule "themes/8-bit-ascii-theme"]
	path = themes/8-bit-ascii-theme
	url  = https://github.com/xsobrietyx/8-bit-ascii-theme.git
	ignore = dirty
EOF
)"

echo $git_modules_file > .gitmodules

git submodule update --remote

rm .gitmodules

echo "Submodule has been successfully updated!"
