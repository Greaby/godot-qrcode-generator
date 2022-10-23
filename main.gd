extends Control

onready var input_value := $CenterContainer/VBoxContainer/VBoxContainer/InputValue
onready var error_correction_level := $CenterContainer/VBoxContainer/VBoxContainer2/ErrorCorrection

func _ready() -> void:
	error_correction_level.add_item("Low", QrCode.ERROR_CORRECT_LEVEL.LOW)
	error_correction_level.add_item("Medium", QrCode.ERROR_CORRECT_LEVEL.MEDIUM)
	error_correction_level.add_item("Quartile", QrCode.ERROR_CORRECT_LEVEL.QUARTILE)
	error_correction_level.add_item("High", QrCode.ERROR_CORRECT_LEVEL.HIGH)


func _on_ValidateButton_pressed() -> void:
	Global.qr_text = input_value.text
	Global.error_correction_level = error_correction_level.selected
	get_tree().change_scene("res://qr_view.tscn")
