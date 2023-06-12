extends CharacterBody2D

const RIGHT:int = 1
const IDLE:int = 0
const LEFT:int = -1
const SPEED:int = 2

var direction:int = IDLE

var gameStarted:bool = false

signal launchBall

func _process(delta):
	match direction :
		LEFT:
			position.x -= SPEED
		RIGHT:
			position.x += SPEED
		IDLE:
			pass

func _unhandled_input(event):
	if gameStarted && event is InputEventScreenTouch and event.pressed == true:
		var centerRect:Rect2i = Rect2i(position.x-32, position.y + 36, 64, 56)
		var rightRect:Rect2i = Rect2i(position.x+32, position.y + 36, 350, 56)
		var leftRect:Rect2i = Rect2i(position.x-382, position.y + 36, 350, 56)
		
		if rightRect.has_point(event.position):
			direction = RIGHT
		elif leftRect.has_point(event.position):
			direction = LEFT
		elif centerRect.has_point(event.position):
			launchBall.emit()
		else:
			direction = IDLE

func startGame():
	gameStarted = true
