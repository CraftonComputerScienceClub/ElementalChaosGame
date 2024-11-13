extends Node
class_name Health
signal Health_update
signal Health_depleted
@export var max_health:int
var current_health:int


func _ready() -> void:
	pass

func set_current_healthmax():
	current_health = max_health
	pass
	
func damage(amount:int)->void:
	current_health =- amount
	
func heal(amount:int)->void:
	damage(-amount)

func _on_hitbox_component_area_entered(area):
	damage(1)
