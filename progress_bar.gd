extends ProgressBar


func _on_enemy_enemy_killed():
	$"../ProgressBar".value += 10
