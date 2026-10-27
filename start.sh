#!/bin/sh
# Menjalankan Futures Signal (hasil build). Butuh Node.js 20 atau lebih baru.
cd "$(dirname "$0")" || exit 1

# Baca pengaturan dari .env bila ada (format: KUNCI=nilai; beri tanda kutip bila ada spasi)
if [ -f .env ]; then
  set -a
  # shellcheck disable=SC1091
  . ./.env
  set +a
fi

export DATA_DIR="${DATA_DIR:-$(pwd)/data}"
export PORT="${PORT:-${APP_PORT:-8080}}"
mkdir -p "$DATA_DIR"
exec node futures-signal.cjs
