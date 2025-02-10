#!/bin/env sh

chunk_size = 2048 * 1048576; #gigs in megabytes
input_file = shift;

len = `stat '%s' $input_file`
chunks = $(($len/$chunk_size + 1))

for i in {0...$chunks}
do
  dd if=$input_file skip=$i of=$input_file.part.$i count=1 bs=$chunk_size
  read -n1 -s
  # scp $input_file.part servername:path/$input_file.part.$i
done