# Beszel für YunoHost

Dieses Paket installiert [Beszel](https://github.com/henrygd/beszel) auf einem YunoHost-System.

## Was ist Beszel?

Beszel ist eine leichte Server-Monitoring-Plattform mit historischen Daten, Docker-Statistiken und Alert-Funktionen. Sie bietet eine benutzerfreundliche Web-Oberfläche, einfache Konfiguration und ist sofort einsatzbereit.

## Features

- **Leichtgewichtig**: Kleiner und ressourcenschonender als führende Lösungen
- **Einfach**: Einfache Einrichtung mit wenig manueller Konfiguration
- **Docker-Statistiken**: Verfolgt CPU-, Speicher- und Netzwerk-Nutzungshistorie für jeden Container
- **Alerts**: Konfigurierbare Alerts für CPU, Speicher, Festplatte, Bandbreite, Temperatur, Load Average und Status
- **Multi-User**: Benutzer verwalten ihre eigenen Systeme. Admins können Systeme über Benutzer hinweg teilen
- **OAuth / OIDC**: Unterstützt viele OAuth2-Provider. Passwort-Auth kann deaktiviert werden
- **Automatische Backups**: Speichern auf und Wiederherstellen von Festplatte oder S3-kompatiblem Speicher

## Installation

### Über die YunoHost-Web-Oberfläche

1. Gehen Sie zu "Apps" → "Installieren"
2. Geben Sie die Repository-URL ein: `https://github.com/CyberByteCraft/beszel_ynh`
3. Folgen Sie den Installationsanweisungen

### Über die Kommandozeile

```bash
sudo yunohost app install https://github.com/CyberByteCraft/beszel_ynh \
  --args 'domain=yourdomain.tld&path=/beszel&admin=admin&is_public=false'
```

Oder mit dem App-Namen:

```bash
sudo yunohost app install beszel \
  --args 'domain=yourdomain.tld&path=/beszel&admin=admin&is_public=false' \
  -u https://github.com/CyberByteCraft/beszel_ynh
```

## Konfiguration

Nach der Installation können Sie Beszel über `https://yourdomain.tld/beszel` aufrufen.

### Agent-Installation

Um Server zu überwachen, müssen Sie den Beszel-Agent auf jedem zu überwachenden System installieren. Der Agent kann separat installiert werden und verbindet sich mit dem Hub.

Weitere Informationen zur Agent-Installation finden Sie in der [offiziellen Beszel-Dokumentation](https://beszel.dev).

## Upgrade

```bash
sudo yunohost app upgrade beszel -u https://github.com/yourusername/beszel_ynh
```

## Entfernen

```bash
sudo yunohost app remove beszel
```

## Unterstützung

- [Beszel GitHub](https://github.com/henrygd/beszel)
- [Beszel Dokumentation](https://beszel.dev)
- [YunoHost Dokumentation](https://yunohost.org)

## Lizenz

MIT License - siehe LICENSE-Datei für Details.

