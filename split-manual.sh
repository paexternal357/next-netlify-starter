#!/bin/env sh

chunk_size=$((14 * 1024 * 1048576)); #gigs in megabytes
input_file="2"

len=`stat -f'%z' "$input_file"`
chunks=$(($len/$chunk_size + 1))

for i in `seq 0 $chunks`
do
  dd if="$input_file" skip=$i of="$input_file.part.$i" count=1 bs=$chunk_size status=progress
  read -n1 -s
  # scp $input_file.part servername:path/$input_file.part.$i
done