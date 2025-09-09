#!/usr/bin/env bash
set -euo pipefail

fail(){ echo "❌ $1"; exit 1; }
ok(){ echo "✅ $1"; }

[ -f "$HOME/parcial1/resultados/errores.txt" ] || fail "Falta errores.txt"
grep -Eq '^[0-9]+$' "$HOME/parcial1/resultados/errores.txt" || fail "errores.txt no contiene solo un número"

[ -f "$HOME/parcial1/resultados/user42.txt" ] || fail "Falta user42.txt"
grep -q 'user42' "$HOME/parcial1/resultados/user42.txt" || fail "user42.txt no contiene líneas con user42"

[ -f "$HOME/parcial1/resultados/admins.txt" ] || fail "Falta admins.txt"
if grep -q ':' "$HOME/parcial1/resultados/admins.txt"; then
  fail "admins.txt debe contener solo nombres de usuario (sin ':')"
fi

SORTED=$(sort -u "$HOME/parcial1/resultados/admins.txt")
DIFF=$(diff <(printf "%s" "$SORTED") "$HOME/parcial1/resultados/admins.txt" || true)
[ -z "$DIFF" ] || fail "admins.txt debe estar ordenado y sin duplicados (usa sort -u)"

ok "Pipes/grep/redirecciones correctos"
