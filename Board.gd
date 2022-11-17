extends Node2D

var path = "user://data.json"

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = File.new()
	file.open('res://data/nodesData.json', File.READ)
	
	var nodes = parse_json(file.get_as_text())

