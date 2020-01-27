extends Control

func _ready():
	if(Global.winner != ''):
		$Winner.text = Global.winner + ' wins!'

func _on_Play_pressed():
	Global.reset()
