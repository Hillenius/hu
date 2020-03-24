extends AudioStreamPlayer2D

var coinSFX = preload("res://GodotIntro-Assets/Sprites/Audio/coin.tres")

func play_coin_sfx ():
	
	stream = coinSFX
	play()
