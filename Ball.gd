extends Area2D

export (int) var speed = 300
export (int) var max_y_position = 430 
export (int) var min_y_position = 10

var direction = Vector2.ZERO
var current_speed = speed

var can_move = false

func reset(_direction):
	can_move = false
	direction = _direction
	current_speed = speed
	position = Vector2(400, 220)
	$Start.start()
	$reset.play()

func _process(delta):
	if(can_move):
		position += current_speed * direction * delta
	if(position.y > max_y_position or position.y < min_y_position):
		direction.y = -1 * direction.y;
		$wall.play()

func _on_Start_timeout():
	can_move = true

func _on_Ball_area_entered(area):
	if(area.is_in_group('player')):
		direction = Vector2(-1 * direction.x, randf() * 2 - 1).normalized()
		get_node(area.player).play()

func _on_SpeedTimer_timeout():
	current_speed += 10
