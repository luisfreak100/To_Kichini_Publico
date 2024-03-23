class_name Arco
extends Node2D


func _input(event):
	var proyectil = preload("res://proyectil.tscn")
	var new_proyectil= proyectil.instantiate()
	
	if event.is_action_pressed("Arco"):
		print("my_action occurred!")
		add_child(new_proyectil)
