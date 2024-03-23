class_name Movimiento_flecha_prueba
extends Node2D

@export var flecha:Node2D
@export var direccion:Vector2

func _physics_process(delta):
	flecha.translate((direccion*25)*delta)

