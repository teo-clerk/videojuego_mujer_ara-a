extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.cap:
		queue_free()# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	Global.cap_prov = true
	queue_free()
