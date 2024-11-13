extends Node

enum Atoms {
	HYDROGEN,
	OXYGEN,
	CARBON,
	SULFER
}

var Gun_list:Array[Base_Gun]

func add_to_gun_list(gun:Base_Gun)->void:
	Gun_list.append(gun)
	
func rem_to_gun_list(gun:Base_Gun)->void:
	Gun_list.erase(gun)
