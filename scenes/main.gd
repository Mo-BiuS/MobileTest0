extends Node

@onready var player:Sprite2D = $Panel/player

var init = false
var startYaw:float = 0
var startPitch:float = 0

var yaw:float = 0
var pitch:float = 0

func _physics_process(delta):
	var gyro:Vector3 = Input.get_accelerometer()
	
	if !init && gyro != Vector3(0,0,0):
		init = true
		startYaw = gyro.y*2
		startPitch = gyro.x*2
	
	yaw = gyro.y*2-startYaw
	pitch = gyro.x*2-startPitch
	player.displacement = Vector2(int(pitch),-int(yaw))
