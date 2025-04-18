extends CharacterBody3D

var player = null
const SPEED = 4.0
@export var player_path : NodePath
@onready var nav_agent =$NavigationAgent3D

func _ready() -> void:
	player = get_node(player_path)
func _process(delta: float) -> void:
	velocity = Vector3.ZERO
	.set_target_position(player.global_transform.origin)
	var next_nav_point = nav_agent.get_next_path_position()
	velocity = (next_nav_point - global_transform.origin).normalized() * SPEED
