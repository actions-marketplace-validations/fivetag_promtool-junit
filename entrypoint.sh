#!/bin/bash

for x in $(find $1 -type f -name $2 | sed -r 's|/[^/]+$||' |sort |uniq);
do 
  /bin/promtool test rules $x/$2 --junit=$x/junit.xml
  ec=$?
  if [ $ec -ne 0 ]; then
          ret=$ec
  fi
done

exit $ret
