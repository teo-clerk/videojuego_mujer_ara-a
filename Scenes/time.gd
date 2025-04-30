extends Label



func _ready():
	$Timer.start()
	$Timer2.start()

func _process(delta):
	pass


func _on_timer_timeout():
	$Timer.start()
	text = "10s"


func _on_timer_2_timeout():
	if text == "0s":
		pass
	else:
		text = str(int(text)-1) + "s"
	$Timer2.start()
