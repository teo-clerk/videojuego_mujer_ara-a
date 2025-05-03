extends Control

var explaing = true
@export var escena :PackedScene

func _ready():
	pass



func _on_explain_button_up():
	get_tree().change_scene_to_packed(escena)
