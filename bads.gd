extends CharacterBody2D

var health = 3
var normal_skin = preload("res://0% mob.png")
var damaged_skin = preload("res://50% mob.png")
var full_skin = preload("res://100% mob.png")

@onready var target=$"../Player"
var speed=150
func _physics_process(delta):
	var direction=(target.position-position).normalized()
	velocity=direction * speed
	look_at(target.position)
	move_and_slide()
	
func take_damage():
	health -= 1
	if health == 2:
		$"0_Mob".texture = damaged_skin
	if health == 1:
		$"0_Mob".texture = full_skin
		
	if health == 0:
		queue_free()
		emit_signal("enemy_killed")
		
func _on_enemy_enemy_killed():
	$"../ProgressBar".value += 10
