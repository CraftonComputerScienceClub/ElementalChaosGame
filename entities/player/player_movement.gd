extends CharacterBody2D

@export var Player_Speed:float = 35
var Ground_Drag:int = 12


func _physics_process(delta):
	var Player_Direction = Input.get_vector("Left","Right","Up","Down")
	velocity = lerp(velocity,Player_Direction * Player_Speed, Ground_Drag * delta)
	move_and_slide()
