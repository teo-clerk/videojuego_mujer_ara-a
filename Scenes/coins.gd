extends Node2D

var random = RandomNumberGenerator.new()


func _ready():
	Global.in_light = false
	$Timer.start()
	
	var num = random.randi_range(1,10)
	
	if num == 1:
		$"1".visible = true
	elif num == 2:
		$"2".visible = true
	elif num == 3:
		$"3".visible = true
	elif num == 4:
		$"4".visible = true
	elif num == 5:
		$"5".visible = true
	elif num == 6:
		$"6".visible = true
	elif num == 7:
		$"7".visible = true
	elif num == 8:
		$"8".visible = true
	elif num == 9:
		$"9".visible = true
	else:
		$"10".visible = true
	


func _on_timer_timeout():
	$"1".visible = false
	$"2".visible = false
	$"3".visible = false
	$"4".visible = false
	$"5".visible = false
	$"6".visible = false
	$"7".visible = false
	$"8".visible = false
	$"9".visible = false
	$"10".visible = false
	var num = random.randi_range(1,10)
	
	if num == 1:
		$"1".visible = true
		var overlapped = $"1/a1".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"1".visible = false
				Global.coinlected = true
	elif num == 2:
		$"2".visible = true
		var overlapped = $"2/a2".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"2".visible = false
				Global.coinlected = true
	elif num == 3:
		$"3".visible = true
		var overlapped = $"3/a3".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"3".visible = false
				Global.coinlected = true
	elif num == 4:
		$"4".visible = true
		var overlapped = $"4/a4".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"4".visible = false
				Global.coinlected = true
	elif num == 5:
		$"5".visible = true
		var overlapped = $"5/a5".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"5".visible = false
				Global.coinlected = true
	elif num == 6:
		$"6".visible = true
		var overlapped = $"6/a6".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"6".visible = false
				Global.coinlected = true
	elif num == 7:
		$"7".visible = true
		var overlapped = $"7/a7".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"7".visible = false
				Global.coinlected = true
	elif num == 8:
		$"8".visible = true
		var overlapped = $"8/a8".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"8".visible = false
				Global.coinlected = true
	elif num == 9:
		$"9".visible = true
		var overlapped = $"9/a9".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"9".visible = false
				Global.coinlected = true
	else:
		$"10".visible = true
		var overlapped = $"10/a10".get_overlapping_areas()
		for area in overlapped:
			if area.name in ["VALENTIN"]:
				$"10".visible = false
				Global.coinlected = true



func _on_a_1_area_entered(area):
	if area.name == "VALENTIN" and $"1".visible == true:
		$"1".visible = false
		Global.coinlected = true


func _on_a_2_area_entered(area):
	if area.name == "VALENTIN" and $"2".visible == true:
		$"2".visible = false
		Global.coinlected = true


func _on_a_3_area_entered(area):
	if area.name == "VALENTIN" and $"3".visible == true:
		$"3".visible = false
		Global.coinlected = true


func _on_a_4_area_entered(area):
	if area.name == "VALENTIN" and $"4".visible == true:
		$"4".visible = false
		Global.coinlected = true


func _on_a_5_area_entered(area):
	if area.name == "VALENTIN" and $"5".visible == true:
		$"5".visible = false
		Global.coinlected = true


func _on_a_6_area_entered(area):
	if area.name == "VALENTIN" and $"6".visible == true:
		$"6".visible = false
		Global.coinlected = true


func _on_a_7_area_entered(area):
	if area.name == "VALENTIN" and $"7".visible == true:
		$"7".visible = false
		Global.coinlected = true


func _on_a_8_area_entered(area):
	if area.name == "VALENTIN" and $"8".visible == true:
		$"8".visible = false
		Global.coinlected = true


func _on_a_9_area_entered(area):
	if area.name == "VALENTIN" and $"9".visible == true:
		$"9".visible = false
		Global.coinlected = true


func _on_a_10_area_entered(area):
	if area.name == "VALENTIN" and $"10".visible == true:
		$"10".visible = false
		Global.coinlected = true
