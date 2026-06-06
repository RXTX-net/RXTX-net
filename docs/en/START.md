# Getting started

This guide walks you from downloading the image to a working panel at `https://rxtx.local/`. If you already flashed shell and paid, the **Continue** tab on the device screen leads to the same install path.

[Russian](../ru/START.md)

---

## What you get

After install you have ordinary hardware running a full workstation: routing and NAT, VPN and proxy, Tor, an isolated Docker browser, DNS and IPv6 leak monitoring, mesh chat and personal pages on RXTX net. Everything is controlled through a web panel on your LAN. No cloud account and no monthly fee for “a server somewhere else” — only the license term you paid for.

---

## What you need

Any device that can run Debian 12: Raspberry Pi 4 or newer, mini PC, x86 laptop, arm64 server. Storage — SD card, USB stick or SSD, 16 GB or more. Use Ethernet on first boot; Wi‑Fi can be configured from the panel later. You need BTC or ETH for the license. The wallet address you pay from becomes your first panel login password — change it to your own strong password right after sign-in.

---

## Flashing the shell image

Download `rxtx-shell.img` from [Releases](https://github.com/RXTX-net/RXTX-net/releases). If you received `.img.xz`, unpack first: `xz -d rxtx-shell.img.xz`.

On Linux, find the disk with `lsblk` and write to the **whole** disk, not a partition — this erases the media:

```bash
sudo dd if=rxtx-shell.img of=/dev/sdX bs=4M status=progress
sync
```

On macOS, use `diskutil list`; writing to `rdisk` is faster:

```bash
sudo dd if=rxtx-shell.img of=/dev/rdiskX bs=4m status=progress
sync
```

If Debian 12 is already installed, skip `dd`: clone the repo, enter `shell`, run `sudo ./install.sh`.

---

## First boot

Plug in Ethernet, power on, wait two or three minutes. Open `http://rxtx.local/` or the device IP on your router subnet. The UI picks Russian in RU locale/timezone and English elsewhere. If `rxtx.local` does not resolve, use the IP from your router’s client list.

---

## Payment

Two tabs on the screen. **Pay** — new license: pick 30 days ($200) or 90 ($2000), BTC or ETH, enter your wallet address. **Continue** — you already paid: same address is enough; the system finds the confirmed payment.

After creating an invoice you get an **exact** crypto amount — do not round it. Send the transfer and wait until the screen shows the tx on chain and block confirmations (BTC: 1, ETH: 3). Then **Install system** unlocks. RXTX net hosting at $300/month is ordered later inside the panel — not required for install.

---

## Installing the full system

Press **Install system**. The screen locks and steps run: payment check, build for your hardware on Matrixarch, license activation, secure download, panel deployment, reboot. This can take ten to forty minutes — do not cut power before reboot. You do not flash a second image; everything installs in place on the same disk.

---

## Panel login

After reboot open `https://rxtx.local/`. The browser will warn about a self-signed certificate — normal on a local LAN. Sign in with the wallet address you paid from, then set a new strong password. Open **Monitor** and check that Leak Monitor is green; if not, configure VPN or DNS in the network section first.

For panel sections see [MANUAL.md](MANUAL.md) and [PANEL.md](PANEL.md). For unbind on hardware change see [SECURITY.md](SECURITY.md).

---

## Troubleshooting

No install button after payment — wait for confirmations and verify the exact amount. New hardware — use **Unbind device** in the panel, then shell again with the same wallet. You do not configure `matrixarch.rxtxhub.com` on the device; shell talks to it during install.

[Russian](../ru/START.md)
