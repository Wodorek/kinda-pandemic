extends Control

var cured: bool = false
export var vial_color:Color



func _ready():
	$Vial.set_color(vial_color)
