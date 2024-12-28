extends Node

var arguments := {}

func _ready() -> void:
	# Parse valid command-line arguments into a dictionary
	for argument in OS.get_cmdline_args():
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
		else:
			arguments[argument.lstrip("--")] = true

### Not explicitly needed, but could be useful.
func _input(event: InputEvent) -> void:
	if event is InputEventJoypadMotion or event is InputEventJoypadButton:
		Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	elif event is InputEventMouseMotion:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
