extends Label

var my_string = " Total Coins!\nYou're richer!"

func _on_Collectable_youre_richer():
	text = String(Global.score) + my_string


func _on_Collectable2_youre_richer():
	text = String(Global.score) + my_string


func _on_Collectable3_youre_richer():
	text = String(Global.score) + my_string
