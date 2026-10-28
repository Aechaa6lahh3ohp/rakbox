#!/usr/bin/bash
echo "Is the box you use [D]ebain or [A]rch? (D or A)"
read -r str
  case "$str" in
    "D")
      docker build --no-cache -t rakbox-parrot ./parrot_base/
      ;;
    "A")
     docker build --no-cachce -t rakbox-manjaro ./manjaro_base/
      ;;
    *)
      echo "undefined";;
esac
