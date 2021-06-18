extends Node2D

var level_mapping_jank = { 
	# as more levels are added, uncomment below and make the last level end on end screen
	"Sandbox" : "..."
}

func _ready():
	print("Game.gd ready")
	get_tree().change_scene(Global.add_scn_pth(level_mapping_jank.keys()[0]))
