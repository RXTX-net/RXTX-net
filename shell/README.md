# RXTX Shell (~2%)

Public install shell. **Not** the full appliance — that is delivered after payment.

## What is included

| File | Purpose |
|------|---------|
| `www/index.html` | Payment / Continue UI, install progress |
| `install.sh` | Debian 12 + nginx + provision daemon |
| `bin/shell-provision` | Built binary (see below) |

## User flow

```
flash shell.img once
  → http://rxtx.local/
  → Pay or Continue (wallet)
  → Install system (on-screen steps)
  → reboot
  → https://rxtx.local/ full panel
```

Language: **RU** in RU zone, **EN** elsewhere (automatic).

## Install on existing Debian

```bash
git clone https://github.com/RXTX-net/RXTX-net
cd RXTX-net/shell
sudo ./install.sh
```

## Build provision binary (operators)

```bash
# from private rxtx-matrixarch tree
go build -o shell/bin/shell-provision ./cmd/shell-provision
```

Pre-built `shell-provision` is shipped inside `rxtx-shell.img` releases.

## What is NOT in this repo

- Sealed backend, mint, matrixarch validator
- Full panel sources, mesh transport, WSSIL server logic

Payment checkout: `https://matrixarch.rxtxhub.com`
