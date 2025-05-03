extends Area2D

var speed := 200.0 # píxeles por segundo
var direction := 1
var moving := false

func _ready():
	start_movement_loop()

func _process(delta):
	if moving:
		position.x += speed * direction * delta

	# Flip del sprite según la dirección
	if direction < 0:
		$AnimatedSprite2D.flip_h = true
	elif direction > 0:
		$AnimatedSprite2D.flip_h = false

func _on_body_entered(body):
	var claus_necessaries :int = Global.claus_necessaries
	var claus :int = Global.claus
	print("dentro")
	if claus_necessaries <= claus:
		queue_free()
	else:
		Global.dead = true

func start_movement_loop() -> void:
	while true:
		moving = true
		direction = 1
		await get_tree().create_timer(1.0).timeout

		direction = -1
		await get_tree().create_timer(1.0).timeout
