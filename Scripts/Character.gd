extends KinematicBody

var gravity = Vector3.DOWN * 12
var speed = 4
var jump_speed = 6
var character

var velocity = Vector3()

func _ready():
	character = get_node("Character")
	
func _physics_process(delta):
	velocity += gravity * delta
	get_input()
	velocity = move_and_slide(velocity, Vector3.UP)
	var angle = atan2(velocity.x, velocity.z)
	var char_rot = character.get_rotation()
	char_rot.y = angle
	character.set_rotation(char_rot)
	
	
func get_input():
	velocity.x = 0
	velocity.y = 0
	if Input.is_action_pressed("move_forward"):
		velocity.z -= speed
	if Input.is_action_pressed("move_back"):
		velocity.z += speed
	if Input.is_action_pressed("strafe_right"):
		velocity.x += speed
	if Input.is_action_pressed("strafe_left"):
		velocity.x -= speed