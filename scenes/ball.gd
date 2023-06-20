extends Area2D

var player = null
var deplacement = null
var fuckItFlag = false

const SPEED = 2.6

signal out

func stickTo(p):
	player = p

func _process(delta):
	if player != null:
		if deplacement == null:
			if position.x < player.position.x-32:
				position.x = player.position.x-32
			elif position.x > player.position.x+32:
				position.x = player.position.x+32
		else:
			position+=deplacement*SPEED
			if(position.x+deplacement.x*SPEED < 0 || position.x+deplacement.x*SPEED > 414):
				deplacement.x *= -1
			if(position.y+deplacement.x*SPEED < 0):
				deplacement.y *= -1
		if position.y > 824:out.emit()
		fuckItFlag = false

func launch():
	deplacement = -position.direction_to(player.position).normalized()


func _on_body_entered(body):
	if deplacement != null && player != null:
		if body != player:
			if !fuckItFlag:
				deplacement.y*=-1
				fuckItFlag = true
			body.touched()
		else :
			deplacement = -position.direction_to(body.position).normalized()
