extends Control

#find the number programatically later?
var marker_offset:Vector2 = Vector2(5,9)
var marker_idx:int = 0

func _ready():
	var points_range = $OutbreakTrack.curve.get_point_count() 
	
	for point in points_range:
		var new_label = Label.new()
		new_label.text = str(point)
		new_label.rect_position = $OutbreakTrack.curve.get_point_position(point)
		add_child(new_label)
		
		if point == 8:
			new_label.text = "X"
	
	$Marker.position = $OutbreakTrack.curve.get_point_position(0) + marker_offset



func _on_Button_pressed():
	marker_idx += 1
	$Marker.position = $OutbreakTrack.curve.get_point_position(marker_idx) + marker_offset
