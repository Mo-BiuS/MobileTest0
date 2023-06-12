extends CharacterBody2D

var player = null

func stickTo(p):
	player = p

func _process(delta):
	if player != null:
		if position.x < player.position.x-32:
			position.x = player.position.x-32
		elif position.x > player.position.x+32:
			position.x = player.position.x+32

func launch():
	pass
