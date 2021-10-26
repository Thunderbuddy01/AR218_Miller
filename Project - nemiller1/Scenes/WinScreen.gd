extends Node2D


func _on_Retry_pressed():
	get_tree().change_scene("res://Scenes/Level 1.tscn")
	Global.score = 0


func _on_Quit_pressed():
	get_tree().quit()
