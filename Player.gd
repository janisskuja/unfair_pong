extends Area2D

export (String, 'player_one', 'player_two') var player = 'player_one'
export var move_speed = 100
export (int) var max_pos_y = 405;
export (int) var min_pos_y = 35;

onready var state_machine = $AnimationTree.get('parameters/playback')
onready var current_speed = move_speed

func _ready():
	state_machine.start('shrink')
	
func _process(delta):
	if(Input.is_action_pressed(player + '_up') and position.y > min_pos_y):
		position.y -= move_speed * delta;
	if(Input.is_action_pressed(player + '_down') and position.y < max_pos_y):
		position.y += move_speed * delta;
	if(Global.advantage == player):
		state_machine.travel('grow')
	else:
		state_machine.travel('shrink')

func reset_speed():
	current_speed = move_speed

func _on_SpeedTimer_timeout():
	current_speed += 10
