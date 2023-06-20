extends Node2D

@onready var player = $Player
@onready var ball = $Ball
@onready var tileList = $TileList
@onready var launchButton = $CanvasLayer/PanelContainer/MarginContainer/HBoxContainer/Launch
@onready var gui = $CanvasLayer
@onready var endScreen = $CanvasLayer2

var state = 0

func _process(delta):
	if(state == 1 && tileList.levelFinished()):
		state == 2
		player.hide()
		ball.hide()
		tileList.hide()
		gui.hide()
		endScreen.show()

func startGame():
	ball.deplacement = null
	ball.stickTo(player)
	ball.position = player.position-Vector2(0,16)
	tileList.initArena()
	gui.show()
	launchButton.disabled = false
	state = 0


func _on_launch_pressed():
	ball.launch()
	launchButton.disabled = true
	state = 1


func _on_ball_out():
	startGame()
