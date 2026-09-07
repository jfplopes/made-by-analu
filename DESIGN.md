# Design System

<!-- impeccable:design-schema 1 -->

## Overview

Made By AnaLu is a warm, handcrafted portfolio site for a sweet-table decoration artist. The visual language is soft, elegant, and photo-led — letting her real work speak. The palette is warm cream and rose with gold accents, using elegant serifs for display text to convey craftsmanship and care.

## Color System

### Palette

| Role | Name | Value | Usage |
|------|------|-------|-------|
| Surface | Cream | `#FDF8F3` | Primary background |
| Surface Accent | Rose Dust | `#E8D5D0` | Secondary background, header gradient |
| Accent | Rose Deep | `#B08D86` | Subtle text, borders |
| Highlight | Gold | `#C9A962` | Navigation underlines, accents |
| Accent Alt | Forest | `#5A6B5C` | Button hover state |
| Ink | Charcoal | `#2D2926` | Primary text, buttons |
| Contrast | White | `#FFFFFF` | Cards, buttons |

### Strategy

**Restrained** — neutrals (cream, rose dust) carry 80% of the surface, with gold as the primary accent used sparingly (navigation underlines, hover states). The palette stays warm and soft to let the colorful portfolio photos stand as the visual focus.

### Usage Notes

- Portfolio photos provide the color; the UI stays quiet
- Gold is reserved for emphasis (nav active state, not decoration)
- Forest green is the only cool tone, used for button hover
- Charcoal is the dark anchor (buttons, text) — never pure black

## Typography

### Font Stack

| Role | Font | Fallback |
|------|------|----------|
| Display | Cormorant Garamond | Georgia, serif |
| Body | DM Sans | system-ui, sans-serif |

### Scale

| Level | Size | Usage |
|-------|------|-------|
| Display Large | `clamp(2rem, 6vw, 3.5rem)` | Main page title |
| Display Medium | `clamp(1.75rem, 5vw, 2.5rem)` | Hero tagline |
| Heading | `1.75rem` | Section titles |
| Subheading | `1.5rem` | Gallery title |
| Body | `1rem` | Paragraphs, navigation |
| Small | `0.875rem` | Buttons, service text |
| Caption | `0.75rem` | Footer |

### Typography Notes

- Cormorant Garamond is italicized for the hero tagline (warmth, elegance)
- Headings use regular weight (400-500), not bold — keeps it refined
- Body text is 1.6 line-height for readability
- Navigation is uppercase with 0.08em letter-spacing (crisp, not shouty)

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

### Rhythm

- More space above headings than below (pulls the eye)
- Sections alternate density: hero (airy) → gallery (dense) → services (airy) → contact (airy)
- Gallery uses consistent gaps; lets photos breathe equally

## Layout

### Structure

- Single-page portfolio
- Sticky navigation after header
- Full-width sections with centered content
- Max-width 1400px for gallery (photos need room)

### Grid

- Gallery: `repeat(auto-fill, minmax(280px, 1fr))` — responsive, no fixed columns
- Services: `repeat(auto-fit, minmax(200px, 1fr))` — 4 columns → 1 on mobile
- Mobile breakpoint at 768px (grid columns collapse, spacing reduces)

### Responsive Behavior

- Mobile-first: base styles work at 320px
- Gallery photos stack at 160px minimum on small screens
- Navigation wraps gracefully
- Contact buttons stack vertically on mobile

## Components

### Navigation

- Sticky position
- Background matches page (cream)
- Bottom border in rose dust
- Links are uppercase, letter-spaced, with gold underline on hover/active
- No nav collapse (hamburger) — links wrap on small screens

### Buttons

**Primary (CTA)**
- Charcoal background, white text
- Uppercase, letter-spaced
- Border-radius: 8px
- Hover: forest green background, slight lift (`translateY(-2px)`)
- Shadow on hover: `0 8px 24px rgba(45, 41, 38, 0.15)`

**Secondary (Contact)**
- White background, charcoal text
- Border in rose dust
- Same hover treatment (charcoal fill, white text)

### Gallery Items

- Aspect ratio 3:4 (portrait)
- Border-radius 16px
- Subtle zoom on hover (`transform: scale(1.05)`)
- Gradient overlay on hover (bottom half)
- Staggered fade-in animation on load

### Service Cards

- Centered text
- No border/background (let the content breathe)
- Heading in Cormorant Garamond

## Motion

### Signature Animations

1. **Gallery fade-in** — staggered `fadeInUp` animation, 0.1s delay between items
2. **Hover lift** — buttons and gallery items lift 2px on hover
3. **Underline reveal** — nav links animate underline from left to right

### Timing

- Slow transitions: `0.6s cubic-bezier(0.22, 1, 0.36, 1)` (gallery zoom, major motion)
- Fast transitions: `0.25s ease` (buttons, hovers)

### Reduced Motion

- All animations respect `prefers-reduced-motion`
- User sees static, fully-usable page without motion

## Interaction

### Hover States

- Gallery items: zoom + gradient overlay
- Buttons: color shift + lift + shadow
- Nav links: gold underline reveal

### Focus States

- Visible focus for accessibility (not specified in current CSS — needs addition)

## Accessibility

### Current State

- Semantic HTML structure
- `lang` attribute switches with language toggle
- Images have `alt` text (generic "Mesa dulce" — could be more descriptive)
- Contrast meets WCAG AA on text

### Gaps to Address

- Skip-to-content link (not present)
- Focus-visible styles (rely on browser defaults)
- Form inputs (none currently — contact is external links)

## Imagery

### Treatment

- Photos are the star — no filters, no overlays except hover
- Logo sits in header with subtle shadow
- Images lazy-loaded for performance

### Optimization

- Current images are 1200-1600px on long edge (phone/DSLR originals)
- Should be compressed and served at display size in production

## Voice & Tone

### Copy Style

- Warm, personal, direct
- Spanish-primary with EN/PT translations
- Headlines are evocative ("¿Hablamos?" not "Contacto")
- Body text is short, scannable

### Key Phrases (Spanish)

- "Hecho con cariño" (made with care) — footer tagline
- "Cada mesa es única" (each table is unique) — hero
- "¿Hablamos?" (shall we talk?) — contact heading

## What to Preserve

1. **Warmth** — cream, rose, gold palette; elegant serif
2. **Photo-led** — UI stays quiet, work speaks
3. **Personal voice** — Spanish-first, conversational
4. **Handcrafted feel** — not corporate, not template-y
5. **Easy contact** — Instagram and WhatsApp front and center

## What to Avoid

- Cold palettes (blues, grays)
- Harsh contrast (pure black/white)
- Template aesthetics (heavy cards, rounded everything)
- Stock photography
- Long paragraphs
- Complex navigation
