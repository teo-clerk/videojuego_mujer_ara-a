extends Label

var random = RandomNumberGenerator.new()


func _ready():
	var num1 = random.randi_range(1,10)
	var num2 = random.randi_range(1,10)
	
	while num2 == num1:
		num2 = random.randi_range(1,10)
	var num3 = random.randi_range(1,10)
	
	while num3 == num1 or num3 == num2:
		num3 = random.randi_range(1,10)
	Global.timer = 10
	$Timer.start()
	$Timer2.start()
	
	if num1 == 1 or num2 == 1 or num3 == 1:
		$"Lights/1/light".visible = false
		$"Lights/1/PointLight2D".visible = false
	if num1 == 2 or num2 == 2 or num3 == 2:
		Global.l2 = false
	if num1 == 3 or num2 == 3 or num3 == 3:
		Global.l3 = false
	if num1 == 4 or num2 == 4 or num3 == 4:
		Global.l4 = false
	if num1 == 5 or num2 == 5 or num3 == 5:
		Global.l5 = false
	if num1 == 6 or num2 == 6 or num3 == 6:
		Global.l6 = false
	if num1 == 7 or num2 == 7 or num3 == 7:
		Global.l7 = false
	if num1 == 8 or num2 == 8 or num3 == 8:
		Global.l8 = false
	if num1 == 9 or num2 == 9 or num3 == 9:
		Global.l9 = false
	if num1 == 10 or num2 == 10 or num3 == 10:
		Global.l10 = false

func _process(delta):
	pass


func _on_timer_timeout():
	$Timer.start()
	Global.timer = 10
	text = "10s"


func _on_timer_2_timeout():
	if text == "0s":
		pass
	else:
		Global.timer -= 1
		text = str(int(text)-1) + "s"
	$Timer2.start()
