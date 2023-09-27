extends Control

@onready var input_value := $CenterContainer/VBoxContainer/VBoxContainer/InputValue
@onready var error_correction_level := $CenterContainer/VBoxContainer/VBoxContainer2/ErrorCorrection

func _ready() -> void:
	error_correction_level.add_item("Low", QrCode.ErrorCorrectionLevel.LOW)
	error_correction_level.add_item("Medium", QrCode.ErrorCorrectionLevel.MEDIUM)
	error_correction_level.add_item("Quartile", QrCode.ErrorCorrectionLevel.QUARTILE)
	error_correction_level.add_item("High", QrCode.ErrorCorrectionLevel.HIGH)


func _on_ValidateButton_pressed() -> void:
	if input_value.text != "":
		Global.qr_text = input_value.text
		Global.error_correction_level = error_correction_level.selected
		get_tree().change_scene_to_file("res://qr_view.tscn")
