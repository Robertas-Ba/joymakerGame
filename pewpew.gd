extends Area2D


func _physics_process(delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var target_enemy = enemies_in_range.front()
		look_at(target_enemy.global_position)


func shoot():
	const  bullet = preload("res://bullet.tscn")
	var new_bullet = bullet.instantiate()
	new_bullet.global_position = $WeaponPiv/Heart/ShootingP.global_position	
	new_bullet.global_rotation = $WeaponPiv/Heart/ShootingP.global_rotation + (PI *.5)
	$"../../".add_child(new_bullet)


func _on_timer_timeout():
	shoot()
