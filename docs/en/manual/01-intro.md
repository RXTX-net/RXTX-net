# Part 1 — start

[← Manual](../MANUAL.md) · [Next →](02-monitor-network.md)

## What it is

RXTX-NET is an autonomous workstation on your hardware running Debian 12. Not a VPS rental: the device sits with you, the panel opens at `https://rxtx.local/` on your LAN. Raspberry Pi, mini PC, old laptop or server works — Debian 12 is the requirement.

You flash **shell** first — a light image with payment and install. After payment the full system is built for your device and installed on the same disk, without a second flash. From zero: [START.md](../START.md).

The panel gives you routing, VPN and proxy, Tor, firewall, Wi‑Fi and DHCP, leak monitoring, a Docker browser or terminal, mesh chat, Telegram or Discord alerts, password change, hardware unbind and Kill System. Personal page hosting on RXTX net ($300/month) is a separate option inside the panel.

---

## First login

After reboot open `https://rxtx.local/`. First password is the wallet address you paid from. Change it immediately under System. Toggle RU / EN in the header. Open Monitor and check Leak Monitor is green; if not, set up VPN or DNS first, then refresh.

---

## Menu layout

Top level: operations (monitor, Workstation, AntiDetect, internet), network (VPN, proxy, firewall, Wi‑Fi, DHCP, DNS), security (Tor, Stealth, logs, remote), community (chat), devices (4G/5G), system (RXTX account, password, unbind, Kill). Per-tab details: [PANEL.md](../PANEL.md).

---

## License

You buy 30 or 90 days. The panel shows time left; three days before expiry you get a warning. Renewal is a new payment and install, or Continue on shell with the same wallet.

[Next: network and monitor →](02-monitor-network.md)
