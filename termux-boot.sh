#!/data/data/com.termux/files/usr/bin/sh
# Salin file ini ke ~/.termux/boot/ (butuh aplikasi Termux:Boot) supaya server menyala sendiri setelah HP restart:
#   mkdir -p ~/.termux/boot && cp termux-boot.sh ~/.termux/boot/futures-signal.sh && chmod +x ~/.termux/boot/futures-signal.sh
termux-wake-lock
cd "$HOME/futures-signal" && nohup ./run-forever.sh > "$HOME/futures-signal/server.log" 2>&1 &
