extends Node2D

var random = RandomNumberGenerator.new()
var touch = [1,2,3,4,5,6,7,8,9,10]


func _ready():
	Global.escena_anerior = "res://Scenes/1_PANTERA.tscn"
	Global.in_light = false
	$Timer.start()
	$Timer2.start()
	
	var num1 = random.randi_range(0,Global.lamps-1)
	var num2 = random.randi_range(0,Global.lamps-1)
	
	while num2 == num1:
		num2 = random.randi_range(0,Global.lamps-1)
	var num3 = random.randi_range(0,Global.lamps-1)
	
	while num3 == num1 or num3 == num2:
		num3 = random.randi_range(0,Global.lamps-1)

	
	if num1 == 1 or num2 == 1 or num3 == 1:
		$"Lights/1/light".visible = false
		$"Lights/1/PointLight2D".visible = false
	else:
		$"Lights/1/light".visible = true
		$"Lights/1/PointLight2D".visible = true
		
	if num1 == 2 or num2 == 2 or num3 == 2:
		$"Lights/2/light2".visible = false
		$"Lights/2/PointLight2D".visible = false
	else:
		$"Lights/2/light2".visible = true
		$"Lights/2/PointLight2D".visible = true
		
	if num1 == 3 or num2 == 3 or num3 == 3:
		$"Lights/3/light3".visible = false
		$"Lights/3/PointLight2D".visible = false
	else:
		$"Lights/3/light3".visible = true
		$"Lights/3/PointLight2D".visible = true
		
	if num1 == 4 or num2 == 4 or num3 == 4:
		$"Lights/4/light4".visible = false
		$"Lights/4/PointLight2D".visible = false
	else:
		$"Lights/4/light4".visible = true
		$"Lights/4/PointLight2D".visible = true
		
	if num1 == 5 or num2 == 5 or num3 == 5:
		$"Lights/5/light5".visible = false
		$"Lights/5/PointLight2D".visible = false
	else:
		$"Lights/5/light5".visible = true
		$"Lights/5/PointLight2D".visible = true
		
	if num1 == 6 or num2 == 6 or num3 == 6:
		$"Lights/6/light6".visible = false
		$"Lights/6/PointLight2D".visible = false
	else:
		$"Lights/6/light6".visible = true
		$"Lights/6/PointLight2D".visible = true
		
	if num1 == 7 or num2 == 7 or num3 == 7:
		$"Lights/7/light7".visible = false
		$"Lights/7/PointLight2D".visible = false
	else:
		$"Lights/7/light7".visible = true
		$"Lights/7/PointLight2D".visible = true
		
	if num1 == 8 or num2 == 8 or num3 == 8:
		$"Lights/8/light8".visible = false
		$"Lights/8/PointLight2D".visible = false
	else:
		$"Lights/8/light8".visible = true
		$"Lights/8/PointLight2D".visible = true
		
	if num1 == 9 or num2 == 9 or num3 == 9:
		$"Lights/9/light9".visible = false
		$"Lights/9/PointLight2D".visible = false
	else:
		$"Lights/9/light9".visible = true
		$"Lights/9/PointLight2D".visible = true
		
	if num1 == 10 or num2 == 10 or num3 == 10:
		$"Lights/10/light10".visible = false
		$"Lights/10/PointLight2D".visible = false
	else:
		$"Lights/10/light10".visible = true
		$"Lights/10/PointLight2D".visible = true
	

func _process(delta):
	if $ColorRect.size.x <= 0:
		get_tree().change_scene_to_file("res://Scenes/Derrota.tscn")
	if len(touch) == 0:
		get_tree().change_scene_to_file("res://Scenes/victoria.tscn")
	
	if Global.coinlected == true:
		Global.coinlected = false
		if $ColorRect.size.x + 50 >= 192:
			$ColorRect.size.x = 192
		else:
			$ColorRect.size.x += 50


func _on_timer_timeout():
	var num1 = random.randi_range(0,Global.lamps-1)
	var num2 = random.randi_range(0,Global.lamps-1)
	var num3 = random.randi_range(0,Global.lamps-1)
	if Global.lamps <= 3:
		pass
	else:
		while num2 == num1:
			num2 = random.randi_range(0,Global.lamps-1)
			num3 = random.randi_range(0,Global.lamps-1)
		
		while num3 == num1 or num3 == num2:
			num3 = random.randi_range(0,Global.lamps-1)
	
	num1 = touch[num1]
	num2 = touch[num2]
	num3 = touch[num3]
	
	if 1 in touch:
		if num1 == 1 or num2 == 1 or num3 == 1:
			$"Lights/1/light".visible = false
			$"Lights/1/PointLight2D".visible = false
			
		else:
			$"Lights/1/light".visible = true
			$"Lights/1/PointLight2D".visible = true
			var overlapped = $"Lights/1/light".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	
	if 2 in touch:
		
		if num1 == 2 or num2 == 2 or num3 == 2:
			$"Lights/2/light2".visible = false
			$"Lights/2/PointLight2D".visible = false
		else:
			$"Lights/2/light2".visible = true
			$"Lights/2/PointLight2D".visible = true
			var overlapped = $"Lights/2/light2".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	
	if 3 in touch:
		
		if num1 == 3 or num2 == 3 or num3 == 3:
			$"Lights/3/light3".visible = false
			$"Lights/3/PointLight2D".visible = false
		else:
			$"Lights/3/light3".visible = true
			$"Lights/3/PointLight2D".visible = true
			var overlapped = $"Lights/3/light3".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	
	if 4 in touch:
		
		if num1 == 4 or num2 == 4 or num3 == 4:
			$"Lights/4/light4".visible = false
			$"Lights/4/PointLight2D".visible = false
		else:
			$"Lights/4/light4".visible = true
			$"Lights/4/PointLight2D".visible = true
			var overlapped = $"Lights/4/light4".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	if 5 in touch:
		if num1 == 5 or num2 == 5 or num3 == 5:
			$"Lights/5/light5".visible = false
			$"Lights/5/PointLight2D".visible = false
		else:
			$"Lights/5/light5".visible = true
			$"Lights/5/PointLight2D".visible = true
			var overlapped = $"Lights/5/light5".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	
	if 6 in touch:
		if num1 == 6 or num2 == 6 or num3 == 6:
			$"Lights/6/light6".visible = false
			$"Lights/6/PointLight2D".visible = false
			
		else:
			$"Lights/6/light6".visible = true
			$"Lights/6/PointLight2D".visible = true
			var overlapped = $"Lights/6/light6".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	if 7 in touch:
		if num1 == 7 or num2 == 7 or num3 == 7:
			$"Lights/7/light7".visible = false
			$"Lights/7/PointLight2D".visible = false
		else:
			$"Lights/7/light7".visible = true
			$"Lights/7/PointLight2D".visible = true
			var overlapped = $"Lights/7/light7".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
			
	if 8 in touch:
		
		if num1 == 8 or num2 == 8 or num3 == 8:
			$"Lights/8/light8".visible = false
			$"Lights/8/PointLight2D".visible = false
		else:
			$"Lights/8/light8".visible = true
			$"Lights/8/PointLight2D".visible = true
			var overlapped = $"Lights/8/light8".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	
	if 9 in touch:
		
		if num1 == 9 or num2 == 9 or num3 == 9:
			$"Lights/9/light9".visible = false
			$"Lights/9/PointLight2D".visible = false
		else:
			$"Lights/9/light9".visible = true
			$"Lights/9/PointLight2D".visible = true
			var overlapped = $"Lights/9/light9".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	if 10 in touch:
		
		if num1 == 10 or num2 == 10 or num3 == 10:
			$"Lights/10/light10".visible = false
			$"Lights/10/PointLight2D".visible = false
		else:
			$"Lights/10/light10".visible = true
			$"Lights/10/PointLight2D".visible = true
			var overlapped = $"Lights/10/light10".get_overlapping_areas()
			for area in overlapped:
				if area.name in ["MOLINA","VALENTIN"]:
					Global.in_light = true
	$Timer.start()


func _on_timer_2_timeout():
	if not Global.in_light:
		$ColorRect.size.x -= 0.5
	else:
		$ColorRect.size.x -= 5
	$Timer2.start()





func _on_light_area_entered(area):
	if $"Lights/1/light".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_area_exited(area):
	if $"Lights/1/light".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_2_area_entered(area):
	if $"Lights/2/light2".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_2_area_exited(area):
	if $"Lights/2/light2".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_3_area_entered(area):
	if $"Lights/3/light3".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_3_area_exited(area):
	if $"Lights/3/light3".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_4_area_entered(area):
	if $"Lights/4/light4".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_4_area_exited(area):
	if $"Lights/4/light4".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_5_area_entered(area):
	if $"Lights/5/light5".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_5_area_exited(area):
	if $"Lights/5/light5".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_6_area_entered(area):
	if $"Lights/6/light6".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_6_area_exited(area):
	if $"Lights/6/light6".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_7_area_entered(area):
	if $"Lights/7/light7".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_7_area_exited(area):
	if $"Lights/7/light7".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_8_area_entered(area):
	if $"Lights/8/light8".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_8_area_exited(area):
	if $"Lights/8/light8".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_9_area_entered(area):
	if $"Lights/9/light9".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_9_area_exited(area):
	if $"Lights/9/light9".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_light_10_area_entered(area):
	if $"Lights/10/light10".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = true
	else:
		pass
func _on_light_10_area_exited(area):
	if $"Lights/10/light10".visible == false:
		pass
	elif area.name in ["VALENTIN", "MOLINA"]:
		Global.in_light = false
	else:
		pass

func _on_area_2d_area_entered(area):
	if $"Lights/1/light".visible == false and area.name in ["MOLINA"]:
		Global.l1 = false
		Global.lamps -= 1
		touch.erase(1)
		$"Lights/1".queue_free()
		$"Particles/1".emitting = true


func _on_area_2d_2_area_entered(area):
	if $"Lights/2/light2".visible == false and area.name in ["MOLINA"]:
		Global.l2 = false
		Global.lamps -= 1
		touch.erase(2)
		$"Lights/2".queue_free()
		$"Particles/2".emitting = true


func _on_area_2d_3_area_entered(area):
	if $"Lights/3/light3".visible == false and area.name in ["MOLINA"]:
		Global.l3= false
		Global.lamps -= 1
		touch.erase(3)
		$"Lights/3".queue_free()
		$"Particles/3".emitting = true


func _on_area_2d_4_area_entered(area):
	if $"Lights/4/light4".visible == false and area.name in ["MOLINA"]:
		Global.l4 = false
		Global.lamps -= 1
		touch.erase(4)
		$"Lights/4".queue_free()
		$"Particles/4".emitting = true


func _on_area_2d_5_area_entered(area):
	if $"Lights/5/light5".visible == false and area.name in ["MOLINA"]:
		Global.l5 = false
		Global.lamps -= 1
		touch.erase(5)
		$"Lights/5".queue_free()
		$"Particles/5".emitting = true


func _on_area_2d_6_area_entered(area):
	if $"Lights/6/light6".visible == false and area.name in ["MOLINA"]:
		Global.l6 = false
		Global.lamps -= 1
		touch.erase(6)
		$"Lights/6".queue_free()
		$"Particles/6".emitting = true


func _on_area_2d_7_area_entered(area):
	if $"Lights/7/light7".visible == false and area.name in ["MOLINA"]:
		Global.l7 = false
		Global.lamps -= 1
		touch.erase(7)
		$"Lights/7".queue_free()
		$"Particles/7".emitting = true


func _on_area_2d_8_area_entered(area):
	if $"Lights/8/light8".visible == false and area.name in ["MOLINA"]:
		Global.l8 = false
		Global.lamps -= 1
		touch.erase(8)
		$"Lights/8".queue_free()
		$"Particles/8".emitting = true


func _on_area_2d_9_area_entered(area):
	if $"Lights/9/light9".visible == false and area.name in ["MOLINA"]:
		Global.l9 = false
		Global.lamps -= 1
		touch.erase(9)
		$"Lights/9".queue_free()
		$"Particles/9".emitting = true


func _on_area_2d_10_area_entered(area):
	if $"Lights/10/light10".visible == false and area.name in ["MOLINA"]:
		Global.l10 = false
		Global.lamps -= 1
		touch.erase(10)
		$"Lights/10".queue_free()
		$"Particles/10".emitting = true
