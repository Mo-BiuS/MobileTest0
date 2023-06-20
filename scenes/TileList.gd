extends Node2D

const TILE = preload("res://scenes/tile.tscn")

const SIZE_X = 8
const SIZE_Y = 6

func initArena():
	for i in get_children():
		i.queue_free()
	
	for i in SIZE_X:
		for j in SIZE_Y:
			var t = TILE.instantiate()
			t.position = Vector2(i*48-SIZE_X*24,j*16-SIZE_Y*8)
			t.life = (SIZE_Y-j-1)/2
			add_child(t)

func levelFinished()->bool:
	return get_children().is_empty()
