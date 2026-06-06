# Part 4 — Mesh and system

[← Manual](../MANUAL.md) · [Русский](../../ru/MANUAL.md)

---

## 10. Community and mesh

**Where:** Community → tabs: Chat / RXTX-NET / Constructor / Market

### Chat
Global and private mesh chat. Approve peers explicitly.

### Constructor (RXLang)

**Example page:**
```rxsrc
@title Anonymous hosting
@section Plans
@text VPS in mesh, no clearnet DNS
@wallet btc:bc1qxxxxxxxx
@link rxtx://YOUR_FP/shop Order
@escrow lst-001
```

More: [RXLANG.md](RXLANG.md)

### Market

Escrow listings between nodes.

---

## 11. Account, payment, NetVault

**Where:** System → **RXTX Account**

- Seed — long-term identity. **Store offline.**
- BTC/ETH → balance → hosting slots
- **NetVault** — backups and sync

Renew hosting before expiry — pages unpublish when term ends (data kept in vault).

---

## 12. Remote control

**Where:** Security → **Remote**

Telegram, Discord, Webhook, REST+JWT.

long webhook secret; do not expose panel on clearnet without VPN.

---

## 13. System maintenance

**Where:** System → **System**

Password change, smart cleanup, speedtest, reboot, Kill System.

Fan config if your hardware reports temp (Pi etc.) and it is above 70°C.

---

## 14. Ready-made scenarios

### A: Safe browsing
VPN → DNS via VPN → green leaks → Workstation browser + AntiDetect + proxy.

### B: RXTX as phone router
Internet ethernet→wifi → VPN on wan → phone on RXTX Wi‑Fi.

### C: Mesh storefront
Pay hosting → Constructor → publish → share `rxtx://...` link.

### D: Panic while away
Monitor → PANIC → power off if needed → release → new password → check logs.

---

## 15. FAQ

**Panel won't open** — check IP, Ethernet, wait 3 min after boot.

**VPN on but old IP** — DNS not via VPN; restart network.

**Lite mode — no Docker browser** — terminal only.

**Page won't publish** — check hosting slot and license.

**Forgot password** — re-activation / re-flash (data lost).

---

[Panel overview](PANEL.md) · [Getting started](START.md) · [Русский](../ru/MANUAL.md)
