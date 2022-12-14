class_name HurtBox
extends Area2D

var _run = null

func _init():
	collision_layer = 0
	collision_mask = 2

func _ready():
	connect("area_entered", self, "_on_area_entered")

func _on_area_entered(hitbox: HitBox):
	if hitbox == null:
		return
	
	if owner.has_method("damage"):
		owner.damage(hitbox.damage, hitbox.owner)
