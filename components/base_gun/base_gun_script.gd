extends Node2D
class_name Base_Gun
@onready var inner_marker:Marker2D = $Bullet_Barrel_Inner
@onready var outter_marker:Marker2D = $Bullet_Barrel_Outer
@export var max_ammo:int
const gun_bullet = preload("res://game_assets/bullet_list/temp_bullet_one/temp_bullet.tscn")


func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("Shoot_left"):
		#Shoot() #shooting is currently not working instance issues
		pass
	

func get_mouse_vector()-> Vector2:
	return outter_marker.position - inner_marker.position


func Shoot()->void:
	var bullet = gun_bullet.instance() #issue here with call for instance of new bullet
	
	get_parent().get_parent().add_child(bullet)
	bullet.position = outter_marker.global_position
