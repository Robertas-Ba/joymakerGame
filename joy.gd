extends CharacterBody2D


func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_rigth","move_up","move_down")
	velocity = direction * 600
	move_and_slide()
