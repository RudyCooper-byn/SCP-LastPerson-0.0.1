extends Node3D
const SPEED = 40.0

@onready var mesh = $MeshInstance3D
@onready var ray = $RayCast3D

func _physics_process(_delta):
	position += transform.basis * Vector3(0, 0, -SPEED) * _delta
	if ray.is_colliding():
		mesh.visible = false
		queue_free()
