# Heirloom — HTML Game Prototype

This is a browser-based version of the COMP 440 Project 2 concept **Heirloom**.

## How to run

Open `index.html` in a modern browser.

No server, Godot install, npm packages, or external libraries are required.

## Controls

- WASD / Arrow Keys — Move
- E — Interact / pick up
- Q — Use active heirloom
- Tab — Switch heirlooms

## Core systems implemented

### Time System
- Countdown until dawn.
- Grandfather's Watch can slow the countdown.
- Running out of time starts a new generation.
- Each new generation gets less time.

### Inventory System
- Collect heirlooms.
- Switch active heirloom.
- Active heirloom is shown in the HUD.
- Heirlooms have different effects.

### Environment / Puzzle System
- Portrait puzzle responds to Mother's Mirror.
- Attic lock responds to the Music Box.
- Hidden key appears after solving the portrait puzzle.
- Front door requires the Brass Key.
- Environment reacts to time and player progress.

## Seams from the GDD

- `activeHeirloom`
  - Written by inventory logic.
  - Read by puzzle logic.

- `timeRemaining`
  - Written by time logic.
  - Read by the HUD and environment/game-state logic.

- `timeEffect`
  - Written when Grandfather's Watch is used.
  - Read by the time system to change countdown speed.

## Main puzzle path

1. Explore the mansion.
2. Collect Mother's Mirror.
3. Equip it with Tab.
4. Go to the old portrait.
5. Press Q to reveal the hidden key.
6. Pick up the Brass Key.
7. Return to the front door.
8. Press E to escape before dawn.

The Music Box / attic interaction is an additional puzzle interaction and demonstrates the same seam structure.

## Files

- `index.html` — game page and HUD
- `style.css` — visual design and layout
- `game.js` — all gameplay logic
