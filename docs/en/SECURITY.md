# Protection

## Internet

| Threat | Action |
|--------|--------|
| ISP sees traffic | VPN / WireGuard / OpenVPN |
| DNS leak | Leak Monitor → DNS via VPN |
| Fingerprint | AntiDetect in Docker |
| Disk traces | Workstation — close session, container gone |
| Blocks | Tor + bridges; country VPN in Monitor bundles |
| Geo | Stealth + Auto-Rotate |

## Node

| Threat | Action |
|--------|--------|
| WAN attack | Firewall, INPUT DROP |
| Panel access | Strong password, Panic |
| Image clone | Hardware license, personal.img |

## Mesh

| Threat | Action |
|--------|--------|
| Transit reading | Capsules — payload sealed |
| Unknown nodes | Manual peer approve |
| Deals | Market escrow |

## Host / Docker / Mesh

- **Host** — control, not for browsing
- **Docker** — clearnet
- **Mesh** — own protocols, RXLang, no clearnet DNS

## After flash

1. Monitor → Leak Monitor green  
2. VPN + DNS via VPN  
3. Clearnet from Workstation only  
4. Seed — offline  

[MANUAL.md](MANUAL.md) · [Russian](../ru/SECURITY.md)
