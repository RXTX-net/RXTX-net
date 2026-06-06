# Part 3 — Anonymity and Workstation

[← Manual](../MANUAL.md) · [Next →](04-mesh-system.md)

---

## 7. Wi‑Fi, DHCP, DNS, Internet

### 7.1 Internet

**Where:** Operations → **Internet**

Input → output + NAT.

**Phone router example:** ethernet in → wifi out → **Configure routing**.

### 7.2 Wi‑Fi

AP mode, scan, adapters. Use neutral SSID or Stealth profile.

### 7.3 DHCP

Auto for AP clients (192.168.220.0/24).

### 7.4 DNS

Presets: system, via VPN, Tor, custom. After VPN → “via VPN” → green Leak Monitor.

---

## 8. Tor and Stealth

### 8.1 TOR

**Where:** Security → **TOR**

Bridges for censored regions. Tor over VPN for strict setups.

### 8.2 Stealth

Geo profiles — fake SSID, MAC, country.

**Example profile:** name `cafe-us`, country `US`, SSID `Starbucks WiFi`.

---

## 9. Workstation and AntiDetect Browser

### 9.1 Workstation

**Where:** Operations → **Workstation**

Docker: **terminal** or **browser**. Close without save → container removed.

all clearnet browsing in Docker only.

### 9.2 AntiDetect Browser

Fingerprint profiles + proxy per slot.

---

