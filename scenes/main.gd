extends Node

@onready var mainMenu = $MainMenu
@onready var game = $Game

func _on_main_menu_start():
	mainMenu.hide()
	game.hide()
