extends Sprite2D

var displacement:Vector2 = Vector2(0,0)

func _process(delta):
	if displacement.x < 0 && position.x > 0 : position.x+=displacement.x
	if displacement.y < 0 && position.y > 0 : position.y+=displacement.y
	if displacement.x > 0 && position.x < 320 : position.x+=displacement.x
	if displacement.y > 0 && position.y < 480 : position.y+=displacement.y
