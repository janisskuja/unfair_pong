extends Label

var time_left = 3

func start():
	time_left = 3
	text = str(time_left)
	set_visible(true)
	$Timer.start()

func _on_Timer_timeout():
	time_left -= 1
	text = str(time_left)
	if(time_left <= 0):
		$Timer.stop()
		set_visible(false)
