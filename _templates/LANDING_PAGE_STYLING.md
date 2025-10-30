# BIZZQARD Landing Page Styling Guide

**Zweck:** Anweisungen für Claude.ai beim Erstellen von Landing Pages & Hilfe-Artikeln  
**Erstellt:** 2025-10-29  
**Für:** Markdown → Pandoc → HTML → GitHub Pages

---

## 🎯 Grundprinzip

Alle Landing Pages und Hilfe-Artikel werden als **Markdown-Dateien** geschrieben und dann mit **Pandoc** in HTML konvertiert. Das Styling erfolgt über **CSS-Klassen**, die in Pandoc mit der `:::` Syntax verwendet werden.

---

## 📐 Standard-Struktur einer Landing Page

```markdown
# Hauptüberschrift

**Untertitel: Kurzbeschreibung**

---

::: intro
2-3 Sätze Intro-Text, der die Kernbotschaft vermittelt.
:::

![Hero-Image](../bizzqard-assets/images/hero.jpg){.hero-image}

---

## Hauptinhalt beginnt hier

[Rest des Contents...]

---

::: cta-box

### Abschluss-CTA

[Button](#){.cta-button}
:::
```

---

## 🎨 Verfügbare CSS-Klassen

### 1. Hero-Image (nach Intro)

**Verwendung:**

```markdown
::: intro
Kurzer Intro-Text (2-3 Sätze)
:::

![Alt-Text](../path/to/image.jpg){.hero-image}
```

**Eigenschaften:**

- Erscheint nach 2-3 Sätzen Intro
- Volle Breite (auf Mobile)
- Abgerundete Ecken + Schatten
- Responsive optimiert

**Best Practice:**

- Intro max. 50-80 Wörter
- Hero-Image danach prominent platzieren
- Alt-Text für Accessibility

---

### 2. Navy-Section (dunkler Hintergrund)

**Verwendung:**

```markdown
::: navy-section

### Überschrift

Inhalt mit dunklem Navy-Hintergrund (#1a2332).

[Button](#){.cta-button}
:::
```

**Eigenschaften:**

- Navy-Hintergrund (#1a2332)
- Weißer Text
- Padding: 48px
- Abgerundete Ecken

**Wann nutzen:**

- Wichtige Abschnitte hervorheben
- Max. 1-2 pro Seite
- Nicht für lange Texte (Lesbarkeit)

**Nicht verwenden:**

- Wenn viele Icons/Bilder im Abschnitt (Farbkonflikt)
- Bei sehr langen Texten

---

### 3. CTA-Box (Call-to-Action)

**Verwendung:**

```markdown
::: cta-box

### Überschrift

Beschreibung der Aktion.

[Button-Text](#){.cta-button}
:::
```

**Eigenschaften:**

- Orange Gradient-Hintergrund
- Weißer Text, zentriert
- Button invertiert (weiß mit orange Text)

**Wann nutzen:**

- Wichtige Handlungsaufforderungen
- Checkout-Links
- Download-CTAs
- Max. 2-3 pro Seite

---

### 4. Quote-Box (Zitate/Highlights)

**Verwendung:**

```markdown
::: quote-box
"**Wichtiges Zitat** oder hervorgehobener Text."

— Quelle
:::
```

**Eigenschaften:**

- Hellgrauer Hintergrund
- Orange linker Rahmen
- Kursiver Text
- Padding

**Wann nutzen:**

- Testimonials
- Wichtige Zitate
- Social Proof
- Key Takeaways

---

### 5. Info-Boxen (3 Varianten)

#### Info-Box (Blau, neutral)

```markdown
::: info-box
**💡 Tipp:** Hilfreiche Information oder Zusatzinfo.
:::
```

#### Warning-Box (Orange, wichtig)

```markdown
::: warning-box
**⚠️ Wichtig:** Warnung oder wichtiger Hinweis.
:::
```

#### Success-Box (Grün, positiv)

```markdown
::: success-box
**✅ Erfolg:** Positive Bestätigung oder erreichte Ziele.
:::
```

**Wann nutzen:**

- Tipps & Tricks (info-box)
- Wichtige Hinweise (warning-box)
- Erfolge & Bestätigungen (success-box)

---

### 6. Feature-Liste (mit grünen Haken)

**Verwendung:**

```markdown
::: feature-list

- Feature 1
- Feature 2
- Feature 3
  :::
```

**Eigenschaften:**

- Grüne Haken (✓) statt Bullets
- Größere Abstände
- Visuell ansprechend

**Wann nutzen:**

- Feature-Aufzählungen
- Vorteile-Listen
- Was-ist-enthalten-Sections

---

### 7. Card (strukturierte Inhalte)

**Verwendung:**

```markdown
::: card

### Überschrift

Inhalt der Card.

[Button](#){.cta-button}
:::
```

**Eigenschaften:**

- Weißer Hintergrund
- Leichter Schatten
- Abgerundete Ecken
- Padding

**Wann nutzen:**

- Module/Kurs-Abschnitte
- Strukturierte Inhalte
- Preis-Darstellungen

---

## 🔘 Button-Varianten

### Primärer Button (Orange)

```markdown
[Button-Text](#){.cta-button}
```

### Sekundärer Button (Navy)

```markdown
[Button-Text](#){.cta-button .secondary}
```

### Affiliate-Button (Gradient)

```markdown
[Partner-Link](#){.cta-button .affiliate}
```

**Hinweis:** Affiliate-Buttons werden von der App erkannt und öffnen automatisch Safari!

---

## 📱 Mobile-First Design

Alle Klassen sind **mobile-optimiert**:

- Hero-Image: Volle Breite auf Mobile
- Navy-Sections: Keine Border-Radius auf Mobile
- Buttons: 100% Breite auf Mobile
- Padding: Reduziert auf kleinen Screens

**Kein Extra-Code nötig** - alles automatisch!

---

## 📝 Anweisungen für Claude.ai

### Beim Erstellen einer Landing Page:

1. **Struktur festlegen:**

   - Intro (2-3 Sätze) → Hero-Image → Hauptinhalt → CTA

2. **Styling-Elemente wählen:**

   - Navy-Section für 1-2 wichtige Bereiche
   - CTA-Box für Handlungsaufforderungen
   - Quote-Box für Testimonials/Social Proof
   - Info-Boxen für Tipps

3. **Sparsam einsetzen:**

   - Nicht jede Section mit Farbe
   - Max. 2-3 Navy-Sections pro Seite
   - Max. 2-3 CTA-Boxen

4. **Mobile im Kopf behalten:**
   - Kurze Absätze
   - Klare Überschriften
   - Nicht zu viele verschachtelte Elemente

---

## 🎨 Beispiel-Prompt für Claude.ai

```
Erstelle eine Landing Page für [THEMA] mit folgender Struktur:

1. Titel + Untertitel
2. Kurzer Intro (2-3 Sätze)
3. Hero-Image (Platzhalter)
4. Hauptinhalt in 3-4 Abschnitten
5. 1x Navy-Section für wichtigen Abschnitt
6. 1x Quote-Box für Testimonial
7. Abschluss-CTA-Box mit Button

Verwende das BIZZQARD Styling:
- Hero-Image nach Intro
- Navy-Section für [Abschnitt X]
- CTA-Box am Ende
- Feature-Liste für Vorteile

Referenz: _template_landing_page.md
```

---

## ✅ Best Practices

### DO's ✅

- **Hero-Image immer nach kurzem Intro** (2-3 Sätze)
- **Navy-Sections sparsam nutzen** (1-2 pro Seite)
- **CTA-Boxen für wichtige Actions** (Checkout, Download)
- **Quote-Boxen für Social Proof** (Testimonials)
- **Feature-Listen für Vorteile**
- **Mobile-First denken**

### DON'Ts ❌

- ❌ Hero-Image als erstes Element (erst Intro!)
- ❌ Zu viele Navy-Sections (max. 2)
- ❌ Navy + Icons/Bilder (Farbkonflikt)
- ❌ Lange Texte in CTA-Boxen
- ❌ Mehr als 3 CTA-Boxen
- ❌ Verschachtelte komplexe Strukturen

---

## 🔗 Smart Link-Handling

### Links, die in WebView bleiben:

- Interne Links (`#section`)
- Relative Links (`./andere-seite.html`)
- GitHub Pages URLs

### Links, die Safari öffnen:

- Checkout-Links (`/checkout`, `/order`)
- Kalender-Links (`/calendar`, `/termin`)
- Affiliate-Links (`?ref=`, `/go/`)
- Download-Links (`.pdf`, `.zip`)
- Externe Domains

**Tipp:** Affiliate-Buttons automatisch mit `.affiliate` Klasse kennzeichnen!

---

## 🚀 Workflow: Von Markdown zu Live-Seite

1. **Markdown erstellen** (mit Styling-Klassen)
2. **Pandoc-Konvertierung:** `./build-page.sh dateiname.md`
3. **Git Commit & Push**
4. **Live nach 2-3 Minuten** (GitHub Pages)

---

## 📦 Dateien & Assets

### CSS:

- `bizzqard-assets/css/landing-page-theme.css`

### Template:

- `_template_landing_page.md`

### Bilder:

- `bizzqard-assets/images/` (Hero-Images, Icons, etc.)

---

## 💡 Tipps für verschiedene Content-Typen

### Hilfe-Artikel:

- Fokus auf Info-Boxen & Feature-Listen
- Wenig CTA-Boxen
- Navy-Section für wichtige Konzepte

### Kostenlose Kurse:

- Hero-Image groß
- Feature-Liste für Module
- 1x CTA-Box am Ende (Download/E-Mail)

### Affiliate-Landing-Pages:

- Hero-Image prominent
- Quote-Boxen für Testimonials
- 2-3 CTA-Boxen (Affiliate-Buttons)
- Navy-Section für wichtigste Features

### Premium-Kurse:

- Hero-Image + Preis prominent
- Card für Preis-Darstellung
- Feature-Liste für Inhalte
- Starke Abschluss-CTA-Box

---

## 🎯 Zusammenfassung

**Für Claude.ai:**

1. Nutze `_template_landing_page.md` als Referenz
2. Wähle Styling-Elemente basierend auf Content-Typ
3. Sparsam mit Navy-Sections & CTA-Boxen
4. Immer: Intro → Hero-Image → Content → CTA
5. Mobile-First Mindset

**Dieser Guide + Template = Alle Infos, die Claude.ai braucht! 🚀**

---

**Letzte Aktualisierung:** 2025-10-29  
**Version:** 1.0
