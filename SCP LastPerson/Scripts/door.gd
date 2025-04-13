extends Node3D

var playback : AnimationNodeStateMachinePlayback
var is_Open := false

func _ready() -> void:
	playback = $AnimationTree.get("parameters/playback")
	
func toggle(_body):
	is_Open = !is_Open
	if is_Open:
		playback.travel("open")
	else:
		playback.travel("close")
