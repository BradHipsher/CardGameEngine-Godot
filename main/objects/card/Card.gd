extends Area2D

signal clicked

var held = false

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		print("_input_event")
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("clicked", self)

func _process(delta):
	if held:
		global_transform.origin = get_global_mouse_position()

func pickup():
	if held:
		return
	held = true

func drop():
	if held:
		held = false
