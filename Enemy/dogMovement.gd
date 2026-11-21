extends CharacterBody2D

@export var speed: float = 100.0
@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	motion_mode = CharacterBody2D.MOTION_MODE_FLOATING



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	var a = randi_range(-10,10)
	var b = randi_range(-10,10)
	var dir = Vector2(a,b)
	velocity = dir * speed
	move_and_slide()
