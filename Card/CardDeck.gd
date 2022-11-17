extends MarginContainer

export var deck_type:String

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var bg_string = 'res://art/card/Playerback.png'
	
	if deck_type == 'infection':
		bg_string = 'res://art/card/InfectionBack.png'
		set_rotation(90 * PI/180)
		
	$CardBack.texture = load(bg_string)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
