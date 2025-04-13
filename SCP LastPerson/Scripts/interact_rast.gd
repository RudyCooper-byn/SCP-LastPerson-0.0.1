extends RayCast3D

@onready var text = $"../../../UI/Label"
func _physics_process(_delta):
	text.text = ""
	
	if is_colliding():
		var collider = get_collider()
		
		if collider is Interactable:
			text.text = collider.getprompt()
			
			if Input.is_action_just_pressed(collider.prompt_input):
				collider.interact(owner)
