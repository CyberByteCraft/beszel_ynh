# GitHub Authentifizierung

Um den Code auf GitHub zu pushen, müssen Sie sich authentifizieren. Hier sind die Optionen:

## Option 1: Personal Access Token (PAT) - Empfohlen für HTTPS

1. **Token erstellen:**
   - Gehen Sie zu GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Klicken Sie auf "Generate new token (classic)"
   - Geben Sie einen Namen ein (z.B. "beszel_ynh")
   - Wählen Sie die Berechtigung `repo` aus
   - Klicken Sie auf "Generate token"
   - **WICHTIG**: Kopieren Sie den Token sofort (er wird nur einmal angezeigt!)

2. **Token verwenden:**
   ```bash
   git remote set-url origin https://github.com/CyberByteCraft/beszel_ynh.git
   git push -u origin main
   ```
   Wenn nach dem Passwort gefragt wird, verwenden Sie den Token als Passwort.

## Option 2: SSH-Keys (Empfohlen für langfristige Nutzung)

1. **SSH-Key generieren (falls noch nicht vorhanden):**
   ```bash
   ssh-keygen -t ed25519 -C "ihre-email@example.com"
   ```

2. **SSH-Key zu GitHub hinzufügen:**
   - Kopieren Sie den öffentlichen Key:
     ```bash
     cat ~/.ssh/id_ed25519.pub
     ```
   - Gehen Sie zu GitHub → Settings → SSH and GPG keys
   - Klicken Sie auf "New SSH key"
   - Fügen Sie den Key ein und speichern Sie

3. **Repository auf SSH umstellen:**
   ```bash
   git remote set-url origin git@github.com:CyberByteCraft/beszel_ynh.git
   git push -u origin main
   ```

## Option 3: GitHub CLI (gh)

1. **GitHub CLI installieren:**
   - Windows: `winget install GitHub.cli`
   - Oder von https://cli.github.com/

2. **Anmelden:**
   ```bash
   gh auth login
   ```

3. **Pushen:**
   ```bash
   git push -u origin main
   ```

## Schnellste Lösung

Falls Sie bereits einen Personal Access Token haben, führen Sie einfach aus:

```bash
git remote set-url origin https://github.com/CyberByteCraft/beszel_ynh.git
git push -u origin main
```

Geben Sie bei der Passwort-Abfrage Ihren Token ein (nicht Ihr GitHub-Passwort!).

