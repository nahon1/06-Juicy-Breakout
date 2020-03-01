extends StaticBody2D

var points = 10
onready var _target = position

onready var t = $Timer

func _ready():
	position.y = -66
	var time = rand_range(0, 2.0)
	t.set_wait_time(time)
	t.start()
	yield(t, "timeout")
	$Tween.interpolate_property(self, "position", position, _target, 1.6, Tween.TRANS_BOUNCE, Tween.EASE_OUT)
	$Tween.start()
