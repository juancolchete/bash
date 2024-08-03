#!/bin/sh
echo -n "CMD:"
read CMD
echo -n "count:"
read count
for i in $(seq 1 $count);
  do $CMD | echo $CMD "($i/$count)";
done
