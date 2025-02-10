#!/bin/env sh

chunk_size=$((14 * 1048576)); #gigs in megabytes
input_file="2"

len=`stat -f'%z' "$input_file"`
chunks=$(($len/$chunk_size + 1))

for i in `seq 1 $chunks`
do
  dd if='2' skip=$(($i*$chunk_size)) of="2.part.$i" count=$chunk_size bs=1024 status=progress
  read -n 1
  # scp $input_file.part servername:path/$input_file.part.$i
done


# dd if='2' skip=0 of='2.part.0' count=1 bs=15032385536 status=progress
# dd if=2 skip=1 of=2.part.0 count=1 bs=15032385536 status=progress
# dd if=2 skip=2 of=2.part.0 count=1 bs=15032385536 status=progress