extends Node2D

func _ready():
	$Ball.reset(Vector2.LEFT)
	$CanvasLayer/HUD/PlayerOneServe.start()

func _on_PlayerOneGoal_area_entered(area):
	$Ball.reset(Vector2.RIGHT)
	$CanvasLayer/HUD/PlayerTwoServe.start()
	Global.player_two_score += 1
	Global.advantage = 'player_one';
	$PlayerOne.reset_speed()
	$PlayerTwo.reset_speed()

func _on_PlayerTwoGoal_area_entered(area):
	$Ball.reset(Vector2.LEFT)
	$CanvasLayer/HUD/PlayerOneServe.start()
	Global.player_one_score += 1
	Global.advantage = 'player_two';
	$PlayerOne.reset_speed()
	$PlayerTwo.reset_speed()