extends Node2D

@onready var player = $Player
@onready var ball = $Ball

func startGame():
	player.startGame()
	ball.stickTo(player)
	ball.launch()


func _on_player_launch_ball():
	ball.launch()
