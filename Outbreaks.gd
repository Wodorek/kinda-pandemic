extends Control


func _ready():
	var points_range = $OutbreakTrack.curve.get_point_count()
	
	for point in points_range:
		var new_label = Label.new()
		new_label.text = str(point)
		new_label.rect_position = $OutbreakTrack.curve.get_point_position(point)
		add_child(new_label)
		
		if point == 8:
			new_label.text = "X"
