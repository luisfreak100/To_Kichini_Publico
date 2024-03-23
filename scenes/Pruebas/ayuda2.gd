extends Area2D

func _on_body_entered(body):
	$"../StaticBody2D".show()
	$"../StaticBody2D/CollisionShape2D".set_deferred("disabled",false)

	pass # Replace with function body.
