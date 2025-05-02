extends CharacterBody2D


const SPEED = 250.0
const JUMP_VELOCITY = -30.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity") + 100
var jump = false
var coyote_time_jump = false
var coyote_time_helper = 1

func _physics_process(delta):
		
# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	
	elif is_on_floor():
		jump = false
	
		
	if Input.is_action_pressed("w"):# and not is_on_ceiling():
		jump = true
		velocity.y += JUMP_VELOCITY
		$AnimatedSprite2D.play('planejant')
	else:
		$AnimatedSprite2D.play('normal')
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("a", "d")
	if direction and not is_on_floor():
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x > 0:
		$AnimatedSprite2D.flip_h = true
	
	move_and_slide()
