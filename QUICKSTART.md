# ⚡ BIZZQARD Landing Pages - Quick Start

**Von 0 auf erste Landing Page in 10 Minuten**

---

## 🎯 Was du bekommst

Ein komplettes System, um professionelle Landing Pages zu erstellen:

- ✅ **Navy + Orange Theme** (BIZZQARD Branding)
- ✅ **Mobile-First** (sieht auf Smartphones perfekt aus)
- ✅ **Markdown → HTML** (kein HTML-Wissen nötig)
- ✅ **3 Beispiel-Seiten** (sofort nutzbar)
- ✅ **Claude AI kompatibel** (lass AI den Content schreiben)

---

## ⚡ 5-Minuten-Setup

### 1. Pandoc installieren

**macOS:**

```bash
brew install pandoc
```

**Windows:**  
Download: https://pandoc.org/installing.html

**Linux:**

```bash
sudo apt-get install pandoc
```

### 2. System in dein GitHub Repo kopieren

```bash
# Gehe in dein bizzqard-content Repo
cd ~/Projekte/bizzqard-content

# Kopiere alle Dateien aus dem bizzqard-landing-pages Ordner hier rein
cp -r /pfad/zu/bizzqard-landing-pages/* .

# Build-Script ausführbar machen (macOS/Linux)
chmod +x _scripts/build-page.sh
```

### 3. Erste Seite generieren

```bash
# Beispiel-Markdown zu HTML konvertieren
./_scripts/build-page.sh _content/lead-magnet-masterclass.md

# Im Browser öffnen
open bizzqard-courses/lead-magnet-masterclass.html  # macOS
# oder
start bizzqard-courses\lead-magnet-masterclass.html # Windows
```

### 4. Zu GitHub pushen

```bash
git add .
git commit -m "Add BIZZQARD landing page system"
git push origin main
```

**✅ Fertig!** System ist eingerichtet.

---

## 🚀 Erste eigene Landing Page (5 Minuten)

### Option A: Mit Claude AI

**1. Prompt an Claude:**

```
Schreibe eine Landing Page in Markdown für einen kostenlosen Kurs
"E-Mail-Marketing für Anfänger".

Zielgruppe: Selbstständige ohne Marketing-Erfahrung

Struktur:
- Headline + Subtitle (fett)
- "Warum dieser Kurs?" - Hook-Paragraph
- "Was du lernst" - 3 Punkte mit Icons (h3)
- "Das bekommst du" - Liste
- CTA-Box am Ende

Ton: Motivierend, praxisnah
Sprache: Deutsch
Format: Markdown mit <div class="cta-box"> für CTA
CTA-Link: https://deine-domain.systeme.io/email-marketing-optin
```

**2. Copy-Paste in neue Datei:**

```bash
# Claude's Antwort kopieren und speichern als:
nano _content/email-marketing-anfaenger.md
# (oder mit VSCode, TextEdit, etc.)
```

**3. Zu HTML konvertieren:**

```bash
./_scripts/build-page.sh _content/email-marketing-anfaenger.md
```

**4. Testen & Pushen:**

```bash
open bizzqard-courses/email-marketing-anfaenger.html
git add .
git commit -m "Add Email-Marketing landing page"
git push origin main
```

### Option B: Manuell schreiben

**1. Neue Markdown-Datei:**

```bash
touch _content/mein-kurs.md
code _content/mein-kurs.md
```

**2. Markdown schreiben:**

```markdown
# Mein Kurs-Titel

**Mein Untertitel - was der Kurs bringt**

---

## 🎯 Was du lernst

### 💡 Punkt 1

Beschreibung von Punkt 1

### 📝 Punkt 2

Beschreibung von Punkt 2

### 🚀 Punkt 3

Beschreibung von Punkt 3

---

<div class="cta-box">
  <h3>Bereit zu starten?</h3>
  <p>Melde dich jetzt an und starte sofort</p>
  <a href="https://deine-url.com" class="cta-button">
    Jetzt anmelden
  </a>
</div>
```

**3. Konvertieren & Testen:**

```bash
./_scripts/build-page.sh _content/mein-kurs.md
open bizzqard-courses/mein-kurs.html
```

---

## 📋 Workflow-Checkliste

Für jede neue Landing Page:

- [ ] 1. Markdown schreiben (`_content/meine-seite.md`)
- [ ] 2. Build-Script ausführen (`./_scripts/build-page.sh ...`)
- [ ] 3. Im Browser testen (öffne HTML-Datei)
- [ ] 4. Anpassen (falls nötig)
- [ ] 5. Zu GitHub pushen (`git add . && git commit && git push`)
- [ ] 6. GitHub Pages URL kopieren
- [ ] 7. In Firebase eintragen (`courses.url = "..."`)
- [ ] 8. In App testen (WebView öffnet Landing Page)

---

## 🎨 Design-Schnellreferenz

### Headline & Subtitle

```markdown
# Dein Titel

**Dein Untertitel**
```

### Sektionen

```markdown
## 🎯 Sektion-Überschrift
```

### Feature-Cards (automatisch)

```markdown
### 💡 Feature-Titel

Feature-Text wird automatisch zur grauen Card mit orangem Border.
```

### CTA-Box

```markdown
<div class="cta-box">
  <h3>Headline</h3>
  <p>Text</p>
  <a href="URL" class="cta-button">Button-Text</a>
</div>
```

### Info-Boxen

```markdown
<div class="info-box">
  <strong>💡 Tipp:</strong> Dein Hinweis
</div>
```

---

## 🔗 Wichtige Links

- **Komplette Anleitung:** `README.md`
- **Verzeichnis-Struktur:** `STRUCTURE.md`
- **Markdown-Syntax:** [Markdown Guide](https://www.markdownguide.org/)
- **Pandoc Docs:** [pandoc.org](https://pandoc.org/)

---

## 💡 Tipps

**Performance:**

- Bilder komprimieren (max. 500 KB) → [TinyPNG.com](https://tinypng.com)

**Content:**

- Kurze Absätze (3-4 Sätze)
- Visuelle Elemente (Emojis statt Bullet Points)
- Klarer CTA (was soll User tun?)

**Testing:**

- Immer auf Smartphone testen (Browser DevTools: F12 → Mobile Icon)
- Verschiedene Browser testen (Chrome, Safari, Firefox)

---

## 🆘 Probleme?

### "pandoc: command not found"

→ Pandoc installieren (siehe Schritt 1)

### HTML sieht anders aus als erwartet

→ CSS-Pfad prüfen (`../bizzqard-assets/css/landing-page-theme.css`)

### GitHub Pages zeigt 404

→ Settings → Pages → Branch `main`, Folder `/`, warte 2-3 Minuten

### Script läuft nicht (macOS/Linux)

→ `chmod +x _scripts/build-page.sh`

---

## 🎉 Los geht's!

Du hast jetzt alles, was du brauchst:

1. ✅ Theme (Navy + Orange)
2. ✅ Build-System (Markdown → HTML)
3. ✅ 3 Beispiele (zum Lernen)
4. ✅ Anleitung (README.md)

**Nächster Schritt:** Erste eigene Landing Page erstellen! 🚀

---

**Zeit bis zur ersten Landing Page:** ~10 Minuten  
**Zeit pro weitere Seite:** ~5 Minuten

**Viel Erfolg!** 💪
