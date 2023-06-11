extends PanelContainer

signal start

func _on_start_button_pressed():
	start.emit()
