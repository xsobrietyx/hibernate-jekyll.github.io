#!/bin/sh

git_modules_file="$(cat <-EOF
[submodule "themes/8-bit-ascii-theme"]
	path = themes/8-bit-ascii-theme
	url  = https://github.com/xsobrietyx/8-bit-ascii-theme.git
	ignore = dirty
EOF
)"

echo $git_modules_file > .gitmodules
