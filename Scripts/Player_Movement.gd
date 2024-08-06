extends CharacterBody2D


const maxSpeed = 70
const acceleraton = 10

var input: Vector2

func calcMovementVector():
	input.x = Input.get_action_strength("Right") - Input.get_action_strength("Left")
	input.y = Input.get_action_strength("Down") - Input.get_action_strength("Up")
	return input.normalized()
	
func processMovementVector(delta):
	var playerVector = calcMovementVector()
	
	velocity = lerp(velocity, playerVector * maxSpeed, delta * acceleraton)

	move_and_slide()

func _physics_process(delta):
	processMovementVector(delta)
