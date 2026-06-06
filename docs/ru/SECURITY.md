# Защита

## Интернет

| Угроза | Что делать |
|--------|------------|
| Провайдер видит трафик | VPN / WireGuard / OpenVPN |
| Утечка DNS | Leak Monitor на Мониторе → DNS через VPN |
| Fingerprint | AntiDetect в Docker |
| Следы на диске | Workstation — закрыл сессию, контейнер снесён |
| Блокировки | Tor + мосты; VPN по странам в связках на Мониторе |
| Геолокация | Stealth + Auto-Rotate |

## Узел

| Угроза | Что делать |
|--------|------------|
| Атака с WAN | Firewall, INPUT DROP |
| Чужой в панели | Сложный пароль, Panic |
| Клон образа | Лицензия на железо, personal.img |

## Mesh

| Угроза | Что делать |
|--------|------------|
| Чтение транзита | Капсулы — содержимое закрыто |
| Чужие узлы | Approve peer вручную |
| Сделки | Escrow на рынке |

## Хост / Docker / Mesh

- **Хост** — управление, не для серфинга
- **Docker** — clearnet
- **Mesh** — свои протоколы, RXLang, без clearnet DNS

## После прошивки

1. Монитор → Leak Monitor зелёный  
2. VPN + DNS через VPN  
3. Clearnet только из Workstation  
4. Seed — офлайн  

[MANUAL.md](MANUAL.md) · [English](../en/SECURITY.md)
