extends CharacterBody2D


const speed = 70
const acceleraton = 10

var input: Vector2



func calcMovementVector():
	input.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	input.y = Input.get_action_strength("Down") - Input.get_action_strength("Up")
	return input.normalized()
	
func processMovementVector(delta):
	var playerVector = calcMovementVector()
	
	velocity = lerp(velocity, playerVector * speed, delta * acceleraton)

	move_and_slide()

func cameraLooksPlayer():
	var player = global_transform.origin
	Camera2D.global_transform.origin = player

func playerLooksAtCursor():
	var mousePos: Vector2 = get_global_mouse_position()
	var playerPos: Vector2 = global_transform.origin
	look_at(mousePos)
	
	
	

func _physics_process(delta):
	processMovementVector(delta)
	
	playerLooksAtCursor()
	
