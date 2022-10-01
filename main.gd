extends Control

@onready var input_value := $CenterContainer/VBoxContainer/VBoxContainer/InputValue


func _on_ValidateButton_pressed() -> void:
	Global.qr_text = input_value.text
	get_tree().change_scene_to_file("res://qr_view.tscn")
