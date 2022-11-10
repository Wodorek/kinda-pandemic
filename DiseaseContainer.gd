extends Control

var cured: bool = false

func _ready():
	$Label.text = "cured" if cured else "not cured"
