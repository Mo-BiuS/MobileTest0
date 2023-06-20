extends StaticBody2D

@export var life = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Sprite2D.region_rect.position.y = (2-life)*16

func touched():
	life-=1
	if life < 0: queue_free()
