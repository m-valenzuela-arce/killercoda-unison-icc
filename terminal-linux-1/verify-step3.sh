#!/usr/bin/env bash
set -euo pipefail

fail(){ echo "❌ $1"; exit 1; }
ok(){ echo "✅ $1"; }

[ -f "$HOME/parcial1/resultados/kill.txt" ] || fail "Falta kill.txt con evidencia final"
if grep -qi 'sleep' "$HOME/parcial1/resultados/kill.txt"; then
  fail "Parece que el proceso 'sleep' sigue activo; revísalo"
fi

ok "Manejo de procesos correcto"
