# 📁 BIZZQARD Landing Pages - Verzeichnis-Struktur

**Komplett-Übersicht aller Dateien und Ordner**

---

## 🎯 Hauptverzeichnis

```
bizzqard-content/                    # Root (GitHub Repo)
│
├── README.md                        # 👈 START HIER! Komplette Anleitung
├── .gitignore                       # Git-Excludes
├── STRUCTURE.md                     # Diese Datei
│
├── _content/                        # 📝 Markdown-Quellen
│   ├── lead-magnet-masterclass.md
│   ├── instagram-growth-hacks.md
│   └── was-sind-qr-codes.md
│
├── _templates/                      # 📄 HTML-Templates
│   └── landing-page.html            # Pandoc-Template
│
├── _scripts/                        # 🛠️ Build-Scripts
│   ├── build-page.sh                # macOS/Linux
│   └── build-page.bat               # Windows
│
├── bizzqard-assets/                 # 🎨 Shared Resources
│   ├── css/
│   │   └── landing-page-theme.css   # Komplettes Theme (Navy + Orange)
│   └── images/
│       ├── favicon.png              # (optional)
│       ├── logo.png                 # (optional)
│       └── [deine Bilder hier]
│
├── bizzqard-courses/                # 🎓 Generierte HTML (Kurse)
│   ├── lead-magnet-masterclass.html
│   └── instagram-growth-hacks.html
│
└── bizzqard-help/                   # ❓ Generierte HTML (Hilfe)
    └── was-sind-qr-codes.html
```

---

## 📝 \_content/ (Markdown-Quellen)

**Zweck:** Alle Markdown-Dateien, die zu HTML konvertiert werden

**Workflow:**

1. Neue `.md` Datei hier erstellen
2. Build-Script ausführen
3. HTML wird in `bizzqard-courses/` oder `bizzqard-help/` generiert

**Kategorien:**

- **Kurse:** Lead-Magnets, Premium-Kurse, Affiliate-Kurse
- **Hilfe:** Grundlagen-Artikel, Tipps, Tutorials

**Beispiele:**

```
_content/
├── lead-magnet-masterclass.md       # Kostenloser Kurs
├── instagram-growth-hacks.md        # Kostenloser Kurs
├── was-sind-qr-codes.md             # Hilfe-Artikel
├── funnel-strategie-2025.md         # Premium-Kurs (später)
└── systeme-io-affiliate.md          # Affiliate-Angebot (später)
```

---

## 📄 \_templates/ (HTML-Templates)

**Zweck:** Pandoc-Templates für HTML-Generierung

**Dateien:**

- `landing-page.html` - Haupt-Template (Meta-Tags, CSS-Link, Body-Container)

**Anpassungen:**

- Meta-Tags für SEO
- Open Graph Tags für Social Sharing
- Analytics-Scripts (später)

**Nutzung:**

```bash
pandoc input.md --template=_templates/landing-page.html -o output.html
```

---

## 🛠️ \_scripts/ (Build-Scripts)

**Zweck:** Automatisierung der Markdown → HTML Konvertierung

**Dateien:**

- `build-page.sh` - macOS/Linux
- `build-page.bat` - Windows

**Features:**

- Automatische Ordner-Erstellung
- Pandoc-Aufruf mit korrekten Parametern
- Colorized Output
- Nützliche Hinweise (URLs, Next Steps)

**Usage:**

```bash
# macOS/Linux
./_scripts/build-page.sh _content/meine-seite.md [output-folder]

# Windows
_scripts\build-page.bat _content\meine-seite.md [output-folder]
```

---

## 🎨 bizzqard-assets/ (Shared Resources)

**Zweck:** Alle wiederverwendbaren Ressourcen (CSS, Bilder, Fonts, etc.)

### css/

- `landing-page-theme.css` - **Haupt-Theme** (Navy + Orange, Mobile-First)

**Struktur:**

```css
/* CSS Variables */
:root { --navy, --orange, ... }

/* Typography */
h1, h2, h3, p, ...

/* Components */
.cta-box, .cta-button, .info-box, ...

/* Responsive */
@media (min-width: 768px) { ... }
```

### images/

- `favicon.png` - (optional) Browser-Icon
- `logo.png` - (optional) BIZZQARD Logo
- Weitere Bilder für Landing Pages

**Best Practices:**

- Dateinamen: `kebab-case.jpg` (z.B. `lead-magnet-hero.jpg`)
- Komprimieren: Max. 500 KB (TinyPNG.com)
- Formate: JPG (Fotos), PNG (Logos/Icons), WebP (modern)

---

## 🎓 bizzqard-courses/ (Generierte HTML - Kurse)

**Zweck:** Alle generierten HTML-Seiten für Kurse

**Automatisch generiert durch:** `build-page.sh` / `build-page.bat`

**Beispiele:**

```
bizzqard-courses/
├── lead-magnet-masterclass.html     # Kostenloser Kurs
├── instagram-growth-hacks.html      # Kostenloser Kurs
├── funnel-strategie-2025.html       # Premium-Kurs
└── systeme-io-masterclass.html      # Affiliate-Kurs
```

**URLs auf GitHub Pages:**

```
https://DEIN-USERNAME.github.io/bizzqard-content/bizzqard-courses/lead-magnet-masterclass.html
```

---

## ❓ bizzqard-help/ (Generierte HTML - Hilfe)

**Zweck:** Alle generierten HTML-Seiten für Hilfe-Artikel

**Unterschied zu Kursen:**

- Kürzer (1-2 Seiten)
- Grundlagen-Wissen
- Meist kein CTA (oder nur App-Verweis)

**Beispiele:**

```
bizzqard-help/
├── was-sind-qr-codes.html
├── qr-codes-fuer-business.html
├── qr-code-strategien.html
└── tracking-und-analytics.html
```

**URLs auf GitHub Pages:**

```
https://DEIN-USERNAME.github.io/bizzqard-content/bizzqard-help/was-sind-qr-codes.html
```

---

## 🔄 Workflow-Übersicht

```
1. Markdown schreiben
   📝 _content/meine-seite.md

2. Build-Script ausführen
   🛠️ ./_scripts/build-page.sh _content/meine-seite.md

3. HTML generiert
   ✅ bizzqard-courses/meine-seite.html

4. Lokal testen
   🌐 python3 -m http.server 8000

5. Zu GitHub pushen
   📤 git add . && git commit -m "..." && git push

6. Live auf GitHub Pages
   🚀 https://....github.io/bizzqard-content/...

7. URL in Firebase eintragen
   🔥 courses.url = "https://..."

8. In App testen
   📱 WebView öffnet Landing Page
```

---

## 📦 Git-Strategie

**Was wird committed:**

- ✅ Markdown-Quellen (`_content/*.md`)
- ✅ Generierte HTML (`bizzqard-courses/*.html`, `bizzqard-help/*.html`)
- ✅ Templates (`_templates/*.html`)
- ✅ Scripts (`_scripts/*.sh`, `_scripts/*.bat`)
- ✅ Assets (CSS, Bilder)
- ✅ Dokumentation (README.md, etc.)

**Was wird NICHT committed:**

- ❌ `.DS_Store` (macOS)
- ❌ `Thumbs.db` (Windows)
- ❌ `.vscode/`, `.idea/` (Editor)
- ❌ `node_modules/` (falls später npm)

**Branches:**

- `main` - Production (GitHub Pages läuft hierauf)
- `dev` - (optional) Entwicklung

**Commits:**

```bash
# Gute Commit-Messages:
git commit -m "Add landing page: Lead-Magnet Masterclass"
git commit -m "Update theme: Improve mobile spacing"
git commit -m "Fix: CTA button color on hover"
```

---

## 🔮 Erweiterungen (später)

### Planned Features

1. **Multi-Language Support**
   - `_content/en/` für englische Versionen
   - `landing-page-en.html` Template
2. **Analytics Integration**

   - Google Analytics / Plausible
   - In `_templates/landing-page.html` einfügen

3. **Automatischer Build**

   - GitHub Actions
   - Automatisches Build bei Push

4. **Bildoptimierung**

   - `_scripts/optimize-images.sh`
   - Automatische Komprimierung

5. **PDF-Export**
   - Pandoc kann auch PDFs
   - Lead-Magnets direkt aus Markdown

---

## 📊 Statistiken (Initial Setup)

```
Dateien:       11 Dateien
CSS:           ~600 Zeilen (landing-page-theme.css)
Markdown:      3 Beispiel-Seiten (~300 Zeilen)
Scripts:       2 Build-Scripts (~150 Zeilen)
Templates:     1 HTML-Template
Dokumentation: README.md (~800 Zeilen)
Total:         ~1850 Zeilen Code + Dokumentation
```

---

## ✅ Checkliste: Setup vollständig

- [ ] Alle Ordner vorhanden
- [ ] CSS-Theme vorhanden
- [ ] Build-Scripts vorhanden (und ausführbar)
- [ ] 3 Beispiel-Markdown-Dateien vorhanden
- [ ] Pandoc installiert
- [ ] Erste HTML-Seite generiert
- [ ] Lokal im Browser getestet
- [ ] Zu GitHub gepusht
- [ ] GitHub Pages aktiviert
- [ ] URL in Firebase eingetragen
- [ ] In App getestet

---

**Letzte Aktualisierung:** 2025-10-27  
**Version:** 1.0  
**Für:** BIZZQARD Phase 3 - Firebase & Education

---

🎉 **System ist production-ready!** 🚀
