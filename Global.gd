extends Node

var player_one_score = 0
var player_two_score = 0

var advantage = ''
var winner = ''

func reset():
	player_one_score = 0
	player_two_score = 0
	advantage = ''
	winner = ''
	get_tree().change_scene("res://Main.tscn")

func _process(delta):
	if (player_one_score > 9):
		winner = 'player_one'
		player_one_score = 0
		player_two_score = 0
		get_tree().change_scene("res://MainMenu.tscn")
	if (player_two_score > 9):
		winner = 'player_two'
		player_one_score = 0
		player_two_score = 0
		get_tree().change_scene("res://MainMenu.tscn")
	