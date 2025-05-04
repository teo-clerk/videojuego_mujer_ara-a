extends Control

@export var escena :PackedScene

func _on_button_button_up():
	get_tree().change_scene_to_packed(escena)
