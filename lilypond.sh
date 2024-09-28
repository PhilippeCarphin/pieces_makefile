#!/usr/bin/env bash

#
# Standin for lilypond since my .ly files are just empty files
#
#   $0 INPUT_FILE -o OUTPUT_FILE
#

set -eu

input_path=$1
input_filename=${input_path##*/}
if [[ ${input_filename} != *.ly ]] ; then
    echo "ERROR: File must end with '.ly'"
    exit 1
fi

# lilypond has -o flag to specify output file
output_file=$3

input_file_no_ext=${input_filename%.ly}

touch ${output_file}


