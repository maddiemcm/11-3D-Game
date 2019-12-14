extends Area

func _ready():
	pass
	
func _physics_process(delta):
	rotate_y(deg2rad(3))
	
func _on_goldCoin_body_entered(body):
	if body.name == "Character":
		$Timer.start()
		
func _on_Timer_timeout():
	emit_signal("coinCollected")
	queue_free()
 