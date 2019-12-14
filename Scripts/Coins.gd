extends Label

func _ready():
	_on_Coin_Collected()

func _on_Coin_Collected():
	text = "Coins: " + String(get_parent().score)
