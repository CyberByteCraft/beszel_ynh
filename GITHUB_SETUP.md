# GitHub Repository Setup

## Schritt 1: Repository auf GitHub erstellen

1. Gehen Sie zu [GitHub](https://github.com) und melden Sie sich an
2. Klicken Sie auf das "+" Symbol oben rechts → "New repository"
3. Geben Sie einen Repository-Namen ein (z.B. `beszel_ynh`)
4. Wählen Sie "Public" oder "Private"
5. **WICHTIG**: Lassen Sie alle Optionen leer (kein README, keine .gitignore, keine License)
6. Klicken Sie auf "Create repository"

## Schritt 2: Repository mit GitHub verbinden

Führen Sie die folgenden Befehle aus (ersetzen Sie `IHR-USERNAME` und `beszel_ynh` mit Ihren Werten):

```bash
git remote add origin https://github.com/IHR-USERNAME/beszel_ynh.git
git push -u origin main
```

## Alternative: Mit SSH

Wenn Sie SSH verwenden möchten:

```bash
git remote add origin git@github.com:IHR-USERNAME/beszel_ynh.git
git push -u origin main
```

## Nach dem Push

Ihr Repository ist jetzt auf GitHub verfügbar unter:
`https://github.com/IHR-USERNAME/beszel_ynh`

## Weitere Commits pushen

Für zukünftige Änderungen:

```bash
git add .
git commit -m "Ihre Commit-Nachricht"
git push
```

