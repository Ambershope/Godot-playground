extends CharacterBody2D


@export var maxSpeed: float = 100
@export var acceleraton: float = 10

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var direction: Vector2 = Input.get_vector("Up", "Down", "Left", "Right")
	move_and_slide()
