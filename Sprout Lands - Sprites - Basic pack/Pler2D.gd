extends CharacterBody2D

@export var move_speed : float = 100

func _physics_process(delta):
	#get input direction 
	var input_direction = Vector2(
		Input.get_action_strength("kanan") - Input.get_action_strength("kiri"),
		Input.get_action_strength("bawah") - Input.get_action_strength("atas")
	)
	
	velocity = input_direction * move_speed
	
	
	move_and_slide()

