extends Node2D

@onready var player = $Player
@onready var ball = $Ball

func startGame():
	player.startGame()
	ball.stickTo(player)


func _on_player_launch_ball():
	ball.launch()
