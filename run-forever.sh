#!/bin/sh
# Menjalankan server terus-menerus: kalau berhenti/crash, otomatis dihidupkan lagi 3 detik kemudian.
# Cocok untuk Termux. Hentikan dengan Ctrl+C (atau: pkill -f run-forever.sh).
cd "$(dirname "$0")" || exit 1

# Termux: cegah Android menidurkan CPU saat layar mati (butuh paket termux-api, opsional)
command -v termux-wake-lock >/dev/null 2>&1 && termux-wake-lock

trap 'echo "Dihentikan."; exit 0' INT TERM
while true; do
  ./start.sh
  echo "$(date '+%F %T') server berhenti (kode $?), mulai ulang dalam 3 detik…"
  sleep 3
done
