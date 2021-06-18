extends Area2D

func _process(delta):
	for a in get_overlapping_areas():
		if ! a.held:
			a.position = global_transform.origin

