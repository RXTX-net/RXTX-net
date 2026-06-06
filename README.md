<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/RXTX-net/RXTX-net/main/docs/brand/baner.png">
  <img alt="RXTX-NET" src="https://raw.githubusercontent.com/RXTX-net/RXTX-net/main/docs/brand/baner.png" width="100%">
</picture>

# RXTX-NET

RXTX-NET — это не облачный сервис, не VPS и не подписка на чужую инфраструктуру.

Вы разворачиваете систему на собственном устройстве: Raspberry Pi, мини-ПК, старом ноутбуке или сервере под Debian 12. После установки вы получаете локальный sovereign node с доступом через панель управления по адресу:

https://rxtx.local/

Система объединяет VPN, Tor, firewall, leak monitoring, контейнеризированный браузер, защищённое хранилище и mesh-сеть в единую платформу, которая работает на вашем оборудовании — дома, в офисе или в полевых условиях.

## Установка

Установка состоит из двух этапов.

### 1. RXTX Shell

Сначала записывается минимальный загрузочный образ RXTX Shell.

После запуска открывается экран активации лицензии.

### 2. Развёртывание системы

После подтверждения лицензии RXTX автоматически собирает и устанавливает полный системный образ под текущее оборудование.

Повторная прошивка, переустановка или запись второго образа не требуются.

После завершения установки устройство становится полноценным узлом RXTX-NET.

## Лицензирование

- 30 дней — $200
- 90 дней — $2000

Лицензия активируется через BTC или ETH.

Размещение страниц и сервисов внутри сети RXTX подключается отдельно через панель управления.

### RXTX Hosting

- Hosting Lease — $300/месяц

После активации узел получает право публикации и поддержки ресурсов внутри RXTX-NET.

## Загрузка

Стартовый образ доступен в разделе [Releases](https://github.com/RXTX-net/RXTX-net/releases).

Если образ поставляется в формате `rxtx-shell.img.xz`, распакуйте его:

```bash
xz -d rxtx-shell.img.xz
```

После распаковки запишите образ на носитель любым удобным способом (dd, Raspberry Pi Imager, Balena Etcher и др.).

## Документация

- [Start (RU)](docs/ru/START.md)
- [Start (EN)](docs/en/START.md)
- [Manual](docs/ru/MANUAL.md)
- [Control Panel](docs/ru/PANEL.md)
- [Security](docs/ru/SECURITY.md)
- [Network](docs/ru/NETWORK.md)
- [RXTX Shell](shell/)

---

**RXTX-NET**

THE NETWORK STORES NOTHING.  
THE OBSERVER CREATES EVERYTHING.

`SEED → LEASE → CAPSULE → REVEAL → MEANING`
