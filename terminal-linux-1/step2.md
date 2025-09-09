## B) grep y pipes

Se generó un archivo con líneas de usuarios en `/tmp/usuarios.txt`.

1. Muestra en pantalla las **líneas** que contengan exactamente la palabra `error` (minúsculas), **contando cuántas son** con un pipe y guarda **solo el número** en `~/parcial1/resultados/errores.txt`.
   - Pista: `grep -w error | wc -l > ...`
2. Extrae **las líneas** que contengan `user42` y guárdalas completas en `~/parcial1/resultados/user42.txt`.
3. Muestra **únicamente** los **nombres de usuario** (la primera columna separada por `:`) de todas las líneas con `admin` y guarda el listado **ordenado y sin duplicados** en `~/parcial1/resultados/admins.txt`.

> Pulsa **Check** cuando termines.
