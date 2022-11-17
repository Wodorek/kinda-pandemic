extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	for child in get_children():
		if child.is_class("Position2D"):
			print(child.name,child.position)
