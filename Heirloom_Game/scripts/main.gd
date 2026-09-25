extends Node3D

@onready var state: Node = get_node("/root/GameState")
@onready var timer_label: Label = $UI/Margin/VBox/Timer
@onready var heirloom_label: Label = $UI/Margin/VBox/Heirloom
@onready var objective_label: Label = $UI/Margin/VBox/Objective
@onready var message_label: Label = $UI/Message
@onready var loop_label: Label = $UI/Margin/VBox/Loop
@onready var hidden_key: StaticBody3D = $World/HiddenKey
@onready var attic_blocker: StaticBody3D = $World/AtticDoor
@onready var upstairs_light: OmniLight3D = $World/UpstairsLight
var won := false

func _ready() -> void:
    state.time_remaining_changed.connect(_on_time_changed)
    state.active_heirloom_changed.connect(_on_heirloom_changed)
    hidden_key.visible = false
    hidden_key.collision_layer = 0
    _on_time_changed(state.time_remaining)
    _on_heirloom_changed(state.active_heirloom)
    loop_label.text = "Generation: %d" % (state.loop_count + 1)
    show_message("Escape before dawn. E interact • TAB switch • Q use heirloom")

func _process(_delta: float) -> void:
    if state.time_remaining < 45.0:
        upstairs_light.light_energy = 2.0 + sin(Time.get_ticks_msec() / 110.0) * 0.7
    objective_label.text = _objective_text()

func _objective_text() -> String:
    if state.puzzle_flags["front_door_unlocked"]:
        return "Objective: Return to the front door and escape."
    if state.puzzle_flags["attic_unlocked"] and not state.puzzle_flags["mirror_revealed"]:
        return "Objective: Search the house for what reveals hidden things."
    if state.puzzle_flags["mirror_revealed"]:
        return "Objective: Take the hidden key and escape."
    return "Objective: Find heirlooms and solve the mansion before dawn."

func _on_time_changed(value: float) -> void:
    var secs := int(ceil(value))
    timer_label.text = "Dawn in %02d:%02d" % [secs / 60, secs % 60]
    if value < 30:
        timer_label.modulate = Color(1.0, 0.55, 0.35)

func _on_heirloom_changed(value: String) -> void:
    heirloom_label.text = "ActiveHeirloom: " + value

func show_message(text: String) -> void:
    message_label.text = text
    message_label.modulate.a = 1.0
    var tween = create_tween()
    tween.tween_interval(2.6)
    tween.tween_property(message_label, "modulate:a", 0.0, 0.6)

func reveal_hidden_key() -> void:
    hidden_key.visible = true
    hidden_key.collision_layer = 1

func unlock_attic() -> void:
    attic_blocker.scale = Vector3(1.04, 1.04, 1.04)

func open_attic_door() -> void:
    attic_blocker.position.y = -3.0

func win_game() -> void:
    if won:
        return
    won = true
    $TimeSystem.running = false
    $UI/WinPanel.visible = true
    Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
    state.game_won.emit()
