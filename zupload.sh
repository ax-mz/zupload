#!/usr/bin/env bash

usage(){ echo -e "$(basename $0): Tiny CLI uploader to zupimages.net\nUsage: $(basename $0) <file> [<file>...]"; }

! command -v curl >/dev/null && echo "error: missing packet: $_" && exit 1
[ $# == 0 ] && usage && exit 1
[ $# -gt 5 ] && echo "error: only 5 images allowed at a time" && exit 1

CMD="curl -s https://www.zupimages.net/up.php"

G=0; for IMG in "$@"; do [ -f "$IMG" ] && CMD+=" -F files[]=@\"$IMG\"" && ((G++)); done

[ $G == 0 ] && exit 1 || eval "$CMD" |grep 'Lien direct de votre image :'|cut -d'"' -f6|sed 's|//z|//www.z|'
