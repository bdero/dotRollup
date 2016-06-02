extends SpotLight

var player

func _ready():
	player = get_node("/root/main/player")
	set_process(true)
	
func _process(delta):
	look_at(player.get_translation(), Vector3(0, 1, 0))
