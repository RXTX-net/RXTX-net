# Part 2 — Monitor and network

[← Manual](../MANUAL.md) · [Next →](03-anonymity.md)

---

## 5. Monitor — main screen

**Where:** Operations → **Monitor** (`/`).

### 5.1 Privacy Health

Score 0–100. Check daily.

| Score | Action |
|-------|--------|
| 80–100 | OK |
| 50–79 | Check VPN, DNS, Tor |
| &lt; 50 | Do not browse openly — fix VPN+Proxy |

### 5.2 Leak Monitor

| Check | Meaning |
|-------|---------|
| DNS | Queries go through tunnel, not ISP |
| IPv6 | IPv6 does not bypass VPN |
| VPN route | All traffic via VPN |
| IP | Public IP matches expectation |

**Example:** VPN in Germany → Leak Monitor shows DE IP and green DNS. Red DNS → **DNS** section → preset “via VPN”.

### 5.3 Network map

Diagram: Internet → VPN/Proxy → Tor → Docker → Mesh.

### 5.4 Panic button

**Does:** instant lockdown.  
**Does not:** wipe disk.

Use when you suspect physical access. Release only after you are safe; change password.

### 5.5 Auto-Rotate identity

Changes country, DNS, container locale, Wi‑Fi/BT emission as a bundle.

**Note:** panel language (RU/EN) stays the same.

### 5.6 VPN/Proxy bundles tab

Scan endpoints by country → assign to `wan` / `docker` / `browser`.

**Example:**
1. Monitor → **VPN/Proxy bundles**
2. Country: `DE` → **Scan** → pick low latency
3. Target: `wan` → **Apply**
4. Leak Monitor should turn green

---

## 6. Network: VPN, Proxy, Firewall

### 6.1 VPN

**Where:** Network → **VPN**

Types: **OpenVPN**, **WireGuard**, **ProxyGuard**.

**OpenVPN example:**
1. Download `.ovpn` from provider
2. VPN → OpenVPN → **Upload**
3. Select file → **Connect**
4. Badge: Connected
5. Monitor → Leak Monitor


- One active VPN on `wan`
- Name files clearly: `de-frankfurt.ovpn`
- Disconnect before switching configs

### 6.2 Proxy

**Where:** Network → **Proxy**

SOCKS4/5, HTTP, health checks.

**VPN + Proxy:** connect VPN first, add SOCKS, bind in AntiDetect profile.

### 6.3 Firewall

**Where:** Network → **Firewall**

**Quick rule example:** DROP tcp port 22 — close SSH from WAN.

Save profiles: `home`, `paranoid`, `mesh-only`.

**Beginner:** INPUT default DROP, allow LAN to panel only.

---

