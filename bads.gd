extends CharacterBody2D

var health = 3
var normal_skin = preload("res://0% mob.png")
var damaged_skin = preload("res://50% mob.png")

@onready var player = get_node("res://joy.tscn")

#func _physics_process(delta):
	#var direction = global_position.direction_to(player.global_position)
	#velocity = direction * 300.0
	#move_and_slide()

func take_damage():
	health -= 1
	
	if health == 0:
		queue_free()
