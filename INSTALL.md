# Beszel YunoHost Installation

## Vorbereitung

1. **SHA256-Checksumme aktualisieren**: 
   Öffnen Sie `manifest.toml` und aktualisieren Sie die `sha256`-Zeile in der `[resources.sources.main]` Sektion mit der korrekten Checksumme der Beszel-Version.

   Sie können die Checksumme mit folgendem Befehl erhalten:
   ```bash
   curl -L https://github.com/henrygd/beszel/releases/download/v0.17.0/hub_linux_amd64.tar.gz | sha256sum
   ```

2. **Maintainer-Informationen aktualisieren**:
   Öffnen Sie `manifest.toml` und aktualisieren Sie die Maintainer-Informationen:
   ```toml
   maintainer = { name = "Ihr Name", email = "ihre.email@example.com" }
   ```

## Installation

### Option 1: Über die Web-Oberfläche

1. Laden Sie das App-Paket auf Ihr YunoHost-System hoch
2. Gehen Sie zu "Apps" → "Installieren"
3. Wählen Sie das Paket aus und folgen Sie den Anweisungen

### Option 2: Über die Kommandozeile

```bash
sudo yunohost app install beszel_ynh \
  --args 'domain=ihre-domain.tld&path=/beszel&admin=admin&is_public=false'
```

## Parameter

- `domain`: Ihre YunoHost-Domain
- `path`: Der Pfad, unter dem Beszel erreichbar sein soll (Standard: `/beszel`)
- `admin`: Der YunoHost-Benutzer, der Zugriff haben soll (Standard: `admin`)
- `is_public`: Ob die App öffentlich zugänglich sein soll (Standard: `false`)

## Nach der Installation

Beszel ist unter `https://ihre-domain.tld/beszel` erreichbar.

### Erste Schritte

1. Öffnen Sie die Beszel-Web-Oberfläche
2. Erstellen Sie ein Admin-Konto (falls erforderlich)
3. Installieren Sie den Beszel-Agent auf den zu überwachenden Servern

Weitere Informationen finden Sie in der [offiziellen Beszel-Dokumentation](https://beszel.dev).

## Upgrade

```bash
sudo yunohost app upgrade beszel -u https://github.com/ihr-username/beszel_ynh
```

## Entfernen

```bash
sudo yunohost app remove beszel
```

## Fehlerbehebung

### Service startet nicht

Überprüfen Sie die Logs:
```bash
sudo journalctl -u beszel -f
```

### Port bereits belegt

Das Skript findet automatisch einen freien Port. Falls Probleme auftreten, können Sie den Port manuell in den App-Einstellungen ändern.

### NGINX-Fehler

Überprüfen Sie die NGINX-Konfiguration:
```bash
sudo nginx -t
sudo systemctl reload nginx
```

