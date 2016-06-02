extends Camera

const CAMERA_UP = Vector3(0, 0, -1)
const VEC3_HEIGHT_ZERO = Vector3(1, 0, 1)

var player
var start_height

func _ready():
	player = get_node("/root/main/player")
	start_height = get_translation()*Vector3(0, 1, 0)

	set_process(true)
	
func _process(delta):
	var current_translation = get_translation()*VEC3_HEIGHT_ZERO
	var destination_translation = player.get_translation()*VEC3_HEIGHT_ZERO
	var distance = current_translation.distance_to(destination_translation)
	var height_factor = start_height + Vector3(0, distance, 0)
	set_translation(current_translation.linear_interpolate(destination_translation, 1.5*delta) + height_factor)
	
	look_at(player.get_translation(), CAMERA_UP)
	