extends CharacterBody2D

const RIGHT:int = 1
const IDLE:int = 0
const LEFT:int = -1
const SPEED:int = 2

var direction:int = IDLE

func _process(delta):
	match direction :
		LEFT:
			if(position.x > 48):position.x -= SPEED
		RIGHT:
			if(position.x < 366):position.x += SPEED
		IDLE:
			pass

func _on_right_button_down():
	if direction == IDLE:
		direction = RIGHT
	elif direction == LEFT:
		direction == IDLE

func _on_left_button_down():
	if direction == IDLE:
		direction = LEFT
	elif direction == RIGHT:
		direction == IDLE

func _on_left_button_up():
	if direction == LEFT:
		direction = IDLE

func _on_right_button_up():
	if direction == RIGHT:
		direction = IDLE
