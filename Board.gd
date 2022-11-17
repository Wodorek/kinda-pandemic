extends Node2D

var path = "user://data.json"

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var nodes_data = {}
	
	for child in get_children():
		if child.is_class("Position2D"):
			nodes_data[child.name] = child.position

	var file = File.new()
	file.open(path, File.WRITE)
	file.store_line(to_json(nodes_data))
	file.close()
	
	
