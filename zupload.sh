#!/usr/bin/env bash

! command -v curl >/dev/null && echo "error: missing packet: $_" && exit 1
[ $# == 0 ] && echo -e "$(basename $0): Tiny CLI uploader for zupimages.net\nUsage: $(basename $0) <file> [<file>...]" && exit 1

n=$((($#+5-1)/5))
for ((i=0;i<$n;i++)); do
  CMD="curl -s https://www.zupimages.net/up.php"
  G=0; for IMG in "${@:1:5}"; do [ -f "$IMG" ] && CMD+=" -F files[]=@\"$IMG\"" && ((G++)); done && shift 5
  [ $G == 0 ] && exit 1 || eval "$CMD" |grep 'Lien direct de votre image :'|cut -d'"' -f6|sed 's|//z|//www.z|'
done
