extends Node

var collected_atoms: Array[Global.Atoms] = []

func _ready():
	pass
	
func add_atom(atom: Global.Atoms):
	collected_atoms.append(collected_atoms)
	
func remove_atom(atom: Global.Atoms):
	collected_atoms.erase(atom)
	
