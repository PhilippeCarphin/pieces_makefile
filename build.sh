#!/usr/bin/env bash

usage(){
    cat <<-EOF
		Usage: $0 PIECE_FILE THEME_FILE OUT_FILE

		Creates a LaTeX file that includes the PIECE_FILE and THEME_FILE
		and produces OUT_FILE
		EOF
}

if (( $# < 3 )) ; then
    echo "ERROR: Not enough arguments" >&2
fi

piece=$1
theme=$2
outfile=$3

cat > $outfile <<-EOF
	\version "2.24.4"\n

	\include "pieces/$piece"
	\include "common/themes/$theme"
EOF
