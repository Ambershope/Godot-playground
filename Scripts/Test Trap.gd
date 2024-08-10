extends TrapBase

@export var loadingTime = 5
var loadingConst
var animationsprite = null


# Called when the node enters the scene tree for the first time.
func _ready():
	animationsprite = $RigidBody2D/AnimatedSprite2D #$AnimatedSprite2D
	loadingConst = loadingTime
	print(get_instance_id())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_animated_sprite_2d_animation_finished():
	if animationsprite.animation == "StartUp":
		animationsprite.play("Loading")
	elif animationsprite.animation == "Loading":
		if loadingTime:
			loadingTime -= 1
			animationsprite.play("Loading")
			return
		animationsprite.play("Active")
