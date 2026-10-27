FUTURES SIGNAL — paket build siap jalan
=======================================

Isi paket:
  futures-signal.cjs   server (satu file, sudah berisi semua library)
  web/                 tampilan (hasil build React)
  start.sh             menjalankan server
  run-forever.sh       menjalankan server + otomatis hidup lagi bila mati (Termux/VPS tanpa systemd)
  .env.example         contoh pengaturan (salin menjadi .env)
  futures-signal.service  contoh unit systemd (VPS)
  termux-boot.sh       contoh skrip auto-start Termux:Boot

Cara pakai (butuh Node.js 20+; tidak perlu npm install):
  1) cp .env.example .env        lalu isi APP_PASSWORD
  2) chmod +x start.sh run-forever.sh
  3) ./start.sh                   (atau ./run-forever.sh)
  4) buka http://localhost:8080  (atau http://IP-SERVER:8080)

Semua data tersimpan di folder data/ (log, data per menit, pengaturan). Backup = salin folder itu.
Panduan lengkap: lihat README.md dan folder docs/ di repositori sumber.
