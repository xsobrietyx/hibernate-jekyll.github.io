#!/bin/sh

# Create a file called .gitmodules and add the following content
git_modules_file="$(cat <<-EOF
[submodule "themes/8-bit-ascii-theme"]\n
	path = themes/8-bit-ascii-theme\n
	url  = https://github.com/xsobrietyx/8-bit-ascii-theme.git\n
	ignore = dirty\n
EOF
)"

echo $git_modules_file > .gitmodules

git submodule update --remote

echo "Submodule has been successfully updated!"
