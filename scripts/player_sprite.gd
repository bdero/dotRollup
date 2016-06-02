extends Sprite3D


var camera

func _ready():
	camera = get_node("/root/main/Camera")
	print(camera.get_name())
	
	set_process(true)

func _process(delta):
	look_at(camera.get_translation(), Vector3(0, 1, 0))
	