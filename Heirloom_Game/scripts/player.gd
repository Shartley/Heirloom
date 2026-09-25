extends CharacterBody3D

@export var speed := 5.2
@export var mouse_sensitivity := 0.0025
@onready var pivot: Node3D = $Pivot
@onready var camera: Camera3D = $Pivot/Camera3D
@onready var ray: RayCast3D = $Pivot/Camera3D/RayCast3D
@onready var inventory := get_node("/root/Main/InventorySystem")
@onready var main := get_node("/root/Main")

var gravity := 18.0

func _ready() -> void:
    Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _unhandled_input(event: InputEvent) -> void:
    if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
        rotate_y(-event.relative.x * mouse_sensitivity)
        pivot.rotate_x(-event.relative.y * mouse_sensitivity)
        pivot.rotation.x = clamp(pivot.rotation.x, deg_to_rad(-55), deg_to_rad(45))
    if event.is_action_pressed("ui_cancel"):
        Input.mouse_mode = Input.MOUSE_MODE_VISIBLE if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED else Input.MOUSE_MODE_CAPTURED
    if event.is_action_pressed("interact"):
        _interact()
    if event.is_action_pressed("switch_heirloom"):
        inventory.switch_heirloom()
        main.show_message("Equipped: " + main.state.active_heirloom)
    if event.is_action_pressed("use_heirloom"):
        main.show_message(inventory.use_active())
    if event.is_action_pressed("restart"):
        get_tree().reload_current_scene()

func _physics_process(delta: float) -> void:
    var input_vec := Input.get_vector("move_left", "move_right", "move_forward", "move_back")
    var dir := (transform.basis * Vector3(input_vec.x, 0, input_vec.y)).normalized()
    velocity.x = dir.x * speed
    velocity.z = dir.z * speed
    if not is_on_floor():
        velocity.y -= gravity * delta
    else:
        velocity.y = -0.2
    move_and_slide()

func _interact() -> void:
    if not ray.is_colliding():
        main.show_message("Nothing close enough to interact with.")
        return
    var target = ray.get_collider()
    if target and target.has_method("interact"):
        target.interact(self)
    else:
        main.show_message("Nothing happens.")
