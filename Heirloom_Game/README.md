# Heirloom — COMP 440 Project 2 Prototype

Playable Godot 4 prototype based directly on the September 23, 2026 GDD.

## Core Loop
Escape the cursed family home before dawn by collecting heirlooms and using their abilities to solve environmental puzzles.

## Controls
- **WASD** — move
- **Mouse** — look
- **E** — interact / collect / solve
- **TAB** — switch heirloom
- **Q** — use active heirloom ability
- **Esc** — release/capture mouse
- **R** — restart current scene

## Three Systems
### Time System — `scripts/time_system.gd`
Owns the dawn countdown and responds to `TimeEffect`. When time reaches zero, the scene loops and the next generation gets less time.

### Inventory System — `scripts/inventory_system.gd`
Owns collected heirlooms, switching, active heirloom, and active item effects.

### Environment/Puzzle System — `scripts/interactable.gd` + `scripts/main.gd`
Owns the mansion puzzle states, hidden key, attic access, exit state, and environmental reactions.

## Seams
- **ActiveHeirloom** — Inventory writes; Environment reads.
- **TimeRemaining** — Time writes; Environment/UI reads.
- **TimeEffect** — Inventory writes; Time reads.

The shared seam state is centralized in `scripts/game_state.gd` so team members can integrate around the same variable names.

## Included heirlooms
- **Grandfather's Watch** — slows the timer while active.
- **Mother's Mirror** — reveals the hidden key when used on the portrait puzzle.
- **Music Box** — unlocks the attic seal through the melody puzzle.

## Intended prototype path
1. Pick up heirlooms around the mansion.
2. Use the Music Box at the carved music puzzle to unlock the attic seam.
3. Equip Mother's Mirror and inspect the portrait to reveal the hidden key.
4. Collect the key.
5. Return to the front door and escape before dawn.

## Art direction represented
The prototype uses the GDD palette with dark browns, black, pale marble, and a warm bronze/gold accent. Lighting is dim and warm on the first floor, while the far side of the mansion is colder and more supernatural.

This is a graybox gameplay build: geometry is intentionally simple so the team can replace meshes with final mansion, statue, stair, spiderweb, and character assets later without changing system code.
