#!/usr/bin/env bash
set -euo pipefail
: > /tmp/usuarios.txt
for i in $(seq -w 00 80); do
  user="user$i"
  role=$([ $((10#${i}%10)) -eq 0 ] && echo "admin" || echo "user")
  extra=$([ $((10#${i}%7)) -eq 0 ] && echo " error" || echo "")
  echo "${user}:x:10${i}:10${i}:${role}${extra}:/home/${user}:/bin/bash" >> /tmp/usuarios.txt
done
