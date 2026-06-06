#!/bin/bash
# RXTX Shell — одна прошивка: оплата → Установить → reboot в полный RXTX
set -euo pipefail

[[ "$(id -u)" -eq 0 ]] || { echo "Запускайте: sudo $0"; exit 1; }

HERE="$(cd "$(dirname "$0")" && pwd)"
echo "[rxtx-shell] Установка публичной оболочки RXTX-NET..."

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq
apt-get install -y -qq nginx docker.io docker-compose-plugin curl ca-certificates rsync openssl

mkdir -p /opt/rxtx-shell /var/www/rxtx-shell /var/lib/rxtx /opt/rxtx-staging
if [[ ! -s /var/lib/rxtx/install.token ]]; then
  openssl rand -hex 24 > /var/lib/rxtx/install.token
  chmod 600 /var/lib/rxtx/install.token
fi
cp -r "$HERE/www/"* /var/www/rxtx-shell/ 2>/dev/null || true

if [[ -d "$HERE/bundle/www" ]]; then
  rsync -a "$HERE/bundle/" /opt/rxtx-staging/
  echo "[rxtx-shell] bundle → /opt/rxtx-staging"
else
  echo "[rxtx-shell] WARN: bundle/ пуст — перед образом: ./sync-bundle.sh"
fi

grep -q 'rxtx.local' /etc/hosts 2>/dev/null || echo '127.0.0.1 rxtx.local' >> /etc/hosts

PROV_BIN="$HERE/bin/shell-provision"
if [[ ! -x "$PROV_BIN" ]]; then
  echo "[rxtx-shell] WARN: нет $PROV_BIN — соберите: go build -o shell/bin/shell-provision ./cmd/shell-provision"
elif [[ ! -f /usr/local/bin/shell-provision ]]; then
  install -m 755 "$PROV_BIN" /usr/local/bin/shell-provision
fi

cat >/etc/systemd/system/shell-provision.service <<'UNIT'
[Unit]
Description=RXTX Shell provision daemon
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
ExecStart=/usr/local/bin/shell-provision run
Restart=on-failure
Environment=RXTX_MATRIXARCH_GATEWAY=wssil.rxtxhub.com:9471
Environment=RXTX_CHECKOUT_URL=https://matrixarch.rxtxhub.com

[Install]
WantedBy=multi-user.target
UNIT

cat >/etc/nginx/sites-available/rxtx-shell <<'NGINX'
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    server_name rxtx.local _;
    root /var/www/rxtx-shell;
    index index.html;
    location / { try_files $uri $uri/ /index.html; }
    location /local/ {
        proxy_pass http://127.0.0.1:9472/;
        proxy_http_version 1.1;
    }
}
NGINX

ln -sf /etc/nginx/sites-available/rxtx-shell /etc/nginx/sites-enabled/default
systemctl daemon-reload
systemctl enable nginx docker shell-provision 2>/dev/null || systemctl enable nginx docker
systemctl restart shell-provision 2>/dev/null || true
systemctl restart nginx

echo "[rxtx-shell] Готово → http://rxtx.local/"
echo "[rxtx-shell] После оплаты: кнопка «Установить систему»"
