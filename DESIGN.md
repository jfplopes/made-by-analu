# Design System

<!-- impeccable:design-schema 1 -->

## Overview

Made By AnaLu is a warm, handcrafted portfolio site for a sweet-table decoration artist. The visual language is Modern Warm — terracotta tones with cream backgrounds, photo-led design, and elegant serif typography. The site is a single-page application with sections for hero, about, blog, gallery, services, and contact.

## Color System

### Palette

| Role | Name | Value | Usage |
|------|------|-------|-------|
| Surface | Warm White | `#fefcfa` | Primary background |
| Surface Warm | Cream | `#faf6f1` | Secondary backgrounds |
| Surface Accent | Blush | `#f7ede2` | Section highlights, cards |
| Ink | Espresso | `#2c2420` | Primary text |
| Ink Soft | Warm Gray | `#6b5e56` | Secondary text |
| Ink Dim | Muted | `#a09488` | Captions, placeholders |
| Accent | Terracotta | `#c67d5b` | Primary accent, CTAs, links |
| Accent Deep | Burnt Sienna | `#a8623f` | Hover states, emphasis |
| Accent Soft | Terracotta Glow | `rgba(198, 125, 91, 0.1)` | Subtle backgrounds |
| Nature | Sage | `#8a9a7b` | Secondary accent, nature tones |
| Border | Warm Border | `#ebe4dc` | Dividers, card borders |
| Contrast | White | `#ffffff` | Cards, overlays |

### Strategy

**Warm & Restrained** — Cream and warm white carry the surface, terracotta provides the primary accent for CTAs and emphasis. The palette stays warm and soft to let the colorful portfolio photos stand as the visual focus.

### Usage Notes

- Portfolio photos provide the color; the UI stays quiet
- Terracotta is the primary accent (CTAs, links, hover states)
- Sage green appears sparingly for nature/organic feel
- Espresso is the dark anchor — never pure black
- White cards float on warm backgrounds with subtle shadows

## Typography

### Font Stack

| Role | Font | Fallback |
|------|------|----------|
| Display | DM Serif Display | Georgia, serif |
| Body | Plus Jakarta Sans | system-ui, sans-serif |

### Scale

| Level | Size | Weight | Usage |
|-------|------|--------|-------|
| Display Large | `clamp(2.5rem, 6vw, 4rem)` | 400 | Hero headline |
| Display Medium | `clamp(1.75rem, 4vw, 2.5rem)` | 400 | Section headings |
| Heading | `1.5rem` | 500 | Subsection titles |
| Body Large | `1.125rem` | 400 | Lead paragraphs |
| Body | `1rem` | 400 | Paragraphs, navigation |
| Small | `0.875rem` | 500 | Buttons, labels |
| Caption | `0.75rem` | 400 | Footer, timestamps |

### Typography Notes

- DM Serif Display is used for all display text — elegant, warm, refined
- Plus Jakarta Sans is clean and modern for body text
- Line height: 1.6 for body text, 1.2 for display
- Navigation is uppercase with letter-spacing (0.08em)
- Blog titles use display font for personality

## Spacing

### Scale

| Token | Value | Usage |
|-------|-------|-------|
| `--space-xs` | `0.5rem` (8px) | Tight gaps, inline spacing |
| `--space-sm` | `1rem` (16px) | Component padding, small gaps |
| `--space-md` | `1.5rem` (24px) | Section padding (mobile) |
| `--space-lg` | `2.5rem` (40px) | Section padding (desktop) |
| `--space-xl` | `4rem` (64px) | Large section spacing |
| `--space-2xl` | `6rem` (96px) | Hero, major sections |
| `--space-3xl` | `8rem` (128px) | Extra large spacing |

### Rhythm

- More space above headings than below (pulls the eye)
- Sections alternate density: hero (airy) → about (balanced) → blog (dense) → gallery (dense) → services (airy) → contact (airy)
- Consistent gaps in gallery and blog grids

## Layout

### Structure

- Single-page portfolio
- Sticky navigation after header
- Full-width sections with centered content
- Max-width 1200px for content areas
- Max-width 1400px for gallery (photos need room)

### Grid

- Gallery: `repeat(auto-fill, minmax(280px, 1fr))` — responsive, varied sizes with `grid-auto-flow: dense`
- Blog: `repeat(3, 1fr)` → 2 → 1 on mobile
- Services: `repeat(auto-fit, minmax(200px, 1fr))` — responsive columns
- Mobile breakpoint at 768px (grid columns collapse, spacing reduces)

### Responsive Behavior

- Mobile-first: base styles work at 320px
- Gallery photos stack at 160px minimum on small screens
- Navigation wraps gracefully on small screens
- Contact buttons stack vertically on mobile
- Blog pagination adapts to screen size

## Components

### Navigation

- Sticky position
- Background matches page (warm white)
- Bottom border in warm border color
- Links are uppercase, letter-spaced
- Language switcher (ES/EN/PT) in top-right
- No hamburger menu — links wrap on small screens

### Buttons

**Primary (CTA)**
- Terracotta background, white text
- Uppercase, letter-spaced
- Border-radius: var(--radius-sm)
- Hover: deeper terracotta, slight lift

**Secondary**
- White background, terracotta text
- Border in warm border color
- Same hover treatment

### Hero Section

- 3 stacked photos with offset layout
- Brand header "Made By AnaLu"
- Animated entrance (fade-in + scale)
- Full viewport height on desktop

### About Section

- Split layout: photo + text
- Photo with object-position for framing
- Section badge eyebrow
- Warm, personal copy

### Gallery

- Paginated (12 photos per page)
- Varied sizes (tall/wide) with `grid-auto-flow: dense`
- Lightbox with slideshow
- Crossfade animation between photos
- Page info and navigation controls

### Blog

- Paginated (3 posts per page)
- Card layout with image, date, title, excerpt
- Modal reader with full article text
- Navigation: ← Newer / Older →
- Source links for curated articles
- i18n support for all content

### Services

- Emoji icons for each service type
- Centered text cards
- Event types: Cumpleaños, Baby Shower, Bodas, Halloween, Navidad, Eventos

### Contact

- Instagram link (@anajeronimo5)
- WhatsApp button (removed per user request)
- Simple, direct layout

### Walking Mascot

- Animated GIF character
- Random direction (left→right or right→left)
- Random timing (8-28 seconds between walks)
- Pure JS animation with requestAnimationFrame
- Respects `prefers-reduced-motion`
- Hidden when not walking

## Motion

### Signature Animations

1. **Hero entrance** — staggered fade-in + scale for stacked photos
2. **Gallery fade-in** — staggered fadeInUp animation
3. **Lightbox crossfade** — smooth transition between photos
4. **Mascot walk** — character walks across bottom of screen
5. **Hover lift** — buttons and cards lift on hover

### Timing

- Slow transitions: `0.6s cubic-bezier(0.22, 1, 0.36, 1)` (gallery zoom, major motion)
- Fast transitions: `0.25s ease` (buttons, hovers)
- Mascot walk: 20s linear across viewport

### Reduced Motion

- All animations respect `prefers-reduced-motion`
- Mascot hidden when reduced motion preferred
- Static, fully-usable page without motion

## Interaction

### Hover States

- Gallery items: zoom + shadow
- Buttons: color shift + lift + shadow
- Blog cards: subtle lift

### Focus States

- Visible focus for accessibility
- Outline on interactive elements

## Accessibility

### Current State

- Semantic HTML structure
- `lang` attribute switches with language toggle
- Images have descriptive `alt` text
- Contrast meets WCAG AA on text
- Keyboard navigation supported

### Gaps to Address

- Skip-to-content link (not present)
- Focus-visible styles (rely on browser defaults)
- Form inputs (none currently — contact is external links)

## Imagery

### Treatment

- Photos are the star — no filters, no overlays except hover
- Logo sits in header with subtle shadow
- Images lazy-loaded for performance
- Hero photos stacked with offset layout

### Asset Organization

- `assets/portfolio/` — 167 portfolio photos
- `assets/blog/` — Blog post images
- `assets/` — Hero, about, avatar images
- Data files in root: `portfolio-data.js`, `blog-data.js`

## Voice & Tone

### Copy Style

- Warm, personal, direct
- Spanish-primary with EN/PT translations
- Headlines are evocative
- Body text is short, scannable
- First person for blog articles

### Key Phrases (Spanish)

- "Hecho con cariño" (made with care) — footer tagline
- "Cada mesa es una historia" (each table is a story) — hero
- "Hola, soy AnaLu" — about section

## i18n

### Languages

- Spanish (ES) — primary
- English (EN)
- Portuguese (PT)

### Implementation

- Language switcher in navigation
- All content translated in `const translations` object
- Blog posts have `fullKey` referencing translation arrays
- Dates formatted per language

## What to Preserve

1. **Warmth** — cream, terracotta palette; elegant serif
2. **Photo-led** — UI stays quiet, work speaks
3. **Personal voice** — Spanish-first, conversational
4. **Handcrafted feel** — not corporate, not template-y
5. **Easy contact** — Instagram front and center
6. **Blog system** — curated articles with source links
7. **Walking mascot** — personality and delight

## What to Avoid

- Cold palettes (blues, grays)
- Harsh contrast (pure black/white)
- Template aesthetics (heavy cards, rounded everything)
- Stock photography
- Long paragraphs
- Complex navigation
- Breaking the i18n system
- Removing the mascot animation
