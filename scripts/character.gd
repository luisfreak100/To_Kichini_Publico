extends CharacterBody2D
#Variables
const speed = 250

var current_dir = "none"
#Inicia al personaje animado 
func _ready():
	$AnimatedSprite2D.play("Idle")
#invoca las fisicas
func _physics_process(delta):
	player_movement(delta)
#Moviemiento del personaje
func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		play_animation(1)
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_animation(1)
		velocity.x = -speed
		velocity.y = 0
	elif  Input.is_action_pressed("ui_down"):
		current_dir = "down"
		play_animation(1)
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		play_animation(1)
		velocity.x = 0
		velocity.y = -speed
	else: 
		play_animation(0)
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()
#Reproduce animaciones con los movimientos
func play_animation(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		anim.flip_h = false
		if movement == 1:
			anim.play("walk")
		elif movement == 0:
			anim.play("Idle")
	if dir == "left":
		anim.flip_h = true
		if movement == 1:
			anim.play("walk")
		elif movement == 0:
			anim.play("Idle")
	if dir == "up":
		anim.flip_h = false
		if movement == 1:
			anim.play("Back_walk")
		elif movement == 0:
			anim.play("Idle")
	if dir == "down":
		anim.flip_h = false
		if movement == 1:
			anim.play("Front_walk")
		elif movement == 0:
			anim.play("Idle")
	
	
