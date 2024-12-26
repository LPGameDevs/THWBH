extends Node2D

@onready var ui_layer = $UILayer

func _ready() -> void:
	ui_layer.show_screen("ConnectionScreen")
