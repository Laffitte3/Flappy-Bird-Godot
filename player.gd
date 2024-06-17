extends RigidBody2D

var speed :=300
var puntos := 0

func _integrate_forces(state):
	
		if Input.is_action_just_pressed("ui_accept"):
			linear_velocity = Vector2.ZERO
			apply_central_impulse(Vector2(0,-speed))
			$AnimatedSprite2D.play("flappy")
			
func perder(): 
	get_tree().paused =true
	$"../Message".show()
	$"../Message/Gameover".show()
	
func subirPuntos():
	puntos +=1
	print(puntos)
	$"../Label".text= str(puntos)


func _on_detecta_suelo_body_entered(body):
	if body.is_in_group("Obstaculos"):
		perder()
