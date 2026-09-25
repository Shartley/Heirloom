<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Heirloom</title>
  <style>
* {
  box-sizing: border-box;
}

:root {
  --brown-dark: #261809;
  --marble: #e5e8e9;
  --black: #000000;
  --bronze: #b67433;
  --brown-deep: #301703;
  --panel: rgba(10, 8, 6, 0.94);
  --soft: #bdb5ab;
}

body {
  margin: 0;
  background:
    radial-gradient(circle at 50% 15%, #1d1710 0%, #0b0907 42%, #000 100%);
  color: var(--marble);
  font-family: Georgia, "Times New Roman", serif;
  min-height: 100vh;
}

#game-shell {
  width: min(1400px, 100%);
  margin: 0 auto;
  padding: 18px;
}

.hud {
  display: flex;
  justify-content: space-between;
  gap: 16px;
  align-items: flex-end;
  background: linear-gradient(90deg, #120d08, var(--brown-dark));
  border: 1px solid #4c3823;
  padding: 14px 18px;
  box-shadow: 0 12px 40px rgba(0,0,0,.35);
}

h1 {
  margin: 0;
  letter-spacing: .22em;
  font-size: 2.1rem;
}

#objective {
  color: var(--soft);
  margin: 5px 0 0;
}

.hud-right {
  display: flex;
  gap: 10px;
  flex-wrap: wrap;
  justify-content: flex-end;
}

.stat {
  background: #080706;
  border: 1px solid #594021;
  padding: 8px 12px;
  min-width: 100px;
  text-align: center;
}

.stat.wide {
  min-width: 180px;
}

.label {
  display: block;
  font-size: .66rem;
  letter-spacing: .12em;
  color: var(--bronze);
  margin-bottom: 4px;
}

main {
  display: grid;
  grid-template-columns: minmax(0, 1fr) 300px;
  gap: 14px;
  margin-top: 14px;
}

.game-panel {
  position: relative;
  background: #050403;
  border: 1px solid #3d2b1c;
  overflow: hidden;
}

canvas {
  display: block;
  width: 100%;
  height: auto;
  image-rendering: auto;
  background: #111;
}

.sidebar {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.sidebar section {
  background: var(--panel);
  border: 1px solid #3d2b1c;
  padding: 14px;
}

.sidebar h2 {
  color: var(--bronze);
  font-size: 1rem;
  letter-spacing: .12em;
  margin: 0 0 10px;
  text-transform: uppercase;
}

.sidebar p,
.sidebar li {
  color: #c8c1b9;
  font-size: .9rem;
  line-height: 1.4;
}

#inventory {
  display: grid;
  gap: 7px;
}

.inv-item {
  border: 1px solid #46301e;
  padding: 8px;
  background: #0b0907;
  color: #aaa198;
}

.inv-item.active {
  border-color: var(--bronze);
  color: white;
  box-shadow: inset 0 0 0 1px rgba(182,116,51,.25);
}

.message {
  position: absolute;
  inset: 50% auto auto 50%;
  transform: translate(-50%, -50%);
  width: min(520px, 86%);
  padding: 22px;
  background: rgba(0,0,0,.94);
  border: 1px solid var(--bronze);
  box-shadow: 0 20px 60px #000;
  text-align: center;
  z-index: 10;
}

.message h2 {
  margin-top: 0;
  color: var(--bronze);
  letter-spacing: .08em;
}

button {
  background: var(--brown-deep);
  color: white;
  border: 1px solid var(--bronze);
  padding: 9px 18px;
  cursor: pointer;
  font-family: inherit;
}

button:hover {
  background: #4a2713;
}

.interaction {
  position: absolute;
  left: 50%;
  bottom: 18px;
  transform: translateX(-50%);
  background: rgba(0,0,0,.88);
  border: 1px solid var(--bronze);
  padding: 9px 14px;
  color: white;
  font-size: .92rem;
}

.hidden {
  display: none;
}

footer {
  display: flex;
  justify-content: space-between;
  gap: 10px;
  color: #7f756b;
  font-size: .78rem;
  padding-top: 10px;
}

@media (max-width: 1000px) {
  main {
    grid-template-columns: 1fr;
  }

  .sidebar {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 640px) {
  .hud {
    align-items: flex-start;
    flex-direction: column;
  }

  .sidebar {
    grid-template-columns: 1fr;
  }

  footer {
    flex-direction: column;
  }
}

</style>
</head>
<body>
  <div id="game-shell">
    <header class="hud">
      <div>
        <h1>HEIRLOOM</h1>
        <p id="objective">Escape the cursed family home before dawn.</p>
      </div>

      <div class="hud-right">
        <div class="stat">
          <span class="label">GENERATION</span>
          <span id="generation">1</span>
        </div>
        <div class="stat">
          <span class="label">TIME TO DAWN</span>
          <span id="timer">03:00</span>
        </div>
        <div class="stat wide">
          <span class="label">ACTIVE HEIRLOOM</span>
          <span id="active-heirloom">None</span>
        </div>
      </div>
    </header>

    <main>
      <section class="game-panel">
        <canvas id="game" width="960" height="600"></canvas>

        <div id="message-box" class="message hidden">
          <h2 id="message-title"></h2>
          <p id="message-text"></p>
          <button id="message-button">Continue</button>
        </div>

        <div id="interaction-prompt" class="interaction hidden"></div>
      </section>

      <aside class="sidebar">
        <section>
          <h2>Controls</h2>
          <p><b>WASD / Arrows</b> Move</p>
          <p><b>E</b> Interact / Pick up</p>
          <p><b>Q</b> Use heirloom</p>
          <p><b>Tab</b> Switch heirloom</p>
        </section>

        <section>
          <h2>Inventory</h2>
          <div id="inventory"></div>
        </section>

        <section>
          <h2>Clues</h2>
          <ul id="clues">
            <li>The front door will not open.</li>
            <li>Something upstairs is waiting.</li>
          </ul>
        </section>

        <section>
          <h2>Systems</h2>
          <p><b>Time:</b> reaches zero → loop resets.</p>
          <p><b>Inventory:</b> heirlooms change what you can do.</p>
          <p><b>Environment:</b> puzzles react to time and heirlooms.</p>
        </section>
      </aside>
    </main>

    <footer>
      <span>COMP 440 — Project 2 Prototype</span>
      <span>Mysterious • Eerie • Charged</span>
    </footer>
  </div>

  <script>
const canvas = document.getElementById("game");
const ctx = canvas.getContext("2d");

const timerEl = document.getElementById("timer");
const generationEl = document.getElementById("generation");
const activeHeirloomEl = document.getElementById("active-heirloom");
const inventoryEl = document.getElementById("inventory");
const objectiveEl = document.getElementById("objective");
const cluesEl = document.getElementById("clues");
const interactionPrompt = document.getElementById("interaction-prompt");

const messageBox = document.getElementById("message-box");
const messageTitle = document.getElementById("message-title");
const messageText = document.getElementById("message-text");
const messageButton = document.getElementById("message-button");

const keys = {};
let paused = true;
let lastTime = performance.now();

const TILE = 40;
const MAP_W = 24;
const MAP_H = 15;

const COLORS = {
  wall: "#261809",
  floor: "#d9d9d2",
  floorDark: "#6d675f",
  black: "#000000",
  bronze: "#b67433",
  deep: "#301703",
  eerie: "#31293d",
  player: "#ece8df",
  danger: "#6c273b",
  upstairs: "#181319"
};

const map = [
  "########################",
  "#..........##..........#",
  "#..........##..........#",
  "#..P.......##.......W..#",
  "#..........##..........#",
  "#......................#",
  "#....#####....#####....#",
  "#....#............#....#",
  "#....#............#....#",
  "#....#####....#####....#",
  "#......................#",
  "#..M........##......B..#",
  "#...........##.........#",
  "#.....D.....##.........#",
  "########################"
];

let state = {};

function defaultState(generation = 1) {
  const total = Math.max(105, 180 - (generation - 1) * 15);
  return {
    generation,
    totalTime: total,
    timeRemaining: total,
    player: { x: 12 * TILE, y: 10 * TILE, r: 12, speed: 155 },
    inventory: [],
    activeIndex: -1,
    activeHeirloom: null,
    timeEffect: false,
    objects: {
      watch: { x: 20 * TILE, y: 3 * TILE, picked: false },
      mirror: { x: 3 * TILE, y: 11 * TILE, picked: false },
      musicBox: { x: 20 * TILE, y: 11 * TILE, picked: false },
      portrait: { x: 3 * TILE, y: 3 * TILE, solved: false },
      atticDoor: { x: 12 * TILE, y: 1.7 * TILE, solved: false },
      hiddenKey: { x: 4 * TILE, y: 3.6 * TILE, revealed: false, picked: false },
      exitDoor: { x: 6 * TILE, y: 13 * TILE, unlocked: false }
    },
    clues: [
      "The front door will not open.",
      "Something upstairs is waiting."
    ],
    escaped: false
  };
}

function isWall(px, py) {
  const tx = Math.floor(px / TILE);
  const ty = Math.floor(py / TILE);
  if (tx < 0 || ty < 0 || tx >= MAP_W || ty >= MAP_H) return true;
  return map[ty][tx] === "#";
}

function canMove(nx, ny) {
  const r = state.player.r;
  return !isWall(nx-r, ny-r) &&
         !isWall(nx+r, ny-r) &&
         !isWall(nx-r, ny+r) &&
         !isWall(nx+r, ny+r);
}

function addClue(text) {
  if (!state.clues.includes(text)) state.clues.push(text);
  renderClues();
}

function renderClues() {
  cluesEl.innerHTML = state.clues.map(c => `<li>${c}</li>`).join("");
}

function addInventory(name) {
  if (!state.inventory.includes(name)) {
    state.inventory.push(name);
    if (state.activeIndex === -1) {
      state.activeIndex = 0;
      state.activeHeirloom = state.inventory[0];
    }
    renderInventory();
  }
}

function renderInventory() {
  if (!state.inventory.length) {
    inventoryEl.innerHTML = `<div class="inv-item">Empty</div>`;
  } else {
    inventoryEl.innerHTML = state.inventory.map((item, i) =>
      `<div class="inv-item ${i === state.activeIndex ? "active" : ""}">${item}</div>`
    ).join("");
  }
  activeHeirloomEl.textContent = state.activeHeirloom || "None";
}

function switchHeirloom() {
  if (!state.inventory.length) return;
  state.activeIndex = (state.activeIndex + 1) % state.inventory.length;
  state.activeHeirloom = state.inventory[state.activeIndex];
  state.timeEffect = false;
  renderInventory();
}

function useHeirloom() {
  if (!state.activeHeirloom) {
    showMessage("No Heirloom Equipped", "Find an heirloom first.");
    return;
  }

  if (state.activeHeirloom === "Grandfather's Watch") {
    state.timeEffect = !state.timeEffect;
    showMessage(
      "Grandfather's Watch",
      state.timeEffect
        ? "The ticking stretches. Time now passes more slowly."
        : "The watch snaps shut. Time returns to normal."
    );
  } else if (state.activeHeirloom === "Mother's Mirror") {
    const p = state.objects.portrait;
    if (distance(state.player.x, state.player.y, p.x, p.y) < 80) {
      if (!p.solved) {
        p.solved = true;
        state.objects.hiddenKey.revealed = true;
        addClue("The mirror revealed a brass key hidden behind the portrait.");
        showMessage("A Face Behind the Face", "The mirror shows a second reflection. The portrait shifts, revealing a brass key.");
      } else {
        showMessage("Mother's Mirror", "The portrait has already revealed its secret.");
      }
    } else {
      showMessage("Mother's Mirror", "The glass clouds over. Nothing nearby answers it.");
    }
  } else if (state.activeHeirloom === "Music Box") {
    const d = state.objects.atticDoor;
    if (distance(state.player.x, state.player.y, d.x, d.y) < 95) {
      if (!d.solved) {
        d.solved = true;
        addClue("The attic door opened when the music box played.");
        showMessage("The Upstairs Melody", "The music box plays by itself. A lock upstairs clicks open.");
      } else {
        showMessage("Music Box", "The attic has already answered this song.");
      }
    } else {
      showMessage("Music Box", "The melody echoes through the mansion, but nothing nearby changes.");
    }
  }
}

function distance(ax, ay, bx, by) {
  return Math.hypot(ax - bx, ay - by);
}

function nearestInteractable() {
  const list = [];
  const o = state.objects;

  if (!o.watch.picked) list.push({ id: "watch", ...o.watch, label: "Pick up Grandfather's Watch" });
  if (!o.mirror.picked) list.push({ id: "mirror", ...o.mirror, label: "Pick up Mother's Mirror" });
  if (!o.musicBox.picked) list.push({ id: "musicBox", ...o.musicBox, label: "Pick up Music Box" });
  if (o.hiddenKey.revealed && !o.hiddenKey.picked) list.push({ id: "hiddenKey", ...o.hiddenKey, label: "Pick up Brass Key" });
  list.push({ id: "portrait", ...o.portrait, label: "Inspect old family portrait" });
  list.push({ id: "atticDoor", ...o.atticDoor, label: "Inspect attic door" });
  list.push({ id: "exitDoor", ...o.exitDoor, label: "Try the front door" });

  let best = null;
  let bestD = Infinity;
  for (const item of list) {
    const d = distance(state.player.x, state.player.y, item.x, item.y);
    if (d < 60 && d < bestD) {
      best = item;
      bestD = d;
    }
  }
  return best;
}

function interact() {
  const target = nearestInteractable();
  if (!target) return;

  const o = state.objects;

  if (target.id === "watch") {
    o.watch.picked = true;
    addInventory("Grandfather's Watch");
    addClue("Grandfather's Watch can distort the countdown.");
    showMessage("Grandfather's Watch", "Ability: slows time. Curse: every use makes the house feel more aware of you.");
  }

  if (target.id === "mirror") {
    o.mirror.picked = true;
    addInventory("Mother's Mirror");
    addClue("Mother's Mirror can reveal what ordinary sight cannot.");
    showMessage("Mother's Mirror", "Ability: reveals hidden truths. Curse: sometimes the reflection moves after you stop.");
  }

  if (target.id === "musicBox") {
    o.musicBox.picked = true;
    addInventory("Music Box");
    addClue("The music box seems connected to the upstairs lock.");
    showMessage("Music Box", "Ability: awakens old mechanisms. Curse: its song draws the curse closer.");
  }

  if (target.id === "hiddenKey") {
    o.hiddenKey.picked = true;
    addInventory("Brass Key");
    addClue("The brass key looks like it fits the front door.");
    showMessage("Brass Key", "Heavy, old, and warm to the touch.");
  }

  if (target.id === "portrait") {
    if (o.portrait.solved) {
      showMessage("The Portrait", "The frame hangs crooked where the hidden compartment opened.");
    } else if (state.activeHeirloom === "Mother's Mirror") {
      showMessage("The Portrait", "Your equipped mirror reacts. Press Q to use it.");
    } else {
      showMessage("The Portrait", "The girl's painted eyes seem to follow you. Something is wrong with the reflection in the glass.");
    }
  }

  if (target.id === "atticDoor") {
    if (o.atticDoor.solved) {
      showMessage("Attic Door", "The door is open. Cold air spills down the stairs.");
    } else if (state.activeHeirloom === "Music Box") {
      showMessage("Attic Door", "The lock hums faintly. Press Q to use the Music Box.");
    } else {
      showMessage("Attic Door", "A brass mechanism is built into the lock. It resembles the teeth of a music cylinder.");
    }
  }

  if (target.id === "exitDoor") {
    if (state.inventory.includes("Brass Key")) {
      o.exitDoor.unlocked = true;
      escapeGame();
    } else {
      showMessage("Front Door", "The lock refuses to turn. You need a key.");
    }
  }
}

function showMessage(title, text, onClose = null) {
  paused = true;
  messageTitle.textContent = title;
  messageText.textContent = text;
  messageBox.classList.remove("hidden");

  messageButton.onclick = () => {
    messageBox.classList.add("hidden");
    if (onClose) onClose();
    paused = false;
  };
}

function resetLoop() {
  const nextGen = state.generation + 1;
  showMessage(
    "Dawn",
    `You failed to escape. The curse passes to Generation ${nextGen}, stronger than before.`,
    () => {
      state = defaultState(nextGen);
      generationEl.textContent = state.generation;
      renderInventory();
      renderClues();
      objectiveEl.textContent = "Escape the cursed family home before dawn.";
    }
  );
}

function escapeGame() {
  if (state.escaped) return;
  state.escaped = true;
  showMessage(
    "You Escaped",
    `You broke the loop with ${formatTime(state.timeRemaining)} remaining. The family mission is finally complete.`,
    () => {
      objectiveEl.textContent = "The curse is broken.";
      paused = true;
    }
  );
}

function formatTime(seconds) {
  seconds = Math.max(0, Math.ceil(seconds));
  const m = Math.floor(seconds / 60);
  const s = seconds % 60;
  return `${String(m).padStart(2, "0")}:${String(s).padStart(2, "0")}`;
}

function update(dt) {
  if (paused || state.escaped) return;

  let dx = 0, dy = 0;
  if (keys["w"] || keys["arrowup"]) dy -= 1;
  if (keys["s"] || keys["arrowdown"]) dy += 1;
  if (keys["a"] || keys["arrowleft"]) dx -= 1;
  if (keys["d"] || keys["arrowright"]) dx += 1;

  if (dx || dy) {
    const mag = Math.hypot(dx, dy);
    dx /= mag;
    dy /= mag;

    const nx = state.player.x + dx * state.player.speed * dt;
    const ny = state.player.y + dy * state.player.speed * dt;

    if (canMove(nx, state.player.y)) state.player.x = nx;
    if (canMove(state.player.x, ny)) state.player.y = ny;
  }

  const rate = state.timeEffect ? 0.35 : 1;
  state.timeRemaining -= dt * rate;
  if (state.timeRemaining <= 0) {
    state.timeRemaining = 0;
    resetLoop();
  }

  timerEl.textContent = formatTime(state.timeRemaining);
  timerEl.style.color = state.timeRemaining < 30 ? "#ffb2b2" : "";
  generationEl.textContent = state.generation;

  const nearby = nearestInteractable();
  if (nearby && !paused) {
    interactionPrompt.textContent = `[E] ${nearby.label}`;
    interactionPrompt.classList.remove("hidden");
  } else {
    interactionPrompt.classList.add("hidden");
  }
}

function drawTile(x, y, char) {
  const px = x * TILE;
  const py = y * TILE;

  if (char === "#") {
    ctx.fillStyle = COLORS.wall;
    ctx.fillRect(px, py, TILE, TILE);
    ctx.fillStyle = "#382716";
    ctx.fillRect(px + 4, py + 4, TILE - 8, TILE - 8);
  } else {
    ctx.fillStyle = (x + y) % 2 === 0 ? COLORS.floor : "#b6b7b2";
    ctx.fillRect(px, py, TILE, TILE);

    ctx.strokeStyle = "rgba(50,35,20,.14)";
    ctx.strokeRect(px, py, TILE, TILE);
  }
}

function drawRoomShade() {
  ctx.fillStyle = "rgba(0,0,0,.28)";
  ctx.fillRect(11*TILE, 0, 2*TILE, 6*TILE);

  ctx.fillStyle = "rgba(20,10,25,.38)";
  ctx.fillRect(0, 0, canvas.width, 5*TILE);
}

function drawObject(obj, label, color, symbol, visible = true) {
  if (!visible) return;
  ctx.save();
  ctx.translate(obj.x, obj.y);
  ctx.fillStyle = "rgba(0,0,0,.35)";
  ctx.beginPath();
  ctx.arc(4, 6, 18, 0, Math.PI*2);
  ctx.fill();

  ctx.fillStyle = color;
  ctx.beginPath();
  ctx.arc(0, 0, 14, 0, Math.PI*2);
  ctx.fill();

  ctx.fillStyle = "#000";
  ctx.font = "bold 15px Georgia";
  ctx.textAlign = "center";
  ctx.textBaseline = "middle";
  ctx.fillText(symbol, 0, 0);

  ctx.fillStyle = "rgba(0,0,0,.75)";
  ctx.fillRect(-50, 20, 100, 18);
  ctx.fillStyle = "#ddd";
  ctx.font = "11px Georgia";
  ctx.fillText(label, 0, 29);
  ctx.restore();
}

function drawEnvironment() {
  for (let y = 0; y < MAP_H; y++) {
    for (let x = 0; x < MAP_W; x++) {
      drawTile(x, y, map[y][x]);
    }
  }

  drawRoomShade();

  // central fountain
  ctx.fillStyle = "#8a8378";
  ctx.beginPath();
  ctx.ellipse(12*TILE, 8*TILE, 45, 24, 0, 0, Math.PI*2);
  ctx.fill();
  ctx.fillStyle = "#4e5b60";
  ctx.beginPath();
  ctx.ellipse(12*TILE, 8*TILE, 32, 14, 0, 0, Math.PI*2);
  ctx.fill();

  // staircase / attic zone
  ctx.fillStyle = "#151016";
  ctx.fillRect(10.5*TILE, 0.8*TILE, 3*TILE, 2.3*TILE);
  ctx.strokeStyle = "#6c573c";
  for (let i = 0; i < 6; i++) {
    ctx.beginPath();
    ctx.moveTo(10.8*TILE, (1.2+i*.27)*TILE);
    ctx.lineTo(13.2*TILE, (1.2+i*.27)*TILE);
    ctx.stroke();
  }

  const o = state.objects;

  drawObject(o.portrait, "Portrait", "#806043", "P");
  drawObject(o.atticDoor, "Attic", o.atticDoor.solved ? "#6f8d68" : "#4f3b2a", o.atticDoor.solved ? "✓" : "A");

  if (!o.watch.picked) drawObject(o.watch, "Watch", "#c18a42", "W");
  if (!o.mirror.picked) drawObject(o.mirror, "Mirror", "#d8e2e5", "M");
  if (!o.musicBox.picked) drawObject(o.musicBox, "Music Box", "#a36d3b", "B");
  if (o.hiddenKey.revealed && !o.hiddenKey.picked) drawObject(o.hiddenKey, "Key", "#deb65d", "K");

  drawObject(o.exitDoor, "Exit", "#5a2c18", "D");

  // sparse cobwebs upstairs
  ctx.strokeStyle = "rgba(230,230,230,.28)";
  for (const [sx, sy] of [[2,1],[7,2],[17,1],[21,2]]) {
    ctx.beginPath();
    ctx.moveTo(sx*TILE, sy*TILE);
    ctx.lineTo((sx+1)*TILE, (sy+.8)*TILE);
    ctx.moveTo((sx+1)*TILE, sy*TILE);
    ctx.lineTo(sx*TILE, (sy+.8)*TILE);
    ctx.stroke();
  }
}

function drawPlayer() {
  const p = state.player;

  ctx.save();
  ctx.translate(p.x, p.y);

  if (state.timeRemaining < 30) {
    ctx.strokeStyle = "rgba(120,20,45,.5)";
    ctx.lineWidth = 5;
    ctx.beginPath();
    ctx.arc(0,0,22 + Math.sin(performance.now()/120)*3,0,Math.PI*2);
    ctx.stroke();
  }

  ctx.fillStyle = "#eeeae2";
  ctx.beginPath();
  ctx.arc(0, -5, 10, 0, Math.PI*2);
  ctx.fill();

  ctx.fillStyle = "#d7d2ca";
  ctx.beginPath();
  ctx.moveTo(-11, 5);
  ctx.lineTo(11, 5);
  ctx.lineTo(15, 25);
  ctx.lineTo(-15, 25);
  ctx.closePath();
  ctx.fill();

  ctx.fillStyle = "#7b674f";
  ctx.fillRect(-15, 18, 30, 7);

  ctx.restore();
}

function drawVignette() {
  const grad = ctx.createRadialGradient(
    canvas.width/2, canvas.height/2, 160,
    canvas.width/2, canvas.height/2, 600
  );
  grad.addColorStop(0, "rgba(0,0,0,0)");
  grad.addColorStop(1, "rgba(0,0,0,.78)");
  ctx.fillStyle = grad;
  ctx.fillRect(0,0,canvas.width,canvas.height);

  if (state.timeEffect) {
    ctx.strokeStyle = "rgba(182,116,51,.28)";
    ctx.lineWidth = 12;
    ctx.strokeRect(6,6,canvas.width-12,canvas.height-12);
  }
}

function draw() {
  ctx.clearRect(0,0,canvas.width,canvas.height);
  drawEnvironment();
  drawPlayer();
  drawVignette();
}

function gameLoop(now) {
  const dt = Math.min((now - lastTime) / 1000, 0.05);
  lastTime = now;
  update(dt);
  draw();
  requestAnimationFrame(gameLoop);
}

window.addEventListener("keydown", (e) => {
  const k = e.key.toLowerCase();
  keys[k] = true;

  if (e.key === "Tab") {
    e.preventDefault();
    if (!paused) switchHeirloom();
  }
  if (k === "e" && !paused) interact();
  if (k === "q" && !paused) useHeirloom();
});

window.addEventListener("keyup", (e) => {
  keys[e.key.toLowerCase()] = false;
});

function startGame() {
  state = defaultState(1);
  renderInventory();
  renderClues();
  generationEl.textContent = state.generation;
  timerEl.textContent = formatTime(state.timeRemaining);
  activeHeirloomEl.textContent = "None";

  showMessage(
    "Heirloom",
    "Your family has been trapped in this mansion for generations. Find the heirlooms, uncover the house's secrets, and escape before dawn."
  );
}

startGame();
requestAnimationFrame(gameLoop);

</script>
</body>
</html>
