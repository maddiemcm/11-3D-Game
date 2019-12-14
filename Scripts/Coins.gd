extends Label

var coins = 0

func _ready():
	text = "Coins: " + String(coins)

func _on_Coin_Collected():
	coins = coins + 1
	_ready()
