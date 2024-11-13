extends Area2D
class_name Base_Bullet
@export var bullet_speed:float
@export var bullet_sprite:Texture
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = bullet_sprite


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += bullet_speed * delta
