extends MarginContainer

export var cardtype: String

# Called when the node enters the scene tree for the first time.
func _ready():
	$Back.texture = load("res://art/card/InfectionBack.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
