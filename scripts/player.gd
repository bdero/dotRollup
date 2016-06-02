extends RigidBody


func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	var direction = Vector3(0, 0, 0)
	if Input.is_action_pressed("move_left"):
		direction.z += 1
	if Input.is_action_pressed("move_right"):
		direction.z -= 1
	if Input.is_action_pressed("move_down"):
		direction.x += 1
	if Input.is_action_pressed("move_up"):
		direction.x -= 1
		
	set_angular_velocity(direction*5)