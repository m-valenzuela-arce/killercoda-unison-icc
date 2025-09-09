#!/usr/bin/env bash
set -euo pipefail

fail(){ echo "❌ $1"; exit 1; }
ok(){ echo "✅ $1"; }

[ -d "$HOME/parcial1" ] || fail "No existe $HOME/parcial1"
[ -d "$HOME/parcial1/datos" ] || fail "Falta carpeta datos/"
[ -d "$HOME/parcial1/resultados" ] || fail "Falta carpeta resultados/"

for f in a.txt b.txt c.txt; do
  [ -f "$HOME/parcial1/datos/$f" ] || fail "Falta $f en datos/"
done

linea2="$(sed -n '2p' "$HOME/parcial1/datos/b.txt" || true)"
[ "$linea2" = "Este es mi examen" ] || fail "La segunda línea de b.txt no coincide exactamente"

ok "Estructura y contenido correctos"
