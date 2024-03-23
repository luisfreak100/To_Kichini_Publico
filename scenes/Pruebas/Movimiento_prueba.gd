class_name Movimiento_prueba
extends Node2D

@export var padre:CharacterBody2D
@export var vector:Vector2

var numero:int = 0
var cambio:bool =true

func _physics_process(delta):
	padre.translate((vector*numero)*delta)
	match cambio:
		true:
			numero=numero+1
		false:
			numero=numero-1
	muerte()


func muerte():
	if numero==5:
		cambio=false
		
	elif numero == -5:
		cambio=true
	
func _process(delta):
	pass
	
