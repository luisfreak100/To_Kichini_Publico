extends Camera2D

var localizacion

# Called when the node enters the scene tree for the first time.
func _ready():
	var X
	var Y
	#localizacion=get_node("../../piso")
	#X=localizacion.get_meta("X")
	#Y=localizacion.get_meta("Y")
	var a=get_limit(SIDE_LEFT)
	print(a)
		
	#$Camera2D.limit_left = 32 * 16
	#$Camera2D.limit_right = 0
	#$Camera2D.limit_top = 0
	#$Camera2D.limit_bottom = 16 * 16
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
