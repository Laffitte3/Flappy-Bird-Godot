extends Node

var obstaculos_escena = preload("res://obstaculos.tscn")

func _on_timer_timeout():
	var obstaculos = obstaculos_escena.instantiate()
	add_child(obstaculos)
   
