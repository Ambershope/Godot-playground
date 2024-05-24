extends CharacterBody2D


const TOPSPEED := 300.0
const ACCELERATION := 40.0
const DEACCELERATION := ACCELERATION/2
@export var friction := 1.0

func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Vector2(Input.get_axis("move_left", "move_right"), Input.get_axis("move_up", "move_down")).normalized()
	print(direction, Vector2(), direction != Vector2())
	if direction != Vector2():
		print("Move")
		velocity += direction * ACCELERATION
	velocity -= velocity.normalized() * DEACCELERATION * friction
	if direction != velocity.normalized(): 
		print("Stop")
		velocity = Vector2()
	velocity = velocity.limit_length(TOPSPEED)
