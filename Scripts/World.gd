extends Spatial

export var score = 0

func increase_score(s):
	score += int(s)
	find_node("Coins").update_score()
	if score == 2000:
		get_tree().change_scene("res://Scenes/Win.tscn")
