extends Node2D



func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Level 1.tscn")


func _on_Menu_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")


func _on_ArtistStatement_pressed():
	get_tree().change_scene("res://Scenes/Artist Statement.tscn")
