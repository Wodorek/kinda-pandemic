extends Control

var infection_values = [2,2,2,3,3,4,4]

# Called when the node enters the scene tree for the first time.
func _ready():

	var points_number = $TrackCurve.curve.get_point_count()
	get_font("gunplay").size = 20
	$Marker.position = $TrackCurve.curve.get_point_position(0) - Vector2(14,8)
	
	for point in points_number -1:
		var new_label = Label.new()
		new_label.text = str(infection_values[point])
		new_label.rect_position = $TrackCurve.curve.get_point_position(point)
		
		add_child(new_label)
