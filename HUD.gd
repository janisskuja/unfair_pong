extends Control

func _process(delta):
	$HBoxContainer/PlayerOneScore.text = str(Global.player_one_score)
	$HBoxContainer/PlayerTwoScore.text = str(Global.player_two_score)