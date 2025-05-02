extends Label

var random = RandomNumberGenerator.new()


func _ready():
	$Timer.start()
	$Timer2.start()
	
	var num1 = random.randi_range(1,10)
	var num2 = random.randi_range(1,10)
	
	while num2 == num1:
		num2 = random.randi_range(1,10)
	var num3 = random.randi_range(1,10)
	
	while num3 == num1 or num3 == num2:
		num3 = random.randi_range(1,10)
	Global.timer = 10
	
	if num1 == 1 or num2 == 1 or num3 == 1:
		$"Lights/1/light".visible = false
		$"Lights/1/PointLight2D".visible = false
	else:
		$"Lights/1/light".visible = true
		$"Lights/1/PointLight2D".visible = true
	if num1 == 2 or num2 == 2 or num3 == 2:
		$"Lights/2/light".visible = false
		$"Lights/2/PointLight2D".visible = false
	else:
		$"Lights/2/light".visible = true
		$"Lights/2/PointLight2D".visible = true
	if num1 == 3 or num2 == 3 or num3 == 3:
		$"Lights/3/light".visible = false
		$"Lights/3/PointLight2D".visible = false
	else:
		$"Lights/3/light".visible = true
		$"Lights/3/PointLight2D".visible = true
	if num1 == 4 or num2 == 4 or num3 == 4:
		$"Lights/4/light".visible = false
		$"Lights/4/PointLight2D".visible = false
	else:
		$"Lights/4/light".visible = true
		$"Lights/4/PointLight2D".visible = true
	if num1 == 5 or num2 == 5 or num3 == 5:
		$"Lights/5/light".visible = false
		$"Lights/5/PointLight2D".visible = false
	else:
		$"Lights/5/light".visible = true
		$"Lights/5/PointLight2D".visible = true
	if num1 == 6 or num2 == 6 or num3 == 6:
		$"Lights/6/light".visible = false
		$"Lights/6/PointLight2D".visible = false
	else:
		$"Lights/6/light".visible = true
		$"Lights/6/PointLight2D".visible = true
	if num1 == 7 or num2 == 7 or num3 == 7:
		$"Lights/7/light".visible = false
		$"Lights/7/PointLight2D".visible = false
	else:
		$"Lights/7/light".visible = true
		$"Lights/7/PointLight2D".visible = true
	if num1 == 8 or num2 == 8 or num3 == 8:
		$"Lights/8/light".visible = false
		$"Lights/8/PointLight2D".visible = false
	else:
		$"Lights/8/light".visible = true
		$"Lights/8/PointLight2D".visible = true
	if num1 == 9 or num2 == 9 or num3 == 9:
		$"Lights/9/light".visible = false
		$"Lights/9/PointLight2D".visible = false
	else:
		$"Lights/9/light".visible = true
		$"Lights/9/PointLight2D".visible = true
	if num1 == 10 or num2 == 10 or num3 == 10:
		$"Lights/10/light".visible = false
		$"Lights/10/PointLight2D".visible = false
	else:
		$"Lights/10/light".visible = true
		$"Lights/10/PointLight2D".visible = true

func _process(delta):
	pass


func _on_timer_timeout():
	$Timer.start()
	Global.timer = 10
	text = "10s"
	var num1 = random.randi_range(1,10)
	var num2 = random.randi_range(1,10)
	
	while num2 == num1:
		num2 = random.randi_range(1,10)
	var num3 = random.randi_range(1,10)
	
	while num3 == num1 or num3 == num2:
		num3 = random.randi_range(1,10)
	Global.timer = 10
	
	if num1 == 1 or num2 == 1 or num3 == 1:
		$"Lights/1/light".visible = false
		$"Lights/1/PointLight2D".visible = false
	else:
		$"Lights/1/light".visible = true
		$"Lights/1/PointLight2D".visible = true
	if num1 == 2 or num2 == 2 or num3 == 2:
		$"Lights/2/light".visible = false
		$"Lights/2/PointLight2D".visible = false
	else:
		$"Lights/2/light".visible = true
		$"Lights/2/PointLight2D".visible = true
	if num1 == 3 or num2 == 3 or num3 == 3:
		$"Lights/3/light".visible = false
		$"Lights/3/PointLight2D".visible = false
	else:
		$"Lights/3/light".visible = true
		$"Lights/3/PointLight2D".visible = true
	if num1 == 4 or num2 == 4 or num3 == 4:
		$"Lights/4/light".visible = false
		$"Lights/4/PointLight2D".visible = false
	else:
		$"Lights/4/light".visible = true
		$"Lights/4/PointLight2D".visible = true
	if num1 == 5 or num2 == 5 or num3 == 5:
		$"Lights/5/light".visible = false
		$"Lights/5/PointLight2D".visible = false
	else:
		$"Lights/5/light".visible = true
		$"Lights/5/PointLight2D".visible = true
	if num1 == 6 or num2 == 6 or num3 == 6:
		$"Lights/6/light".visible = false
		$"Lights/6/PointLight2D".visible = false
	else:
		$"Lights/6/light".visible = true
		$"Lights/6/PointLight2D".visible = true
	if num1 == 7 or num2 == 7 or num3 == 7:
		$"Lights/7/light".visible = false
		$"Lights/7/PointLight2D".visible = false
	else:
		$"Lights/7/light".visible = true
		$"Lights/7/PointLight2D".visible = true
	if num1 == 8 or num2 == 8 or num3 == 8:
		$"Lights/8/light".visible = false
		$"Lights/8/PointLight2D".visible = false
	else:
		$"Lights/8/light".visible = true
		$"Lights/8/PointLight2D".visible = true
	if num1 == 9 or num2 == 9 or num3 == 9:
		$"Lights/9/light".visible = false
		$"Lights/9/PointLight2D".visible = false
	else:
		$"Lights/9/light".visible = true
		$"Lights/9/PointLight2D".visible = true
	if num1 == 10 or num2 == 10 or num3 == 10:
		$"Lights/10/light".visible = false
		$"Lights/10/PointLight2D".visible = false
	else:
		$"Lights/10/light".visible = true
		$"Lights/10/PointLight2D".visible = true


func _on_timer_2_timeout():
	if text == "0s":
		pass
	else:
		Global.timer -= 1
		text = str(int(text)-1) + "s"
	$Timer2.start()
