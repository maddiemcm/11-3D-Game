extends Area

func _ready():
	pass
	
func _physics_process(delta):
	rotate_y(deg2rad(3))
	
func _on_goldCoin_body_entered(body):
	if body.name == "Character":
		print("collect")