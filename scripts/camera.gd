extends Camera


var player
var start_height

func _ready():
	player = get_node("/root/main/player")
	start_height = get_translation()*Vector3(0, 1, 0)

	set_process(true)
	
func _process(delta):
	var destination_translation = player.get_translation() + start_height
	set_translation(get_translation().linear_interpolate(destination_translation, 0.3))